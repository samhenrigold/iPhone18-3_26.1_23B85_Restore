@interface CRLUSDLib
+ (BOOL)addBasePlateWithStage:(TfRefPtr<pxrInternal__aapl__pxrReserved__:(CGSize)stage :UsdStage>)a3 andSize:;
+ (BOOL)addReferenceWithStage:(TfRefPtr<pxrInternal__aapl__pxrReserved__:(int64_t)stage :(id)a5 UsdStage>)a3 andIndex:(id)index andItem:(id)item andUsdzURL:andDefaultPrimName:;
+ (BOOL)createUSDZFromFileURLs:(id)ls toOutputPath:(id)path error:(id *)error;
+ (BOOL)exportUsdzWithRequest:(id)request andDestUrl:(id)url andError:(id *)error;
+ (TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>)createImageStagewithImageURL:(id)l andSize:(CGSize)size;
+ (id)compressModel:(id)model;
+ (id)createImageUSDAwithImageURL:(id)l andSize:(CGSize)size andOutputDir:(id)dir andError:(id *)error;
+ (id)defaultPrimNameForUSD:(id)d;
+ (int)determineCompression:(id)compression;
@end

@implementation CRLUSDLib

+ (BOOL)createUSDZFromFileURLs:(id)ls toOutputPath:(id)path error:(id *)error
{
  lsCopy = ls;
  pathCopy = path;
  v46 = lsCopy;
  if (!lsCopy || ![lsCopy count])
  {
    if (error)
    {
      v29 = [NSError errorWithDomain:@"com.apple.freeform.CRLErrorDomainUsdLib" code:1 userInfo:0];
LABEL_56:
      v28 = 0;
      *error = v29;
      goto LABEL_99;
    }

LABEL_59:
    v28 = 0;
    goto LABEL_99;
  }

  if (!pathCopy)
  {
    if (error)
    {
      v29 = [NSError errorWithDomain:@"com.apple.freeform.CRLErrorDomainUsdLib" code:2 userInfo:0];
      goto LABEL_56;
    }

    goto LABEL_59;
  }

  v44 = pathCopy;
  if ([pathCopy isFileURL])
  {
    sub_100009388(v57, [pathCopy fileSystemRepresentation]);
    pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::CreateNew();
    if (v56)
    {
      v47 = +[NSFileManager defaultManager];
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      obj = lsCopy;
      v8 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
      if (!v8)
      {
        goto LABEL_48;
      }

      v9 = *v53;
LABEL_8:
      v10 = 0;
      while (1)
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v52 + 1) + 8 * v10);
        if (([v11 isFileURL] & 1) == 0)
        {
          v18 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (CRLAssertCat_init_token != -1)
          {
            sub_10008806C();
          }

          v19 = CRLAssertCat_log_t;
          if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            *&buf[4] = v18;
            *&buf[8] = 2082;
            *&buf[10] = "+[CRLUSDLib createUSDZFromFileURLs:toOutputPath:error:]";
            v62 = 2082;
            v63 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/USD Rendering/USDExporter/CRLUSDLib.mm";
            v64 = 1024;
            v65 = 131;
            v66 = 2114;
            v67 = v11;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d URL is not isFileURL: %{public}@", buf, 0x2Cu);
          }

          if (CRLAssertCat_init_token != -1)
          {
            sub_100088094();
          }

          v20 = CRLAssertCat_log_t;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v24 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            *&buf[4] = v18;
            *&buf[8] = 2114;
            *&buf[10] = v24;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v21 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLUSDLib createUSDZFromFileURLs:toOutputPath:error:]");
          v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/USD Rendering/USDExporter/CRLUSDLib.mm"];
          [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:131 isFatal:0 description:"URL is not isFileURL: %{public}@", v11];

          goto LABEL_43;
        }

        v12 = v11;
        sub_100009388(buf, [v11 fileSystemRepresentation]);
        pxrInternal__aapl__pxrReserved__::TfGetBaseName();
        v49 = 0;
        if (SBYTE3(v63) >= 0)
        {
          v13 = buf;
        }

        else
        {
          v13 = *buf;
        }

        v14 = [NSString stringWithUTF8String:v13];
        v15 = [v47 fileExistsAtPath:v14 isDirectory:&v49];

        if ((v15 & 1) == 0)
        {
          if (CRLThreeDimensionalObjectsCat_init_token != -1)
          {
            sub_1000880BC();
          }

          v16 = CRLThreeDimensionalObjectsCat_log_t;
          if (os_log_type_enabled(CRLThreeDimensionalObjectsCat_log_t, OS_LOG_TYPE_ERROR))
          {
            LODWORD(__p) = 138543362;
            *(&__p + 4) = v11;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "File does not exist: %{public}@", &__p, 0xCu);
          }
        }

        if (v49 != 1)
        {
          goto LABEL_24;
        }

        if (CRLThreeDimensionalObjectsCat_init_token != -1)
        {
          sub_1000880E4();
        }

        v17 = CRLThreeDimensionalObjectsCat_log_t;
        if (os_log_type_enabled(CRLThreeDimensionalObjectsCat_log_t, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p) = 138543362;
          *(&__p + 4) = v11;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "File is a directory: %{public}@", &__p, 0xCu);
          if (v15)
          {
LABEL_25:
            if ((v49 & 1) == 0)
            {
              pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::AddFile();
              if (v60 < 0)
              {
                v23 = *(&__p + 1);
                operator delete(__p);
                if (!v23)
                {
LABEL_77:
                  if (CRLThreeDimensionalObjectsCat_init_token != -1)
                  {
                    sub_10008810C();
                  }

                  if (os_log_type_enabled(CRLThreeDimensionalObjectsCat_log_t, OS_LOG_TYPE_ERROR))
                  {
                    sub_100088134();
                  }

                  if (error)
                  {
                    *error = [NSError errorWithDomain:@"com.apple.freeform.CRLErrorDomainUsdLib" code:5 userInfo:0];
                  }

                  if (v51 < 0)
                  {
                    operator delete(v50);
                  }

                  if (SBYTE3(v63) < 0)
                  {
                    operator delete(*buf);
                  }

                  goto LABEL_88;
                }
              }

              else if (!v60)
              {
                goto LABEL_77;
              }
            }
          }
        }

        else
        {
LABEL_24:
          if (v15)
          {
            goto LABEL_25;
          }
        }

        if (v51 < 0)
        {
          operator delete(v50);
        }

        if (SBYTE3(v63) < 0)
        {
          operator delete(*buf);
        }

