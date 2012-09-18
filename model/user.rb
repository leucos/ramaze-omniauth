class User < Sequel::Model

  set_schema do
    primary_key :id
    varchar :github_uid
    integer :visits
  end

  create_table if !table_exists?

  def self.authenticate(creds)
    uid, session = *creds

    # User has been seen previsously for his session
    return  User[:github_uid => uid] if session[:github] and session[:github][:uid] == uid

    usr = User[:github_uid => uid] || User.create(:github_uid => uid, :visits => 0)
    usr.visits +=1 

    usr.save
  end

end
