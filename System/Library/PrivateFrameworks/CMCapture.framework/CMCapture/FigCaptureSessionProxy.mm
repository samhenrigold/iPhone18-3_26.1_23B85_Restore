@interface FigCaptureSessionProxy
+ (void)initialize;
- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken;
- (FigCaptureSessionProxy)initWithFigCaptureSession:(OpaqueFigCaptureSession *)session identifier:(int64_t)identifier clientAuditToken:(id *)token containsVideoSource:(BOOL)source containsStillImageSink:(BOOL)sink containsMovieFileSink:(BOOL)fileSink;
- (int)openPreviewTapWithDelegate:(id)delegate;
- (void)closePreviewTap;
- (void)dealloc;
@end

@implementation FigCaptureSessionProxy

- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken
{
  v3 = *&self[1].var0[2];
  *retstr->var0 = *&self->var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (FigCaptureSessionProxy)initWithFigCaptureSession:(OpaqueFigCaptureSession *)session identifier:(int64_t)identifier clientAuditToken:(id *)token containsVideoSource:(BOOL)source containsStillImageSink:(BOOL)sink containsMovieFileSink:(BOOL)fileSink
{
  if (!session)
  {
    [(FigCaptureSessionProxy *)self initWithFigCaptureSession:a2 identifier:0 clientAuditToken:identifier containsVideoSource:token containsStillImageSink:source containsMovieFileSink:sink, fileSink];
LABEL_10:

    return 0;
  }

  if (identifier <= 0)
  {
    [(FigCaptureSessionProxy *)self initWithFigCaptureSession:a2 identifier:session clientAuditToken:identifier containsVideoSource:token containsStillImageSink:source containsMovieFileSink:sink, fileSink];
    goto LABEL_10;
  }

  v15 = *&token->var0[4];
  v28[0] = *token->var0;
  v28[1] = v15;
  IsValid = FigCaptureAuditTokenIsValid(v28);
  if (!IsValid)
  {
    [(FigCaptureSessionProxy *)IsValid initWithFigCaptureSession:v17 identifier:v18 clientAuditToken:v19 containsVideoSource:v20 containsStillImageSink:v21 containsMovieFileSink:v22, v23];
    goto LABEL_10;
  }

  v27.receiver = self;
  v27.super_class = FigCaptureSessionProxy;
  v24 = [(FigCaptureSessionProxy *)&v27 init];
  if (v24)
  {
    *(v24 + 1) = CFRetain(session);
    *(v24 + 2) = identifier;
    v25 = *&token->var0[4];
    *(v24 + 24) = *token->var0;
    *(v24 + 40) = v25;
    v24[56] = source;
    v24[57] = sink;
    v24[58] = fileSink;
  }

  return v24;
}

- (void)dealloc
{
  session = self->_session;
  if (session)
  {
    CFRelease(session);
  }

  v4.receiver = self;
  v4.super_class = FigCaptureSessionProxy;
  [(FigCaptureSessionProxy *)&v4 dealloc];
}

- (int)openPreviewTapWithDelegate:(id)delegate
{
  if (self->_previewTapOpened)
  {
    if ([FigCaptureSessionProxy openPreviewTapWithDelegate:?])
    {
      return 0;
    }

    v9 = v12;
LABEL_9:
    self->_previewTapDelegate = 0;
    return v9;
  }

  self->_previewTapDelegate = delegate;
  v8 = FigCaptureSessionSetVideoPreviewTapCallback(self->_session, csp_previewTapCallback, self, 0, v3, v4, v5, v6, v11);
  v9 = v8;
  if (v8)
  {
    [FigCaptureSessionProxy openPreviewTapWithDelegate:v8];
    goto LABEL_9;
  }

  self->_previewTapOpened = 1;
  return v9;
}

- (void)closePreviewTap
{
  p_previewTapOpened = &self->_previewTapOpened;
  if (self->_previewTapOpened)
  {
    v8 = FigCaptureSessionSetVideoPreviewTapCallback(self->_session, 0, 0, 0, v2, v3, v4, v5, v9);
    if (v8)
    {
      [(FigCaptureSessionProxy *)v8 closePreviewTap];
    }
  }
}

- (uint64_t)initWithFigCaptureSession:(uint64_t)a3 identifier:(uint64_t)a4 clientAuditToken:(uint64_t)a5 containsVideoSource:(uint64_t)a6 containsStillImageSink:(uint64_t)a7 containsMovieFileSink:(uint64_t)a8 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_2_68(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v25, v27, SWORD2(v27), SBYTE6(v27), SHIBYTE(v27));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v22, v24, v26, v28, v29, v30, v31);
  if (OUTLINED_FUNCTION_5_2(v16))
  {
    v33 = 136315138;
    OUTLINED_FUNCTION_2_11("[FigCaptureSessionProxy initWithFigCaptureSession:identifier:clientAuditToken:containsVideoSource:containsStillImageSink:containsMovieFileSink:]");
    OUTLINED_FUNCTION_21(v17, v18, v32, v19, &dword_1AC90E000);
  }

  return OUTLINED_FUNCTION_1_77();
}

- (uint64_t)initWithFigCaptureSession:(uint64_t)a3 identifier:(uint64_t)a4 clientAuditToken:(uint64_t)a5 containsVideoSource:(uint64_t)a6 containsStillImageSink:(uint64_t)a7 containsMovieFileSink:(uint64_t)a8 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_2_68(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v25, v27, SWORD2(v27), SBYTE6(v27), SHIBYTE(v27));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v22, v24, v26, v28, v29, v30, v31);
  if (OUTLINED_FUNCTION_5_2(v16))
  {
    v33 = 136315138;
    OUTLINED_FUNCTION_2_11("[FigCaptureSessionProxy initWithFigCaptureSession:identifier:clientAuditToken:containsVideoSource:containsStillImageSink:containsMovieFileSink:]");
    OUTLINED_FUNCTION_21(v17, v18, v32, v19, &dword_1AC90E000);
  }

  return OUTLINED_FUNCTION_1_77();
}

- (uint64_t)initWithFigCaptureSession:(uint64_t)a3 identifier:(uint64_t)a4 clientAuditToken:(uint64_t)a5 containsVideoSource:(uint64_t)a6 containsStillImageSink:(uint64_t)a7 containsMovieFileSink:(uint64_t)a8 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_2_68(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v25, v27, SWORD2(v27), SBYTE6(v27), SHIBYTE(v27));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v22, v24, v26, v28, v29, v30, v31);
  if (OUTLINED_FUNCTION_5_2(v16))
  {
    v33 = 136315138;
    OUTLINED_FUNCTION_2_11("[FigCaptureSessionProxy initWithFigCaptureSession:identifier:clientAuditToken:containsVideoSource:containsStillImageSink:containsMovieFileSink:]");
    OUTLINED_FUNCTION_21(v17, v18, v32, v19, &dword_1AC90E000);
  }

  return OUTLINED_FUNCTION_1_77();
}

- (BOOL)openPreviewTapWithDelegate:(_DWORD *)a1 .cold.2(_DWORD *a1)
{
  v7 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v1, v9, v10, v11, v12, vars0, vars8);
  v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844068, 0xFFFFCE14, "<<<< FigCaptureSessionObserver >>>>", 0x32D, v1, v3, v4, v8);
  *a1 = v5;
  return v5 == 0;
}

@end