LABEL_43:
        if (v8 == ++v10)
        {
          v25 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
          v8 = v25;
          if (v25)
          {
            goto LABEL_8;
          }

LABEL_48:

          if (pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::Save(&v56))
          {
            if (CRLSurfaceCat_init_token != -1)
            {
              sub_100088208();
            }

            v26 = CRLSurfaceCat_log_t;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              path = [v44 path];
              *buf = 138543362;
              *&buf[4] = path;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Exported USDZ to: %{public}@", buf, 0xCu);
            }

            v28 = 1;
          }

          else
          {
            if (CRLThreeDimensionalObjectsCat_init_token != -1)
            {
              sub_10008819C();
            }

            v42 = CRLThreeDimensionalObjectsCat_log_t;
            if (os_log_type_enabled(CRLThreeDimensionalObjectsCat_log_t, OS_LOG_TYPE_ERROR))
            {
              sub_1000881C4(v42);
            }

            if (error)
            {
              [NSError errorWithDomain:@"com.apple.freeform.CRLErrorDomainUsdLib" code:6 userInfo:0];
              *error = v28 = 0;
            }

            else
            {
LABEL_88:
              v28 = 0;
            }
          }

LABEL_96:
          pathCopy = v44;
          goto LABEL_97;
        }
      }
    }

    if (CRLThreeDimensionalObjectsCat_init_token != -1)
    {
      sub_100088230();
    }

    v35 = CRLThreeDimensionalObjectsCat_log_t;
    if (os_log_type_enabled(CRLThreeDimensionalObjectsCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100088258(v57, v35, v36, v37, v38, v39, v40, v41);
    }

    if (error)
    {
      [NSError errorWithDomain:@"com.apple.freeform.CRLErrorDomainUsdLib" code:4 userInfo:0];
      *error = v28 = 0;
      goto LABEL_96;
    }

    v28 = 0;
LABEL_97:
    pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::~UsdZipFileWriter(&v56);
    if (v58 < 0)
    {
      operator delete(v57[0]);
    }
  }

  else
  {
    v30 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_100087F14();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100087F28();
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_100087FDC();
    }

    v31 = CRLAssertCat_log_t;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = +[CRLAssertionHandler packedBacktraceString];
      sub_100088004(v32, buf, v30, v31);
    }

    v33 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLUSDLib createUSDZFromFileURLs:toOutputPath:error:]");
    v34 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/USD Rendering/USDExporter/CRLUSDLib.mm"];
    [CRLAssertionHandler handleFailureInFunction:v33 file:v34 lineNumber:110 isFatal:0 description:"outputPath is not isFileURL: %{public}@", pathCopy];

    if (error)
    {
      [NSError errorWithDomain:@"com.apple.freeform.CRLErrorDomainUsdLib" code:3 userInfo:0];
      *error = v28 = 0;
    }

    else
    {
      v28 = 0;
    }
  }

