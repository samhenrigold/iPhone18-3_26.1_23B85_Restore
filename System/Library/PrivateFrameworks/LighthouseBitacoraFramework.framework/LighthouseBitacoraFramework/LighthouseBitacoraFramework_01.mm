void sub_255F0AEE8(uint64_t *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_255ED5000, a2, OS_LOG_TYPE_ERROR, "unknown lastState value %d", v3, 8u);
}

void sub_255F0AF64(void *a1, const char *a2, uint64_t a3, __n128 a4)
{
  objc_msgSend_eventType(a1, a2, a4, a3);
  sub_255EE8490();
  _os_log_error_impl(v4, v5, v6, v7, v8, 8u);
}

void sub_255F0AFE8(void *a1, const char *a2, uint64_t a3, __n128 a4)
{
  v4 = objc_msgSend_event(a1, a2, a4, a3);
  objc_msgSend_phase(v4, v5, v7, v6);
  sub_255EE8490();
  _os_log_error_impl(v8, v9, v10, v11, v12, 8u);
}

void sub_255F0B148(void *a1, void *a2)
{
  v3 = a1;
  objc_msgSend_code(a2, v4, v6, v5);
  v10 = objc_msgSend_domain(a2, v7, v9, v8);
  sub_255EE84A0();
  sub_255EE8490();
  _os_log_error_impl(v11, v12, v13, v14, v15, 0x16u);
}

void sub_255F0B288(void *a1, void *a2)
{
  v3 = a1;
  objc_msgSend_code(a2, v4, v6, v5);
  v10 = objc_msgSend_domain(a2, v7, v9, v8);
  sub_255EE84A0();
  sub_255EE8490();
  _os_log_error_impl(v11, v12, v13, v14, v15, 0x16u);
}

void sub_255F0B3C8(void *a1, void *a2)
{
  v3 = a1;
  objc_msgSend_code(a2, v4, v6, v5);
  v10 = objc_msgSend_domain(a2, v7, v9, v8);
  sub_255EE84A0();
  sub_255EE8490();
  _os_log_error_impl(v11, v12, v13, v14, v15, 0x16u);
}

void sub_255F0C104(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v9 = objc_msgSend_succeeded(a2, v6, v8, v7);
  v13 = objc_msgSend_succeeded(a3, v10, v12, v11);
  *v20 = 138412546;
  *&v20[4] = v9;
  *&v20[12] = 2112;
  *&v20[14] = v13;
  sub_255EF4D8C(&dword_255ED5000, v14, v15, "LBFTrialEvent isEqual succeeded is not mached %@ %@", v16, v17, v18, v19, *v20, *&v20[8], *&v20[16]);
}

void sub_255F0C1C8(void *a1, void *a2, void *a3)
{
  v5 = a1;
  *v18 = 134218240;
  *&v18[4] = objc_msgSend_eventType(a2, v6, v8, v7);
  *&v18[12] = 2048;
  *&v18[14] = objc_msgSend_eventType(a3, v9, v11, v10);
  sub_255EF4D8C(&dword_255ED5000, v12, v13, "LBFTrialEvent isEqual eventType is not mached %ld %ld", v14, v15, v16, v17, *v18, *&v18[8], *&v18[16]);
}

void sub_255F0C2BC()
{
  sub_255EF5708();
  v3 = v2;
  v4 = sub_255EF5720();
  objc_msgSend_succeeded(v4, v5, v7, v6);
  objc_claimAutoreleasedReturnValue();
  v8 = sub_255EF5714();
  v12 = objc_msgSend_succeeded(v8, v9, v11, v10);
  sub_255EF56F0();
  sub_255EF4D8C(&dword_255ED5000, v13, v14, "LBFLighthouseEvent isEqual succeeded is not mached %@ %@", v15, v16, v17, v18);
}

void sub_255F0C364()
{
  sub_255EF5708();
  v3 = v2;
  v4 = sub_255EF5720();
  objc_msgSend_errorCode(v4, v5, v7, v6);
  objc_claimAutoreleasedReturnValue();
  v8 = sub_255EF5714();
  v12 = objc_msgSend_errorCode(v8, v9, v11, v10);
  sub_255EF56F0();
  sub_255EF4D8C(&dword_255ED5000, v13, v14, "LBFLighthouseEvent isEqual succeeded is not mached %@ %@", v15, v16, v17, v18);
}

