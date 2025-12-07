uint64_t sub_22B7CEB74()
{
  result = sub_22B7DB678();
  qword_281422600 = result;
  return result;
}

uint64_t sub_22B7CEBB0(uint64_t a1, uint64_t a2)
{
  v2 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v40 - v3;
  v5 = sub_22B7DA828();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  sub_22B7DA808();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_22B7CDAE0(v4);
    return 0;
  }

  (*(v6 + 32))(v11, v4, v5);
  while (1)
  {
    v22 = sub_22B7DA738();
    v24 = v23;
    v23, v23, v25, v26, v27, v28, v29, v30, v40, v41;
    v31 = (v24 >> 56) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v31 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (!v31)
    {
      break;
    }

LABEL_5:
    sub_22B7DA7C8();
    (*(v6 + 40))(v11, v9, v5);
  }

  if (sub_22B7DA778() == 0x6F685070756F7247 && v32 == 0xEF6567616D496F74)
  {
    0xEF6567616D496F74, 0xEF6567616D496F74, v33, v34, v35, v36, v37, v38, v40, v41;
    goto LABEL_5;
  }

  v13 = v32;
  v14 = sub_22B7DC518();
  v13, v15, v16, v17, v18, v19, v20, v21, v40, v41;
  if (v14)
  {
    goto LABEL_5;
  }

  v39 = sub_22B7DA778();
  (*(v6 + 8))(v11, v5);
  return v39;
}

id PersistedCollaborationNotice.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PersistedCollaborationNotice.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PersistedCollaborationNotice();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PersistedCollaborationNotice.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersistedCollaborationNotice();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PersistedCollaborationNotice.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22B7DB678();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22B7CF008@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_22B7DA928();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_22B7DA968();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_22B7CF0A8(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  sub_22B7368FC(a1, &v15 - v9);
  v11 = *a2;
  v12 = sub_22B7DA968();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_22B7DA8B8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

void sub_22B7CF1D4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 metadata];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22B7DA848();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_22B7CF23C(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_22B7DA838();
  }

  v4 = v3;
  [v2 setMetadata_];
}

void sub_22B7CF2B4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22B7DB6A8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_22B7CF318(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = sub_22B7DB678();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_22B7CF388@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PersistedCollaborationNotice();
  result = sub_22B7DC2F8();
  *a2 = result;
  return result;
}

void sub_22B7CF420()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[IMDBroadcastController registerSharedProvider:]"];
  [v1 handleFailureInFunction:v0 file:@"IMDBroadcastController.m" lineNumber:27 description:@"Can't set shared provider more than once!"];
}

void sub_22B7CF4C0(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 guid];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_22B4CC000, a3, OS_LOG_TYPE_ERROR, "Chat GUID %@ or message GUID %@ not found", &v6, 0x16u);
}

void sub_22B7CF574(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Got nil chat for chatID: %@", &v2, 0xCu);
}

void sub_22B7CF628(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "No account or ID set: %@", &v2, 0xCu);
}

void sub_22B7CF6F8(void *a1)
{
  v1 = [a1 description];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_22B4F9594(&dword_22B4CC000, v2, v3, "will update sync state: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_22B7CF784(void *a1)
{
  v1 = [a1 description];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_22B4F9594(&dword_22B4CC000, v2, v3, "broadcasting current sync state: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_22B7CF80C(void *a1)
{
  v1 = [a1 description];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_22B4F9594(&dword_22B4CC000, v2, v3, "broadcasting final requested update: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_22B7CFA14(uint64_t a1)
{
  [*(a1 + 8) isLoaded];
  sub_22B4FFBA0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_22B7CFAD8(uint64_t a1, id *a2)
{
  [*a2 isLoaded];
  v8 = [*a2 bundleIdentifier];
  sub_22B4FFBA0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Au);
}

void sub_22B7CFBC4(uint64_t a1, Class *a2)
{
  v7 = NSStringFromClass(*a2);
  sub_22B4FFBA0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_22B7CFC70(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_22B4CC000, log, OS_LOG_TYPE_DEBUG, "%@: Service properties: %@", &v4, 0x16u);
}

void sub_22B7CFCFC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_22B4CC000, log, OS_LOG_TYPE_ERROR, "%@: Load failed! Disabling any active accounts  (Error: %@)", &v3, 0x16u);
}

void sub_22B7CFD84(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_DEBUG, "   => Disabling: %@", &v2, 0xCu);
}

void sub_22B7CFDFC(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Latest item time is nil, can't update chat's lastTUConversationCreatedDate! item: %@", &v2, 0xCu);
}

void sub_22B7CFE74(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_22B4CC000, a3, OS_LOG_TYPE_ERROR, "Failed to respond to ST request with answer: %@ error: %@", &v6, 0x16u);
}

void sub_22B7CFFE4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Error checking if sysdiagnose is in progress: %@", &v2, 0xCu);
}

void sub_22B7D0098(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "No message dictionary to report for message: %@", &v2, 0xCu);
}

