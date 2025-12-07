@interface WFHarnessTestRunDescriptor
- (BOOL)shouldDisablePrivacyPrompts;
- (WFHarnessTestRunDescriptor)initWithCoder:(id)coder;
- (WFHarnessTestRunDescriptor)initWithTestBundleURL:(id)l xcTestClass:(id)class xcTestMethodName:(id)name testIdentifier:(id)identifier;
- (id)description;
- (id)loadTestCaseWithError:(id *)error;
- (id)testMethodNamebyRemovingSuffixes:(id)suffixes;
- (void)createWorkflowWithEnvironment:(int64_t)environment database:(id)database completionHandler:(id)handler;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFHarnessTestRunDescriptor

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ %p: xcTestClass: %@, xcTestMethodName: %@, testIdentifier: %@, testCase != nil: %d, testBundleURL: %@"], v5, self, self->_xcTestClass, self->_xcTestMethodName, self->_testIdentifier, self->_testCase != 0, self->_testBundleURL);

  return v6;
}

- (BOOL)shouldDisablePrivacyPrompts
{
  testCase = [(WFHarnessTestRunDescriptor *)self testCase];

  if (!testCase)
  {
    return 1;
  }

  testCase2 = [(WFHarnessTestRunDescriptor *)self testCase];
  interactions = [testCase2 interactions];
  v6 = [interactions bs_containsObjectPassingTest:&__block_literal_global_20740];

  return v6 ^ 1;
}

- (id)loadTestCaseWithError:(id *)error
{
  v98 = *MEMORY[0x1E69E9840];
  testCase = [(WFHarnessTestRunDescriptor *)self testCase];

  if (testCase)
  {
    testCase2 = [(WFHarnessTestRunDescriptor *)self testCase];
    goto LABEL_52;
  }

  v7 = MEMORY[0x1E696AAE8];
  testBundleURL = [(WFHarnessTestRunDescriptor *)self testBundleURL];
  v9 = [v7 bundleWithURL:testBundleURL];

  if (!v9)
  {
    v33 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      testBundleURL2 = [(WFHarnessTestRunDescriptor *)self testBundleURL];
      *buf = 136315394;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v92 = 2112;
      selfCopy9 = testBundleURL2;
      _os_log_impl(&dword_1CA256000, v33, OS_LOG_TYPE_FAULT, "%s Could not load test bundle at URL %@", buf, 0x16u);
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:0];
      *error = testCase2 = 0;
    }

    else
    {
      testCase2 = 0;
    }

    goto LABEL_51;
  }

  sharedSupportURL = [v9 sharedSupportURL];
  v11 = [sharedSupportURL URLByAppendingPathComponent:@"libActionHarnessTests.dylib"];

  wf_fileExists = [(WFHarnessTestRunDescriptor *)v11 wf_fileExists];
  v13 = getWFTestHarnessLogObject();
  v14 = v13;
  if ((wf_fileExists & 1) == 0)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      testBundleURL3 = [(WFHarnessTestRunDescriptor *)self testBundleURL];
      *buf = 136315394;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v92 = 2112;
      selfCopy9 = testBundleURL3;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_FAULT, "%s Could not find action harness test dylib in bundle %@", buf, 0x16u);
    }

    if (!error)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
    v92 = 2112;
    selfCopy9 = v11;
    _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEFAULT, "%s Loading test dylib at path %@", buf, 0x16u);
  }

  v15 = v11;
  if (!dlopen([(WFHarnessTestRunDescriptor *)v11 fileSystemRepresentation], 2))
  {
    v36 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v92 = 2112;
      selfCopy9 = v11;
      _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_FAULT, "%s Could not dlopen test dylib at path %@", buf, 0x16u);
    }

    if (!error)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  xcTestClass = [(WFHarnessTestRunDescriptor *)self xcTestClass];
  cls = NSClassFromString(xcTestClass);

  if (!cls)
  {
    v40 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      xcTestClass2 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
      *buf = 136315650;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v92 = 2112;
      selfCopy9 = xcTestClass2;
      v94 = 2112;
      v95 = v11;
      _os_log_impl(&dword_1CA256000, v40, OS_LOG_TYPE_FAULT, "%s Could not find test class %@ inside dylib at path %@", buf, 0x20u);
    }

    if (!error)
    {
      goto LABEL_49;
    }

