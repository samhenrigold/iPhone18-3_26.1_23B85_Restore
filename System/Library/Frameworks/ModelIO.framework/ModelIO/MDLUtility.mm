@interface MDLUtility
+ (void)convertToUSDZ:(id)z writeToURL:(id)l;
@end

@implementation MDLUtility

+ (void)convertToUSDZ:(id)z writeToURL:(id)l
{
  zCopy = z;
  lCopy = l;
  sub_239E566C0();
  *v59 = 0u;
  v60 = 0u;
  *v58 = 0u;
  v17 = objc_msgSend_path(zCopy, v7, v8, v9, 0, v14, v15, v16, v10, v11, v12, v13);
  v18 = v17;
  v30 = objc_msgSend_UTF8String(v18, v19, v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  sub_239E552A0(__p, v30);
  MEMORY[0x23EE7E5B0](v58, __p);
  if (v57 < 0)
  {
    operator delete(__p[0]);
  }

  v42 = objc_msgSend_path(lCopy, v31, v32, v33, v38, v39, v40, v41, v34, v35, v36, v37);
  v43 = v42;
  v55 = objc_msgSend_UTF8String(v43, v44, v45, v46, v51, v52, v53, v54, v47, v48, v49, v50);
  sub_239E552A0(__p, v55);
  pxrInternal__aapl__pxrReserved__::UsdUtilsCreateNewARKitUsdzPackage();
  if (v57 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59[1]);
  }

  if (SHIBYTE(v59[0]) < 0)
  {
    operator delete(v58[0]);
  }
}

@end