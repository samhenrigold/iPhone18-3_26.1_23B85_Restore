@interface Proxy
- (void)didEstimateWithSelection:(unsigned __int8)selection bytes:(unint64_t)bytes items:(unint64_t)items;
- (void)didReceiveCodeWithCode:(id)code;
- (void)didShutdown;
- (void)didTransferWithSelection:(unsigned __int8)selection result:(unsigned __int8)result bytes:(unint64_t)bytes items:(unint64_t)items errors:(unint64_t)errors;
- (void)preflightFailedWithAdditionalBytesRequired:(unint64_t)required;
- (void)processWithData:(NSData *)data completionHandler:(id)handler;
- (void)roleWithCompletionHandler:(id)handler;
@end

@implementation Proxy

- (void)roleWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59B0, &qword_26D263D80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_26D26265C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_26D263E58;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_26D263E60;
  v12[5] = v11;

  sub_26D260F04(0, 0, v7, &unk_26D263E68, v12);
}

- (void)didReceiveCodeWithCode:(id)code
{
  v3 = sub_26D26251C();
  v5 = v4;

  sub_26D25DCA0(v3, v5);
}

- (void)didEstimateWithSelection:(unsigned __int8)selection bytes:(unint64_t)bytes items:(unint64_t)items
{

  sub_26D25DF60(selection, bytes, items);
}

- (void)preflightFailedWithAdditionalBytesRequired:(unint64_t)required
{
  v3 = *self->preflightFailureHandler;
  if (v3)
  {
    v5 = *&self->preflightFailureHandler[8];

    sub_26D25B044(v3, v5);
    v3(required);

    sub_26D25B054(v3, v5);
  }
}

- (void)didTransferWithSelection:(unsigned __int8)selection result:(unsigned __int8)result bytes:(unint64_t)bytes items:(unint64_t)items errors:(unint64_t)errors
{

  sub_26D25E240(selection, result, bytes, items, errors);
}

- (void)processWithData:(NSData *)data completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59B0, &qword_26D263D80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = data;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_26D26265C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_26D263E48;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_26D263D98;
  v14[5] = v13;
  dataCopy = data;

  sub_26D260F04(0, 0, v9, &unk_26D263DA0, v14);
}

- (void)didShutdown
{
  v2 = *self->shutdownHandler;
  if (v2)
  {
    v3 = *&self->shutdownHandler[8];

    v4 = sub_26D25B044(v2, v3);
    v2(v4);

    sub_26D25B054(v2, v3);
  }
}

@end