@interface CSJournalProcessor
- (BOOL)isComplete;
- (BOOL)processNext:(id)next completion:(id)completion;
- (BOOL)setupFromSpotlightDaemonJournalWithParentFd:(int)fd spotlightBasePath:(const char *)path;
- (BOOL)setupFromTopLevelJournalWithParentFd:(int)fd journalBasePath:(const char *)path;
- (BOOL)setupWithParentFd:(int)fd name:(id)name;
- (BOOL)writeUpdaterProgressToStoreWithIndexType:(int)type UUID:(const char *)d serialNumber:(unint64_t)number error:(id)error;
- (CSJournalProcessor)init;
- (CSJournalProcessor)initWithParentFd:(int)fd eventListener:(id)listener indexType:(int)type journalNumber:(unint64_t)number journalCookie:(id)cookie name:(id)name;
- (CSJournalProcessor)initWithParentFd:(int)fd eventListener:(id)listener key:(id)key indexType:(int)type journalIno:(unint64_t)ino dev:(int)dev journalNumber:(unint64_t)number journalCookie:(const char *)self0 journalName:(const char *)self1 journalBasePath:(const char *)self2;
- (CSJournalProcessor)initWithParentFd:(int)fd eventListener:(id)listener key:(id)key msg:(id)msg journalBasePath:(const char *)path;
- (id)description;
- (id)initFromSpotlightDaemonWithParentFd:(int)fd eventListener:(id)listener key:(id)key msg:(id)msg spotlightBasePath:(const char *)path;
- (int)linkFileAtPath:(char *)path parentFd:(int)fd fileName:(const char *)name;
- (int)retainJournalFd;
- (int)retainProcessedFd;
- (int)retainTocFd;
- (uint64_t)dev;
- (uint64_t)err;
- (uint64_t)eventListener;
- (uint64_t)homePathHash;
- (uint64_t)itemHandler;
- (uint64_t)journalIno;
- (uint64_t)journalNumber;
- (uint64_t)journal_cookie;
- (uint64_t)journal_fd;
- (uint64_t)journal_fd_retain_count;
- (uint64_t)journal_file_size;
- (uint64_t)journal_orig_name;
- (uint64_t)managedJournal;
- (uint64_t)processed_fd;
- (uint64_t)processed_fd_retain_count;
- (uint64_t)processed_name;
- (uint64_t)setErr:(uint64_t)result;
- (uint64_t)setHomePathHash:(uint64_t)result;
- (uint64_t)setJournal_file_size:(uint64_t)result;
- (uint64_t)setManagedJournal:(uint64_t)result;
- (uint64_t)setToc_file_size:(uint64_t)result;
- (uint64_t)setToc_processed:(uint64_t)result;
- (uint64_t)setToc_retry_counter:(uint64_t)result;
- (uint64_t)toc_complete_size;
- (uint64_t)toc_fd;
- (uint64_t)toc_fd_retain_count;
- (uint64_t)toc_file_size;
- (uint64_t)toc_name;
- (uint64_t)toc_processed;
- (uint64_t)toc_retry_counter;
- (void)_processOffsetAtOffset:(int64_t)offset completion:(id)completion;
- (void)cooldown;
- (void)dealloc;
- (void)deleteFiles;
- (void)markComplete:(int64_t)complete processingDone:(BOOL)done;
- (void)releaseJournalFd;
- (void)releaseProcessedFd;
- (void)releaseTocFd;
- (void)retainJournalFd;
- (void)retainJournalUsingFd:(int)fd;
- (void)retainProcessedFd;
- (void)retainTocFd;
- (void)setItemHandler:(void *)handler;
- (void)warmup;
@end

@implementation CSJournalProcessor

- (id)description
{
  complete = self->_complete;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = objc_opt_class();
  eventListener = self->_eventListener;
  if (complete)
  {
    if (eventListener)
    {
      eventListener = eventListener->_delegate;
    }

    v7 = eventListener;
    v8 = [v4 initWithFormat:@"<%@:%p:%u; n: %llu pfd: %d offset: %lld jsz:%lld, tsz: %lld csz: %lld err: %d (%@)>", v5, self, -[CSEventListener eventType](v7, "eventType"), self->_journalNumber, self->_parentFD, self->_toc_processed, self->_journal_file_size, self->_toc_file_size, self->_toc_complete_size, self->_err, self->_key];
  }

  else
  {
    if (eventListener)
    {
      eventListener = eventListener->_delegate;
    }

    v7 = eventListener;
    v8 = [v4 initWithFormat:@"<%@:%p:%u; n: %llu pfd: %d offset: %lld jsz: %lld, tsz: %lld err: %d (%@)>", v5, self, -[CSEventListener eventType](v7, "eventType"), self->_journalNumber, self->_parentFD, self->_toc_processed, self->_journal_file_size, self->_toc_file_size, self->_err, self->_key, v11];
  }

  v9 = v8;

  return v9;
}

- (CSJournalProcessor)init
{
  v3.receiver = self;
  v3.super_class = CSJournalProcessor;
  result = [(CSJournalProcessor *)&v3 init];
  if (result)
  {
    result->_parentFD = -1;
    result->_journal_fd = -1;
    result->_toc_fd = -1;
    result->_processed_fd = -1;
  }

  return result;
}

- (BOOL)setupWithParentFd:(int)fd name:(id)name
{
  v68 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  memset(&v45, 0, sizeof(v45));
  if (fstat(fd, &v45) == -1)
  {
LABEL_41:
    v31 = *__error();
    goto LABEL_42;
  }

  st_dev = v45.st_dev;
  strncpy(__dst, [nameCopy fileSystemRepresentation], 0xFFuLL);
  v8 = strlen(__dst);
  v9 = 0;
  v10 = &__dst[v8];
  v11 = &__dst[v8 - 1];
  v12 = &__dst[v8];
  do
  {
    v13 = v9;
    if (v11 <= __dst)
    {
      if (v9)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }

    v9 = v12 - 1;
    v15 = *v11--;
    v14 = v15;
    --v12;
  }

  while ((v15 - 48) < 0xA);
  if (v14 != 95 || v13 == 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  __endptr = 0;
  v17 = strtoll(v13, &__endptr, 0);
  if (!v17)
  {
LABEL_26:
    v31 = -1;
    goto LABEL_42;
  }

  v18 = 0;
  self->_journalNumber = v17;
  v19 = v13 - 2;
  do
  {
    v20 = v18;
    if (v19 <= __dst)
    {
      if (!v18)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    v18 = v19;
    v22 = *v19--;
    v21 = v22;
  }

  while ((v22 - 48) < 0xA);
  if (v21 != 95 || v20 == 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  v24 = strtoll(v20, &__endptr, 0);
  if (!v24)
  {
    goto LABEL_26;
  }

  v65 = 0u;
  memset(v66, 0, sizeof(v66));
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  *__str = 0u;
  snprintf(__str, 0xFFuLL, "/.vol/%u/%llu", st_dev, v24);
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:__str];
  key = self->_key;
  self->_key = v25;

  v27 = 255 - v8;
  snprintf(v10, v27, ".journal");
  v28 = strdup(__dst);
  self->_journal_name = v28;
  v29 = openat(fd, v28, 0);
  if (v29 == -1)
  {
    self->_journal_file_size = 0;
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v32 = SKGLogInit();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [CSJournalProcessor setupWithParentFd:name:];
      }
    }
  }

  else
  {
    v30 = v29;
    self->_journal_file_size = lseek(v29, 0, 2);
    close(v30);
  }

  *v10 = 0;
  snprintf(v10, v27, ".toc");
  v33 = openat(fd, __dst, 0);
  if (v33 == -1)
  {
    goto LABEL_41;
  }

  v34 = v33;
  self->_toc_file_size = lseek(v33, 0, 2);
  close(v34);
  self->_toc_name = strdup(__dst);
  *v10 = 0;
  snprintf(v10, v27, ".processed");
  v35 = openat(self->_parentFD, __dst, 514, 384);
  if (v35 != -1)
  {
    v36 = v35;
    __buf = 0;
    self->_toc_processed = 0;
    if (pread(v35, &__buf, 8uLL, 0) == 8)
    {
      if (__buf < 0 || __buf > self->_toc_file_size)
      {
        memset(&v42, 0, sizeof(v42));
        v37 = fstat(v36, &v42);
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v38 = SKGLogInit();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218496;
            v47 = __buf;
            v48 = 2048;
            st_size = v42.st_size;
            v50 = 1024;
            v51 = v37;
            _os_log_error_impl(&dword_231B25000, v38, OS_LOG_TYPE_ERROR, "### Invalid processed offset (%lld) read from processed file. DebugInfo : (size = %lld, stat_err = %d)", buf, 0x1Cu);
          }
        }

        self->_toc_processed = 0;
      }

      else
      {
        self->_toc_processed = __buf;
      }
    }

    close(v36);
  }

  v41 = strdup(__dst);
  v31 = 0;
  self->_processed_name = v41;
  *v10 = 0;
