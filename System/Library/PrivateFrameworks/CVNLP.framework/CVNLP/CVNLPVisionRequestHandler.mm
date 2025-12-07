@interface CVNLPVisionRequestHandler
- (CVNLPVisionRequestHandler)initWithOptions:(id)options runTimeParams:(id)params;
- (id)classifyImage:(__CVBuffer *)image;
@end

@implementation CVNLPVisionRequestHandler

- (CVNLPVisionRequestHandler)initWithOptions:(id)options runTimeParams:(id)params
{
  v43 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  paramsCopy = params;
  v25.receiver = self;
  v25.super_class = CVNLPVisionRequestHandler;
  v8 = [(CVNLPCaptionModelBase *)&v25 initWithOptions:optionsCopy runTimeParams:paramsCopy];
  if (!v8)
  {
    goto LABEL_21;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1D9DBEA0C;
  v23[3] = &unk_1E858E3F0;
  v24 = paramsCopy;
  v9 = MEMORY[0x1DA741A60](v23);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v10 = qword_1ECB71C08;
  v34 = qword_1ECB71C08;
  if (!qword_1ECB71C08)
  {
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = sub_1D9DBF150;
    v29 = &unk_1E858DFE0;
    v30 = &v31;
    v35 = 0;
    if (!qword_1ECB71C10)
    {
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = sub_1D9DBF2A4;
      v39 = &unk_1E858E018;
      v40 = &v35;
      v41 = xmmword_1E858E460;
      v42 = 0;
      qword_1ECB71C10 = _sl_dlopen();
      v11 = v35;
      if (!qword_1ECB71C10)
      {
        goto LABEL_22;
      }

      if (v35)
      {
        free(v35);
      }
    }

    Class = objc_getClass("VN6Mb1ME89lyW3HpahkEygIG");
    *(v30[1] + 24) = Class;
    if (!*(v30[1] + 24))
    {
      abort_report_np("Unable to find class %s", "VN6Mb1ME89lyW3HpahkEygIG");
      goto LABEL_26;
    }

    qword_1ECB71C08 = *(v30[1] + 24);
    v10 = v32[3];
  }

  v13 = v10;
  _Block_object_dispose(&v31, 8);
  v14 = objc_alloc_init(v10);
  significantRequest = v8->_significantRequest;
  v8->_significantRequest = v14;

  (v9)[2](v9, v8->_significantRequest);
  if (objc_claimAutoreleasedReturnValue())
  {
    operator new();
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v16 = qword_1ECB71C18;
  v34 = qword_1ECB71C18;
  if (qword_1ECB71C18)
  {
    goto LABEL_18;
  }

  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = sub_1D9DBF318;
  v29 = &unk_1E858DFE0;
  v30 = &v31;
  v35 = 0;
  if (!qword_1ECB71C10)
  {
    v36 = MEMORY[0x1E69E9820];
    v37 = 3221225472;
    v38 = sub_1D9DBF2A4;
    v39 = &unk_1E858E018;
    v40 = &v35;
    v41 = xmmword_1E858E460;
    v42 = 0;
    qword_1ECB71C10 = _sl_dlopen();
    v11 = v35;
    if (qword_1ECB71C10)
    {
      if (v35)
      {
        free(v35);
      }

      goto LABEL_16;
    }

LABEL_22:
    abort_report_np("%s", v11);
    goto LABEL_26;
  }

LABEL_16:
  v17 = objc_getClass("VNVYvzEtX1JlUdu8xx5qhDI");
  *(v30[1] + 24) = v17;
  if (!*(v30[1] + 24))
  {
    abort_report_np("Unable to find class %s", "VNVYvzEtX1JlUdu8xx5qhDI");
LABEL_26:
    __break(1u);
  }

  qword_1ECB71C18 = *(v30[1] + 24);
  v16 = v32[3];
LABEL_18:
  v18 = v16;
  _Block_object_dispose(&v31, 8);
  v19 = objc_alloc_init(v16);
  nsfwRequest = v8->_nsfwRequest;
  v8->_nsfwRequest = v19;

  v21 = (v9)[2](v9, v8->_nsfwRequest);

  if (v21)
  {
    operator new();
  }

LABEL_21:
  return v8;
}

- (id)classifyImage:(__CVBuffer *)image
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1D9DBED38;
  v23 = sub_1D9DBED48;
  v24 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_1D9DBED38;
  v17[4] = sub_1D9DBED48;
  v18 = 0;
  v6 = objc_msgSend_perfResults(self, a2, image, v3);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1D9DBED50;
  v16[3] = &unk_1E858E418;
  v16[4] = v17;
  v16[5] = image;
  objc_msgSend_run_block_(v6, v7, @"VisionRequestCreation", v16);

  v11 = objc_msgSend_perfResults(self, v8, v9, v10);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1D9DBEF78;
  v15[3] = &unk_1E858E440;
  v15[4] = self;
  v15[5] = v17;
  v15[6] = &v19;
  objc_msgSend_run_block_(v11, v12, @"VisionPerformRequest", v15);

  v13 = v20[5];
  _Block_object_dispose(v17, 8);

  _Block_object_dispose(&v19, 8);

  return v13;
}

@end