LABEL_47:
    v39 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:0];
    goto LABEL_48;
  }

  v17 = objc_alloc_init(cls);
  v73 = v17;
  v18 = v17;
  if (!v17 || (v19 = [v17 conformsToProtocol:&unk_1F4B24FA0], v18 = v73, (v19 & 1) == 0))
  {

    v37 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      xcTestClass3 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
      *buf = 136315394;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v92 = 2112;
      selfCopy9 = xcTestClass3;
      _os_log_impl(&dword_1CA256000, v37, OS_LOG_TYPE_FAULT, "%s Test class %@ does not conform to WFHarnessTestCaseVendor", buf, 0x16u);
    }

    if (error)
    {
      v39 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
LABEL_48:
      testCase2 = 0;
      *error = v39;
      goto LABEL_50;
    }

LABEL_49:
    testCase2 = 0;
    goto LABEL_50;
  }

  [v73 setTestBundle:v9];
  outCount = 0;
  v20 = class_copyMethodList(cls, &outCount);
  v21 = v20;
  if (!v20)
  {
    v46 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      xcTestClass4 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
      *buf = 136315394;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v92 = 2112;
      selfCopy9 = xcTestClass4;
      _os_log_impl(&dword_1CA256000, v46, OS_LOG_TYPE_FAULT, "%s Unable to get method list from test class: %@", buf, 0x16u);
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      *error = testCase2 = 0;
    }

    else
    {
      testCase2 = 0;
    }

    goto LABEL_66;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__WFHarnessTestRunDescriptor_loadTestCaseWithError___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v20;
  v71 = _Block_copy(aBlock);
  v22 = getWFTestHarnessLogObject();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    xcTestClass5 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
    xcTestMethodName = [(WFHarnessTestRunDescriptor *)self xcTestMethodName];
    *buf = 136315906;
    *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
    v92 = 2112;
    selfCopy9 = self;
    v94 = 2112;
    v95 = xcTestClass5;
    v96 = 2112;
    *v97 = xcTestMethodName;
    _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_DEFAULT, "%s %@: Looking for test method %@ %@", buf, 0x2Au);
  }

  xcTestMethodName2 = [(WFHarnessTestRunDescriptor *)self xcTestMethodName];
  v72 = [(WFHarnessTestRunDescriptor *)self testMethodNamebyRemovingSuffixes:xcTestMethodName2];

  if (!outCount)
  {
LABEL_57:
    v29 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      xcTestClass6 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
      xcTestMethodName3 = [(WFHarnessTestRunDescriptor *)self xcTestMethodName];
      *buf = 136315650;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v92 = 2112;
      selfCopy9 = xcTestClass6;
      v94 = 2112;
      v95 = xcTestMethodName3;
      _os_log_impl(&dword_1CA256000, v29, OS_LOG_TYPE_FAULT, "%s Failed to find a test method name matching %@ %@ - check if XCTest calling convention has changed", buf, 0x20u);
    }

    goto LABEL_59;
  }

  v26 = 0;
  v69 = 0;
  while (1)
  {
    while (1)
    {
      v27 = v21[v26];
      Name = method_getName(v27);
      v29 = NSStringFromSelector(Name);
      if ([v29 hasPrefix:@"test"])
      {
        break;
      }

LABEL_19:

      if (++v26 >= outCount)
      {
        if ((v69 & 1) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_56;
      }
    }

    v30 = [(WFHarnessTestRunDescriptor *)self testMethodNamebyRemovingSuffixes:v29];
    if ((objc_msgSend_isEqualToString_(v30) & 1) == 0)
    {

      goto LABEL_19;
    }

    v70 = [MEMORY[0x1E696AEC0] stringWithCString:method_getTypeEncoding(v27) encoding:4];
    if (v70)
    {
      if ([(WFHarnessTestRunDescriptor *)v70 length])
      {
        break;
      }
    }

    v31 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      xcTestClass7 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
      *buf = 136315906;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v92 = 2112;
      selfCopy9 = self;
      v94 = 2112;
      v95 = xcTestClass7;
      v96 = 2112;
      *v97 = v29;
      _os_log_impl(&dword_1CA256000, v31, OS_LOG_TYPE_DEFAULT, "%s %@: Skipping considering %@ %@ - method has empty type encoding", buf, 0x2Au);
    }

    ++v26;
    v69 = 1;
    if (v26 >= outCount)
    {
      goto LABEL_56;
    }
  }

  v48 = getWFTestHarnessLogObject();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
    v92 = 2112;
    selfCopy9 = self;
    v94 = 2112;
    v95 = v70;
    _os_log_impl(&dword_1CA256000, v48, OS_LOG_TYPE_DEFAULT, "%s %@: types=%@", buf, 0x20u);
  }

  clsa = [(objc_class *)cls instanceMethodSignatureForSelector:Name];
  numberOfArguments = [(objc_class *)clsa numberOfArguments];
  v50 = getWFTestHarnessLogObject();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
    v92 = 2112;
    selfCopy9 = self;
    v94 = 2048;
    v95 = numberOfArguments;
    _os_log_impl(&dword_1CA256000, v50, OS_LOG_TYPE_DEFAULT, "%s %@: methodSignature.numberOfArguments=%lu", buf, 0x20u);
  }

  v51 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:clsa];
  [v51 setSelector:Name];
  [v51 setTarget:v73];
  v68 = v51;
  v52 = [v29 containsString:@"WithCompletionHandler:"];
  if (v52)
  {
    if (numberOfArguments == 3)
    {
      v53 = [(WFHarnessTestRunDescriptor *)v70 containsString:@"NSError"];
      goto LABEL_82;
    }

LABEL_77:
    v53 = 0;
  }

  else
  {
    if (numberOfArguments != 3)
    {
      goto LABEL_77;
    }

    v54 = clsa;
    v55 = [(objc_class *)clsa getArgumentTypeAtIndex:2];
    v56 = v55;
    v53 = *v55 == 94 && v55[1] == 64;
    v57 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v92 = 2112;
      selfCopy9 = self;
      v94 = 2112;
      v95 = v29;
      v96 = 1024;
      *v97 = v53;
      *&v97[4] = 2080;
      *&v97[6] = v56;
      *&v97[14] = 2080;
      *&v97[16] = "^@";
      _os_log_impl(&dword_1CA256000, v57, OS_LOG_TYPE_DEFAULT, "%s %@: %@ isThrowingTest %d type=%s errorTestArgumentType=%s", buf, 0x3Au);
    }
  }