LABEL_42:
  v39 = v31 == 0;

  return v39;
}

- (CSJournalProcessor)initWithParentFd:(int)fd eventListener:(id)listener indexType:(int)type journalNumber:(unint64_t)number journalCookie:(id)cookie name:(id)name
{
  v13 = *&fd;
  listenerCopy = listener;
  cookieCopy = cookie;
  nameCopy = name;
  v18 = [(CSJournalProcessor *)self init];
  v19 = v18;
  if (v18)
  {
    v18->_parentFD = v13;
    v18->_indexType = type;
    objc_storeStrong(&v18->_eventListener, listener);
    v19->_journalNumber = number;
    v19->_journal_cookie = strdup([cookieCopy UTF8String]);
    v19->_loaded = 1;
    v19->_lock._os_unfair_lock_opaque = 0;
    v19->_toc_retry_counter = 0;
    if (![(CSJournalProcessor *)v19 setupWithParentFd:v13 name:nameCopy])
    {

      v19 = 0;
    }
  }

  return v19;
}

- (BOOL)setupFromTopLevelJournalWithParentFd:(int)fd journalBasePath:(const char *)path
{
  v35 = *MEMORY[0x277D85DE8];
  if (fd == -1 || !self->_dev || (journalIno = self->_journalIno) == 0 || (journalNumber = self->_journalNumber) == 0 || (journal_orig_name = self->_journal_orig_name) == 0 || (journal_cookie = self->_journal_cookie) == 0 || !self->_key)
  {
    v13 = -1;
    return v13 == 0;
  }

  memset(v34, 0, sizeof(v34));
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  *__str = 0u;
  snprintf(__str, 0xFFuLL, "evt_%s_%s_%llu_%llu.journal", journal_orig_name, journal_cookie, journalIno, journalNumber);
  bzero(v19, 0x400uLL);
  bzero(v18, 0x400uLL);
  journalPathWithProtectionClass(path, self->_indexType, self->_journal_cookie, self->_journal_orig_name, self->_journalNumber, self->_dev, self->_journalIno, v18);
  journalTocPathWithProtectionClass(path, self->_indexType, self->_journal_cookie, self->_journal_orig_name, self->_journalNumber, self->_dev, v19);
  if ([(CSJournalProcessor *)self linkFileAtPath:v18 parentFd:self->_parentFD fileName:__str]== -1)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v15 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

LABEL_23:
    v13 = *__error();
    return v13 == 0;
  }

  self->_journal_name = strdup(__str);
  snprintf(__str, 0xFFuLL, "evt_%s_%s_%llu_%llu.toc", self->_journal_orig_name, self->_journal_cookie, self->_journalIno, self->_journalNumber);
  if ([(CSJournalProcessor *)self linkFileAtPath:v19 parentFd:self->_parentFD fileName:__str]== -1)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v15 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_21:
        [CSJournalProcessor setupFromTopLevelJournalWithParentFd:journalBasePath:];
      }

LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  self->_toc_name = strdup(__str);
  snprintf(__str, 0xFFuLL, "evt_%s_%s_%llu_%llu.processed", self->_journal_orig_name, self->_journal_cookie, self->_journalIno, self->_journalNumber);
  v10 = openat(self->_parentFD, __str, 514, 384);
  if (v10 != -1)
  {
    close(v10);
  }

  v11 = openat(self->_parentFD, self->_journal_name, 0);
  if (v11 == -1)
  {
    self->_journal_file_size = 0;
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v16 = SKGLogInit();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CSJournalProcessor setupFromTopLevelJournalWithParentFd:journalBasePath:];
      }
    }
  }

  else
  {
    v12 = v11;
    self->_journal_file_size = lseek(v11, 0, 2);
    close(v12);
  }

  v17 = strdup(__str);
  v13 = 0;
  self->_processed_name = v17;
  return v13 == 0;
}

- (BOOL)setupFromSpotlightDaemonJournalWithParentFd:(int)fd spotlightBasePath:(const char *)path
{
  v35 = *MEMORY[0x277D85DE8];
  if (fd == -1 || !self->_dev || (journalIno = self->_journalIno) == 0 || (journalNumber = self->_journalNumber) == 0 || (journal_orig_name = self->_journal_orig_name) == 0 || (journal_cookie = self->_journal_cookie) == 0 || !self->_key)
  {
    v13 = -1;
    return v13 == 0;
  }

  memset(v34, 0, sizeof(v34));
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  *__str = 0u;
  snprintf(__str, 0xFFuLL, "evt_%s_%s_%llu_%llu.journal", journal_orig_name, journal_cookie, journalIno, journalNumber);
  bzero(v19, 0x400uLL);
  bzero(v18, 0x400uLL);
  journalPathForSpotlightDaemonWithProtectionClass(path, self->_indexType, self->_journal_orig_name, self->_journalNumber, v18);
  journalTocPathForSpotlightDaemonWithProtectionClass(path, self->_indexType, self->_journal_orig_name, self->_journalNumber, v19);
  if ([(CSJournalProcessor *)self linkFileAtPath:v18 parentFd:self->_parentFD fileName:__str]== -1)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v15 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

LABEL_23:
    v13 = *__error();
    return v13 == 0;
  }

  self->_journal_name = strdup(__str);
  snprintf(__str, 0xFFuLL, "evt_%s_%s_%llu_%llu.toc", self->_journal_orig_name, self->_journal_cookie, self->_journalIno, self->_journalNumber);
  if ([(CSJournalProcessor *)self linkFileAtPath:v19 parentFd:self->_parentFD fileName:__str]== -1)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v15 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_21:
        [CSJournalProcessor setupFromTopLevelJournalWithParentFd:journalBasePath:];
      }

LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  self->_toc_name = strdup(__str);
  snprintf(__str, 0xFFuLL, "evt_%s_%s_%llu_%llu.processed", self->_journal_orig_name, self->_journal_cookie, self->_journalIno, self->_journalNumber);
  v10 = openat(self->_parentFD, __str, 514, 384);
  if (v10 != -1)
  {
    close(v10);
  }

  v11 = openat(self->_parentFD, self->_journal_name, 0);
  if (v11 == -1)
  {
    self->_journal_file_size = 0;
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v16 = SKGLogInit();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CSJournalProcessor setupFromTopLevelJournalWithParentFd:journalBasePath:];
      }
    }
  }

  else
  {
    v12 = v11;
    self->_journal_file_size = lseek(v11, 0, 2);
    close(v12);
  }

  v17 = strdup(__str);
  v13 = 0;
  self->_processed_name = v17;
  return v13 == 0;
}

- (CSJournalProcessor)initWithParentFd:(int)fd eventListener:(id)listener key:(id)key msg:(id)msg journalBasePath:(const char *)path
{
  v11 = *&fd;
  listenerCopy = listener;
  keyCopy = key;
  msgCopy = msg;
  v16 = [(CSJournalProcessor *)self init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_key, key);
    v17->_parentFD = v11;
    v17->_indexType = [(CSEventListenerManager *)msgCopy indexType];
    v17->_journalNumber = [(CSEmbeddingsUpdater *)msgCopy activityJournal];
    journalQueue = [(CSEventListenerManager *)msgCopy journalQueue];
    v17->_journal_orig_name = strdup(journalQueue);
    signposter = [(CSEventListenerManager *)msgCopy signposter];
    v17->_journal_cookie = strdup(signposter);
    objc_storeStrong(&v17->_eventListener, listener);
    v17->_dev = [(CSEventListenerManager *)msgCopy homePathHash];
    v17->_journalIno = [(CSEmbeddingsUpdater *)msgCopy defaults];
    v17->_lock._os_unfair_lock_opaque = 0;
    v17->_toc_retry_counter = 0;
    if (![(CSJournalProcessor *)v17 setupFromTopLevelJournalWithParentFd:v11 journalBasePath:path])
    {

      v17 = 0;
    }
  }

  return v17;
}

