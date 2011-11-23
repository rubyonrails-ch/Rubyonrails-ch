
module Wiki
  module Views
    class Protected < Layout

      attr_reader :user, :session, :cookies
      
      def user
        @user.inspect
      end
      
      def session
        @session.inspect
      end
      
      def cookies
        @cookies.inspect
      end
      
      
    end
  end
end
