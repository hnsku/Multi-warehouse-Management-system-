trigger CaseTrigger on Case (before insert, after insert) {
    if(Trigger.isBefore && Trigger.isInsert) {
        CaseAssignmentHandler.handleBeforeInsert(Trigger.new);
    }
    if(Trigger.isAfter && Trigger.isInsert) {
        WarehouseSharingHandler.shareHighPriorityCase(Trigger.new);
    }
}