- (id)initFromSpotlightDaemonWithParentFd:(int)fd eventListener:(id)listener key:(id)key msg:(id)msg spotlightBasePath:(const char *)path
{
  v11 = *&fd;
  listenerCopy = listener;
  keyCopy = key;
  msgCopy = msg;
  v16 = [(CSJournalProcessor *)self init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_key, key);
    v17->_parentFD = v11;
    v17->_indexType = [(CSEventListenerManager *)msgCopy indexType];
    v17->_journalNumber = [(CSEmbeddingsUpdater *)msgCopy activityJournal];
    journalQueue = [(CSEventListenerManager *)msgCopy journalQueue];
    v17->_journal_orig_name = strdup(journalQueue);
    signposter = [(CSEventListenerManager *)msgCopy signposter];
    v17->_journal_cookie = strdup(signposter);
    objc_storeStrong(&v17->_eventListener, listener);
    v17->_dev = [(CSEventListenerManager *)msgCopy homePathHash];
    v17->_journalIno = [(CSEmbeddingsUpdater *)msgCopy defaults];
    v17->_lock._os_unfair_lock_opaque = 0;
    v17->_toc_retry_counter = 0;
    if (![(CSJournalProcessor *)v17 setupFromSpotlightDaemonJournalWithParentFd:v11 spotlightBasePath:path])
    {

      v17 = 0;
    }
  }

  return v17;
}

- (CSJournalProcessor)initWithParentFd:(int)fd eventListener:(id)listener key:(id)key indexType:(int)type journalIno:(unint64_t)ino dev:(int)dev journalNumber:(unint64_t)number journalCookie:(const char *)self0 journalName:(const char *)self1 journalBasePath:(const char *)self2
{
  v17 = *&fd;
  listenerCopy = listener;
  keyCopy = key;
  v21 = [(CSJournalProcessor *)self init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_key, key);
    v22->_parentFD = v17;
    v22->_indexType = type;
    v22->_journalNumber = number;
    v22->_journal_orig_name = strdup(name);
    v22->_journal_cookie = strdup(cookie);
    objc_storeStrong(&v22->_eventListener, listener);
    v22->_dev = dev;
    v22->_journalIno = ino;
    v22->_lock._os_unfair_lock_opaque = 0;
    v22->_toc_retry_counter = 0;
    if (![(CSJournalProcessor *)v22 setupFromTopLevelJournalWithParentFd:v17 journalBasePath:path])
    {

      v22 = 0;
    }
  }

  return v22;
}

- (void)dealloc
{
  toc_name = self->_toc_name;
  if (toc_name)
  {
    free(toc_name);
  }

  journal_name = self->_journal_name;
  if (journal_name)
  {
    free(journal_name);
  }

  journal_orig_name = self->_journal_orig_name;
  if (journal_orig_name)
  {
    free(journal_orig_name);
  }

  journal_cookie = self->_journal_cookie;
  if (journal_cookie)
  {
    free(journal_cookie);
  }

  processed_name = self->_processed_name;
  if (processed_name)
  {
    free(processed_name);
  }

  v8.receiver = self;
  v8.super_class = CSJournalProcessor;
  [(CSJournalProcessor *)&v8 dealloc];
}

- (int)retainTocFd
{
  os_unfair_lock_lock(&self->_lock);
  toc_fd = self->_toc_fd;
  if (toc_fd != -1 || (toc_fd = openat(self->_parentFD, self->_toc_name, 0), self->_toc_fd = toc_fd, toc_fd != -1))
  {
    ++self->_toc_fd_retain_count;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CSJournalProcessor retainTocFd];
    }
  }

  return toc_fd;
}

- (void)releaseTocFd
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (int)retainJournalFd
{
  os_unfair_lock_lock(&self->_lock);
  journal_fd = self->_journal_fd;
  if (journal_fd != -1 || (journal_fd = openat(self->_parentFD, self->_journal_name, 0), self->_journal_fd = journal_fd, journal_fd != -1))
  {
    ++self->_journal_fd_retain_count;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CSJournalProcessor retainJournalFd];
    }
  }

  return journal_fd;
}

- (void)releaseJournalFd
{
  OUTLINED_FUNCTION_31(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)retainJournalUsingFd:(int)fd
{
  os_unfair_lock_lock(&self->_lock);
  if (fd < 0 || self->_journal_fd != -1)
  {
    [CSJournalProcessor retainJournalUsingFd:];
  }

  v5 = self->_journal_fd_retain_count + 1;
  self->_journal_fd = fd;
  self->_journal_fd_retain_count = v5;
  os_unfair_lock_unlock(&self->_lock);
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v6 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CSJournalProcessor retainJournalFd];
    }
  }
}

- (int)retainProcessedFd
{
  os_unfair_lock_lock(&self->_lock);
  processed_fd = self->_processed_fd;
  if (processed_fd != -1 || (processed_fd = openat(self->_parentFD, self->_processed_name, 514, 384), self->_processed_fd = processed_fd, processed_fd != -1))
  {
    ++self->_processed_fd_retain_count;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CSJournalProcessor retainProcessedFd];
    }
  }

  return processed_fd;
}

- (void)releaseProcessedFd
{
  OUTLINED_FUNCTION_31(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (BOOL)isComplete
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_err || self->_complete && self->_toc_processed >= self->_toc_complete_size;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)markComplete:(int64_t)complete processingDone:(BOOL)done
{
  doneCopy = done;
  completeCopy = complete;
  if (!complete)
  {
    retainTocFd = [(CSJournalProcessor *)self retainTocFd];
    if (retainTocFd == -1)
    {
      completeCopy = 0;
    }

    else
    {
      v8 = lseek(retainTocFd, 0, 2);
      completeCopy = v8 & ~(v8 >> 63);
      [(CSJournalProcessor *)self releaseTocFd];
    }
  }

  os_unfair_lock_lock(&self->_lock);
  self->_toc_complete_size = completeCopy;
  self->_complete = 1;
  self->_processingDone = doneCopy;
  os_unfair_lock_unlock(&self->_lock);
  if (doneCopy && SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v9 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CSJournalProcessor markComplete:v9 processingDone:?];
    }
  }
}

- (void)warmup
{
  v4 = *self;
  v5 = *a2;
  *buf = 67109376;
  *(buf + 1) = v4;
  *(buf + 4) = 1024;
  *(buf + 10) = v5;
  _os_log_error_impl(&dword_231B25000, log, OS_LOG_TYPE_ERROR, "### error %d getting fullpath of parentfd %d", buf, 0xEu);
}

void __28__CSJournalProcessor_warmup__block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2 < 0 || v5)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v7 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v9 = 138412802;
        v10 = v6;
        v11 = 1024;
        v12 = a2;
        v13 = 2112;
        v14 = v8;
        _os_log_error_impl(&dword_231B25000, v7, OS_LOG_TYPE_ERROR, "### error %@ getting fd (%d) for journal file (%@) from searchd", &v9, 0x1Cu);
      }
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = a2;
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)cooldown
{
  if (self->_warmedup)
  {
    self->_warmedup = 0;
    [(CSJournalProcessor *)self releaseTocFd];
    [(CSJournalProcessor *)self releaseJournalFd];

    [(CSJournalProcessor *)self releaseProcessedFd];
  }
}

uint64_t __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_300(uint64_t a1)
{
  v2 = +[CSEventListenerTasksManager sharedInstance];
  LODWORD(a1) = [v2 taskAllowedForName:*(a1 + 32) eventType:*(a1 + 40) indexType:*(a1 + 44)];

  return a1 ^ 1;
}

