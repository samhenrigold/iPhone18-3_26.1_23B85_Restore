@interface MediaSuggesterXPCServiceServer.Server
- (void)candidatesWithOptionsData:(id)data startDate:(id)date endDate:(id)endDate with:(id)with;
@end

@implementation MediaSuggesterXPCServiceServer.Server

- (void)candidatesWithOptionsData:(id)data startDate:(id)date endDate:(id)endDate with:(id)with
{
  v11 = sub_22C9C6350();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v18 = _Block_copy(with);
  dataCopy = data;
  dateCopy = date;
  endDateCopy = endDate;
  selfCopy = self;
  v22 = sub_22C9C6310();
  v24 = v23;

  sub_22C9C6340();
  sub_22C9C6340();

  *(swift_allocObject() + 16) = v18;
  sub_22C9BE280(v22, v24, v17);

  sub_22C9BFD9C(v22, v24);

  v25 = *(v12 + 8);
  v25(v15, v11);
  v25(v17, v11);
}

@end