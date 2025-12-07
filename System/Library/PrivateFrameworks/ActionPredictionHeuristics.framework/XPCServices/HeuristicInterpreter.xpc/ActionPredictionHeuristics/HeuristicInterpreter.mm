@interface HeuristicInterpreter
- (HeuristicInterpreter)init;
- (void)actionsAndExpirersForHeuristicsExcept:(id)except bundlePath:(id)path now:(id)now dataSourcesEndpoint:(id)endpoint reply:(id)reply;
- (void)ping:(id)ping;
- (void)resultsForInformationHeuristics:(id)heuristics bundlePath:(id)path now:(id)now dataSourcesEndpoint:(id)endpoint reply:(id)reply;
@end

@implementation HeuristicInterpreter

- (HeuristicInterpreter)init
{
  v3.receiver = self;
  v3.super_class = HeuristicInterpreter;
  return [(HeuristicInterpreter *)&v3 init];
}

- (void)ping:(id)ping
{
  pingCopy = ping;
  v4 = sub_1000018B8(pingCopy);
  v5 = os_signpost_id_generate(v4);

  v7 = sub_1000018B8(v6);
  v8 = v7;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ping", " enableTelemetry=YES ", buf, 2u);
  }

  v10 = sub_100001940(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Pinged", v15, 2u);
  }

  pingCopy[2](pingCopy, 0);
  v12 = sub_1000018B8(v11);
  v13 = v12;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v5, "ping", " enableTelemetry=YES ", v14, 2u);
  }
}

- (void)actionsAndExpirersForHeuristicsExcept:(id)except bundlePath:(id)path now:(id)now dataSourcesEndpoint:(id)endpoint reply:(id)reply
{
  exceptCopy = except;
  pathCopy = path;
  nowCopy = now;
  endpointCopy = endpoint;
  replyCopy = reply;
  v16 = sub_1000036B0(replyCopy);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000036F4;
  block[3] = &unk_100024C10;
  v23 = nowCopy;
  v24 = exceptCopy;
  v25 = pathCopy;
  v26 = endpointCopy;
  v27 = replyCopy;
  v17 = replyCopy;
  v18 = endpointCopy;
  v19 = pathCopy;
  v20 = exceptCopy;
  v21 = nowCopy;
  dispatch_async(v16, block);
}

- (void)resultsForInformationHeuristics:(id)heuristics bundlePath:(id)path now:(id)now dataSourcesEndpoint:(id)endpoint reply:(id)reply
{
  heuristicsCopy = heuristics;
  pathCopy = path;
  nowCopy = now;
  endpointCopy = endpoint;
  replyCopy = reply;
  v16 = sub_1000036B0(replyCopy);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003D38;
  block[3] = &unk_100024C10;
  v23 = nowCopy;
  v24 = heuristicsCopy;
  v25 = pathCopy;
  v26 = endpointCopy;
  v27 = replyCopy;
  v17 = replyCopy;
  v18 = endpointCopy;
  v19 = pathCopy;
  v20 = heuristicsCopy;
  v21 = nowCopy;
  dispatch_async(v16, block);
}

@end