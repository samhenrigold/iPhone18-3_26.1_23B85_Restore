@interface NavdVehicleBluetoothNotificationHandler
- (NavdVehicleBluetoothNotificationHandler)initWithCiruitBoard:(id)board connectTriggers:(id)triggers connectConditions:(id)conditions disconnectTriggers:(id)disconnectTriggers disconnectConditions:(id)disconnectConditions resourceDepot:(id)depot notifier:(id)notifier;
- (id).cxx_construct;
@end

@implementation NavdVehicleBluetoothNotificationHandler

- (NavdVehicleBluetoothNotificationHandler)initWithCiruitBoard:(id)board connectTriggers:(id)triggers connectConditions:(id)conditions disconnectTriggers:(id)disconnectTriggers disconnectConditions:(id)disconnectConditions resourceDepot:(id)depot notifier:(id)notifier
{
  boardCopy = board;
  triggersCopy = triggers;
  conditionsCopy = conditions;
  disconnectTriggersCopy = disconnectTriggers;
  disconnectConditionsCopy = disconnectConditions;
  depotCopy = depot;
  notifierCopy = notifier;
  if (GEOConfigGetBOOL())
  {
    v72.receiver = self;
    v72.super_class = NavdVehicleBluetoothNotificationHandler;
    v20 = [(NavdVehicleBluetoothNotificationHandler *)&v72 init];
    if (v20)
    {
      v55 = disconnectConditionsCopy;
      objc_initWeak(&location, v20);
      v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      sub_10001A824(&v69, @"NavdVehicleBluetoothNotificationHandlerQueue", v21);
      v22 = v69;
      v69 = 0;
      innerQueue = v20->_queue._innerQueue;
      v20->_queue._innerQueue = v22;

      v24 = v70;
      v70 = 0;
      name = v20->_queue._name;
      v20->_queue._name = v24;

      v54 = disconnectTriggersCopy;
      sub_100024668(v20);
      v26 = [MapsSuggestionsActionCircuit alloc];
      v27 = [MapsSuggestionsBlockAction alloc];
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_1000247A8;
      v65[3] = &unk_100065F88;
      objc_copyWeak(&v68, &location);
      v28 = v55;
      v66 = v28;
      v29 = notifierCopy;
      v67 = v29;
      v30 = [v27 initWithName:@"BTDisconnectAction" block:v65];
      v31 = [v26 initWithTriggers:v54 conditions:v28 action:v30];

      v53 = v31;
      v32 = [MapsSuggestionsActionCircuit alloc];
      v33 = [MapsSuggestionsBlockAction alloc];
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_100024B7C;
      v62[3] = &unk_100065FB0;
      objc_copyWeak(&v64, &location);
      v34 = v29;
      v63 = v34;
      v35 = [v33 initWithName:@"BTClearAction" block:v62];
      v36 = [v32 initWithTriggers:&__NSArray0__struct conditions:&__NSArray0__struct action:v35];
      clearCircuit = v20->_clearCircuit;
      v20->_clearCircuit = v36;

      v38 = [boardCopy addCircuit:v20->_clearCircuit];
      v39 = [boardCopy addCircuit:v31];
      v40 = [MapsSuggestionsBlockCondition alloc];
      v41 = v20->_queue._innerQueue;
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_100024D28;
      v60[3] = &unk_100065B50;
      objc_copyWeak(&v61, &location);
      v42 = [v40 initWithName:@"locationBudgetCondition" queue:v41 block:v60];
      locationBudgetCondition = v20->_locationBudgetCondition;
      v20->_locationBudgetCondition = v42;

      v44 = [conditionsCopy mutableCopy];
      [v44 addObject:v20->_locationBudgetCondition];
      v45 = [MapsSuggestionsActionCircuit alloc];
      v46 = [v44 copy];
      v47 = [NavdVehicleBluetoothConnectAction alloc];
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_10002501C;
      v58[3] = &unk_100065548;
      objc_copyWeak(&v59, &location);
      v48 = [(NavdVehicleBluetoothConnectAction *)v47 initWithConditions:conditionsCopy resourceDepot:depotCopy notifier:v34 completionHandler:v58];
      v49 = [v45 initWithTriggers:triggersCopy conditions:v46 type:2 action:v48];

      v50 = [boardCopy addCircuit:v49];
      objc_destroyWeak(&v59);

      objc_destroyWeak(&v61);
      objc_destroyWeak(&v64);

      objc_destroyWeak(&v68);
      objc_destroyWeak(&location);
      disconnectTriggersCopy = v54;
      disconnectConditionsCopy = v55;
    }

    self = v20;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end