void __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_306(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = +[CSEventListenerTasksManager sharedInstance];
  [v6 endTaskForIndexType:*(a1 + 80) delegate:*(a1 + 64)];

  dispatch_group_leave(*(a1 + 32));
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v7 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_306_cold_1();
    }
  }

  if (v5 || (+[CSEventListenerTasksManager sharedInstance](CSEventListenerTasksManager, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 taskAllowedForName:*(a1 + 48) eventType:*(a1 + 84) indexType:*(a1 + 80)], v8, (v9 & 1) == 0))
  {
    v15 = *(a1 + 72) - 32;
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v16 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 64);
        v18 = *(a1 + 40);
        v19 = 138413058;
        v20 = v17;
        v21 = 2048;
        v22 = v15;
        v23 = 2112;
        v24 = v18;
        v25 = 2112;
        v26 = v5;
        _os_log_impl(&dword_231B25000, v16, OS_LOG_TYPE_INFO, "### Not processed journal entry %@ at offset = %llu for %@ because of err = %@ or task cancelled", &v19, 0x2Au);
      }
    }

    v14 = *(*(a1 + 56) + 16);
  }

  else
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v10 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 64);
        v12 = *(a1 + 72);
        v13 = *(a1 + 40);
        v19 = 138412802;
        v20 = v11;
        v21 = 2048;
        v22 = v12;
        v23 = 2112;
        v24 = v13;
        _os_log_impl(&dword_231B25000, v10, OS_LOG_TYPE_INFO, "### Processed journal entry %@ at offset %llu for %@", &v19, 0x20u);
      }
    }

    v14 = *(*(a1 + 56) + 16);
  }

  v14();
}

uint64_t __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_308(uint64_t a1)
{
  v2 = +[CSEventListenerTasksManager sharedInstance];
  LODWORD(a1) = [v2 taskAllowedForName:*(a1 + 32) eventType:*(a1 + 40) indexType:*(a1 + 44)];

  return a1 ^ 1;
}

- (BOOL)processNext:(id)next completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  nextCopy = next;
  completionCopy = completion;
  if (self->_active)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v8 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_INFO, "### ignored journal - already active - %@", buf, 0xCu);
      }
    }

LABEL_28:
    v16 = 1;
    goto LABEL_29;
  }

  retainTocFd = [(CSJournalProcessor *)self retainTocFd];
  if (retainTocFd == -1)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v15 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_231B25000, v15, OS_LOG_TYPE_INFO, "### ignored journal - failed retainTocFd - %@", buf, 0xCu);
      }
    }
  }

  else
  {
    toc_processed = self->_toc_processed;
    toc_file_size = self->_toc_file_size;
    if (toc_file_size <= toc_processed)
    {
      v12 = lseek(retainTocFd, 0, 2);
      toc_file_size = v12;
      if (v12 >= 1)
      {
        self->_toc_file_size = v12;
        if (v12 < toc_processed)
        {
          self->_toc_processed = v12;
          toc_processed = v12;
        }
      }
    }

    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v13 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        selfCopy2 = toc_processed;
        v27 = 2048;
        v28 = toc_file_size;
        v29 = 2112;
        selfCopy4 = self;
        _os_log_debug_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEBUG, "### processing at: %lld file size: %lld - %@", buf, 0x20u);
      }
    }

    if (toc_processed != toc_file_size)
    {
      self->_active = 1;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __45__CSJournalProcessor_processNext_completion___block_invoke;
      aBlock[3] = &unk_27893CEB8;
      aBlock[4] = self;
      v24 = toc_processed;
      v23 = completionCopy;
      v17 = _Block_copy(aBlock);
      v18 = +[CSEventListenerTasksManager sharedInstance];
      turboMode = [v18 turboMode];

      if (turboMode)
      {
        v20 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v17);

        v17 = v20;
      }

      dispatch_async(nextCopy, v17);

      goto LABEL_28;
    }

    [(CSJournalProcessor *)self releaseTocFd];
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v14 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 134218498;
        selfCopy2 = toc_file_size;
        v27 = 2048;
        v28 = toc_file_size;
        v29 = 2112;
        selfCopy4 = self;
        _os_log_impl(&dword_231B25000, v14, OS_LOG_TYPE_INFO, "### ignored journal at: %lld file size: %lld - startOffset == fileSize - %@. We're probably at the end of the file.", buf, 0x20u);
      }
    }
  }

  v16 = 0;
LABEL_29:

  return v16;
}

void __45__CSJournalProcessor_processNext_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__CSJournalProcessor_processNext_completion___block_invoke_2;
  v3[3] = &unk_27893D070;
  v5 = v2;
  v3[4] = v1;
  v4 = *(a1 + 40);
  [v1 _processOffsetAtOffset:v2 completion:v3];
}

void __45__CSJournalProcessor_processNext_completion___block_invoke_2(id *a1, void *a2, uint64_t a3, uint64_t a4, int a5, char *a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v23 = a6;
  if (a5 || a1[6] == a6)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v10 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v21 = a1[6];
        v22 = a1[4];
        *buf = 67109890;
        *v25 = a5;
        *&v25[4] = 2048;
        *&v25[6] = v21;
        *&v25[14] = 2048;
        *&v25[16] = a6;
        *&v25[24] = 2112;
        *&v25[26] = v22;
        _os_log_error_impl(&dword_231B25000, v10, OS_LOG_TYPE_ERROR, "### processed error: %d %lld to %lld - %@", buf, 0x26u);
      }
    }

    v11 = a1[4];
    if (a5 == 22)
    {
      if (v11)
      {
        *(v11 + 60) = 22;
        v12 = a1[4];
      }

      else
      {
        v12 = 0;
      }

      [v12 markComplete:a1[6] processingDone:1];
    }

    else
    {
      if (v11)
      {
        ++*(v11 + 168);
      }

      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v13 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = a1[4];
          if (v14)
          {
            v14 = *(v14 + 168);
          }

          v15 = a1[6];
          *buf = 134218496;
          *v25 = a6;
          *&v25[8] = 2048;
          *&v25[10] = v14;
          *&v25[18] = 2048;
          *&v25[20] = v15;
          _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_INFO, "### Will retry the offset %llu, processing count so far = %llu, startOffset = %llu", buf, 0x20u);
        }
      }
    }
  }

  else
  {
    __45__CSJournalProcessor_processNext_completion___block_invoke_2_cold_1(a1, (a1 + 6), a6);
  }

  v17 = (a1 + 4);
  v16 = a1[4];
  if (!v16)
  {
    if (a1[6] >= a6)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

  v18 = *(v16 + 168);
  if (a1[6] < a6 || v18 > 1)
  {
    if (v18 < 2)
    {
      goto LABEL_30;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v19 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v25 = a6;
        _os_log_impl(&dword_231B25000, v19, OS_LOG_TYPE_INFO, "### skip offset %llu because JournalProcessor have retried enough to process its journal entry", buf, 0xCu);
      }
    }

    a6 += 32;
    v23 = a6;
    if (*v17)
    {
      *(*v17 + 168) = 0;
      v16 = *v17;
      if (*v17)
      {
LABEL_30:
        *(v16 + 152) = a6;
        v20 = *v17;
LABEL_31:
        __45__CSJournalProcessor_processNext_completion___block_invoke_2_cold_2(&v23, a1 + 4, v20);
        goto LABEL_22;
      }
    }

LABEL_34:
    v20 = 0;
    goto LABEL_31;
  }

LABEL_22:
  [a1[4] releaseTocFd];
  [a1[4] setActive:0];
  (*(a1[5] + 2))();
}

- (void)deleteFiles
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = unlinkat(self->_parentFD, self->_journal_name, 2048);
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      if (v3 == -1)
      {
        v3 = *__error();
      }

      journal_name = self->_journal_name;
      v12 = 67109634;
      v13 = v3;
      v14 = 2112;
      selfCopy3 = self;
      v16 = 2080;
      v17 = journal_name;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_INFO, "### unlink (%d) %@ - %s ", &v12, 0x1Cu);
    }
  }

  v6 = unlinkat(self->_parentFD, self->_toc_name, 2048);
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v7 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v6 == -1)
      {
        v6 = *__error();
      }

      toc_name = self->_toc_name;
      v12 = 67109634;
      v13 = v6;
      v14 = 2112;
      selfCopy3 = self;
      v16 = 2080;
      v17 = toc_name;
      _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_INFO, "### unlink (%d) %@ - %s ", &v12, 0x1Cu);
    }
  }

  v9 = unlinkat(self->_parentFD, self->_processed_name, 2048);
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v10 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (v9 == -1)
      {
        v9 = *__error();
      }

      processed_name = self->_processed_name;
      v12 = 67109634;
      v13 = v9;
      v14 = 2112;
      selfCopy3 = self;
      v16 = 2080;
      v17 = processed_name;
      _os_log_impl(&dword_231B25000, v10, OS_LOG_TYPE_INFO, "### unlink (%d) %@ - %s ", &v12, 0x1Cu);
    }
  }
}

