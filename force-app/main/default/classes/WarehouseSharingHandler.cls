public class WarehouseSharingHandler {
    // Designed Security Model with Apex Sharing - Interviewer will ask this
    public static void shareHighPriorityCase(List<Case> caseList) {
        List<CaseShare> shares = new List<CaseShare>();
        for(Case c : caseList) {
            if(c.Priority == 'High') {
                CaseShare cs = new CaseShare();
                cs.CaseId = c.Id;
                cs.UserOrGroupId = c.OwnerId;
                cs.CaseAccessLevel = 'Edit';
                cs.RowCause = Schema.CaseShare.RowCause.Manual;
                shares.add(cs);
            }
        }
        if(!shares.isEmpty()){
            Database.insert(shares, false);
        }
    }
}
