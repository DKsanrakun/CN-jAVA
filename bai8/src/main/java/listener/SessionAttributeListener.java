@WebListener
public class SessionAttributeListener implements HttpSessionAttributeListener {
    public void attributeAdded(HttpSessionBindingEvent event) {
        System.out.println("Thêm attribute: " + event.getName() + " = " + event.getValue());
    }

    public void attributeReplaced(HttpSessionBindingEvent event) {
        System.out.println("Cập nhật attribute: " + event.getName() + " = " + event.getValue());
    }
}
