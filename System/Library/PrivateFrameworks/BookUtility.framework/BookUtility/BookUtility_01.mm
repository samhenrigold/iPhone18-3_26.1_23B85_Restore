BOOL sub_241DCF38C(void *a1, uint64_t a2, void *a3, int a4)
{
  v6 = a3;
  v7 = v6;
  v10 = objc_msgSend_UTF8String(v7, v8, v9);
  if (a4)
  {
    v11 = 8;
  }

  else
  {
    v11 = 0;
  }

  v12 = xattr_name_with_flags(v10, v11);
  v15 = v12 == 0;
  if (!v12)
  {
    v24 = BookUtilityLog(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_241DD2064();
    }

    goto LABEL_12;
  }

  v16 = v12;
  v17 = objc_msgSend_path(a1, v13, v14);
  v18 = v17;
  v21 = objc_msgSend_UTF8String(v18, v19, v20);
  v22 = removexattr(v21, v16, 0);

  free(v16);
  if (v22)
  {
    v23 = __error();
    if (*v23 != 93)
    {
      v24 = BookUtilityLog(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_241DD1FE0();
      }

LABEL_12:

      goto LABEL_13;
    }
  }

  v15 = 1;
LABEL_13:

  return v15;
}

void sub_241DCF55C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  sub_241DAB2E0(&dword_241DA6000, a2, a3, "Error converting offline cache to AMSSnapshotBag: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_241DCF60C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_241DAB2E0(&dword_241DA6000, a2, a3, "Failed to retrieve the value for isAudiobooksStoreEnabled. %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_241DCF678(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_241DAB2E0(&dword_241DA6000, a2, a3, "Failed to retrieve the value for isMangaStoreEnabled. %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_241DCF6E4(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_241DA6000, log, OS_LOG_TYPE_ERROR, "Failed to remove BUTemporaryDirectory. Error: %@, path: %@", &v4, 0x16u);
}

void sub_241DCF784(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_241DA6000, a2, OS_LOG_TYPE_ERROR, "BUOnboardingAllBundleIDs: Failed to get personalization ID. error: %@", &v2, 0xCu);
}

void sub_241DCF86C(void *a1, NSObject *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_code(a1, a2, a3);
  v8 = objc_msgSend_domain(a1, v6, v7);
  v9 = 134218498;
  v10 = v5;
  v11 = 2114;
  v12 = v8;
  v13 = 2112;
  v14 = a1;
  _os_log_error_impl(&dword_241DA6000, a2, OS_LOG_TYPE_ERROR, "Couldn't write Zip: %zd %{public}@ %@", &v9, 0x20u);
}

void sub_241DCF934(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_241DA6000, a2, OS_LOG_TYPE_ERROR, "No subscription context available: %{public}@", &v2, 0xCu);
}

void sub_241DCF9AC(void *a1, NSObject *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_domain(a1, a2, a3);
  v8 = 138543874;
  v9 = v5;
  v10 = 2048;
  v11 = objc_msgSend_code(a1, v6, v7);
  v12 = 2112;
  v13 = a1;
  _os_log_error_impl(&dword_241DA6000, a2, OS_LOG_TYPE_ERROR, "Error reading carrier bundle value: {d=%{public}@ c=%ld, (%@)}", &v8, 0x20u);
}

void sub_241DCFAAC(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412546;
  v4 = v2;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_241DA6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[BUOSStateHandler] State handler '%@' failed to serialize data, error: %@", &v3, 0x16u);
}

void sub_241DCFB3C()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_241DA6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error consuming extension for container: %{darwin.errno}d", v1, 8u);
}

void sub_241DCFBEC(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 67109378;
  v2[1] = 5;
  v3 = 2114;
  v4 = a1;
  _os_log_error_impl(&dword_241DA6000, a2, OS_LOG_TYPE_ERROR, "BUCoalescingCallBlock notification block did not call its completion handler after %hus.  Block description=%{public}@", v2, 0x12u);
}

void sub_241DCFC9C()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  sub_241DCFCC0(v1, v2);
}

void sub_241DCFCC0(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&dword_241DA6000, a2, OS_LOG_TYPE_ERROR, "BUAppDataContainer: Error executing query: %s", &v2, 0xCu);
}

void sub_241DCFD90(void *a1, NSObject *a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_identifier(a1, a2, a3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_241DA6000, a2, OS_LOG_TYPE_FAULT, "Unable to locate container URL for %@. Falling back to temporary url", &v5, 0xCu);
}

void sub_241DCFE28(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_path(a2, a2, a3);
  sub_241DB9B1C();
  sub_241DB9B34(&dword_241DA6000, v4, v5, "%@: initWithURL: %@", v6, v7, v8, v9);
}

void sub_241DCFEBC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_path(a2, a2, a3);
  sub_241DB9B1C();
  sub_241DB9B34(&dword_241DA6000, v4, v5, "%@: openWithURL: %@", v6, v7, v8, v9);
}

