@interface DIOpenParams
- (DIOpenParams)initWithURL:(id)l openMode:(int64_t)mode error:(id *)error;
- (expected<void,)unlockImageWithOpenParams:(DIOpenParams *)self;
- (id)openWithError:(id *)error;
@end

@implementation DIOpenParams

- (DIOpenParams)initWithURL:(id)l openMode:(int64_t)mode error:(id *)error
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = DIOpenParams;
  v9 = [(DIBaseParams *)&v14 initWithURL:lCopy error:error];
  if (!v9)
  {
    goto LABEL_5;
  }

  if (([lCopy isFileURL] & 1) == 0)
  {
    v11 = @"Only file URLs are supported by DIOpenParams";
LABEL_8:
    v10 = [DIError nilWithPOSIXCode:22 verboseInfo:v11 error:error];
    goto LABEL_9;
  }

  if (mode >= 3)
  {
    v11 = @"Invalid open mode specified";
    goto LABEL_8;
  }

  v9->_UIOOpenMode = dword_248FADDF8[mode];
LABEL_5:
  v10 = v9;
LABEL_9:
  v12 = v10;

  return v12;
}

- (expected<void,)unlockImageWithOpenParams:(DIOpenParams *)self
{
  diskimage_uio::diskimage_open_params::get_auth_table(a4, v24);
  if (v25)
  {
    diskimage_uio::crypto::auth_table::cbegin(v24, &v22);
    while (1)
    {
      diskimage_uio::crypto::auth_table::cend(v24, &v15);
      v6 = diskimage_uio::crypto::auth_table::const_iterator::operator!=(&v22, &v15);
      if (v16[24] == 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v16);
      }

      if (!v6)
      {
        *&v13 = "unlockImageWithOpenParams:]";
        *(&v13 + 1) = 27;
        v14 = 16;
        di_log::logger<di_log::log_printer<75ul>>::logger(&v15, &v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "Failed to unlock the encrypted image during open", 48);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<75ul>>::~logger_buf(&v15);
        MEMORY[0x24C1ED6A0](&v18);
        result = std::system_category();
        retstr->var0.var1.var0 = 80;
        retstr->var0.var1.var1 = result;
        retstr->var1 = 0;
        goto LABEL_16;
      }

      v7 = diskimage_uio::crypto::auth_table::const_iterator::operator*(&v22);
      diskimage_uio::crypto::auth_table_entry::get_entry(v7);
      v9 = v8;
      selfCopy = self;
      v10 = *(v9 + 16);
      if (v10 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      *&v13 = &selfCopy;
      (off_285C05330[v10])(&v15, &v13, v9);

      if ((v16[8] & 1) == 0)
      {
        result = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(&v15);
        v12 = 0;
        retstr->var0 = result->var0;
        goto LABEL_15;
      }

      v12 = v15;
      if (v15)
      {
        break;
      }

      diskimage_uio::crypto::auth_table::const_iterator::operator++(&v22, &v19);
      if (v20[24] == 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v20);
      }
    }

    retstr->var0.var0 = 0;
LABEL_15:
    retstr->var1 = v12;
LABEL_16:
    if (v23[24] == 1)
    {
      result = std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v23);
    }
  }

  else
  {
    result = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v24);
    retstr->var0 = result->var0;
    retstr->var1 = 0;
  }

  if (v25 == 1)
  {
    diskimage_uio::crypto::auth_table::~auth_table(v24);
  }

  return result;
}

- (id)openWithError:(id *)error
{
  [(DIBaseParams *)self inputURL];
  [objc_claimAutoreleasedReturnValue() path];
  fileSystemRepresentation = [objc_claimAutoreleasedReturnValue() fileSystemRepresentation];
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, &fileSystemRepresentation);
  [(DIOpenParams *)self UIOOpenMode];
  diskimage_uio::diskimage_open_params::create(&__p);
}

@end