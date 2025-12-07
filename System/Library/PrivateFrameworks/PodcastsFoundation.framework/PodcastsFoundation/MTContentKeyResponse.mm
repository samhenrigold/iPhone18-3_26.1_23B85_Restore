@interface MTContentKeyResponse
- (MTContentKeyResponse)init;
- (MTContentKeyResponse)initWithRequest:(id)request error:(id)error;
- (MTContentKeyResponse)initWithRequest:(id)request keyData:(id)data renewalDate:(id)date error:(id)error;
- (NSDate)renewalDate;
- (NSError)error;
- (void)setError:(id)error;
@end

@implementation MTContentKeyResponse

- (NSDate)renewalDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  sub_1D8CF6B1C(self + OBJC_IVAR___MTContentKeyResponse_renewalDate, &v12 - v4);
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    (*(v7 + 8))(v5, v6);
    v9 = v10;
  }

  return v9;
}

- (NSError)error
{
  v3 = OBJC_IVAR___MTContentKeyResponse_error;
  swift_beginAccess();
  v4 = *(self + v3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D9176A5C();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setError:(id)error
{
  v5 = OBJC_IVAR___MTContentKeyResponse_error;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = error;
  selfCopy = self;
  errorCopy = error;
}

- (MTContentKeyResponse)initWithRequest:(id)request error:(id)error
{
  requestCopy = request;
  if (error)
  {
    errorCopy = error;
    v8 = sub_1D9176A5C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [(MTContentKeyResponse *)self initWithRequest:requestCopy keyData:0 renewalDate:0 error:v8];

  return v9;
}

- (MTContentKeyResponse)initWithRequest:(id)request keyData:(id)data renewalDate:(id)date error:(id)error
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - v11;
  if (!data)
  {
    requestCopy = request;
    dateCopy = date;
    errorCopy = error;
    v18 = 0xF000000000000000;
    if (date)
    {
      goto LABEL_3;
    }

LABEL_5:
    v23 = sub_1D9176E3C();
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
    goto LABEL_6;
  }

  requestCopy2 = request;
  dateCopy2 = date;
  errorCopy2 = error;
  dataCopy = data;
  data = sub_1D9176C8C();
  v18 = v17;

  if (!date)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D9176DFC();

  v19 = sub_1D9176E3C();
  (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
LABEL_6:
  v24 = sub_1D8FF9600(request, data, v18, v12, error);

  sub_1D8D75668(data, v18);
  return v24;
}

- (MTContentKeyResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end