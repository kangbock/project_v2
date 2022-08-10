import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
// import 해야 하는 세 클래스들

public class UseMySQL {
    public static void main(String[] args) {
        // Connection객체를 자동완성으로 import한다. java.sql.Connection
        Connection conn = null;

        try {
            Class.forName("com.mysql.jdbc.Driver"); // (MySQL의 드라이버 클래스 가져오기)
            // 1. 드라이버(인터페이스)를 구현한 클래스를 로딩. 각 DB마다 클래스명이 다름. 위는 MySQL의 경우.

            String url = "jdbc:mysql://localhost:3306/testdb";
            // 2. 연결하기 - 드라이버 매니저에게 Connection객체를 달라고 요청.
            // Connection을 얻기 위해 필요한 url도 각 DB마다 다름.
            // 위는 MySQL의 경우 - jdbc:mysql://localhost/사용할 db이름.

            conn = DriverManager.getConnection(url, "IDID", "PWPW");
            // 3. DB(MySQL)에 연결하기 위한 커넥션 정보 입력 (url, user, password).
            // getConnection() 의 리턴값인 Connection객체를 통해 쿼리를 날리는 statement를 작성할 수 있다.
            // (SELECT할 떄는 createStatement(), INSERT에서는 prepareStatement() .. 호출
            System.out.println("연결 성공");

        } catch (ClassNotFoundException e) {
            System.out.println("드라이버 로딩 실패");
        } catch (SQLException e) {
            System.out.println("에러 : " + e);
        } finally {
            try {
                if (conn != null && !conn.isClosed()) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