LABEL_99:

  return v28;
}

+ (id)defaultPrimNameForUSD:(id)d
{
  dCopy = d;
  v4 = dCopy;
  if (dCopy && [dCopy length])
  {
    sub_100009388(&__p, [v4 UTF8String]);
    pxrInternal__aapl__pxrReserved__::UsdStage::Open();
    if (v16)
    {
      v5 = sub_100009980(&v16);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v13, v5);
      v6 = sub_100009A00(&v13);
      pxrInternal__aapl__pxrReserved__::SdfLayer::GetDefaultPrim(&v15, v6);
      v7 = v14;
      if (v14 && atomic_fetch_add_explicit(v14 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        v7 = (*(*v7 + 8))(v7);
      }

      if ((v15 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (v15 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
      }

      if (*(EmptyString + 23) < 0)
      {
        EmptyString = *EmptyString;
      }

      v9 = [NSString stringWithUTF8String:EmptyString];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if (CRLThreeDimensionalObjectsCat_init_token != -1)
      {
        sub_1000882D4();
      }

      if (os_log_type_enabled(CRLThreeDimensionalObjectsCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_1000882FC();
      }

      v9 = 0;
    }

    sub_10000FE1C(&v16, v10, v11);
    if (v18 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    if (CRLThreeDimensionalObjectsCat_init_token != -1)
    {
      sub_100088364();
    }

    if (os_log_type_enabled(CRLThreeDimensionalObjectsCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100088378();
    }

    v9 = 0;
  }

  return v9;
}

+ (id)createImageUSDAwithImageURL:(id)l andSize:(CGSize)size andOutputDir:(id)dir andError:(id *)error
{
  height = size.height;
  width = size.width;
  lCopy = l;
  dirCopy = dir;
  objc_msgSend_createImageStagewithImageURL_andSize_(CRLUSDLib, width, height);
  v12 = [dirCopy URLByAppendingPathComponent:@"item.usda"];
  v13 = sub_100009980(&v39);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v37, v13);
  sub_100009A00(&v37);
  path = [v12 path];
  v15 = path;
  sub_100009388(&v35, [path UTF8String]);
  __p = 0;
  v33 = 0;
  v34 = 0;
  v31[0] = 0;
  v31[1] = 0;
  v30 = v31;
  pxrInternal__aapl__pxrReserved__::SdfLayer::Export();
  sub_10000FECC(&v30, v31[0]);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  v16 = v38;
  if (v38 && atomic_fetch_add_explicit((v38 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v16 + 8))(v16);
  }

  v40[0] = v12;
  v40[1] = lCopy;
  v17 = [NSArray arrayWithObjects:v40 count:2];
  lastPathComponent = [lCopy lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  v20 = [dirCopy URLByAppendingPathComponent:stringByDeletingPathExtension];
  v21 = [v20 URLByAppendingPathExtension:@"usdz"];

  v29 = 0;
  [CRLUSDLib createUSDZFromFileURLs:v17 toOutputPath:v21 error:&v29];
  v22 = v29;
  v23 = v22;
  if (v22)
  {
    if (error)
    {
      v24 = v22;
      v25 = 0;
      *error = v23;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = v21;
  }

  sub_10000FE1C(&v39, v26, v27);

  return v25;
}

+ (TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>)createImageStagewithImageURL:(id)l andSize:(CGSize)size
{
  v5 = v4;
  lCopy = l;
  pxrInternal__aapl__pxrReserved__::UsdStage::CreateInMemory();
  sub_10000FF80(&v18, v5);
  pxrInternal__aapl__pxrReserved__::UsdGeomSetStageMetersPerUnit();
  sub_100088454(&v18);
  sub_10000FF80(&v18, v5);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v17, "Y");
  pxrInternal__aapl__pxrReserved__::UsdGeomSetStageUpAxis();
  sub_1000884A4(&v17, &v18);
  sub_10000FF80(&v18, v5);
  sub_100009388(v13, "/item");
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath();
  pxrInternal__aapl__pxrReserved__::UsdGeomXform::Define();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10008850C(v14);
  sub_10000F8C4(&v18, &v15, &v16);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v8, "component");
  pxrInternal__aapl__pxrReserved__::UsdPrim::SetKind(&v18, &v8);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10000F728(&v20);
  if (v19)
  {
    sub_10000FA9C(v19);
  }

  v7 = sub_100009980(v5);
  sub_10000F8C4(&v18, &v15, &v16);
  pxrInternal__aapl__pxrReserved__::UsdStage::SetDefaultPrim(v7, &v18);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10000F728(&v20);
  if (v19)
  {
    sub_10000FA9C(v19);
  }

  sub_10000FF80(&v18, v5);
  sub_100009388(v10, "/item/card");
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath();
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::Define();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10008850C(v11);
  v18 = 0x400000004;
  sub_10000BF70(v9, &v18, 2);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceVertexCountsAttr(&v18, v12);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
}

+ (BOOL)exportUsdzWithRequest:(id)request andDestUrl:(id)url andError:(id *)error
{
  requestCopy = request;
  urlCopy = url;
  v70 = requestCopy;
  items = [requestCopy items];
  v104 = 0;
  v71 = [[CRLTemporaryDirectory alloc] initWithError:&v104];
  v8 = v104;
  if (v8)
  {
    v9 = v8;
    if (error)
    {
      v10 = v8;
      v11 = 0;
      *error = v9;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_60;
  }

  if (CRLSurfaceCat_init_token != -1)
  {
    sub_1000885E4();
  }

  v12 = CRLSurfaceCat_log_t;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [items count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Exporting %lu item(s) to USDZ", &buf, 0xCu);
  }

  errorCopy = error;

  usd_initialize_once();
  pxrInternal__aapl__pxrReserved__::UsdStage::CreateInMemory();
  sub_10000FF80(&buf, &v103);
  pxrInternal__aapl__pxrReserved__::UsdGeomSetStageMetersPerUnit();
  sub_100088454(&buf);
  sub_10000FF80(&buf, &v103);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v102, "Y");
  pxrInternal__aapl__pxrReserved__::UsdGeomSetStageUpAxis();
  sub_1000884A4(&v102, &buf);
  sub_10000FF80(&buf, &v103);
  sub_100009388(v97, "/scene");
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath();
  pxrInternal__aapl__pxrReserved__::UsdGeomXform::Define();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10008850C(v98);
  v14 = sub_100009980(&v103);
  sub_10000F8C4(&buf, &v100, &v101);
  pxrInternal__aapl__pxrReserved__::UsdStage::SetDefaultPrim(v14, &buf);
  if ((v111 & 7) != 0)
  {
    atomic_fetch_add_explicit((v111 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10000F728(&v110);
  if (*(&buf + 1))
  {
    sub_10000FA9C(*(&buf + 1));
  }

  if ([requestCopy showBasePlate])
  {
    v96 = v103;
    sub_100087EC8(&v96);
    [requestCopy basePlateSize];
    [CRLUSDLib addBasePlateWithStage:&v96 andSize:?];
    sub_10000FE1C(&v96, v15, v16);
  }

  sub_10000FF80(&buf, &v103);
  sub_10000CFF8(&v99, &v91);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v106, "scaleroot");
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v92, &v91, &v106);
  pxrInternal__aapl__pxrReserved__::UsdGeomXform::Define();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10000F728(&v92);
  if ((v106 & 7) != 0)
  {
    atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10008860C(&v91, &v92, &buf);
  sub_10000F8C4(&v106, &v94, &v95);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&buf, &v106);
  v111 = 0;
  if ((v108 & 7) != 0)
  {
    atomic_fetch_add_explicit((v108 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10000F728(v107);
  if (*(&v106 + 1))
  {
    sub_10000FA9C(*(&v106 + 1));
  }

  [requestCopy surfaceScale];
  v18 = v17;
  [requestCopy surfaceScale];
  v20 = v19;
  [requestCopy surfaceScale];
  v21 = v18;
  v22 = v20;
  *&v23 = v23;
  v88 = v21;
  v89 = v22;
  v90 = LODWORD(v23);
  pxrInternal__aapl__pxrReserved__::UsdGeomXformCommonAPI::SetScale();
  v72 = objc_alloc_init(NSMutableArray);
  v24 = [(CRLTemporaryDirectory *)v71 URL];
  v67 = [v24 URLByAppendingPathComponent:@"scene.usda"];

  [v72 addObject:v67];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v25 = items;
  v26 = [v25 countByEnumeratingWithState:&v84 objects:v105 count:16];
  if (!v26)
  {
    goto LABEL_42;
  }

  v28 = *v85;
  v29 = 1;
  *&v27 = 138543362;
  v65 = v27;
  while (2)
  {
    v30 = 0;
    do
    {
      if (*v85 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v31 = *(*(&v84 + 1) + 8 * v30);
      type = [v31 type];
      if (type)
      {
        if (type != 1)
        {
          goto LABEL_35;
        }

        v33 = [v31 url];
        [v31 size];
        v35 = v34;
        v37 = v36;
        v38 = [(CRLTemporaryDirectory *)v71 URL];
        v83 = 0;
        lowercaseString = [CRLUSDLib createImageUSDAwithImageURL:v33 andSize:v38 andOutputDir:&v83 andError:v35, v37];
        v9 = v83;

        if (v9)
        {
          if (errorCopy)
          {
            v61 = v9;
            *errorCopy = v9;
          }

          goto LABEL_58;
        }

        v82 = v103;
        sub_100087EC8(&v82);
        [CRLUSDLib addReferenceWithStage:&v82 andIndex:v29 andItem:v31 andUsdzURL:lowercaseString andDefaultPrimName:@"item"];
        sub_10000FE1C(&v82, v40, v41);
        [v72 addObject:lowercaseString];
      }

      else
      {
        v42 = [v31 url];
        pathExtension = [v42 pathExtension];
        lowercaseString = [pathExtension lowercaseString];

        if (([lowercaseString isEqualToString:@"usdz"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"usda") & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"usdc"))
        {
          v44 = [v31 url];
          path = [v44 path];
          v46 = [CRLUSDLib defaultPrimNameForUSD:path];

          v81 = v103;
          sub_100087EC8(&v81);
          v47 = [v31 url];
          [CRLUSDLib addReferenceWithStage:&v81 andIndex:v29 andItem:v31 andUsdzURL:v47 andDefaultPrimName:v46];

          sub_10000FE1C(&v81, v48, v49);
          v50 = [v31 url];
          [v72 addObject:v50];
        }

        else
        {
          if (CRLSurfaceCat_init_token != -1)
          {
            sub_100088660();
          }

          v46 = CRLSurfaceCat_log_t;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v51 = [v31 url];
            absoluteString = [v51 absoluteString];
            LODWORD(v106) = v65;
            *(&v106 + 4) = absoluteString;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Skipping USDZ export of file with unsupported extension: %{public}@", &v106, 0xCu);
          }
        }
      }

LABEL_35:
      ++v29;
      v30 = v30 + 1;
    }

    while (v26 != v30);
    v53 = [v25 countByEnumeratingWithState:&v84 objects:v105 count:16];
    v26 = v53;
    if (v53)
    {
      continue;
    }

    break;
  }

LABEL_42:

  v54 = sub_100009980(&v103);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v79, v54);
  sub_100009A00(&v79);
  path2 = [v67 path];
  v56 = path2;
  sub_100009388(&v106, [path2 UTF8String]);
  __p = 0;
  v77 = 0;
  v78 = 0;
  v75[0] = 0;
  v75[1] = 0;
  v74 = v75;
  v57 = pxrInternal__aapl__pxrReserved__::SdfLayer::Export();
  sub_10000FECC(&v74, v75[0]);
  if (SHIBYTE(v78) < 0)
  {
    operator delete(__p);
  }

  if ((v107[7] & 0x80000000) != 0)
  {
    operator delete(v106);
  }

  v58 = v80;
  if (v80 && atomic_fetch_add_explicit((v80 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v58 + 8))(v58);
  }

  v11 = errorCopy;
  if (v57)
  {
    v73 = 0;
    [CRLUSDLib createUSDZFromFileURLs:v72 toOutputPath:urlCopy error:&v73];
    v59 = v73;
    v9 = v59;
    if (v59)
    {
      if (errorCopy)
      {
        v60 = v59;
        v11 = 0;
        *errorCopy = v9;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v9 = 0;
LABEL_58:
    v11 = 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomXformCommonAPI::~UsdGeomXformCommonAPI(&buf);
  pxrInternal__aapl__pxrReserved__::UsdGeomXform::~UsdGeomXform(&v93);
  pxrInternal__aapl__pxrReserved__::UsdGeomXform::~UsdGeomXform(&v99);
  sub_10000FE1C(&v103, v62, v63);
LABEL_60:

  return v11;
}

+ (BOOL)addBasePlateWithStage:(TfRefPtr<pxrInternal__aapl__pxrReserved__:(CGSize)stage :UsdStage>)a3 andSize:
{
  sub_100009388(&v10, "/scene");
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath();
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v7, "baseplate");
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v9, v6, v7);
  if ((v7[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v7[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10000F728(v6);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_10000FF80(&v10, a3.var0);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::Define();
  sub_100088454(&v10);
  v10 = 0x400000004;
  sub_10000BF70(v7, &v10, 2);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceVertexCountsAttr(&v10, v8);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
}

+ (BOOL)addReferenceWithStage:(TfRefPtr<pxrInternal__aapl__pxrReserved__:(int64_t)stage :(id)a5 UsdStage>)a3 andIndex:(id)index andItem:(id)item andUsdzURL:andDefaultPrimName:
{
  v11 = a5;
  indexCopy = index;
  itemCopy = item;
  stage = [NSString stringWithFormat:@"ref%lu", stage];
  sub_100009388(buf, "/scene/scaleroot");
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath();
  v13 = stage;
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v61, [stage UTF8String]);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v73, v66, v61);
  if ((v61[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v61[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10000F728(v66);
  if (SHIBYTE(v75) < 0)
  {
    operator delete(*buf);
  }

  sub_10000FF80(buf, a3.var0);
  pxrInternal__aapl__pxrReserved__::UsdGeomXform::Define();
  sub_100088454(buf);
  sub_10000F8C4(v66, &v71, &v72);
  [v11 rotation];
  v40 = v14;
  [v11 rotation];
  v39 = v15;
  [v11 rotation];
  v63 = 57.296 * v40;
  v64 = vmuls_lane_f32(57.296, v39, 1);
  v65 = vmuls_lane_f32(57.296, v16, 2);
  [v11 translation];
  v41 = v17;
  [v11 translation];
  v39.i32[1] = v18;
  [v11 translation];
  v37 = v19;
  [v11 scale];
  v38 = v20;
  [v11 scale];
  v36 = v21;
  [v11 scale];
  v61[4] = __PAIR64__(v36, v38);
  v62 = v22;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v61, &v70);
  v61[3] = 0;
  v23 = pxrInternal__aapl__pxrReserved__::UsdGeomXformCommonAPI::SetRotate();
  *buf = vcvtq_f64_f32(__PAIR64__(v39.u32[1], v41));
  v75 = v37;
  v24 = pxrInternal__aapl__pxrReserved__::UsdGeomXformCommonAPI::SetTranslate();
  v25 = pxrInternal__aapl__pxrReserved__::UsdGeomXformCommonAPI::SetScale();
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(buf, "innerref");
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v60, &v73, buf);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_10000FF80(buf, a3.var0);
  pxrInternal__aapl__pxrReserved__::UsdGeomXform::Define();
  sub_100088454(buf);
  sub_10000F8C4(v53, &v58, &v59);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(&v49, v53);
  lastPathComponent = [indexCopy lastPathComponent];
  v27 = [NSString stringWithFormat:@"./%@", lastPathComponent];
  v28 = v27;
  sub_100009388(&__p, [v27 UTF8String]);

  v46 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (itemCopy)
  {
    itemCopy = [NSString stringWithFormat:@"/%@", itemCopy];
    v30 = itemCopy;
    sub_100009388(buf, [itemCopy UTF8String]);

    pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath();
    sub_10000FB40(&v46, &v44);
    sub_10000FB98(&v46 + 4, v45);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_10000F728(&v44);
    if (SHIBYTE(v75) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    if (CRLSurfaceCat_init_token != -1)
    {
      sub_100088730();
    }

    v31 = CRLSurfaceCat_log_t;
    if (os_log_type_enabled(CRLSurfaceCat_log_t, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = indexCopy;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No default prim name for USD: %{public}@", buf, 0xCu);
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v44, 0.0, 1.0);
  pxrInternal__aapl__pxrReserved__::SdfReference::SdfReference();
  v32 = pxrInternal__aapl__pxrReserved__::UsdReferences::AddReference();
  v33 = v77;
  v77 = 0;
  if (v33)
  {
    sub_10000FC6C(v33, *(v33 + 8));
    operator delete();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  v34 = (v23 & v24 & v25);
  sub_10000F728(&v76);
  if (SHIBYTE(v75) < 0)
  {
    operator delete(*buf);
  }

  if ((v34 & v32 & 1) == 0)
  {
    if (CRLThreeDimensionalObjectsCat_init_token != -1)
    {
      sub_100088758();
    }

    if (os_log_type_enabled(CRLThreeDimensionalObjectsCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100088780();
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10000F728(&v46);
  if (v48 < 0)
  {
    operator delete(__p);
  }

  if ((v52 & 7) != 0)
  {
    atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10000F728(&v51);
  if (v50)
  {
    sub_10000FA9C(v50);
  }

  if ((v56 & 7) != 0)
  {
    atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10000F728(&v55);
  if (v54)
  {
    sub_10000FA9C(v54);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomXform::~UsdGeomXform(&v57);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10000F728(&v60);
  pxrInternal__aapl__pxrReserved__::UsdGeomXformCommonAPI::~UsdGeomXformCommonAPI(v61);
  if ((v69 & 7) != 0)
  {
    atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10000F728(&v68);
  if (v67)
  {
    sub_10000FA9C(v67);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomXform::~UsdGeomXform(&v70);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10000F728(&v73);

  return v34 & v32;
}

+ (id)compressModel:(id)model
{
  modelCopy = model;
  usd_initialize_once();
  v4 = [[CRLTemporaryDirectory alloc] initWithError:0];
  if (v4)
  {
    [(CRLTemporaryDirectory *)v4 path];
    uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
    sub_100009388(__p, uTF8String);
    makeOptions(__p, &v7);
  }

  return 0;
}

+ (int)determineCompression:(id)compression
{
  compressionCopy = compression;
  usd_initialize_once();
  v4 = [[CRLTemporaryDirectory alloc] initWithError:0];
  if (v4)
  {
    [(CRLTemporaryDirectory *)v4 path];
    uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
    sub_100009388(__p, uTF8String);
    makeOptions(__p, &v8);
  }

  return -1;
}

@end