- (int)linkFileAtPath:(char *)path parentFd:(int)fd fileName:(const char *)name
{
  v29 = *MEMORY[0x277D85DE8];
  if (!path)
  {
    return -1;
  }

  result = -1;
  if (name && fd != -1 && *path && *name)
  {
    memset(&v21, 0, sizeof(v21));
    if (stat(path, &v21) == -1)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v13 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [CSJournalProcessor linkFileAtPath:parentFd:fileName:];
        }

        goto LABEL_20;
      }
    }

    else
    {
      st_dev = v21.st_dev;
      st_ino = v21.st_ino;
      bzero(__s, 0x400uLL);
      if (fcntl(fd, 50, __s) != -1)
      {
        v12 = strlen(__s);
        if (v12)
        {
          snprintf(&__s[v12], 1024 - v12, "/%s", name);
          if (stat(__s, &v21) == -1)
          {
            v14 = link(path, __s);
            CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
            if (v14 == -1)
            {
              if (CurrentLoggingLevel < 2)
              {
                return -1;
              }

              v13 = SKGLogUpdaterInit();
              if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_20;
              }

              v20 = *__error();
              *buf = 138413058;
              selfCopy2 = self;
              v24 = 1024;
              *v25 = v20;
              *&v25[4] = 2080;
              *&v25[6] = path;
              v26 = 2080;
              *v27 = __s;
              v17 = "### %@ error %d creating hardlink %s to %s";
              v18 = v13;
              v19 = 38;
              goto LABEL_37;
            }

            if (CurrentLoggingLevel >= 5)
            {
              v16 = SKGLogUpdaterInit();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                selfCopy2 = path;
                v24 = 2080;
                *v25 = __s;
                _os_log_impl(&dword_231B25000, v16, OS_LOG_TYPE_INFO, "### created hardlink %s to %s", buf, 0x16u);
              }
            }
          }

          if (stat(__s, &v21) == -1)
          {
            if (SKGLogGetCurrentLoggingLevel() < 2)
            {
              return -1;
            }

            v13 = SKGLogUpdaterInit();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              [CSJournalProcessor linkFileAtPath:parentFd:fileName:];
            }

            goto LABEL_20;
          }

          if (v21.st_dev == st_dev && v21.st_ino == st_ino)
          {
            return 0;
          }

          if (SKGLogGetCurrentLoggingLevel() < 2)
          {
            return -1;
          }

          v13 = SKGLogUpdaterInit();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
LABEL_20:

            return -1;
          }

          *buf = 138413314;
          selfCopy2 = self;
          v24 = 1024;
          *v25 = st_dev;
          *&v25[4] = 2048;
          *&v25[6] = st_ino;
          v26 = 1024;
          *v27 = v21.st_dev;
          *&v27[4] = 2048;
          *&v27[6] = v21.st_ino;
          v17 = "### %@ error %d:%lld != %d:%lld";
          v18 = v13;
          v19 = 44;
LABEL_37:
          _os_log_error_impl(&dword_231B25000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
          goto LABEL_20;
        }
      }

      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v13 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [CSJournalProcessor linkFileAtPath:parentFd:fileName:];
        }

        goto LABEL_20;
      }
    }

    return -1;
  }

  return result;
}