void sub_241DCFF50(uint64_t a1, void *a2, uint64_t a3)
{
  objc_msgSend_code(a2, a2, a3);
  v11 = objc_msgSend_domain(a2, v4, v5);
  sub_241DB9B0C();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void sub_241DD002C(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  v11 = objc_msgSend_domain(a1, v4, v5);
  sub_241DB9B0C();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_241DD00EC(void *a1, const char *a2, uint64_t a3)
{
  v8 = objc_msgSend_path(a1, a2, a3);
  sub_241DB9B0C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_241DD0180()
{
  v0 = __error();
  strerror(*v0);
  sub_241DB9B0C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_241DD0264(void *a1, const char *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_fromURL(a1, a2, a3);
  v6 = 141558530;
  v7 = 1752392040;
  v8 = 2112;
  v9 = v5;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_241DA6000, a3, OS_LOG_TYPE_ERROR, "Failed to stat URL information. url: %{mask.hash}@ error: %@", &v6, 0x20u);
}

void sub_241DD0324(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_241DA6000, a2, OS_LOG_TYPE_ERROR, "Could not perform copyToURL: %@", &v2, 0xCu);
}

void sub_241DD039C()
{
  v4 = *MEMORY[0x277D85DE8];
  sub_241DC0418();
  v2 = 2082;
  v3 = "[BUZipArchive initWithOptions:]";
  _os_log_debug_impl(&dword_241DA6000, v0, OS_LOG_TYPE_DEBUG, "%@: %{public}s", v1, 0x16u);
}

void sub_241DD0424()
{
  v4 = *MEMORY[0x277D85DE8];
  sub_241DC0418();
  v2 = 2082;
  v3 = "[BUZipArchive readArchiveWithQueue:completion:]";
  _os_log_debug_impl(&dword_241DA6000, v0, OS_LOG_TYPE_DEBUG, "%@: %{public}s", v1, 0x16u);
}

void sub_241DD04AC()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_241DC0418();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&dword_241DA6000, v1, OS_LOG_TYPE_FAULT, "Failed to read ZIP archive. %{public}@, error: %@", v2, 0x16u);
}

void sub_241DD0598(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_entries(*(a1 + 32), a2, a3);
  LODWORD(v12) = 134217984;
  *(&v12 + 4) = objc_msgSend_count(v3, v4, v5) + 1;
  sub_241DC0424(&dword_241DA6000, v6, v7, "Failed to parse ZIP entry %tu. Will attempt to adjust offset backward.", v8, v9, v10, v11, v12, DWORD2(v12));
}

void sub_241DD062C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_entries(*(a1 + 32), a2, a3);
  LODWORD(v12) = 134217984;
  *(&v12 + 4) = objc_msgSend_count(v3, v4, v5) + 1;
  sub_241DC0424(&dword_241DA6000, v6, v7, "Failed to parse ZIP entry %tu. Will attempt to adjust offset forward.", v8, v9, v10, v11, v12, DWORD2(v12));
}

void sub_241DD07D4()
{
  v2 = *MEMORY[0x277D85DE8];
  sub_241DC03F0();
  _os_log_error_impl(&dword_241DA6000, v0, OS_LOG_TYPE_ERROR, "Exception thrown during extractToURL - toURL: %{mask.hash}@, exception: %@", v1, 0x20u);
}

void sub_241DD084C()
{
  v2 = *MEMORY[0x277D85DE8];
  sub_241DC03F0();
  _os_log_fault_impl(&dword_241DA6000, v0, OS_LOG_TYPE_FAULT, "extractToURL failed - toURL: %{mask.hash}@, error: %@", v1, 0x20u);
}

void sub_241DD0908(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 16);
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_241DA6000, a2, OS_LOG_TYPE_DEBUG, "-newAssertion: increased _count to %ld", &v3, 0xCu);
}

void sub_241DD09CC(uint64_t *a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 134218240;
  v5 = v3;
  v6 = 1024;
  v7 = a2 & 1;
  _os_log_debug_impl(&dword_241DA6000, log, OS_LOG_TYPE_DEBUG, "-newAssertion: _endAssertion decreased _count to %ld and returning result as %d", &v4, 0x12u);
}

void sub_241DD0A5C(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = a3;
  *(buf + 6) = 2082;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_241DA6000, log, OS_LOG_TYPE_ERROR, "Error opening file at path %s: %{public}s", buf, 0x16u);
}

void sub_241DD0AB4(int a1)
{
  LODWORD(v7) = 136446210;
  *(&v7 + 4) = strerror(a1);
  sub_241DC0424(&dword_241DA6000, v1, v2, "Error cleaning up dispatch channel: %{public}s", v3, v4, v5, v6, v7, DWORD2(v7));
}

void sub_241DD0B30(id *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_entry(*a1, a2, a3);
  v6 = objc_msgSend_name(v3, v4, v5);
  sub_241DC0418();
  sub_241DC0424(&dword_241DA6000, v7, v8, "Read was less than file header size for entry %@", v9, v10, v11, v12);
}

void sub_241DD0BD0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(*(a1 + 16), a2, a3);
  sub_241DC0418();
  sub_241DC0424(&dword_241DA6000, v4, v5, "Read was less than record size for entry %@", v6, v7, v8, v9);
}

