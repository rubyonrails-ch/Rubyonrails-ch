
module Wiki
  module AuthHelpers
    def warden
      request.env['warden']
    end

    def current_user
      warden.user
    end

    def authorize!(failure_path=nil)
      unless authenticated?
        session[:return_to] = request.path if options.auth_use_referrer
        redirect(failure_path ? failure_path : options.auth_failure_path)
      end
    end

    # Check the current session is authenticated to a given scope
    def authenticated?
      warden.authenticated?
    end
    
  end
end