LABEL_82:
  v58 = getWFTestHarnessLogObject();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    xcTestClass8 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
    *buf = 136316418;
    *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
    v92 = 2112;
    selfCopy9 = self;
    v94 = 2112;
    v95 = xcTestClass8;
    v96 = 2112;
    *v97 = v29;
    *&v97[8] = 1024;
    *&v97[10] = v52;
    *&v97[14] = 1024;
    *&v97[16] = v53;
    _os_log_impl(&dword_1CA256000, v58, OS_LOG_TYPE_DEFAULT, "%s %@: Invoking test method %@ %@, isAsyncTest: %d, isThrowingTest: %d", buf, 0x36u);
  }

  if (!v52)
  {
    [v68 invoke];
    if (v53)
    {
      v83 = 0;
      [v68 getArgument:&v83 atIndex:2];
      if (error)
      {
        *error = v83;
      }

      if (v83)
      {
        v61 = getWFTestHarnessLogObject();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          xcTestClass9 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
          *buf = 136316162;
          *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
          v92 = 2112;
          selfCopy9 = self;
          v94 = 2112;
          v95 = xcTestClass9;
          v96 = 2112;
          *v97 = v29;
          *&v97[8] = 2112;
          *&v97[10] = v83;
          _os_log_impl(&dword_1CA256000, v61, OS_LOG_TYPE_ERROR, "%s %@: Got error running test method %@ %@ - %@", buf, 0x34u);
        }

        goto LABEL_104;
      }
    }

    goto LABEL_106;
  }

  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__20765;
  v87 = __Block_byref_object_dispose__20766;
  v88 = 0;
  v60 = dispatch_semaphore_create(0);
  if (v53)
  {
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __52__WFHarnessTestRunDescriptor_loadTestCaseWithError___block_invoke_224;
    v79[3] = &unk_1E8376650;
    v79[4] = self;
    v80 = v29;
    v82 = &v83;
    v81 = v60;
    *buf = _Block_copy(v79);
    [v68 setArgument:buf atIndex:2];
    [v68 invoke];
  }

  else
  {
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __52__WFHarnessTestRunDescriptor_loadTestCaseWithError___block_invoke_226;
    v76[3] = &unk_1E837C1E8;
    v76[4] = self;
    v77 = v29;
    v78 = v60;
    *buf = _Block_copy(v76);
    [v68 setArgument:buf atIndex:2];
    [v68 invoke];
  }

  v63 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v60, v63))
  {
    v64 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      xcTestClass10 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
      *buf = 136315906;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v92 = 2112;
      selfCopy9 = self;
      v94 = 2112;
      v95 = xcTestClass10;
      v96 = 2112;
      *v97 = v29;
      _os_log_impl(&dword_1CA256000, v64, OS_LOG_TYPE_DEFAULT, "%s %@: Timeout - giving up waiting on async test method %@ %@", buf, 0x2Au);
    }

    goto LABEL_103;
  }

  if (error)
  {
    *error = v84[5];
  }

  if (!v84[5])
  {

    _Block_object_dispose(&v83, 8);
LABEL_106:

LABEL_56:
    testIdentifier = [(WFHarnessTestRunDescriptor *)self testIdentifier];
    testCase2 = [v73 testCaseWithIdentifier:testIdentifier];

    [(WFHarnessTestRunDescriptor *)self setTestCase:testCase2];
    goto LABEL_60;
  }

  v64 = getWFTestHarnessLogObject();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
  {
    xcTestClass11 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
    v67 = v84[5];
    *buf = 136316162;
    *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
    v92 = 2112;
    selfCopy9 = self;
    v94 = 2112;
    v95 = xcTestClass11;
    v96 = 2112;
    *v97 = v29;
    *&v97[8] = 2112;
    *&v97[10] = v67;
    _os_log_impl(&dword_1CA256000, v64, OS_LOG_TYPE_ERROR, "%s %@: Got error running async test method %@ %@ - %@", buf, 0x34u);
  }