void sub_241DD0C58(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(*(a1 + 16), a2, a3);
  sub_241DC0418();
  sub_241DC0424(&dword_241DA6000, v4, v5, "Local file header has bad signature for entry %@", v6, v7, v8, v9);
}

void sub_241DD0CE0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(*(a1 + 16), a2, a3);
  sub_241DC0418();
  sub_241DC0424(&dword_241DA6000, v4, v5, "Local file header doesn't match compression method from central directory file header for entry %@", v6, v7, v8, v9);
}

void sub_241DD0D68(id *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(*a1, a2, a3);
  sub_241DC0418();
  sub_241DC0424(&dword_241DA6000, v4, v5, "CRC does not match for entry %@", v6, v7, v8, v9);
}

void sub_241DD0E18()
{
  sub_241DC6B1C();
  sub_241DC6B28();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_241DD0E54()
{
  sub_241DC6B1C();
  sub_241DC6B28();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_241DD0ED0()
{
  sub_241DC0418();
  sub_241DC6B28();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_241DD0F80()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_241DC0418();
  v3 = 2112;
  v4 = @"com.apple.developer.icloud-services";
  v5 = 2112;
  v6 = v0;
  _os_log_error_impl(&dword_241DA6000, v1, OS_LOG_TYPE_ERROR, "Unexpected value %@ for %@ entitlement: %@", v2, 0x20u);
}

void sub_241DD1018()
{
  sub_241DC6B1C();
  sub_241DC6B28();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_241DD1054(id *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(*a1, a2, a3);
  sub_241DC0418();
  sub_241DC6B34(&dword_241DA6000, v4, v5, "Received %@", v6, v7, v8, v9);
}

void sub_241DD10DC(id *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(*a1, a2, a3);
  sub_241DC0418();
  sub_241DC6B34(&dword_241DA6000, v4, v5, "Received %@ but skipping notify observers", v6, v7, v8, v9);
}

void sub_241DD11DC(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  v6 = objc_msgSend_domain(a1, v4, v5);
  sub_241DC875C();
  sub_241DC8780(&dword_241DA6000, v7, v8, "Error reading from filter BUStreamReadChannel: %zd %{public}@ %@", v9, v10, v11, v12);
}

void sub_241DD1278(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  v6 = objc_msgSend_domain(a1, v4, v5);
  sub_241DC875C();
  sub_241DC8780(&dword_241DA6000, v7, v8, "Error reading from source BUReadChannel: %zd %{public}@ %@", v9, v10, v11, v12);
}

void sub_241DD1314(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_241DA6000, log, OS_LOG_TYPE_ERROR, "Failed to initialize zip archive at %@. error: %@", &v3, 0x16u);
}

void sub_241DD14D4(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_241DC0418();
  sub_241DB9B0C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_241DD1560(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_URLByDeletingLastPathComponent(a1, a2, a3);
  v6 = objc_msgSend_path(v3, v4, v5);
  sub_241DCA848();
  sub_241DB9B0C();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
}

void sub_241DD16DC(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_241DCA848();
  sub_241DB9B0C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_241DD17E8(id *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(*a1, a2, a3);
  sub_241DCA848();
  sub_241DB9B0C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_241DD19C8(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_241DA6000, a2, OS_LOG_TYPE_ERROR, "[Cellular] Returning 'null' identity after error occurred: %{public}@", &v2, 0xCu);
}

void sub_241DD1BF0()
{
  v2 = *MEMORY[0x277D85DE8];
  sub_241DCF4B4();
  _os_log_error_impl(&dword_241DA6000, v0, OS_LOG_TYPE_ERROR, "bu_isDirectory: bu_utType failed. url: %{mask.hash}@", v1, 0x16u);
}

void sub_241DD1C64()
{
  v2 = *MEMORY[0x277D85DE8];
  sub_241DCF4B4();
  _os_log_error_impl(&dword_241DA6000, v0, OS_LOG_TYPE_ERROR, "bu_isFolder: bu_utType failed. url: %{mask.hash}@", v1, 0x16u);
}

void sub_241DD1CD8()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_241DCF4B4();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_241DA6000, v2, OS_LOG_TYPE_ERROR, "bu_utType: resourceValuesForKeys failed. url: %{mask.hash}@ error: %@", v3, 0x20u);
}

void sub_241DD1DB0()
{
  __error();
  sub_241DCF4D4();
  sub_241DB9B0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void sub_241DD1E44()
{
  __error();
  sub_241DCF4D4();
  sub_241DB9B0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void sub_241DD1ED8()
{
  sub_241DCF50C();
  __error();
  sub_241DCF49C();
  sub_241DB9B0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_241DD1F5C()
{
  sub_241DCF50C();
  __error();
  sub_241DCF49C();
  sub_241DB9B0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_241DD1FE0()
{
  sub_241DCF50C();
  __error();
  sub_241DCF49C();
  sub_241DB9B0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_241DD2064()
{
  sub_241DCF50C();
  __error();
  sub_241DCF49C();
  sub_241DB9B0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}