void sub_22B7D0110(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "No chat found to report not junk for message guid: %@", &v2, 0xCu);
}

void sub_22B7D0188(void *a1)
{

  objc_end_catch();
}

void sub_22B7D01BC()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = 138412546;
  v1 = @"recipient-uri";
  v2 = 2080;
  v3 = "messageDictionary";
  _os_log_error_impl(&dword_22B4CC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_22B7D03B8(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_DEBUG, "Found attribute. Value = [%@], string in range", &v2, 0xCu);
}

void sub_22B7D04E0(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Failed transcoding file transfer: %@   error: <NO OUTPUT PATH FOR ENCODED ITEM>", &v3, 0xCu);
}

void sub_22B7D06AC(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 guid];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_22B4CC000, a4, OS_LOG_TYPE_ERROR, "Failed to find rowID for guid %@ to mark transfer as failed", a1, 0xCu);
}

void sub_22B7D0738(unsigned __int8 *a1, unsigned __int16 a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4[0] = 67109376;
  v4[1] = v3;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_22B4CC000, log, OS_LOG_TYPE_ERROR, "IMSyndicationActionPipelineParameter received wrong version of SyndicationAction. Got: %d, expected: %d", v4, 0xEu);
}

void sub_22B7D0838(unsigned __int8 a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "IMSyndicationActionPipelineParameter invalid SyndicationItemType: %ld", &v2, 0xCu);
}

void sub_22B7D0900()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D093C()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D0A58()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D0B08()
{
  sub_22B531164();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_22B7D0B80()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D0BE4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Reindex request failed with error %@", &v2, 0xCu);
}

void sub_22B7D0C5C(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Failed to clear index state due to restore from backup: %@", &v2, 0xCu);
}

void sub_22B7D0CD4(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 context];
  v4 = [v3 batchIdentifier];
  sub_22B53EEE4();
  sub_22B53EEF0(&dword_22B4CC000, a2, v5, "Multiple message with SSM seen for batch %@, grabbing the latest one", v6);
}

void sub_22B7D0D7C()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B53EEF0(&dword_22B4CC000, v0, v1, "Couldn't find batch ID or message index in %@", v2);
}

void sub_22B7D0DE8(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 batchNumber];
  sub_22B53EEE4();
  sub_22B53EEF0(&dword_22B4CC000, a2, v4, "Error tracking batch %@", v5);
}

void sub_22B7D0E78()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B53EEF0(&dword_22B4CC000, v0, v1, "Couldn't find tracker for batch %@", v2);
}

void sub_22B7D0EE4(void *a1, NSObject *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [a1 service];
  v5 = [a1 service];
  v6 = [v5 serviceIdentifier];
  v7 = [a1 contextWithSSM];
  v8 = [a1 contextWithSSM];
  v9 = [v8 batchIdentifier];
  v10 = 134218754;
  v11 = v4;
  v12 = 2112;
  v13 = v6;
  v14 = 2048;
  v15 = v7;
  v16 = 2112;
  v17 = v9;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Failed to send batch complete, but we had missing prereqs service %p %@, context %p %@", &v10, 0x2Au);
}