void sub_255F0C40C()
{
  sub_255EF5708();
  v3 = v2;
  v4 = sub_255EF5720();
  objc_msgSend_errorDomain(v4, v5, v7, v6);
  objc_claimAutoreleasedReturnValue();
  v8 = sub_255EF5714();
  v12 = objc_msgSend_errorDomain(v8, v9, v11, v10);
  sub_255EF56F0();
  sub_255EF4D8C(&dword_255ED5000, v13, v14, "LBFLighthouseEvent isEqual errorDomain is not mached %@ %@", v15, v16, v17, v18);
}

void sub_255F0C4B4()
{
  sub_255EF5708();
  v3 = v2;
  v4 = sub_255EF5720();
  objc_msgSend_eventType(v4, v5, v7, v6);
  v8 = sub_255EF5714();
  *v18 = 134218240;
  *&v18[4] = v0;
  *&v18[12] = 2048;
  *&v18[14] = objc_msgSend_eventType(v8, v9, v11, v10);
  sub_255EF4D8C(&dword_255ED5000, v12, v13, "LBFLighthouseEvent isEqual eventType is not mached %ld %ld", v14, v15, v16, v17, *v18, *&v18[8], *&v18[16]);
}

void sub_255F0C59C(uint8_t *a1, void *a2, void *a3, unsigned int *a4)
{
  v7 = a2;
  v11 = objc_msgSend_eventType(a3, v8, v10, v9);
  *a1 = 67109120;
  *a4 = v11;
  _os_log_error_impl(&dword_255ED5000, v7, OS_LOG_TYPE_ERROR, "unknown BMLighthouseLedgerTrialdEvent event type %d", a1, 8u);
}

void sub_255F0C614()
{
  sub_255EF5708();
  v3 = v2;
  v4 = sub_255EF5720();
  objc_msgSend_eventType(v4, v5, v7, v6);
  v8 = sub_255EF5714();
  *v18 = 134218240;
  *&v18[4] = v0;
  *&v18[12] = 2048;
  *&v18[14] = objc_msgSend_eventType(v8, v9, v11, v10);
  sub_255EF4D8C(&dword_255ED5000, v12, v13, "LBFMLRuntimedEvent isEqual eventType is not mached %ld %ld", v14, v15, v16, v17, *v18, *&v18[8], *&v18[16]);
}

void sub_255F0C6B8()
{
  sub_255EF5708();
  v3 = v2;
  v4 = sub_255EF5720();
  objc_msgSend_succeeded(v4, v5, v7, v6);
  objc_claimAutoreleasedReturnValue();
  v8 = sub_255EF5714();
  v12 = objc_msgSend_succeeded(v8, v9, v11, v10);
  sub_255EF56F0();
  sub_255EF4D8C(&dword_255ED5000, v13, v14, "LBFMLRuntimedEvent isEqual succeeded is not mached %@ %@", v15, v16, v17, v18);
}

void sub_255F0C760()
{
  sub_255EF5708();
  v3 = v2;
  v4 = sub_255EF5720();
  objc_msgSend_errorCode(v4, v5, v7, v6);
  objc_claimAutoreleasedReturnValue();
  v8 = sub_255EF5714();
  v12 = objc_msgSend_errorCode(v8, v9, v11, v10);
  sub_255EF56F0();
  sub_255EF4D8C(&dword_255ED5000, v13, v14, "LBFMLRuntimedEvent isEqual errorCode is not mached %@ %@", v15, v16, v17, v18);
}

void sub_255F0C808()
{
  sub_255EF5708();
  v3 = v2;
  v4 = sub_255EF5720();
  objc_msgSend_errorDomain(v4, v5, v7, v6);
  objc_claimAutoreleasedReturnValue();
  v8 = sub_255EF5714();
  v12 = objc_msgSend_errorDomain(v8, v9, v11, v10);
  sub_255EF56F0();
  sub_255EF4D8C(&dword_255ED5000, v13, v14, "LBFMLRuntimedEvent isEqual errorDomain is not mached %@ %@", v15, v16, v17, v18);
}

void sub_255F0C8B0()
{
  sub_255EF5708();
  v3 = v2;
  v4 = sub_255EF5720();
  objc_msgSend_scheduled(v4, v5, v7, v6);
  objc_claimAutoreleasedReturnValue();
  v8 = sub_255EF5714();
  v12 = objc_msgSend_scheduled(v8, v9, v11, v10);
  sub_255EF56F0();
  sub_255EF4D8C(&dword_255ED5000, v13, v14, "LBFMLRuntimedEvent isEqual scheduled is not mached %@ %@", v15, v16, v17, v18);
}