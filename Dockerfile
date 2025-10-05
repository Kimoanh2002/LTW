# Sử dụng image Tomcat chính thức với JDK 17 để phù hợp với yêu cầu dự án
FROM tomcat:10.1-jdk17

# Xóa các ứng dụng mặc định của Tomcat để tránh xung đột
RUN rm -rf /usr/local/tomcat/webapps/*

# Sao chép file WAR từ thư mục target của dự án vào thư mục webapps của Tomcat
# Đổi tên file WAR thành bt2.war để dễ truy cập tại đường dẫn gốc (/bt2/)
COPY target/bt2-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/bt2.war

# Mở cổng 8080 để ứng dụng có thể truy cập từ bên ngoài
EXPOSE 8080

# Lệnh chạy Tomcat khi container khởi động
CMD ["catalina.sh", "run"]