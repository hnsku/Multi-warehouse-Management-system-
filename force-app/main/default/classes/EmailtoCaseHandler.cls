public class EmailToCaseHandler implements Messaging.InboundEmailHandler {
    public Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email, Messaging.InboundEnvelope envelope) {
        Messaging.InboundEmailResult result = new Messaging.InboundEmailResult();
        try {
            Case c = new Case(
                Subject = email.subject,
                Description = email.plainTextBody,
                Origin = 'Email',
                Status = 'New',
                SuppliedEmail = email.fromAddress
            );
            insert c;
            result.success = true;
        } catch(Exception e) {
            result.success = false;
            result.message = e.getMessage();
        }
        return result;
    }
}