LABEL_103:

  _Block_object_dispose(&v83, 8);
LABEL_104:

LABEL_59:
  testCase2 = 0;
LABEL_60:

  v71[2]();
LABEL_66:

LABEL_50:
LABEL_51:

LABEL_52:

  return testCase2;
}

void __52__WFHarnessTestRunDescriptor_loadTestCaseWithError___block_invoke_224(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = getWFTestHarnessLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = [v6 xcTestClass];
    v8 = *(a1 + 40);
    v9 = 136316162;
    v10 = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]_block_invoke";
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s %@: Async test method completed %@ %@ ; error %@", &v9, 0x34u);
  }

  if (v4)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

intptr_t __52__WFHarnessTestRunDescriptor_loadTestCaseWithError___block_invoke_226(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = getWFTestHarnessLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 xcTestClass];
    v5 = *(a1 + 40);
    v7 = 136315906;
    v8 = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_DEFAULT, "%s %@: Test method completed %@ %@", &v7, 0x2Au);
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

- (id)testMethodNamebyRemovingSuffixes:(id)suffixes
{
  suffixesCopy = suffixes;
  if ([suffixesCopy hasSuffix:@"AndReturnError:"])
  {
    v4 = [suffixesCopy substringToIndex:{objc_msgSend(suffixesCopy, "length") - objc_msgSend(@"AndReturnError:", "length")}];

    suffixesCopy = v4;
  }

  if ([suffixesCopy hasSuffix:@"WithCompletionHandler:"])
  {
    v5 = [suffixesCopy substringToIndex:{objc_msgSend(suffixesCopy, "length") - objc_msgSend(@"WithCompletionHandler:", "length")}];

    suffixesCopy = v5;
  }

  if ([suffixesCopy hasSuffix:@"()"])
  {
    v6 = [suffixesCopy substringToIndex:{objc_msgSend(suffixesCopy, "length") - objc_msgSend(@"()", "length")}];

    suffixesCopy = v6;
  }

  return suffixesCopy;
}

- (WFHarnessTestRunDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"testBundleURL"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"xcTestClass"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"xcTestMethodName"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"testIdentifier"];

  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v7 == 0 || v8 == 0)
  {
    selfCopy = 0;
  }

  else
  {
    v12 = [v5 url];
    self = [(WFHarnessTestRunDescriptor *)self initWithTestBundleURL:v12 xcTestClass:v6 xcTestMethodName:v7 testIdentifier:v8];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AE98];
  coderCopy = coder;
  v6 = [v4 alloc];
  testBundleURL = [(WFHarnessTestRunDescriptor *)self testBundleURL];
  v11 = [v6 initWithURL:testBundleURL];

  [coderCopy encodeObject:v11 forKey:@"testBundleURL"];
  xcTestClass = [(WFHarnessTestRunDescriptor *)self xcTestClass];
  [coderCopy encodeObject:xcTestClass forKey:@"xcTestClass"];

  xcTestMethodName = [(WFHarnessTestRunDescriptor *)self xcTestMethodName];
  [coderCopy encodeObject:xcTestMethodName forKey:@"xcTestMethodName"];

  testIdentifier = [(WFHarnessTestRunDescriptor *)self testIdentifier];
  [coderCopy encodeObject:testIdentifier forKey:@"testIdentifier"];
}

