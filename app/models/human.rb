class Human < ActiveRecord::Base

def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |human|
      human.provider = auth.provider
      human.uid = auth.uid
      human.name = auth.info.name
      human.oauth_token = auth.credentials.token
      human.oauth_expires_at = Time.at(auth.credentials.expires_at)
      human.save!
    end
  end

end
