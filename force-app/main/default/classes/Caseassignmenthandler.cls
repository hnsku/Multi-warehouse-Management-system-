public class CaseAssignmentHandler {
    public static void handleBeforeInsert(List<Case> newCases) {
        for(Case c : newCases) {
            // Omni-Channel / Assignment Rules Logic
            if(c.Subject != null && c.Subject.contains('Warehouse')) {
                c.Priority = 'High';
                c.Status = 'New';
            }
            // High-value request for Approval Process
            if(c.Amount__c != null && c.Amount__c > 50000) {
                c.Requires_Approval__c = true;
            }
        }
    }
}
