@interface MAIDayStreamDiagnosticLogger
- (MAIDayStreamDiagnosticLogger)initWithConfig:(id)config;
- (void)finalizeDayStreamInputWithDay:(unsigned int)day;
- (void)logDayStreamProcessorOutput:;
- (void)logDayStreamProcessorOutput:(MAIDayStreamProcessorOutput *)output;
@end

@implementation MAIDayStreamDiagnosticLogger

- (MAIDayStreamDiagnosticLogger)initWithConfig:(id)config
{
  v15 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v13.receiver = self;
  v13.super_class = MAIDayStreamDiagnosticLogger;
  if ([(MAIDiagnosticLogger *)&v13 init])
  {
    v5 = configCopy;
    v11[0] = 0;
    v12 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    userReportedCycleLength = [v5 userReportedCycleLength];
    if (userReportedCycleLength)
    {
      v14[0] = [userReportedCycleLength intValue];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace<char const(&)[24],int>(v11);
    }

    julianDayOfUserReportedCycleLength = [v5 julianDayOfUserReportedCycleLength];
    if (julianDayOfUserReportedCycleLength)
    {
      v14[0] = [julianDayOfUserReportedCycleLength intValue];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace<char const(&)[35],int>(v11);
    }

    userReportedMenstruationLength = [v5 userReportedMenstruationLength];
    if (userReportedMenstruationLength)
    {
      v14[0] = [userReportedMenstruationLength intValue];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace<char const(&)[31],int>(v11);
    }

    julianDayOfUserReportedMenstruationLength = [v5 julianDayOfUserReportedMenstruationLength];
    if (julianDayOfUserReportedMenstruationLength)
    {
      v14[0] = [julianDayOfUserReportedMenstruationLength intValue];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace<char const(&)[42],int>(v11);
    }

    [v5 birthDateComponents];
    if (objc_claimAutoreleasedReturnValue())
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[5],char [5],0>(v14, "year");
    }

    v14[0] = [v5 todayAsJulianDay];
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace<char const(&)[17],unsigned int>(v11);
  }

  return 0;
}

- (void)finalizeDayStreamInputWithDay:(unsigned int)day
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_inputJson(self, a2);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  if (*buf)
  {
    objc_msgSend_inputJson(self);
    objc_msgSend_jsonObjectName(self);
    v4 = std::string::append(&v6, ".analyze", 8uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v8 = v4->__r_.__value_.__r.__words[2];
    *__p = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string,std::string,0>(buf, __p);
  }
}

- (void)logDayStreamProcessorOutput:(MAIDayStreamProcessorOutput *)output
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = output->var0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v4, 0, 0, 0, 2);
}

- (void)logDayStreamProcessorOutput:
{
  v4 = *MEMORY[0x277D85DE8];
  uTF8String = [@"julianDayOfAnalysisWindowStart" UTF8String];
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const*,char const*,0>(v3, &uTF8String);
}

@end