- (BOOL)writeUpdaterProgressToStoreWithIndexType:(int)type UUID:(const char *)d serialNumber:(unint64_t)number error:(id)error
{
  v8 = *&type;
  v27 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v11 = [SKGUpdaterStore instanceForIndexType:v8];
  v12 = v11;
  if (d && !errorCopy && v11)
  {
    eventListener = self->_eventListener;
    if (eventListener)
    {
      eventListener = eventListener->_delegate;
    }

    v14 = eventListener;
    v15 = [v12 writeUpdaterStatus:-[CSEventListener eventType](v14 UUID:"eventType") serialNumber:{d, number}];

    if ((v15 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v16 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v19 = 138413058;
        selfCopy2 = self;
        v21 = 2080;
        dCopy2 = d;
        v23 = 2048;
        numberCopy2 = number;
        v25 = 2112;
        v26 = 0;
        v17 = "### %@ unable to store uuid:%s serialNumber:%llu error:%@";
LABEL_15:
        _os_log_debug_impl(&dword_231B25000, v16, OS_LOG_TYPE_DEBUG, v17, &v19, 0x2Au);
        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

  else if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v16 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138413058;
      selfCopy2 = self;
      v21 = 2080;
      dCopy2 = d;
      v23 = 2048;
      numberCopy2 = number;
      v25 = 2112;
      v26 = errorCopy;
      v17 = "### %@ skip storing uuid:%s serialNumber:%llu error:%@";
      goto LABEL_15;
    }

LABEL_12:
  }

  return 0;
}

- (uint64_t)setManagedJournal:(uint64_t)result
{
  if (result)
  {
    *(result + 13) = a2;
  }

  return result;
}

- (uint64_t)setHomePathHash:(uint64_t)result
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

- (void)setItemHandler:(void *)handler
{
  if (handler)
  {
    objc_setProperty_nonatomic_copy(handler, newValue, newValue, 184);
  }
}

- (uint64_t)journal_file_size
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

- (uint64_t)journalNumber
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (uint64_t)journal_cookie
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

- (uint64_t)toc_processed
{
  if (result)
  {
    return *(result + 152);
  }

  return result;
}

- (uint64_t)toc_complete_size
{
  if (result)
  {
    return *(result + 144);
  }

  return result;
}

- (uint64_t)setJournal_file_size:(uint64_t)result
{
  if (result)
  {
    *(result + 120) = a2;
  }

  return result;
}

- (void)_processOffsetAtOffset:(int64_t)offset completion:(id)completion
{
  v169 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  eventListener = self->_eventListener;
  if (eventListener)
  {
    eventListener = eventListener->_delegate;
  }

  v122 = eventListener;
  taskName = [(CSEventListener *)eventListener taskName];
  eventType = [(CSEventListener *)v122 eventType];
  v10 = self->_eventListener;
  if (v10)
  {
    LODWORD(v10) = (LOBYTE(v10->_eventFlags) >> 5) & 1;
  }

  v121 = v10;
  indexType = self->_indexType;
  retainTocFd = [(CSJournalProcessor *)self retainTocFd];
  if (retainTocFd == -1)
  {
    OUTLINED_FUNCTION_4_0();
    v17 = v16;
    v18(completionCopy);
    v19 = completionCopy;
    v20 = v17;
    goto LABEL_16;
  }

  v124 = eventType;
  v126 = taskName;
  retainJournalFd = [(CSJournalProcessor *)self retainJournalFd];
  if (retainJournalFd == -1)
  {
    [(CSJournalProcessor *)self releaseTocFd];
    OUTLINED_FUNCTION_4_0();
    v21 = OUTLINED_FUNCTION_14();
    v22(v21);
    goto LABEL_15;
  }

  bzero(&v163, 0x90uLL);
  v120 = retainTocFd;
  if (fstat(retainTocFd, &v163))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v13 = SKGLogUpdaterInit();
      if (OUTLINED_FUNCTION_21(v13))
      {
        OUTLINED_FUNCTION_1_4(1.5047e-36);
        OUTLINED_FUNCTION_8();
        _os_log_error_impl(v81, v82, v83, v84, v85, 0x12u);
      }
    }

LABEL_12:
    [(CSJournalProcessor *)self releaseTocFd];
    [(CSJournalProcessor *)self releaseJournalFd];
    OUTLINED_FUNCTION_4_0();
    v14 = OUTLINED_FUNCTION_14();
    v15(v14);
    goto LABEL_15;
  }

  v23 = (v163.st_size + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  v24 = mmap(0, v23, 1, 1, retainTocFd, 0);
  if (v24 == -1)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v73 = SKGLogUpdaterInit();
      if (OUTLINED_FUNCTION_21(v73))
      {
        OUTLINED_FUNCTION_1_4(1.5047e-36);
        OUTLINED_FUNCTION_8();
        _os_log_error_impl(v87, v88, v89, v90, v91, 0x12u);
      }
    }

    goto LABEL_12;
  }

  v25 = self->_eventListener;
  if (v25)
  {
    excludedBundleHashes = v25->_excludedBundleHashes;
    v25 = v25->_includedBundleHashes;
    v27 = excludedBundleHashes;
  }

  else
  {
    v27 = 0;
  }

  *&v118 = v25;
  *(&v118 + 1) = v27;
  makeThreadId();
  v117 = retainJournalFd;
  v28 = v23;
  v29 = v24;
  while (2)
  {
    offsetCopy = offset;
    v123 = completionCopy;
    if (!completionCopy)
    {
      v24 = 0;
      v76 = 0;
      v77 = v29;
      goto LABEL_97;
    }

    v31 = v29;
    v32 = v28;
    while (1)
    {
      if (offsetCopy < 0)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v74 = SKGLogUpdaterInit();
          if (OUTLINED_FUNCTION_21(v74))
          {
            v168.st_dev = 134218242;
            *&v168.st_mode = offsetCopy;
            WORD2(v168.st_ino) = 2112;
            *(&v168.st_ino + 6) = self;
            OUTLINED_FUNCTION_8();
            _os_log_error_impl(v95, v96, v97, v98, v99, 0x16u);
          }

LABEL_94:
        }

LABEL_95:
        v76 = 0;
        v77 = v31;
        goto LABEL_96;
      }

      v33 = offsetCopy + 32;
      if (offsetCopy + 32 <= v163.st_size)
      {
        st_size = v163.st_size;
        goto LABEL_31;
      }

      if (fstat(v120, &v163))
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v78 = SKGLogUpdaterInit();
          if (OUTLINED_FUNCTION_21(v78))
          {
            OUTLINED_FUNCTION_1_4(1.5047e-36);
            OUTLINED_FUNCTION_8();
            _os_log_error_impl(v105, v106, v107, v108, v109, 0x12u);
          }

          goto LABEL_94;
        }

        goto LABEL_95;
      }

      if (v163.st_size < v33)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 7)
        {
          v79 = SKGLogUpdaterInit();
          if (OUTLINED_FUNCTION_34(v79))
          {
            v168.st_dev = 138412546;
            *&v168.st_mode = self;
            WORD2(v168.st_ino) = 2048;
            *(&v168.st_ino + 6) = offsetCopy;
            OUTLINED_FUNCTION_26(&dword_231B25000, v24, v80, "### end of file %@ - %lld", &v168);
          }

          goto LABEL_94;
        }

        goto LABEL_95;
      }

      st_size = v163.st_size;
      if (((v163.st_size + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0]) > v32)
      {
        munmap(v31, v32);
        v32 = (v163.st_size + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
        v35 = mmap(0, v32, 1, 1, v120, 0);
        if (v35 == -1)
        {
          if (SKGLogGetCurrentLoggingLevel() >= 2)
          {
            v86 = SKGLogUpdaterInit();
            if (OUTLINED_FUNCTION_21(v86))
            {
              OUTLINED_FUNCTION_1_4(1.5047e-36);
              OUTLINED_FUNCTION_8();
              _os_log_error_impl(v110, v111, v112, v113, v114, 0x12u);
            }
          }

          v76 = 0;
          v24 = v123;
          goto LABEL_98;
        }

        v31 = v35;
        st_size = v163.st_size;
      }

LABEL_31:
      v162 = 0;
      v119 = v31;
      v161[0] = v31;
      v161[1] = st_size;
      v116 = v32;
      v161[2] = 0;
      v159 = 1;
      v160 = v161;
      atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
      *v166 = 0;
      *v164 = 0;
      v158 = 0;
      v36 = *(MEMORY[0x277D29500] + 16);
      *&v168.st_dev = *MEMORY[0x277D29500];
      *&v168.st_uid = v36;
      v37 = *(MEMORY[0x277D29500] + 48);
      v168.st_atimespec = *(MEMORY[0x277D29500] + 32);
      v168.st_mtimespec = v37;
      v38 = setThreadIdAndInfo();
      *v164 = HIDWORD(v38);
      *v166 = v38;
      v158 = __PAIR64__(v39, v40);
      v41 = *(MEMORY[0x277D29508] + 72 * v38 + 8) + 320 * HIDWORD(v38);
      *(v41 + 216) = 0;
      v42 = *(v41 + 312);
      v43 = *(v41 + 224);
      if (v43)
      {
        v43(*(v41 + 288));
      }

      v168.st_dev = *v166;
      v157 = *v164;
      v156 = v158;
      if (_setjmp(v41))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
        }

        *(v41 + 312) = v42;
        CIOnThreadCleanUpReset();
        OUTLINED_FUNCTION_30();
        dropThreadId();
        OUTLINED_FUNCTION_30();
        CICleanUpReset();
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 0;
      }

      else
      {
        v49 = *&v119[offsetCopy];
        v50 = *&v119[offsetCopy + 8];
        v51 = *&v119[offsetCopy + 16];
        v53 = *&v119[offsetCopy + 24];
        v52 = *&v119[offsetCopy + 28];
        v162 = 1;
        v54 = *(MEMORY[0x277D29508] + 72 * OUTLINED_FUNCTION_30() + 8) + 320 * v157;
        *(v54 + 312) = v42;
        v55 = *(v54 + 232);
        if (v55)
        {
          v55(*(v54 + 288));
        }

        OUTLINED_FUNCTION_30();
        dropThreadId();
        v48 = v49;
        v56 = v50;
        v44 = v51;
        v46 = v53;
        v45 = v52;
        v47 = v56;
      }

      v24 = v162;
      CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
      if ((v24 & 1) == 0)
      {
        if (CurrentLoggingLevel >= 2)
        {
          v75 = SKGLogUpdaterInit();
          if (OUTLINED_FUNCTION_21(v75))
          {
            OUTLINED_FUNCTION_1_4(1.5047e-36);
            OUTLINED_FUNCTION_8();
            _os_log_error_impl(v100, v101, v102, v103, v104, 0x12u);
          }
        }

        v76 = 0;
        goto LABEL_86;
      }

      if (CurrentLoggingLevel >= 7)
      {
        v58 = SKGLogUpdaterInit();
        if (OUTLINED_FUNCTION_34(v58))
        {
          v168.st_dev = 134219008;
          *&v168.st_mode = v48;
          WORD2(v168.st_ino) = 2048;
          *(&v168.st_ino + 6) = offsetCopy + 32;
          HIWORD(v168.st_gid) = 2048;
          *&v168.st_rdev = v47;
          LOWORD(v168.st_atimespec.tv_sec) = 2048;
          *(&v168.st_atimespec.tv_sec + 2) = v44;
          WORD1(v168.st_atimespec.tv_nsec) = 1024;
          HIDWORD(v168.st_atimespec.tv_nsec) = v45;
          _os_log_debug_impl(&dword_231B25000, v24, OS_LOG_TYPE_DEBUG, "### read toc sn: %llu toc_offset: 0x%llx, offset: 0x%llx size: %llu flags: %u)", &v168, 0x30u);
        }
      }

      v59 = v121;
      if ((v45 & 4) != 0)
      {
        v59 = 0;
      }

      if (v59)
      {
        goto LABEL_54;
      }

      if (v118 == 0)
      {
        goto LABEL_57;
      }

      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v46];
      if ((!v118 || [v118 containsObject:v24]) && (!*(&v118 + 1) || !objc_msgSend(*(&v118 + 1), "containsObject:", v24)))
      {
        break;
      }

LABEL_54:
      v31 = v119;
      offsetCopy += 32;
      v32 = v116;
      if (!v123)
      {
        v24 = 0;
        v76 = 0;
        offsetCopy = v33;
        v77 = v119;
        goto LABEL_97;
      }
    }