void sub_22B7D1054(void *a1)
{
  v1 = sub_22B4E3C10([a1 state]);
  v2 = sub_22B4E3C10(1uLL);
  sub_22B544EE8();
  sub_22B544EC4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_22B7D1108(void *a1)
{
  v1 = sub_22B4E3C10([a1 state]);
  v2 = sub_22B4E3C10(2uLL);
  sub_22B544EE8();
  sub_22B544EC4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_22B7D11BC(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = sub_22B4E3C10([a1 state]);
  v4 = sub_22B4E3C10(3uLL);
  v5 = 138412546;
  v6 = v3;
  sub_22B544EE8();
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Invalid state transition attempted %@ -> %@", &v5, 0x16u);
}

void sub_22B7D127C(void *a1)
{
  v1 = sub_22B4E3C10([a1 state]);
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_22B7D1310(uint64_t a1)
{
  v2 = [*(a1 + 32) guid];
  [*(a1 + 32) getCMMState];
  sub_22B544EC4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_22B7D13F0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 40);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_22B517C7C(&dword_22B4CC000, a2, a3, "Error fetching moment share from %@. Error: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void sub_22B7D146C()
{
  sub_22B544F14();
  v2 = [v1 momentShare];
  v3 = [v0 guid];
  sub_22B544EE8();
  sub_22B544EC4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_22B7D151C(uint64_t a1, void *a2)
{
  v2 = sub_22B4E3C10([a2 state]);
  sub_22B544EE8();
  sub_22B544EC4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_22B7D1630(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 32) shareURL];
  v7 = [*(a1 + 40) guid];
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = a2;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&dword_22B4CC000, a3, OS_LOG_TYPE_ERROR, "Failed to accept the share at url: %@, error: %@ for message %@", &v8, 0x20u);
}

void sub_22B7D1770(uint64_t a1)
{
  v1 = [*(a1 + 32) uuid];
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_22B7D1848()
{
  sub_22B544F14();
  v1 = [*(v0 + 32) guid];
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_22B7D1B74()
{
  sub_22B544F14();
  v1 = [v0 uuid];
  sub_22B544ED4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_22B7D1C0C()
{
  sub_22B544F14();
  v1 = [v0 uuid];
  sub_22B544ED4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_22B7D1D10()
{
  sub_22B544F14();
  v1 = [*(v0 + 48) uuid];
  sub_22B544ED4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_22B7D1E7C(void *a1)
{
  v1 = [a1 uuid];
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_22B7D1F08(void *a1)
{
  v1 = [a1 uuid];
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_22B7D1F94(void *a1)
{
  v1 = [a1 message];
  v2 = [v1 guid];
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_22B7D2038(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = [a1 uniqueID];
  v2 = 138412546;
  v3 = v1;
  v4 = 2080;
  v5 = "_pendingCodesToDevicesForApproval";
  _os_log_error_impl(&dword_22B4CC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v2, 0x16u);
}

void sub_22B7D212C(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Updating SafetyMonitor on Notification response failed with error %@", &v4, 0xCu);
}

void sub_22B7D2220(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Did receive a display name change, but found no identifier in domain %@", &v2, 0xCu);
}

void sub_22B7D22E8(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 chatIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "No message for chat: %@", &v4, 0xCu);
}

void sub_22B7D23C4(void *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a1 guid];
  v6 = [a2 service];
  v7 = [v6 internalName];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_22B4CC000, a3, OS_LOG_TYPE_ERROR, "Requested to report junk for message GUID %@ but service %@ does not support this!", &v8, 0x16u);
}

void sub_22B7D24C0(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Message not found to update SyndicationAction: %@", &v2, 0xCu);
}

void sub_22B7D2538(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Error processing SyndicationAction: %@", &v2, 0xCu);
}

void sub_22B7D25C4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_DEBUG, "Key value store will update: %@", &v2, 0xCu);
}

void sub_22B7D263C(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_DEBUG, "Key value store did update value: %@", &v2, 0xCu);
}

void sub_22B7D271C(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Unable to copy file transfer: %@", &v2, 0xCu);
}

void sub_22B7D2978(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Attachments - Failed to update transfer preview size for %@, transfer not found", &v2, 0xCu);
}

void sub_22B7D2AC0(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_22B4CC000, log, OS_LOG_TYPE_DEBUG, "Writing other plugin payload attachment to disk.", buf, 2u);
}

void sub_22B7D2B00(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_22B4CC000, log, OS_LOG_TYPE_DEBUG, "Writing image plugin payload attachment to disk.", buf, 2u);
}

void sub_22B7D2B40(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[IMDFileTransferCenter retrieveLocalFileURLForFileTransferWithGUIDs:options:completion:]";
  _os_log_error_impl(&dword_22B4CC000, log, OS_LOG_TYPE_ERROR, "%s was given no transfer guids", &v1, 0xCu);
}

void sub_22B7D2C3C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_22B4CC000, log, OS_LOG_TYPE_ERROR, "Error fetching off grid subscription validation tokens for handle handleID: %@ Error: %@", &v4, 0x16u);
}

void sub_22B7D2CC8(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Cache miss for subscription validation token for handleID %@", &v2, 0xCu);
}

void sub_22B7D2D84(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", &v2, 0xCu);
}

void sub_22B7D2E4C(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 guid];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_22B4CC000, a4, OS_LOG_TYPE_ERROR, "Unexpected state! Chat %@ to sync has syncState 1", a1, 0xCu);
}