- (void)dealloc
{
  if ([(WFHarnessTestRunDescriptor *)self holdingSecurityScopedAccess])
  {
    testBundleURL = [(WFHarnessTestRunDescriptor *)self testBundleURL];
    [testBundleURL stopAccessingSecurityScopedResource];
  }

  v4.receiver = self;
  v4.super_class = WFHarnessTestRunDescriptor;
  [(WFHarnessTestRunDescriptor *)&v4 dealloc];
}

- (WFHarnessTestRunDescriptor)initWithTestBundleURL:(id)l xcTestClass:(id)class xcTestMethodName:(id)name testIdentifier:(id)identifier
{
  v37 = *MEMORY[0x1E69E9840];
  lCopy = l;
  classCopy = class;
  nameCopy = name;
  identifierCopy = identifier;
  if (lCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHarnessTestRunDescriptor.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"testBundleURL"}];

    if (classCopy)
    {
LABEL_3:
      if (nameCopy)
      {
        goto LABEL_4;
      }

LABEL_14:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFHarnessTestRunDescriptor.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"xcTestMethodName"}];

      if (identifierCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFHarnessTestRunDescriptor.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"xcTestClass"}];

  if (!nameCopy)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (identifierCopy)
  {
    goto LABEL_5;
  }

LABEL_15:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"WFHarnessTestRunDescriptor.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"testIdentifier"}];

LABEL_5:
  v32.receiver = self;
  v32.super_class = WFHarnessTestRunDescriptor;
  v16 = [(WFHarnessTestRunDescriptor *)&v32 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_testBundleURL, l);
    v18 = [classCopy copy];
    xcTestClass = v17->_xcTestClass;
    v17->_xcTestClass = v18;

    v20 = [nameCopy copy];
    xcTestMethodName = v17->_xcTestMethodName;
    v17->_xcTestMethodName = v20;

    v22 = [identifierCopy copy];
    testIdentifier = v17->_testIdentifier;
    v17->_testIdentifier = v22;

    startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
    v17->_holdingSecurityScopedAccess = startAccessingSecurityScopedResource;
    if (startAccessingSecurityScopedResource)
    {
      v25 = getWFTestHarnessLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v34 = "[WFHarnessTestRunDescriptor initWithTestBundleURL:xcTestClass:xcTestMethodName:testIdentifier:]";
        v35 = 2112;
        v36 = lCopy;
        _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_DEFAULT, "%s Taken sandbox extension to %@", buf, 0x16u);
      }
    }

    v26 = v17;
  }

  return v17;
}

- (void)createWorkflowWithEnvironment:(int64_t)environment database:(id)database completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  handlerCopy = handler;
  v10 = getWFTestHarnessLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[WFHarnessTestRunDescriptor(Conversion) createWorkflowWithEnvironment:database:completionHandler:]";
    v22 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEFAULT, "%s %@ - Loading testCase", buf, 0x16u);
  }

  v19 = 0;
  v11 = [(WFHarnessTestRunDescriptor *)self loadTestCaseWithError:&v19];
  v12 = v19;
  if (v11)
  {
    runDescriptor = [v11 runDescriptor];
    v14 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      name = [v11 name];
      *buf = 136315906;
      v21 = "[WFHarnessTestRunDescriptor(Conversion) createWorkflowWithEnvironment:database:completionHandler:]";
      v22 = 2112;
      selfCopy2 = self;
      v24 = 2112;
      v25 = runDescriptor;
      v26 = 2112;
      v27 = name;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEFAULT, "%s %@ - Running workflow %@ %@", buf, 0x2Au);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __99__WFHarnessTestRunDescriptor_Conversion__createWorkflowWithEnvironment_database_completionHandler___block_invoke;
    v16[3] = &unk_1E8376698;
    v17 = v11;
    v18 = handlerCopy;
    [runDescriptor createWorkflowWithEnvironment:environment database:databaseCopy completionHandler:v16];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v12);
  }
}

void __99__WFHarnessTestRunDescriptor_Conversion__createWorkflowWithEnvironment_database_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  v7 = [v5 name];
  [v8 setName:v7];

  (*(*(a1 + 40) + 16))();
}

@end