LABEL_57:
    bzero(&v168, 0x90uLL);
    if (fstat(v117, &v168) == -1)
    {
      v76 = *__error();
      if (SKGLogGetCurrentLoggingLevel() < 2)
      {
LABEL_86:
        v77 = v119;
LABEL_96:
        v24 = v123;
        goto LABEL_97;
      }

      v92 = SKGLogUpdaterInit();
      if (OUTLINED_FUNCTION_21(v92))
      {
        *v166 = 67109378;
        *&v166[4] = v76;
        *&v166[8] = 2112;
        *&v166[10] = self;
        _os_log_error_impl(&dword_231B25000, &v168, OS_LOG_TYPE_ERROR, "### journal stat err %d - %@", v166, 0x12u);
      }

      v93 = v76;
LABEL_115:

      v76 = v93;
      goto LABEL_86;
    }

    if (v168.st_size < (v47 + v44))
    {
      if (SKGLogGetCurrentLoggingLevel() < 2)
      {
        v76 = 22;
        goto LABEL_86;
      }

      v94 = SKGLogUpdaterInit();
      if (OUTLINED_FUNCTION_21(v94))
      {
        *v166 = 134218498;
        *&v166[4] = v168.st_size;
        *&v166[12] = 2048;
        *&v166[14] = v47 + v44;
        *&v166[22] = 2112;
        selfCopy = self;
        _os_log_error_impl(&dword_231B25000, &v168, OS_LOG_TYPE_ERROR, "### journal journal size %lld expected %llu - %@", v166, 0x20u);
      }

      v93 = 22;
      goto LABEL_115;
    }

    *v166 = 0;
    *&v166[8] = v166;
    *&v166[16] = 0x2020000000;
    LOBYTE(selfCopy) = 0;
    v141[0] = MEMORY[0x277D85DD0];
    v141[1] = 3221225472;
    v141[2] = __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke;
    v141[3] = &unk_27893CFF8;
    v146 = v47;
    v147 = v44;
    v148 = v46;
    v149 = v45;
    v152 = v117;
    v153 = indexType;
    v145 = v48;
    v141[4] = self;
    v150 = v122;
    v60 = v126;
    v154 = v124;
    v142 = v60;
    v151 = offsetCopy + 32;
    v115 = v123;
    v143 = v115;
    v144 = v166;
    v127[0] = MEMORY[0x277D85DD0];
    v127[1] = 3221225472;
    v127[2] = __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_304;
    v127[3] = &unk_27893D048;
    v132 = v47;
    v133 = v44;
    v134 = v46;
    v135 = v45;
    v138 = v117;
    v139 = indexType;
    v131 = v48;
    v127[4] = self;
    v136 = v122;
    v61 = v60;
    v140 = v124;
    v128 = v61;
    v137 = offsetCopy + 32;
    v62 = v115;
    v129 = v62;
    v130 = v166;
    [SKGJournalReader processJournalRecordWithFd:v117 atOffset:v47 withSize:v44 addBlock:v141 delBlock:v127];
    v63 = v62;
    if (*(*&v166[8] + 24))
    {
      v24 = 0;
      v64 = v63;
      v65 = 0;
      goto LABEL_61;
    }

    v68 = +[CSEventListenerTasksManager sharedInstance];
    v69 = [v68 taskAllowedForName:v61 eventType:v124 indexType:indexType];

    if (v69)
    {
      v67 = 0;
      goto LABEL_68;
    }

    if (SKGLogGetCurrentLoggingLevel() < 5)
    {
      v67 = 1;
LABEL_68:
      v24 = v63;
    }

    else
    {
      v64 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        taskName2 = [(CSEventListener *)v122 taskName];
        uTF8String = [taskName2 UTF8String];
        *v164 = 136315138;
        v165 = uTF8String;
        _os_log_impl(&dword_231B25000, v64, OS_LOG_TYPE_INFO, "### Not processing next journal entry for %s because task is cancelled", v164, 0xCu);
      }

      v65 = 1;
      v24 = v63;
LABEL_61:
      v66 = v65;

      v67 = v66;
    }

    v72 = v67;

    _Block_object_dispose(v166, 8);
    v28 = v116;
    offset = v33;
    v29 = v119;
    completionCopy = v24;
    if ((v72 & 1) == 0)
    {
      continue;
    }

    break;
  }

  v76 = 0;
  offsetCopy = v33;
  v77 = v119;
LABEL_97:
  munmap(v77, v163.st_size);
LABEL_98:
  [(CSJournalProcessor *)self releaseJournalFd];
  [(CSJournalProcessor *)self releaseTocFd];
  if (v24)
  {
    (*(v24 + 16))(v24, v126, v124, indexType, v76, offsetCopy);
    completionCopy = v24;
  }

  else
  {
    completionCopy = 0;
  }

LABEL_15:
  v19 = completionCopy;
  v20 = v126;
LABEL_16:
}

void __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke(uint64_t a1, unint64_t a2, const char *a3, __int128 *a4, __int128 *a5, NSObject *a6)
{
  v58 = *MEMORY[0x277D85DE8];
  v12 = objc_alloc_init(CSEventListenerDonation);
  if (v12)
  {
    OUTLINED_FUNCTION_15();
    v12->_serialNumber = a2;
    v12->_bundleHash = *(a1 + 88);
    v12->_bundle = a3;
    v13 = *a4;
    v12->_itemsObj.reference = *(a4 + 2);
    *&v12->_itemsObj.containerBytes = v13;
    v14 = *a5;
    v12->_contentDictObj.reference = *(a5 + 2);
    *&v12->_contentDictObj.containerBytes = v14;
    v15 = *&a6->isa;
    v12->_htmlDictObj.reference = a6[2].isa;
    *&v12->_htmlDictObj.containerBytes = v15;
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = *(v16 + 112);
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v17 = 0;
  if (v12)
  {
LABEL_5:
    v12->_journalCookie = v17;
    v16 = *(a1 + 32);
  }

LABEL_6:
  if (v16)
  {
    v18 = *(v16 + 13);
    if (!v12)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v18 = 0;
  if (v12)
  {
LABEL_8:
    v12->_isManaged = v18 & 1;
    v16 = *(a1 + 32);
  }

LABEL_9:
  if (v16)
  {
    LODWORD(v16) = *(v16 + 64);
  }

  if (v12)
  {
    v12->_homePathHash = v16;
  }

  v19 = dispatch_group_create();
  dispatch_group_enter(v19);
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v20 = SKGLogUpdaterInit();
    if (OUTLINED_FUNCTION_34(v20))
    {
      OUTLINED_FUNCTION_32(*(a1 + 96));
      v55 = v12;
      v56 = 2080;
      v57 = v37;
      _os_log_debug_impl(&dword_231B25000, a6, OS_LOG_TYPE_DEBUG, "**** enter %@ for %@ / %s", buf, 0x20u);
    }
  }

  v21 = +[CSEventListenerTasksManager sharedInstance];
  v22 = [v21 turboMode];

  v23 = +[CSEventListenerTasksManager sharedInstance];
  OUTLINED_FUNCTION_29();
  [v24 startTaskForIndexType:? delegate:?];

  v25 = *(a1 + 96);
  OUTLINED_FUNCTION_9();
  v44 = 3221225472;
  v45 = __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_297;
  v46 = &unk_27893CFA8;
  v47 = *(a1 + 32);
  v26 = v12;
  v53 = *(a1 + 116);
  v27 = *(a1 + 96);
  v48 = v26;
  v52 = v27;
  v28 = v19;
  v49 = v28;
  v29 = *(a1 + 40);
  v51 = OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_10();
  v39[1] = 3221225472;
  v39[2] = __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_300;
  v39[3] = &unk_27893CFD0;
  v40 = *(a1 + 40);
  v30 = *(a1 + 116);
  v41 = *(a1 + 120);
  v42 = v30;
  if ([v25 handleDonation:v26 turboEnabled:v22 completionHandler:v43 cancelBlock:v39])
  {
    OUTLINED_FUNCTION_33();
    dispatch_group_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    if (v12)
    {
      indexType = v26->_indexType;
      journalCookie = v26->_journalCookie;
      serialNumber = v26->_serialNumber;
    }

    else
    {
      journalCookie = 0;
      indexType = 0;
      serialNumber = 0;
    }

    [*(a1 + 32) writeUpdaterProgressToStoreWithIndexType:indexType UUID:journalCookie serialNumber:serialNumber error:0];
    v34 = +[CSEventListenerTasksManager sharedInstance];
    OUTLINED_FUNCTION_29();
    [v35 endTaskForIndexType:? delegate:?];

    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v36 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_32(*(a1 + 96));
        v55 = v26;
        OUTLINED_FUNCTION_26(&dword_231B25000, v36, v38, "exit %@ for %@", buf);
      }
    }

    dispatch_group_leave(v28);
  }
}

- (uint64_t)managedJournal
{
  if (self)
  {
    return OUTLINED_FUNCTION_11(*(self + 13));
  }

  else
  {
    return OUTLINED_FUNCTION_11(0);
  }
}

- (uint64_t)homePathHash
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