void sub_22B7D2FA0(void *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  sub_22B5867DC();
  sub_22B544EC4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_22B7D3134(void *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  sub_22B5867DC();
  sub_22B544EC4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_22B7D3288()
{
  sub_22B5867C8();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_22B7D3304(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "version")}];
  sub_22B5867C8();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_22B7D3444()
{
  sub_22B5867C8();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_22B7D3540()
{
  sub_22B5867C8();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_22B7D35BC(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "version")}];
  sub_22B5867C8();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_22B7D36FC()
{
  sub_22B5867C8();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_22B7D3778(uint64_t a1)
{
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  sub_22B544EC4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_22B7D3818()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  sub_22B5867C8();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_ERROR, "%s: Bailing receive notice. Could not unarchive event with expected type '%@' error: %@", v3, 0x20u);
}

void sub_22B7D38A4(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "eventType")}];
  sub_22B5867C8();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_22B7D3950()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class get_SWHighlightEventAllowListClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMDCollaborationNoticeDispatcher.m" lineNumber:35 description:{@"Unable to find class %s", "_SWHighlightEventAllowList"}];

  __break(1u);
}

void sub_22B7D39CC(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SharedWithYouLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IMDCollaborationNoticeDispatcher.m" lineNumber:34 description:{@"%s", *a1}];

  __break(1u);
}

void sub_22B7D3A4C(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 service];
  v6 = [a2 actualService];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_22B4CC000, a3, OS_LOG_TYPE_DEBUG, "Protobuf4 will override messages' service (current %@, override %@)", &v7, 0x16u);
}

void sub_22B7D3B8C(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch client state: %@", &v2, 0xCu);
}

void sub_22B7D3C04(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_FAULT, "Failed to inspect client state: %@", &v2, 0xCu);
}

void sub_22B7D3C90()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"DMUserDataDisposition _DMGetUserDataDisposition(void)"];
  [v0 handleFailureInFunction:v1 file:@"IMDaemonCoreSpotlightUtilities.m" lineNumber:19 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_22B7D3D4C(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *DataMigrationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IMDaemonCoreSpotlightUtilities.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void sub_22B7D3DCC(void *a1)
{
  v1 = [a1 fromIdentifier];
  sub_22B53EEE4();
  sub_22B593850(&dword_22B4CC000, v2, v3, "Empty normalizedFamilyMemberHandles. Dropping Family message received from: %@", v4, v5, v6, v7);
}

void sub_22B7D3E54(void *a1)
{
  v1 = [a1 fromIdentifier];
  sub_22B53EEE4();
  sub_22B593850(&dword_22B4CC000, v2, v3, "(nil SCI) Message is not from known family member, received from: %@", v4, v5, v6, v7);
}

void sub_22B7D3EDC()
{
  v2 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  _os_log_error_impl(&dword_22B4CC000, v0, OS_LOG_TYPE_ERROR, "FAFetchFamilyCircleRequest failed %@", v1, 0xCu);
}

void sub_22B7D3F94(uint64_t a1)
{
  v1 = [*(a1 + 48) fromIdentifier];
  sub_22B53EEE4();
  sub_22B593850(&dword_22B4CC000, v2, v3, "(with SCI lookup) Message is not from known family member, received from: %@", v4, v5, v6, v7);
}

void sub_22B7D4020()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFAFetchFamilyCircleRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMFamilySenderMessageProcessingPipelineComponent.m" lineNumber:32 description:{@"Unable to find class %s", "FAFetchFamilyCircleRequest"}];

  __break(1u);
}

void sub_22B7D409C(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *FamilyCircleLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IMFamilySenderMessageProcessingPipelineComponent.m" lineNumber:31 description:{@"%s", *a1}];

  __break(1u);
}

void sub_22B7D41CC()
{
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22B7D427C()
{
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22B7D432C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_22B4CC000, log, OS_LOG_TYPE_ERROR, "Chunk contained no valid message guids, stopping chunking.", buf, 2u);
}

void sub_22B7D436C()
{
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22B7D43DC()
{
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22B7D444C(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 chatIdentifier];
  sub_22B53EEE4();
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Missing last sent date for chatID %@", v4, 0xCu);
}

void sub_22B7D4808(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_22B4CC000, log, OS_LOG_TYPE_FAULT, "Failed type check! {key: %@, class: %@}", &v3, 0x16u);
}

void sub_22B7D48B8()
{
  sub_22B5BEE6C(*MEMORY[0x277D85DE8]);
  sub_22B5BEE7C();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "%@ is not running in the background", v2, v3, v4, v5);
}

