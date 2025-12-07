@interface VAModelManagerMonitor
- (void)register_for_inference_monitor_eventsWithHash:(unint64_t)hash eventCallback:(id)callback completionHandler:;
- (void)unregister_from_inference_monitorWithObserver:(unint64_t)observer completionHandler:(id)handler;
@end

@implementation VAModelManagerMonitor

- (void)register_for_inference_monitor_eventsWithHash:(unint64_t)hash eventCallback:(id)callback completionHandler:
{
  v5 = v4;
  v9 = sub_1D1138(&qword_6E48F8, &qword_516E88);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(callback);
  v13 = _Block_copy(v5);
  v14 = swift_allocObject();
  v14[2] = hash;
  v14[3] = v12;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_51349C();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_517088;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_517090;
  v17[5] = v16;

  sub_1D0460(0, 0, v11, &unk_517098, v17);
}

- (void)unregister_from_inference_monitorWithObserver:(unint64_t)observer completionHandler:(id)handler
{
  v7 = sub_1D1138(&qword_6E48F8, &qword_516E88);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = observer;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_51349C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_517068;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_517070;
  v14[5] = v13;

  sub_1D0460(0, 0, v9, &unk_517078, v14);
}

@end