void __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_297(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 64);
    v9 = *(v6 + 48);
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v9 = 0;
  }

  [*(a1 + 32) writeUpdaterProgressToStoreWithIndexType:v7 UUID:v8 serialNumber:v9 error:v5];
  v10 = +[CSEventListenerTasksManager sharedInstance];
  [v10 endTaskForIndexType:*(a1 + 88) delegate:*(a1 + 72)];

  dispatch_group_leave(*(a1 + 48));
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v11 = SKGLogUpdaterInit();
    if (OUTLINED_FUNCTION_34(v11))
    {
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_26(&dword_231B25000, v10, v21, "exit async %@ for %@", v22);
    }
  }

  if (v5 || (+[CSEventListenerTasksManager sharedInstance](CSEventListenerTasksManager, "sharedInstance"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 taskAllowedForName:*(a1 + 56) eventType:*(a1 + 92) indexType:*(a1 + 88)], v12, (v13 & 1) == 0))
  {
    v18 = *(a1 + 80) - 32;
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v19 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_13();
        v23 = v18;
        v24 = 2112;
        v25 = v20;
        v26 = 2112;
        v27 = v5;
        _os_log_impl(&dword_231B25000, v19, OS_LOG_TYPE_INFO, "### Not processed journal entry %@ at offset = %llu for %@ because of err = %@ or task cancelled", v22, 0x2Au);
      }
    }

    v17 = *(*(a1 + 64) + 16);
  }

  else
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v14 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_13();
        v23 = v15;
        v24 = 2112;
        v25 = v16;
        _os_log_impl(&dword_231B25000, v14, OS_LOG_TYPE_INFO, "### Processed journal entry %@ at offset %llu for %@", v22, 0x20u);
      }
    }

    v17 = *(*(a1 + 64) + 16);
  }

  v17();
}

void __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_304(uint64_t a1, unint64_t a2, const char *a3, __int128 *a4, BOOL a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v10 = objc_alloc_init(CSEventListenerDeletion);
  if (v10)
  {
    OUTLINED_FUNCTION_15();
    v10->_serialNumber = a2;
    v10->_bundleHash = *(a1 + 88);
    v10->_bundle = a3;
    v11 = *a4;
    v10->_itemsObj.reference = *(a4 + 2);
    *&v10->_itemsObj.containerBytes = v11;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *(v12 + 112);
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v13 = 0;
  if (v10)
  {
LABEL_5:
    v10->_journalCookie = v13;
    v10->_isDict = a5;
    v12 = *(a1 + 32);
  }

LABEL_6:
  if (v12)
  {
    v14 = *(v12 + 13);
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = 0;
  if (v10)
  {
LABEL_8:
    v10->_isManaged = v14 & 1;
    v12 = *(a1 + 32);
  }

LABEL_9:
  if (v12)
  {
    LODWORD(v12) = *(v12 + 64);
  }

  if (v10)
  {
    v10->_homePathHash = v12;
  }

  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v16 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_24(*(a1 + 96), 5.7781e-34);
      v43 = 2080;
      v44 = v29;
      _os_log_debug_impl(&dword_231B25000, v16, OS_LOG_TYPE_DEBUG, "**** enter %@ for %@ / %s", buf, 0x20u);
    }
  }

  v17 = +[CSEventListenerTasksManager sharedInstance];
  v18 = [v17 turboMode];

  v19 = +[CSEventListenerTasksManager sharedInstance];
  OUTLINED_FUNCTION_29();
  [v20 startTaskForIndexType:? delegate:?];

  v21 = *(a1 + 96);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_306;
  v35[3] = &unk_27893D020;
  v41 = *(a1 + 116);
  v40 = v21;
  v22 = v15;
  v36 = v22;
  v23 = v10;
  v37 = v23;
  v24 = *(a1 + 40);
  v39 = OUTLINED_FUNCTION_20();
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_308;
  v31[3] = &unk_27893CFD0;
  v32 = *(a1 + 40);
  v25 = *(a1 + 116);
  v33 = *(a1 + 120);
  v34 = v25;
  if ([v21 handleDeletion:v23 turboEnabled:v18 completionHandler:v35 cancelBlock:v31])
  {
    OUTLINED_FUNCTION_33();
    dispatch_group_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v26 = +[CSEventListenerTasksManager sharedInstance];
    OUTLINED_FUNCTION_29();
    [v27 endTaskForIndexType:? delegate:?];

    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v28 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_24(*(a1 + 96), 5.778e-34);
        OUTLINED_FUNCTION_26(&dword_231B25000, v28, v30, "exit %@ for %@", buf);
      }
    }

    dispatch_group_leave(v22);
  }
}

- (uint64_t)setErr:(uint64_t)result
{
  if (result)
  {
    *(result + 60) = a2;
  }

  return result;
}

- (uint64_t)toc_retry_counter
{
  if (result)
  {
    return *(result + 168);
  }

  return result;
}

- (uint64_t)setToc_retry_counter:(uint64_t)result
{
  if (result)
  {
    *(result + 168) = a2;
  }

  return result;
}

- (uint64_t)setToc_processed:(uint64_t)result
{
  if (result)
  {
    *(result + 152) = a2;
  }

  return result;
}

- (uint64_t)journalIno
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (uint64_t)dev
{
  if (result)
  {
    return *(result + 28);
  }

  return result;
}

- (uint64_t)journal_orig_name
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

- (uint64_t)journal_fd
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)journal_fd_retain_count
{
  if (result)
  {
    return *(result + 36);
  }

  return result;
}

- (uint64_t)toc_name
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

- (uint64_t)toc_fd
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)toc_fd_retain_count
{
  if (result)
  {
    return *(result + 44);
  }

  return result;
}

- (uint64_t)processed_name
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

- (uint64_t)processed_fd
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)processed_fd_retain_count
{
  if (result)
  {
    return *(result + 52);
  }

  return result;
}

- (uint64_t)err
{
  if (result)
  {
    return *(result + 60);
  }

  return result;
}

- (uint64_t)toc_file_size
{
  if (result)
  {
    return *(result + 160);
  }

  return result;
}

- (uint64_t)setToc_file_size:(uint64_t)result
{
  if (result)
  {
    *(result + 160) = a2;
  }

  return result;
}

- (uint64_t)eventListener
{
  if (result)
  {
    return *(result + 176);
  }

  return result;
}

- (uint64_t)itemHandler
{
  if (result)
  {
    return *(result + 184);
  }

  return result;
}

- (void)setupWithParentFd:name:.cold.1()
{
  __error();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)setupFromTopLevelJournalWithParentFd:journalBasePath:.cold.1()
{
  __error();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)setupFromTopLevelJournalWithParentFd:journalBasePath:.cold.2()
{
  OUTLINED_FUNCTION_7();
  __error();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)retainTocFd
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)retainJournalFd
{
  OUTLINED_FUNCTION_31(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)retainProcessedFd
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)markComplete:(uint64_t)a1 processingDone:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_231B25000, a2, OS_LOG_TYPE_DEBUG, "### complete - %@ ", &v2, 0xCu);
}

void __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_306_cold_1()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __45__CSJournalProcessor_processNext_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (v4)
  {
    *(v4 + 168) = 0;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v5 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_13();
      v8 = a3;
      v9 = 2112;
      v10 = v6;
      _os_log_debug_impl(&dword_231B25000, v5, OS_LOG_TYPE_DEBUG, "### processed %lld to %lld - %@", v7, 0x20u);
    }
  }
}

void *__45__CSJournalProcessor_processNext_completion___block_invoke_2_cold_2(uint64_t *a1, id *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  result = [a3 retainProcessedFd];
  if (result)
  {
    v6 = *a1;
    if (*a1 < 0)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v7 = SKGLogUpdaterInit();
        if (OUTLINED_FUNCTION_28(v7))
        {
          v10 = *a2;
          v11 = 134218242;
          v12 = v6;
          v13 = 2112;
          v14 = v10;
          OUTLINED_FUNCTION_19(&dword_231B25000, v8, v9, "Invalid tocResultOffset %lld, %@", &v11);
        }
      }
    }

    else
    {
      pwrite(result, a1, 8uLL, 0);
    }

    return [*a2 releaseProcessedFd];
  }

  return result;
}

- (void)linkFileAtPath:parentFd:fileName:.cold.1()
{
  OUTLINED_FUNCTION_7();
  __error();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)linkFileAtPath:parentFd:fileName:.cold.2()
{
  __error();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)linkFileAtPath:parentFd:fileName:.cold.3()
{
  OUTLINED_FUNCTION_7();
  __error();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

@end