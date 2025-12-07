@interface SLAbsintheSigningSession
- (BOOL)establish;
- (SLAbsintheSigningSession)initWithCertURL:(id)l sessionURL:(id)rL;
- (id)_urlEncodedString:(id)string;
- (id)signatureForData:(id)data;
- (void)dealloc;
@end

@implementation SLAbsintheSigningSession

- (SLAbsintheSigningSession)initWithCertURL:(id)l sessionURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v12.receiver = self;
  v12.super_class = SLAbsintheSigningSession;
  v9 = [(SLAbsintheSigningSession *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_certURL, l);
    objc_storeStrong(&v10->_sessionURL, rL);
  }

  return v10;
}

- (void)dealloc
{
  IW1PcFszqNK(self->_context);
  v3.receiver = self;
  v3.super_class = SLAbsintheSigningSession;
  [(SLAbsintheSigningSession *)&v3 dealloc];
}

- (BOOL)establish
{
  v121[1] = *MEMORY[0x1E69E9840];
  _SLLog(v7, 7, @"Fetching Absinthe cert.", v2, v3, v4, v5, v6, v93);
  v9 = [MEMORY[0x1E695DFF8] URLWithString:self->_certURL];
  v10 = [MEMORY[0x1E696AF68] requestWithURL:v9];
  v113 = 0;
  v114 = 0;
  v11 = [MEMORY[0x1E696AF28] sendSynchronousRequest:v10 returningResponse:&v114 error:&v113];
  v12 = v114;
  v13 = v113;
  if (v11)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    v15 = v13;
    localizedDescription = [v13 localizedDescription];
    _SLLog(v7, 3, @"Could not get Absinthe cert: %@", v17, v18, v19, v20, v21, localizedDescription);

LABEL_8:
    v39 = 0;
    goto LABEL_9;
  }

  v22 = [v11 length];
  _SLLog(v7, 7, @"Got Absinthe cert: %d bytes.", v23, v24, v25, v26, v27, v22);
  v112 = 0;
  v111 = 0;
  _SLLog(v7, 7, @"Initializing Absinthe session.", v28, v29, v30, v31, v32, v94);
  KxmB0CKvgWt([v11 bytes], objc_msgSend(v11, "length"));
  if (v33)
  {
    _SLLog(v7, 3, @"NACInit failed, status: %d", v34, v35, v36, v37, v38, v33);
    v15 = 0;
    goto LABEL_8;
  }

  _SLLog(v7, 7, @"session info request: %p of size %lu", v34, v35, v36, v37, v38, v112);
  v41 = [MEMORY[0x1E695DEF0] dataWithBytes:v112 length:v111];
  base64Encoding = [v41 base64Encoding];

  v120 = @"absinthe-operations";
  v118 = @"create-session-info";
  v115[0] = @"id";
  v115[1] = @"request";
  v116[0] = &unk_1F4202A78;
  v116[1] = base64Encoding;
  v106 = base64Encoding;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:v115 count:2];
  v117 = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v117 count:1];
  v119 = v44;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
  v121[0] = v45;
  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v121 forKeys:&v120 count:1];

  v110 = 0;
  v105 = v46;
  v47 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v46 options:0 error:&v110];
  v48 = v110;
  v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v47 encoding:4];
  v50 = [(SLAbsintheSigningSession *)self _urlEncodedString:v49];

  if (v48)
  {
    _SLLog(v7, 3, @"Building Absinthe operation JSON failed: %@", v51, v52, v53, v54, v55, v48);
    v39 = 0;
    v15 = 0;
  }

  else
  {
    v102 = v47;
    v56 = MEMORY[0x1E696AD68];
    v57 = [MEMORY[0x1E695DFF8] URLWithString:self->_sessionURL];
    v58 = [v56 requestWithURL:v57];

    [v58 setHTTPMethod:@"POST"];
    v104 = v50;
    v59 = [v50 dataUsingEncoding:4];
    [v58 setHTTPBody:v59];

    [v58 addValue:@"Absinthe/2.0 Thunderhill (com.apple.social.facebook)" forHTTPHeaderField:@"User-Agent"];
    v108 = 0;
    v109 = v12;
    v103 = v58;
    v60 = [MEMORY[0x1E696AF28] sendSynchronousRequest:v58 returningResponse:&v109 error:&v108];
    v101 = v109;

    v61 = v108;
    v15 = v61;
    v100 = v60;
    if (v61 || !v60)
    {
      localizedDescription2 = [v61 localizedDescription];
      _SLLog(v7, 3, @"Could not connect to session URL: %@", v70, v71, v72, v73, v74, localizedDescription2);
      v48 = 0;
      v39 = 0;
      v47 = v102;
    }

    else
    {
      v107 = 0;
      localizedDescription2 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v60 options:0 error:&v107];
      v63 = v107;
      v48 = v63;
      v47 = v102;
      if (v63)
      {
        localizedDescription3 = [v63 localizedDescription];
        _SLLog(v7, 3, @"JSON parsing failed: %@", v65, v66, v67, v68, v69, localizedDescription3);
        v39 = 0;
      }

      else
      {
        v99 = localizedDescription2;
        v97 = [localizedDescription2 objectForKey:@"absinthe-results"];
        v96 = [v97 objectForKey:@"create-session-info"];
        lastObject = [v96 lastObject];
        localizedDescription3 = [lastObject objectForKey:@"session-info"];

        if (localizedDescription3)
        {
          v98 = localizedDescription3;
          v81 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64Encoding:localizedDescription3];
          _SLLog(v7, 7, @"Initialized Absinthe session. Establishing key...", v82, v83, v84, v85, v86, v95);
          nDYmeMqvWb(self->_context, [v81 bytes], objc_msgSend(v81, "length"));
          v39 = v87 == 0;
          if (v87)
          {
            _SLLog(v7, 3, @"NACKeyEstablishment failed, status: %d", v88, v89, v90, v91, v92, v87);
          }

          localizedDescription3 = v98;
          localizedDescription2 = v99;
        }

        else
        {
          _SLLog(v7, 3, @"Could not get session info from server response.", v76, v77, v78, v79, v80, v95);
          v39 = 0;
          localizedDescription2 = v99;
        }
      }

      v50 = v104;
    }

    v12 = v101;
  }

LABEL_9:
  return v39;
}

- (id)signatureForData:(id)data
{
  if (self->_context)
  {
    v22 = 0;
    dataCopy = data;
    _SLLog(v3, 7, @"Signing data.", v6, v7, v8, v9, v10, v21);
    context = self->_context;
    bytes = [dataCopy bytes];
    v13 = [dataCopy length];

    t1BoNctgaUu66(context, bytes, v13, &v22);
    if (v14)
    {
      _SLLog(v3, 3, @"NACSign failed, status: %d", v15, v16, v17, v18, v19, v14);
    }
  }

  return 0;
}

- (id)_urlEncodedString:(id)string
{
  v3 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x1E695E480], string, 0, @":/?#[]@!$&‚Äö√Ñ√¥()*+,;='", 0x8000100u);

  return v3;
}

@end