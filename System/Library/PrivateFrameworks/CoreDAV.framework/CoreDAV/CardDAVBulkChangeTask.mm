@interface CardDAVBulkChangeTask
- (CardDAVBulkChangeTask)initWithURL:(id)l checkCTag:(id)tag simple:(BOOL)simple returnChangedData:(BOOL)data uuidsToAddActions:(id)actions hrefsToModDeleteActions:(id)deleteActions;
@end

@implementation CardDAVBulkChangeTask

- (CardDAVBulkChangeTask)initWithURL:(id)l checkCTag:(id)tag simple:(BOOL)simple returnChangedData:(BOOL)data uuidsToAddActions:(id)actions hrefsToModDeleteActions:(id)deleteActions
{
  dataCopy = data;
  simpleCopy = simple;
  actionsCopy = actions;
  deleteActionsCopy = deleteActions;
  v21.receiver = self;
  v21.super_class = CardDAVBulkChangeTask;
  v17 = [(CoreDAVBulkChangeTask *)&v21 initWithURL:l checkCTag:tag simple:simpleCopy returnChangedData:dataCopy uuidsToAddActions:actionsCopy hrefsToModDeleteActions:deleteActionsCopy];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->super._appSpecificNamespace, @"urn:ietf:params:xml:ns:carddav");
    objc_storeStrong(&v18->super._appSpecificDataProp, @"address-data");
    objc_storeStrong(&v18->super._uuidsToAddActions, actions);
    objc_storeStrong(&v18->super._hrefsToModDeleteActions, deleteActions);
    if (simpleCopy)
    {
      v19 = @"text/vcard; charset=utf-8";
    }

    else
    {
      v19 = @"application/xml; charset=utf-8";
    }

    objc_storeStrong(&v18->super._requestDataContentType, v19);
  }

  [(CoreDAVBulkChangeTask *)v18 fillOutDataWithUUIDsToAddActions:actionsCopy hrefsToModDeleteActions:deleteActionsCopy];

  return v18;
}

@end