void sub_22B7D4920()
{
  sub_22B5BEE6C(*MEMORY[0x277D85DE8]);
  sub_22B5BEE7C();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "%@ send throttled", v2, v3, v4, v5);
}

void sub_22B7D4988()
{
  sub_22B5BEE6C(*MEMORY[0x277D85DE8]);
  sub_22B5BEE7C();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "%@ tried sending to an unauthorized recipient", v2, v3, v4, v5);
}

void sub_22B7D49F0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_22B544EF8(&dword_22B4CC000, a2, a3, "Failed to find session for service %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22B7D4AC8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) identifier];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_22B4CC000, a3, OS_LOG_TYPE_ERROR, "Error posting notification request %@. Error: %@", &v6, 0x16u);
}

void sub_22B7D4BE8()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D4C8C(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 ID];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_22B4CC000, a4, OS_LOG_TYPE_ERROR, "Could not get IDS recipient ID from handle: %@", a1, 0xCu);
}

void sub_22B7D4D04(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  sub_22B544EF8(&dword_22B4CC000, a2, a3, "Could not get my IDS ID from handle: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22B7D4D74()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D4DB0()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D4DEC(void *a1, void *a2)
{
  v3 = [a1 path];
  v4 = [a2 localizedDescription];
  sub_22B5D82F4();
  sub_22B544EC4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_22B7D4EAC()
{
  sub_22B53EEE4();
  sub_22B5D82F4();
  sub_22B517C7C(&dword_22B4CC000, v0, v1, "Received a personal nickname update, but it was not from one of our own devices From: %@, ID:%@");
}

void sub_22B7D4F1C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IMDNicknameController service:account:incomingTopLevelMessage:fromID:messageContext:]";
  sub_22B544EF8(&dword_22B4CC000, a1, a3, "%s: Bailing receive notice. Zero length fromHandle. Dropping message", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22B7D4F94(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_22B5D82F4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_22B7D503C()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D5078()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D50B4()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D52F8(void *a1)
{
  v1 = [a1 handle];
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_22B7D5430()
{
  sub_22B53EEE4();
  sub_22B5D82F4();
  sub_22B517C7C(&dword_22B4CC000, v0, v1, "Error writing data to KVStore %@ %@");
}

void sub_22B7D5AA0()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D5ADC()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D5B18()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D5B54()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D5FF8(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = &unk_283F4EE88;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Error getting Carrier Bundle dictionary. Key Hierarchy -> %@.\nCarrier Bundle object -> %@", &v2, 0x16u);
}

void sub_22B7D6100(void *a1)
{
  v1 = [a1 serviceName];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_22B593850(&dword_22B4CC000, v2, v3, "Debug info, service: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_22B7D6188(void *a1)
{
  v1 = [a1 account];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_22B593850(&dword_22B4CC000, v2, v3, "Debug info, account: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_22B7D6278(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Invalid businessID: %@", &v2, 0xCu);
}

void sub_22B7D6304()
{
  v5 = 138412546;
  sub_22B5FE828();
  sub_22B5FE838(&dword_22B4CC000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_22B7D638C()
{
  v5 = 138412546;
  sub_22B5FE828();
  sub_22B5FE838(&dword_22B4CC000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_22B7D6414()
{
  v5 = 138412546;
  sub_22B5FE828();
  sub_22B5FE838(&dword_22B4CC000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_22B7D649C()
{
  v5 = 138412546;
  sub_22B5FE828();
  sub_22B5FE838(&dword_22B4CC000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_22B7D6524()
{
  v5 = 138412546;
  sub_22B5FE828();
  sub_22B5FE838(&dword_22B4CC000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_22B7D6618(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [a1 guid];
  v5 = 138412546;
  v6 = v4;
  v7 = 2048;
  v8 = [a1 rowID];
  _os_log_debug_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_DEBUG, "Fetching unread count report for chat GUID %@ chat rowID %lld", &v5, 0x16u);
}

void sub_22B7D66D4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_22B544EF8(&dword_22B4CC000, a2, a3, "Expected to blocklist chat but groupID does not exist: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22B7D6740(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_22B544EF8(&dword_22B4CC000, a2, a3, "ASSERTION FAILED: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22B7D6804(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_22B544EF8(&dword_22B4CC000, a2, a3, "Error marking chats as reviewed: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22B7D6924(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

void sub_22B7D6BA8(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  sub_22B53EEE4();
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "updateTemporaryTransferGUIDsOn got something thats not a IMMessageItem: %@", v3, 0xCu);
}

void sub_22B7D6C30(uint64_t a1, void *a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = [a2 fileTransferGUIDs];
  _os_log_error_impl(&dword_22B4CC000, a3, OS_LOG_TYPE_ERROR, "We may have failed to update a message (guid %@) in the DB, and orphaned its attachments whose GUIDs we just updated %@", &v4, 0x16u);
}

void sub_22B7D6CE4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getILMessageFilterCapabilitiesQueryRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMDIdentityLookupDecisioningManager.m" lineNumber:23 description:{@"Unable to find class %s", "ILMessageFilterCapabilitiesQueryRequest"}];

  __break(1u);
}

void sub_22B7D6D60(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *IdentityLookupLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IMDIdentityLookupDecisioningManager.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void sub_22B7D6DE0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getILMessageFilterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMDIdentityLookupDecisioningManager.m" lineNumber:21 description:{@"Unable to find class %s", "ILMessageFilter"}];

  __break(1u);
}

void sub_22B7D6E5C()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getILMessageFilterQueryRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMDIdentityLookupDecisioningManager.m" lineNumber:20 description:{@"Unable to find class %s", "ILMessageFilterQueryRequest"}];

  __break(1u);
}

void sub_22B7D7038(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Failed to send reachability response to %@", &v2, 0xCu);
}

void sub_22B7D70C4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_22B4CC000, log, OS_LOG_TYPE_ERROR, "Failed to create IMMessageItem for scheduled message from recordRef.", buf, 2u);
}

void sub_22B7D7104(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [a1 guid];
  v5 = 138412546;
  v6 = v4;
  v7 = 2048;
  v8 = [a1 rowID];
  _os_log_debug_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_DEBUG, "Counting unread messages for chat GUID %@ chat rowID %lld", &v5, 0x16u);
}

void sub_22B7D71C0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_22B4CC000, log, OS_LOG_TYPE_ERROR, "Failed adding %@ to Spotlight with error %@", &v4, 0x16u);
}

void sub_22B7D724C(NSObject *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:&stru_283F23018];
  v3 = 136315906;
  v4 = "chat";
  v5 = 2080;
  v6 = "[IMDChatStore deleteChat:]";
  v7 = 1024;
  v8 = 839;
  v9 = 2112;
  v10 = v2;
  _os_log_error_impl(&dword_22B4CC000, a1, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", &v3, 0x26u);
}

void sub_22B7D732C()
{
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22B7D73B0()
{
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22B7D7420()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D745C()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7498()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D74D4()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7510()
{
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22B7D7580()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D75BC()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D75F8()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_22B4CC000, v1, OS_LOG_TYPE_ERROR, "Start emergency message reported error: %@, message: %@", v2, 0x16u);
}

void sub_22B7D767C()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D76B8()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D76F4()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7730()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D776C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_22B53EEE4();
  sub_22B593850(&dword_22B4CC000, v2, v3, "Stewie emergency stop sharing reported error: %@", v4, v5, v6, v7);
}

void sub_22B7D77F4()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7830()
{
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22B7D78A0()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D78DC()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7918()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7954()
{
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22B7D79C4()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7A00()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7A3C()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7A78()
{
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22B7D7AE8()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7B24()
{
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22B7D7B94()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7BE4(void *a1)
{
  v1 = [a1 chatIdentifier];
  sub_22B53EEE4();
  sub_22B593850(&dword_22B4CC000, v2, v3, "generateStopTranscriptSharingStatusItemForChat: called for unsupported chat identifier: %@", v4, v5, v6, v7);
}

void sub_22B7D7C6C(uint64_t a1)
{
  objc_opt_class();
  sub_22B53EEE4();
  v2 = v1;
  sub_22B593850(&dword_22B4CC000, v3, v4, "Dropping Stewie message, class not supported: %@", v5, v6, v7, v8);
}

void sub_22B7D7CF4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getDMFEmergencyModeMonitorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMDChorosController.m" lineNumber:57 description:{@"Unable to find class %s", "DMFEmergencyModeMonitor"}];

  __break(1u);
}

void sub_22B7D7D70(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *DeviceManagementLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IMDChorosController.m" lineNumber:56 description:{@"%s", *a1}];

  __break(1u);
}

void sub_22B7D7E48(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "FindMyLocateSession startUpdatingFriendsWithCompletion failed with an error. This breaks our ability to get FindMy friendship updates throughout the app. If you see this error, please file a radar to the FindMy team. Error: %@", &v2, 0xCu);
}

void sub_22B7D7F24(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "SyndicationAction is nil when attempting to update IMDChat: %@", &v2, 0xCu);
}

void sub_22B7D8044()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_22B4CC000, v1, OS_LOG_TYPE_ERROR, "Unable to apply edits, message edit is older than previously processed edit. ThisEdit: %@, DateOfLastEdit: %@", v2, 0x16u);
}

void sub_22B7D80C8()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D8104()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D8140()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D817C()
{
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22B7D81EC()
{
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22B7D825C()
{
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22B7D82CC()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D8308()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D836C()
{
  v6 = 136315394;
  sub_22B65EC28();
  sub_22B5FE838(&dword_22B4CC000, v0, v1, "%s Invalid url: %@", v2, v3, v4, v5, v6);
}

void sub_22B7D83E4()
{
  v6 = 136315394;
  sub_22B65EC28();
  sub_22B5FE838(&dword_22B4CC000, v0, v1, "%s Invalid notice: %@", v2, v3, v4, v5, v6);
}

void sub_22B7D845C()
{
  v6 = 136315394;
  sub_22B65EC28();
  sub_22B5FE838(&dword_22B4CC000, v0, v1, "%s Invalid url: %@", v2, v3, v4, v5, v6);
}

void sub_22B7D84D4()
{
  v6 = 136315394;
  sub_22B65EC28();
  sub_22B5FE838(&dword_22B4CC000, v0, v1, "%s Invalid notice: %@", v2, v3, v4, v5, v6);
}

void sub_22B7D8560(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Error persisting noticeEventHistory, error: %@", &v2, 0xCu);
}

void sub_22B7D85EC()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = 138412546;
  v1 = @"mT";
  v2 = 2080;
  v3 = "dict";
  _os_log_error_impl(&dword_22B4CC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_22B7D8688(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Attempting to relay a display name change, but found no identifier in domain %@", &v2, 0xCu);
}

void sub_22B7D8714(void *a1)
{
  v1 = [a1 chipList];
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = [v1 count];
  sub_22B593850(&dword_22B4CC000, v2, v3, "Failed to generate relay data for chip list of items: %lu", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_22B7D87A4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Failed to generate relay data for chip list, we cannot parse the attributes: %@", &v2, 0xCu);
}

void sub_22B7D8860(void *a1)
{
  v1 = [a1 cards];
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = [v1 count];
  sub_22B593850(&dword_22B4CC000, v2, v3, "Failed to generate data for rich card of items: %lu", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_22B7D8904(void *a1)
{
  v1 = [a1 service];
  v2 = [v1 internalName];
  sub_22B53EEE4();
  sub_22B593850(&dword_22B4CC000, v3, v4, "%@ does not yet support relaying a message.", v5, v6, v7, v8);
}

void sub_22B7D89A0(void *a1)
{
  v1 = [a1 service];
  v2 = [v1 internalName];
  sub_22B53EEE4();
  sub_22B593850(&dword_22B4CC000, v3, v4, "%@ does not yet support relaying a delivery receipt.", v5, v6, v7, v8);
}

void sub_22B7D8ABC(void *a1)
{
  v1 = [a1 guid];
  sub_22B53EEE4();
  sub_22B593850(&dword_22B4CC000, v2, v3, "Could not get message time from message: %@", v4, v5, v6, v7);
}

void sub_22B7D8B44()
{
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22B7D8BB4()
{
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22B7D8C24()
{
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22B7D8C94()
{
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22B7D8D04()
{
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22B7D8DF0(void *a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  sub_22B544ED4();
  v6 = a2;
  _os_log_debug_impl(&dword_22B4CC000, a3, OS_LOG_TYPE_DEBUG, "Caching %lld listeners for guid %@", v5, 0x16u);
}

void sub_22B7D8E80(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_DEBUG, "No cached listeners for GUID %@", &v2, 0xCu);
}

void sub_22B7D8F0C()
{
  v4 = *MEMORY[0x277D85DE8];
  sub_22B544ED4();
  v3 = v0;
  _os_log_fault_impl(&dword_22B4CC000, v1, OS_LOG_TYPE_FAULT, "Failed type check! {key: %@, class: %@}", v2, 0x16u);
}

void sub_22B7D8FD8(void *a1)
{
  v1 = [a1 guid];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_22B593850(&dword_22B4CC000, v2, v3, "Not pregenerating preview, no filePath for transfer %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_22B7D9064(void *a1)
{
  v1 = [a1 guid];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_22B593850(&dword_22B4CC000, v2, v3, "Not pregenerating preview, no destination attachmentPath for transfer %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_22B7D9118(void *a1)
{
  v1 = [a1 guidString];
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_22B7D9244()
{
  v2 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  _os_log_error_impl(&dword_22B4CC000, v0, OS_LOG_TYPE_ERROR, "Received a notice for a URL without a tracked highlight, dropping notice. error: %@", v1, 0xCu);
}

void sub_22B7D92B8(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(a1 + 32);
  sub_22B6BB0EC();
  sub_22B517C7C(&dword_22B4CC000, v1, v2, "Unable to get app link for url: %@, error: %@", v3, DWORD2(v3));
}

void sub_22B7D93A4(void *a1)
{
  v1 = [a1 collaborationId];
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_22B7D9448(void *a1)
{
  v1 = [a1 collaborationId];
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_22B7D94D4()
{
  sub_22B53EEE4();
  sub_22B6BB0EC();
  sub_22B517C7C(&dword_22B4CC000, v0, v1, "attribution:%@ does not have a conversationIdentifier:%@");
}

void sub_22B7D95A8(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(a1 + 32);
  sub_22B6BB0EC();
  sub_22B517C7C(&dword_22B4CC000, v1, v2, "Received an error trying to get highlight for url: %@, error: %@", v3, DWORD2(v3));
}

void sub_22B7D961C()
{
  sub_22B53EEE4();
  sub_22B6BB0EC();
  sub_22B517C7C(&dword_22B4CC000, v0, v1, "Error while getting metadata: %@ error: %@");
}

void sub_22B7D9688(uint64_t a1)
{
  v1 = [*(a1 + 32) URL];
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_22B7D9794(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"IMDServiceSession_BuddyList.m" lineNumber:169 description:@"Too many calls to [IMDService endBuddyChanges]!"];

  *a4 = *a3;
}

void sub_22B7D9824(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = 4;
  _os_log_error_impl(&dword_22B4CC000, log, OS_LOG_TYPE_ERROR, "XPC Activity state was NOT in state continue(4), was in state %ld!", &v1, 0xCu);
}

void sub_22B7D9954()
{
  v2 = *MEMORY[0x277D85DE8];
  sub_22B633BCC();
  v1 = "SMSFilteringSettingsDict";
  _os_log_error_impl(&dword_22B4CC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v0, 0x16u);
}

void sub_22B7D9A0C(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 groupUUID];
  v4 = [v3 UUIDString];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Couldn't find a chat for groupID: (%@)", &v5, 0xCu);
}

void sub_22B7D9B74(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = [a1 style];
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Can't upgrade from 1:1 chat to Group chat -- Invalid chat style: %c", v3, 8u);
}

void sub_22B7D9C74()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_22B4CC000, v1, OS_LOG_TYPE_DEBUG, "%@ - write account defaults: %@", v2, 0x16u);
}

void sub_22B7D9E30(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_22B544EF8(&dword_22B4CC000, a2, a3, "** Received account removed for account: %@, but we can't find an account for it", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22B7D9E9C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_22B544EF8(&dword_22B4CC000, a2, a3, "** Received account enabled for account: %@, but we can't find an account for it", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22B7D9F08(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_22B544EF8(&dword_22B4CC000, a2, a3, "** Received account disabled for account: %@, but we can't find an account for it", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22B7DA288(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Error taking data from typing indicator icon image: %@", &v2, 0xCu);
}

void sub_22B7DA300(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Unable to get callerURI for account: %@", &v2, 0xCu);
}