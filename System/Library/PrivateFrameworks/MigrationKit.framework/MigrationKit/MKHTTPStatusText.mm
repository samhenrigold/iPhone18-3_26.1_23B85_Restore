@interface MKHTTPStatusText
+ (id)sharedInstance;
+ (id)statusText:(unint64_t)text;
- (MKHTTPStatusText)init;
- (id)statusText:(unint64_t)text;
@end

@implementation MKHTTPStatusText

- (MKHTTPStatusText)init
{
  v8[63] = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = MKHTTPStatusText;
  v2 = [(MKHTTPStatusText *)&v6 init];
  if (v2)
  {
    v7[0] = &unk_286AAC8C0;
    v7[1] = &unk_286AAC8D8;
    v8[0] = @"Continue";
    v8[1] = @"Switching Protocols";
    v7[2] = &unk_286AAC8F0;
    v7[3] = &unk_286AAC908;
    v8[2] = @"Processing";
    v8[3] = @"Early Hints";
    v7[4] = &unk_286AAC920;
    v7[5] = &unk_286AAC938;
    v8[4] = @"OK";
    v8[5] = @"Created";
    v7[6] = &unk_286AAC950;
    v7[7] = &unk_286AAC968;
    v8[6] = @"Accepted";
    v8[7] = @"Non-Authoritative Information";
    v7[8] = &unk_286AAC980;
    v7[9] = &unk_286AAC998;
    v8[8] = @"No Content";
    v8[9] = @"Reset Content";
    v7[10] = &unk_286AAC9B0;
    v7[11] = &unk_286AAC9C8;
    v8[10] = @"Partial Content";
    v8[11] = @"Multi-Status";
    v7[12] = &unk_286AAC9E0;
    v7[13] = &unk_286AAC9F8;
    v8[12] = @"Already Reported";
    v8[13] = @"IM Used";
    v7[14] = &unk_286AACA10;
    v7[15] = &unk_286AACA28;
    v8[14] = @"Multiple Choices";
    v8[15] = @"Moved Permanently";
    v7[16] = &unk_286AACA40;
    v7[17] = &unk_286AACA58;
    v8[16] = @"Found";
    v8[17] = @"See Other";
    v7[18] = &unk_286AACA70;
    v7[19] = &unk_286AACA88;
    v8[18] = @"Not Modified";
    v8[19] = @"Use Proxy";
    v7[20] = &unk_286AACAA0;
    v7[21] = &unk_286AACAB8;
    v8[20] = @"Switch Proxy";
    v8[21] = @"Temporary Redirect";
    v7[22] = &unk_286AACAD0;
    v7[23] = &unk_286AACAE8;
    v8[22] = @"Permanent Redirect";
    v8[23] = @"Bad Request";
    v7[24] = &unk_286AACB00;
    v7[25] = &unk_286AACB18;
    v8[24] = @"Unauthorized";
    v8[25] = @"Payment Required";
    v7[26] = &unk_286AACB30;
    v7[27] = &unk_286AACB48;
    v8[26] = @"Forbidden";
    v8[27] = @"Not Found";
    v7[28] = &unk_286AACB60;
    v7[29] = &unk_286AACB78;
    v8[28] = @"Method Not Allowed";
    v8[29] = @"Not Acceptable";
    v7[30] = &unk_286AACB90;
    v7[31] = &unk_286AACBA8;
    v8[30] = @"Proxy Authentication Required";
    v8[31] = @"Request Timeout";
    v7[32] = &unk_286AACBC0;
    v7[33] = &unk_286AACBD8;
    v8[32] = @"Conflict";
    v8[33] = @"Gone";
    v7[34] = &unk_286AACBF0;
    v7[35] = &unk_286AACC08;
    v8[34] = @"Length Required";
    v8[35] = @"Precondition Failed";
    v7[36] = &unk_286AACC20;
    v7[37] = &unk_286AACC38;
    v8[36] = @"Request Entity Too Large";
    v8[37] = @"Request URI Too Long";
    v7[38] = &unk_286AACC50;
    v7[39] = &unk_286AACC68;
    v8[38] = @"Unsupported Media Type";
    v8[39] = @"Requested Range Not Satisfiable";
    v7[40] = &unk_286AACC80;
    v7[41] = &unk_286AACC98;
    v8[40] = @"Expectation Failed";
    v8[41] = @"I'm a teapot";
    v7[42] = &unk_286AACCB0;
    v7[43] = &unk_286AACCC8;
    v8[42] = @"Misdirected Request";
    v8[43] = @"Unprocessable Entity";
    v7[44] = &unk_286AACCE0;
    v7[45] = &unk_286AACCF8;
    v8[44] = @"Locked";
    v8[45] = @"Failed Dependency";
    v7[46] = &unk_286AACD10;
    v7[47] = &unk_286AACD28;
    v8[46] = @"Too Early";
    v8[47] = @"Upgrade Required";
    v7[48] = &unk_286AACD40;
    v7[49] = &unk_286AACD58;
    v8[48] = @"Precondition Required";
    v8[49] = @"Too Many Requests";
    v7[50] = &unk_286AACD70;
    v7[51] = &unk_286AACD88;
    v8[50] = @"Request Header Fields Too Large";
    v8[51] = @"Unavailable For Legal Reasons";
    v7[52] = &unk_286AACDA0;
    v7[53] = &unk_286AACDB8;
    v8[52] = @"Internal Server Error";
    v8[53] = @"Not Implemented";
    v7[54] = &unk_286AACDD0;
    v7[55] = &unk_286AACDE8;
    v8[54] = @"Bad Gateway";
    v8[55] = @"Service Unavailable";
    v7[56] = &unk_286AACE00;
    v7[57] = &unk_286AACE18;
    v8[56] = @"Gateway Timeout";
    v8[57] = @"HTTP Version Not Supported";
    v7[58] = &unk_286AACE30;
    v7[59] = &unk_286AACE48;
    v8[58] = @"Variant Also Negotiates";
    v8[59] = @"Insufficient Storage";
    v7[60] = &unk_286AACE60;
    v7[61] = &unk_286AACE78;
    v8[60] = @"Loop Detected";
    v8[61] = @"Not Extended";
    v7[62] = &unk_286AACE90;
    v8[62] = @"Network Authentication Required";
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:63];
    statusTexts = v2->_statusTexts;
    v2->_statusTexts = v3;
  }

  return v2;
}

- (id)statusText:(unint64_t)text
{
  statusTexts = self->_statusTexts;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:text];
  v5 = [(NSDictionary *)statusTexts objectForKey:v4];

  return v5;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[MKHTTPStatusText sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __34__MKHTTPStatusText_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(MKHTTPStatusText);

  return MEMORY[0x2821F96F8]();
}

+ (id)statusText:(unint64_t)text
{
  v4 = +[MKHTTPStatusText sharedInstance];
  v5 = [v4 statusText:text];

  return v5;
}

@end