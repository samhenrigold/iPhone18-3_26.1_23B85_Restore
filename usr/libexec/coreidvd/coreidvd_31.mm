uint64_t sub_100342DE0()
{
  sub_10000BB78((v0 + 16));
  sub_10000BB78((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_100342E44()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100342EA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100342EF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100342F5C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100342FBC()
{
  v1 = type metadata accessor for MobileDocumentRegistration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100343124(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentProviderRegistrationSession.Error.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  DIPError.code.getter();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for DIPError.Code.processNotVisible(_:))
  {
    goto LABEL_2;
  }

  if (v10 == enum case for DIPError.Code.unexpectedDaemonState(_:))
  {
LABEL_4:
    v11 = &enum case for MobileDocumentProviderRegistrationSession.Error.Code.unknown(_:);
    goto LABEL_7;
  }

  if (v10 == enum case for DIPError.Code.webPresentmentInvalidRequest(_:))
  {
    goto LABEL_6;
  }

  v17 = v10 == enum case for DIPError.Code.webPresentmentWriteRegistrationFailed(_:) || v10 == enum case for DIPError.Code.webPresentmentFetchRegistrationFailed(_:) || v10 == enum case for DIPError.Code.webPresentmentDeleteRegistrationFailed(_:);
  if (v17 || v10 == enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:))
  {
    goto LABEL_4;
  }

  if (v10 == enum case for DIPError.Code.webPresentmentRegistrationNotFound(_:))
  {
    goto LABEL_6;
  }

  if (v10 == enum case for DIPError.Code.webPresentmentRegistrationUnsupportedBundleType(_:) || v10 == enum case for DIPError.Code.webPresentmentRegistrationIdentifiersMissing(_:))
  {
    v11 = &enum case for MobileDocumentProviderRegistrationSession.Error.Code.notSupported(_:);
    goto LABEL_7;
  }

  if (v10 == enum case for DIPError.Code.webPresentmentRegistrationInvalidRequest(_:) || v10 == enum case for DIPError.Code.webPresentmentRegistrationEntitlementMissing(_:))
  {
LABEL_6:
    v11 = &enum case for MobileDocumentProviderRegistrationSession.Error.Code.invalidRequest(_:);
    goto LABEL_7;
  }

  if (v10 != enum case for DIPError.Code.webPresentmentRegistrationFlowNotAuthorized(_:))
  {
    if (v10 != enum case for DIPError.Code.webPresentmentUpdateSceneIdentifiersFailed(_:) && v10 != enum case for DIPError.Code.webPresentmentFetchSceneIdentifiersFailed(_:) && v10 != enum case for DIPError.Code.webPresentmentDeleteInstallationDataFailed(_:) && v10 != enum case for DIPError.Code.webPresentmentCouldNotCreateAppExtensionProcess(_:) && v10 != enum case for DIPError.Code.webPresentmentCouldNotCreateXPCConnection(_:) && v10 != enum case for DIPError.Code.coreDataErrorMobileDocumentRegistrationSaveFailed(_:) && v10 != enum case for DIPError.Code.appExtensionNotFoundForApp(_:) && v10 != enum case for DIPError.Code.tooManyAppExtensionsForApp(_:) && v10 != enum case for DIPError.Code.appExtensionDisabledForApp(_:) && v10 != enum case for DIPError.Code.appExtensionNotLoaded(_:) && v10 != enum case for DIPError.Code.appExtensionMissingApplicationIdentifier(_:))
    {
      (*(v3 + 104))(v5, enum case for MobileDocumentProviderRegistrationSession.Error.Code.unknown(_:), v2);
      MobileDocumentProviderRegistrationSession.Error.init(code:underlyingError:debugDescription:)();
      (*(v7 + 8))(v9, v6);
      goto LABEL_8;
    }

    goto LABEL_4;
  }

LABEL_2:
  v11 = &enum case for MobileDocumentProviderRegistrationSession.Error.Code.notAuthorized(_:);
LABEL_7:
  (*(v3 + 104))(v5, *v11, v2);
  MobileDocumentProviderRegistrationSession.Error.init(code:underlyingError:debugDescription:)();
LABEL_8:
  v12 = type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v14, a1, v12);
  MobileDocumentProviderRegistrationSession.Error.underlyingError.setter();
  sub_1003435AC();
  MobileDocumentProviderRegistrationSession.Error.debugDescription.setter();
  return (*(v13 + 8))(a1, v12);
}

unint64_t sub_1003435AC()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DIPError.code.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for DIPError.Code.processNotVisible(_:))
  {
    return 0xD000000000000051;
  }

  if (v4 == enum case for DIPError.Code.webPresentmentInvalidRequest(_:))
  {
    return 0xD00000000000002CLL;
  }

  if (v4 == enum case for DIPError.Code.webPresentmentWriteRegistrationFailed(_:) || v4 == enum case for DIPError.Code.webPresentmentFetchRegistrationFailed(_:) || v4 == enum case for DIPError.Code.webPresentmentDeleteRegistrationFailed(_:))
  {
    return 0xD000000000000042;
  }

  if (v4 == enum case for DIPError.Code.webPresentmentRegistrationNotFound(_:))
  {
    return 0xD00000000000003ELL;
  }

  if (v4 == enum case for DIPError.Code.webPresentmentRegistrationUnsupportedBundleType(_:))
  {
    return 0xD000000000000033;
  }

  if (v4 == enum case for DIPError.Code.webPresentmentRegistrationInvalidRequest(_:))
  {
    return 0xD00000000000002CLL;
  }

  if (v4 == enum case for DIPError.Code.webPresentmentRegistrationEntitlementMissing(_:))
  {
    return 0xD00000000000004FLL;
  }

  if (v4 == enum case for DIPError.Code.webPresentmentRegistrationFlowNotAuthorized(_:))
  {
    return 0xD000000000000044;
  }

  if (v4 == enum case for DIPError.Code.webPresentmentUpdateSceneIdentifiersFailed(_:) || v4 == enum case for DIPError.Code.webPresentmentFetchSceneIdentifiersFailed(_:) || v4 == enum case for DIPError.Code.webPresentmentDeleteInstallationDataFailed(_:) || v4 == enum case for DIPError.Code.coreDataErrorMobileDocumentRegistrationSaveFailed(_:))
  {
    return 0xD000000000000042;
  }

  if (v4 == enum case for DIPError.Code.appExtensionNotFoundForApp(_:))
  {
    return 0xD000000000000028;
  }

  if (v4 == enum case for DIPError.Code.tooManyAppExtensionsForApp(_:))
  {
    return 0xD000000000000035;
  }

  if (v4 == enum case for DIPError.Code.appExtensionDisabledForApp(_:))
  {
    return 0xD000000000000033;
  }

  if (v4 == enum case for DIPError.Code.appExtensionNotLoaded(_:))
  {
    return 0xD000000000000026;
  }

  if (v4 == enum case for DIPError.Code.appExtensionMissingApplicationIdentifier(_:))
  {
    return 0xD00000000000003DLL;
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

void *sub_100343978(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v5 = v3;
  v6 = sub_1003BE178(v4);
  sub_10031EEF8((v6 + 4), v5, a1);
  v8 = v7;

  result = v6;
  if (v8 != v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void *sub_100343A0C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_10000B90C(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_100142424(v10, 0);
      v14 = Data._copyContents(initializing:)();
      sub_10000B90C(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_100343B88(uint64_t a1, unint64_t a2)
{
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  sub_100007224(&qword_1008418C8, &qword_1006DE398);
  if (swift_dynamicCast())
  {
    sub_10001F358(__src, &v43);
    sub_10000BA08(&v43, v44);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v42;
    sub_10000BB78(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_10000BE18(__src, &qword_1008418D0, &qword_1006DE3A0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_10034B18C(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_10034C234(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v34[2] = v39;
  v10 = sub_10034B254(sub_10034D044, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_10010075C(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_10010075C(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    Data._Representation.append(contentsOf:)();
    sub_10000BD94(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_10000BD94(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_10000B8B8(*&__src[0], *(&__src[0] + 1));

  sub_10000B90C(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_1003440A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100007224(&qword_100841888, &qword_1006DE350);
  v18[3] = v8;
  v18[4] = sub_1000BA30C(&qword_100841890, &qword_100841888, &qword_1006DE350, &protocol conformance descriptor for <A> ArraySlice<A>);
  v9 = swift_allocObject();
  v18[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = sub_10000BA08(v18, v8);
  v11 = v10[2];
  v12 = v10[3] >> 1;
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_10034B5F8((v10[1] + v11), (v10[1] + v11 + v14), &v17);
    v15 = v17;
    sub_10000BB78(v18);
    return v15;
  }

  return result;
}

Swift::Int sub_1003441DC()
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100344230(uint64_t a1)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100344278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v49[-v10];
  __chkstk_darwin(v9);
  v13 = &v49[-v12];
  v14 = SecCertificateRef.serialNumber.getter();
  if (v15 >> 60 == 15)
  {
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "IssuerRevocationList provided certificate is missing serial number.", v18, 2u);
    }

    (*(v5 + 8))(v8, v4);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = v15;
  v21 = SecCertificateRef.serialNumber.getter();
  if (v22 >> 60 == 15)
  {
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "IssuerRevocationList provided root certificate is missing serial number.", v25, 2u);

      sub_10000BD94(v19, v20);
    }

    else
    {
      sub_10000BD94(v19, v20);
    }

    (*(v5 + 8))(v11, v4);
LABEL_17:
    v40 = 0;
    return v40 & 1;
  }

  v26 = v21;
  v27 = v22;
  sub_1000363B4(v19, v20);
  v54 = sub_10034C2D4(v19, v20);
  v55 = v28;
  v56 = v19;
  sub_10000BD94(v19, v20);
  sub_10000B8B8(v26, v27);
  v29 = sub_10034C2D4(v26, v27);
  v31 = v30;
  sub_10000BD94(v26, v27);
  v32 = *(a3 + 16);
  sub_10000B8B8(v29, v31);
  if (!v32 || (v33 = sub_10003B554(v29, v31), (v34 & 1) == 0))
  {
    defaultLogger()();
    sub_10000B8B8(v29, v31);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    sub_10000B90C(v29, v31);
    v53 = v41;
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v52 = v43;
      v51 = swift_slowAlloc();
      v57[0] = v51;
      *v43 = 136315138;
      sub_10000B8B8(v29, v31);
      v44 = Data.base16EncodedString()();
      v50 = v42;
      sub_10000B90C(v29, v31);
      sub_10000B90C(v29, v31);
      v45 = sub_100141FE4(v44._countAndFlagsBits, v44._object, v57);

      v46 = v52;
      *(v52 + 1) = v45;
      v47 = v53;
      _os_log_impl(&_mh_execute_header, v53, v50, "IssuerRevocationList certificate revocation list is missing for serial number %s", v46, 0xCu);
      sub_10000BB78(v51);

      sub_10000B90C(v54, v55);

      sub_10000B90C(v29, v31);
      sub_10000BD94(v26, v27);
      sub_10000BD94(v56, v20);
    }

    else
    {
      sub_10000B90C(v54, v55);

      sub_10000B90C(v29, v31);
      sub_10000BD94(v26, v27);
      sub_10000BD94(v56, v20);
      sub_10000B90C(v29, v31);
    }

    (*(v5 + 8))(v13, v4);
    goto LABEL_17;
  }

  v35 = v33;
  v36 = sub_10000B90C(v29, v31);
  v53 = v49;
  v37 = *(*(a3 + 56) + 8 * v35);
  v38 = v54;
  v39 = v55;
  v57[0] = v54;
  v57[1] = v55;
  __chkstk_darwin(v36);
  *&v49[-16] = v57;

  v40 = sub_10035C990(sub_10032D1FC, &v49[-32], v37);

  sub_10000BD94(v26, v27);
  sub_10000BD94(v56, v20);
  sub_10000B90C(v29, v31);
  sub_10000B90C(v38, v39);
  return v40 & 1;
}

uint64_t sub_1003447E4(uint64_t a1)
{
  v2[224] = v1;
  v2[223] = a1;
  v3 = type metadata accessor for DIPError.Code();
  v2[225] = v3;
  v2[226] = *(v3 - 8);
  v2[227] = swift_task_alloc();
  v4 = type metadata accessor for DIPOIDVerifier();
  v2[228] = v4;
  v2[229] = *(v4 - 8);
  v2[230] = swift_task_alloc();
  v2[231] = swift_task_alloc();
  sub_100007224(&qword_10083AB90, &unk_1006DE370);
  v2[232] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[233] = v5;
  v2[234] = *(v5 - 8);
  v2[235] = swift_task_alloc();
  v2[236] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v2[237] = swift_task_alloc();
  v2[238] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[239] = v6;
  v2[240] = *(v6 - 8);
  v2[241] = swift_task_alloc();
  v2[242] = swift_task_alloc();
  v2[243] = swift_task_alloc();
  v2[244] = swift_task_alloc();

  return _swift_task_switch(sub_100344A74, 0, 0);
}

uint64_t sub_100344A74()
{
  v64 = v0;
  v1 = *(*(v0 + 1792) + 24);
  *(v0 + 1960) = v1;
  os_unfair_lock_lock((v1 + 56));
  sub_10000BBC4(v1 + 16, v0 + 1592, &qword_100841860, &qword_1006DE330);
  os_unfair_lock_unlock((v1 + 56));
  if (*(v0 + 1616))
  {
    v2 = *(v0 + 1784);
    sub_10001F358((v0 + 1592), v0 + 1552);
    sub_10001F358((v0 + 1552), v2);
LABEL_3:

    v3 = *(v0 + 8);

    return v3();
  }

  sub_10000BE18(v0 + 1592, &qword_100841860, &qword_1006DE330);
  v5 = UserDefaultsConfiguration.userDefaults.getter();
  static DaemonDefaultsKeys.overrideMobileDocumentReaderVICALURL.getter();
  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 stringForKey:v6];

  if (v7)
  {
    v8 = *(v0 + 1920);
    v9 = *(v0 + 1912);
    v10 = *(v0 + 1904);
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    URL.init(string:)();
    if ((*(v8 + 48))(v10, 1, v9) != 1)
    {
      v23 = *(v0 + 1952);
      v24 = *(v0 + 1944);
      v25 = *(v0 + 1920);
      v26 = *(v0 + 1912);
      v27 = *(v0 + 1904);

      (*(v25 + 32))(v23, v27, v26);
      defaultLogger()();
      v62 = *(v25 + 16);
      v62(v24, v23, v26);
      v28 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      v29 = os_log_type_enabled(v28, v61);
      v30 = *(v0 + 1944);
      v31 = *(v0 + 1920);
      v32 = *(v0 + 1912);
      v33 = *(v0 + 1888);
      v34 = *(v0 + 1872);
      v35 = *(v0 + 1864);
      if (v29)
      {
        v59 = *(v0 + 1864);
        v36 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v63[0] = v58;
        *v36 = 136315138;
        sub_10034D0CC(&qword_1008418B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        log = v28;
        v57 = v33;
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v38;
        v60 = *(v31 + 8);
        v60(v30, v32);
        v40 = sub_100141FE4(v37, v39, v63);

        *(v36 + 4) = v40;
        _os_log_impl(&_mh_execute_header, log, v61, "MobileDocumentReaderIssuerRootStorage found override VICAL URL %s", v36, 0xCu);
        sub_10000BB78(v58);

        (*(v34 + 8))(v57, v59);
      }

      else
      {

        v60 = *(v31 + 8);
        v60(v30, v32);
        (*(v34 + 8))(v33, v35);
      }

      v43 = *(v0 + 1936);
      v44 = *(v0 + 1856);
      v45 = *(v0 + 1848);
      v46 = *(v0 + 1840);
      v47 = *(v0 + 1832);
      v48 = *(v0 + 1824);
      v62(v43, *(v0 + 1952), *(v0 + 1912));
      v49 = type metadata accessor for COSESignatureValidator();
      (*(*(v49 - 8) + 56))(v44, 1, 1, v49);
      *(v0 + 1736) = type metadata accessor for DateProvider();
      *(v0 + 1744) = &protocol witness table for DateProvider;
      sub_100032DBC((v0 + 1712));
      DateProvider.init()();
      DIPOIDVerifier.init(dateProvider:)();
      (*(v47 + 16))(v46, v45, v48);
      v50 = sub_10034B7FC(v44, v46);
      (*(v47 + 8))(v45, v48);
      v51 = type metadata accessor for VICALWebService(0);
      v52 = sub_10034BCA0(v43, v50, objc_allocWithZone(v51));
      *(swift_task_alloc() + 16) = v52;
      os_unfair_lock_lock((v1 + 56));
      sub_10034CF24((v1 + 16));
      os_unfair_lock_unlock((v1 + 56));
      v53 = *(v0 + 1952);
      v54 = *(v0 + 1912);
      v55 = *(v0 + 1784);

      v55[3] = v51;
      v55[4] = &off_1008181E8;
      *v55 = v52;
      v60(v53, v54);
      goto LABEL_3;
    }

    sub_10000BE18(*(v0 + 1904), &unk_100844540, &unk_1006BFBC0);
    defaultLogger()();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 1880);
    v18 = *(v0 + 1872);
    v19 = *(v0 + 1864);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v63[0] = v21;
      *v20 = 136315138;
      v22 = sub_100141FE4(v11, v13, v63);

      *(v20 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "DIPTopekaStaticWebService found override VICAL URL string %s, but could not cast it into URL. Falling back to default URL.", v20, 0xCu);
      sub_10000BB78(v21);
    }

    else
    {
    }

    (*(v18 + 8))(v17, v19);
  }

  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v41 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v41 + 54);
  sub_1000318FC(&v41[4], v0 + 1352);
  os_unfair_lock_unlock(v41 + 54);
  sub_100020260(v0 + 1352, v0 + 1632);
  sub_100031918(v0 + 1352);
  *(v0 + 1968) = *sub_10000BA08((v0 + 1632), *(v0 + 1656));
  v42 = swift_task_alloc();
  *(v0 + 1976) = v42;
  *v42 = v0;
  v42[1] = sub_100345274;

  return sub_10050886C(v0 + 16);
}

uint64_t sub_100345274()
{
  v2 = *v1;
  *(*v1 + 1984) = v0;

  if (v0)
  {
    v3 = *(v2 + 1968);
    v4 = sub_10034595C;
  }

  else
  {
    v4 = sub_100345390;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_100345390()
{
  memcpy((v0 + 504), (v0 + 48), 0x1A1uLL);
  sub_1000AA624(v0 + 504, v0 + 928);
  sub_1000F2758(v0 + 16);
  *(v0 + 1752) = *(v0 + 792);
  sub_10000BBC4(v0 + 1752, v0 + 1768, &qword_10084A1D0, &qword_1006DB410);
  sub_1000AA65C(v0 + 504);
  sub_10000BB78((v0 + 1632));
  if (!*(v0 + 1760))
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 1920);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1896);
  v4._countAndFlagsBits = 47;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._object = 0x800000010070F300;
  v5._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v5);
  URL.init(string:)();

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_10000BE18(*(v0 + 1896), &unk_100844540, &unk_1006BFBC0);
LABEL_4:
    (*(*(v0 + 1808) + 104))(*(v0 + 1816), enum case for DIPError.Code.vicalWebServiceMissing(_:), *(v0 + 1800));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v6 = *(v0 + 8);
    goto LABEL_5;
  }

  v24 = *(v0 + 1960);
  v25 = *(v0 + 1984);
  v7 = *(v0 + 1936);
  v8 = *(v0 + 1928);
  v9 = *(v0 + 1920);
  v10 = *(v0 + 1912);
  v11 = *(v0 + 1856);
  v12 = *(v0 + 1848);
  v13 = *(v0 + 1840);
  v14 = *(v0 + 1832);
  v15 = *(v0 + 1824);
  (*(v9 + 32))(v8, *(v0 + 1896), v10);
  (*(v9 + 16))(v7, v8, v10);
  v16 = type metadata accessor for COSESignatureValidator();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  *(v0 + 1696) = type metadata accessor for DateProvider();
  *(v0 + 1704) = &protocol witness table for DateProvider;
  sub_100032DBC((v0 + 1672));
  DateProvider.init()();
  DIPOIDVerifier.init(dateProvider:)();
  (*(v14 + 16))(v13, v12, v15);
  v17 = sub_10034B7FC(v11, v13);
  (*(v14 + 8))(v12, v15);
  v18 = type metadata accessor for VICALWebService(0);
  v19 = sub_10034BCA0(v7, v17, objc_allocWithZone(v18));
  *(swift_task_alloc() + 16) = v19;
  os_unfair_lock_lock((v24 + 56));
  sub_10034D22C((v24 + 16));
  os_unfair_lock_unlock((v24 + 56));
  if (v25)
  {
    return;
  }

  v20 = *(v0 + 1928);
  v21 = *(v0 + 1920);
  v22 = *(v0 + 1912);
  v23 = *(v0 + 1784);

  v23[3] = v18;
  v23[4] = &off_1008181E8;
  *v23 = v19;
  (*(v21 + 8))(v20, v22);

  v6 = *(v0 + 8);
LABEL_5:

  v6();
}

uint64_t sub_10034595C()
{

  return _swift_task_switch(sub_1003459C4, 0, 0);
}

uint64_t sub_1003459C4()
{
  sub_10000BB78(v0 + 204);
  (*(v0[226] + 104))(v0[227], enum case for DIPError.Code.vicalWebServiceMissing(_:), v0[225]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100345BEC()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_100345CD4;

  return sub_100345F94();
}

uint64_t sub_100345CD4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_100345E74;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_100345DFC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100345DFC()
{
  v1 = *(*(v0 + 56) + 16);

  v2 = *(v0 + 8);

  return v2(v1 != 0);
}

uint64_t sub_100345E74(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[2];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderIssuerRootStorage areTrustedSystemRootsPresent encountered error while fetching system roots, returning false.", v8, 2u);
  }

  (*(v6 + 8))(v5, v7);

  v9 = v1[1];

  return v9(0);
}

uint64_t sub_100345F94()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for ISO18013KnownDocTypes();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = type metadata accessor for VICALCertificateInfo();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();
  v6 = type metadata accessor for VICALDocument();
  v1[17] = v6;
  v1[18] = *(v6 - 8);
  v7 = swift_task_alloc();
  v1[19] = v7;
  v8 = swift_task_alloc();
  v1[20] = v8;
  *v8 = v1;
  v8[1] = sub_100346214;

  return sub_100346D68(v7);
}

uint64_t sub_100346214()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100346B8C;
  }

  else
  {
    v2 = sub_100346328;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100346328()
{
  v93 = v0;
  v2 = VICALDocument.certificateInfos.getter();
  v87 = *(v2 + 16);
  v88 = v0;
  if (v87)
  {
    v3 = 0;
    v82 = v0[15];
    v86 = (v82 + 8);
    v4 = v0[21];
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      v83 = v5;
      if (v3 >= *(v2 + 16))
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v6 = v0[16];
      v7 = v0[14];
      v8 = v0[2];
      v9 = v0;
      v10 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v11 = *(v82 + 72);
      v12 = *(v82 + 16);
      v12(v6, v2 + v10 + v11 * v3, v7);
      sub_100349138(v6, v8, &v90);
      if (v4)
      {
        v63 = v9[16];
        v64 = v9[14];

        (*v86)(v63, v64);
      }

      ++v3;
      v13 = *v86;
      (*v86)(v9[16], v9[14]);
      v1 = v92;
      if (!v92)
      {
        sub_10034D004(v90, v91, 0);
        if (v3 == v87)
        {
          v18 = 0;
          v0 = v88;
LABEL_20:
          v5 = v83;
          goto LABEL_21;
        }

        v20 = v2 + v10 + v11 * v3;
        v0 = v88;
        while (1)
        {
          if (v3 >= *(v2 + 16))
          {
            goto LABEL_49;
          }

          v21 = v88[16];
          v22 = v88[2];
          v12(v21, v20, v88[14]);
          sub_100349138(v21, v22, &v90);
          v13(v88[16], v88[14]);
          v1 = v92;
          if (v92)
          {
            break;
          }

          ++v3;
          sub_10034D004(v90, v91, 0);
          v20 += v11;
          if (v87 == v3)
          {
            v18 = 0;
            goto LABEL_20;
          }
        }

        ++v3;
      }

      v14 = v90;
      v15 = v91;
      v5 = v83;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1003C6134(0, *(v83 + 2) + 1, 1, v83);
      }

      v17 = *(v5 + 2);
      v16 = *(v5 + 3);
      if (v17 >= v16 >> 1)
      {
        v5 = sub_1003C6134((v16 > 1), v17 + 1, 1, v5);
      }

      v4 = 0;
      v18 = 0;
      *(v5 + 2) = v17 + 1;
      v19 = &v5[24 * v17];
      *(v19 + 4) = v14;
      *(v19 + 5) = v15;
      *(v19 + 6) = v1;
      v0 = v88;
      if (v3 == v87)
      {
        goto LABEL_21;
      }
    }
  }

  v18 = v0[21];
  v5 = _swiftEmptyArrayStorage;
LABEL_21:

  v23 = sub_100697620(v5);

  v89 = v23;
  v24 = UserDefaultsConfiguration.userDefaults.getter();
  static DaemonDefaultsKeys.additionalTrustedIACARootCertificates.getter();
  v25 = String._bridgeToObjectiveC()();

  v26 = [v24 stringArrayForKey:v25];

  if (v26)
  {
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    defaultLogger()();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = *(v27 + 16);

      _os_log_impl(&_mh_execute_header, v28, v29, "MobileDocumentReaderIssuerRootStorage found additional %ld IACA roots in internal settings. Appending to list of trusted roots.", v30, 0xCu);
    }

    else
    {
    }

    v31 = *(v0[10] + 8);
    v31(v0[13], v0[9]);
    v1 = decodeCertificateChain(fromBase64DER:)();

    if (v18)
    {
      defaultLogger()();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      v34 = os_log_type_enabled(v32, v33);
      v35 = v0[11];
      v36 = v0[9];
      if (v34)
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "MobileDocumentReaderIssuerRootStorage encountered error while decoding internal settings additional trusted roots. Ignoring and continuing.", v37, 2u);
      }

      v31(v35, v36);
    }

    else
    {
      if (v1 >> 62)
      {
        goto LABEL_52;
      }

      for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v39 = 0;
        v80 = v1;
        v81 = v1 & 0xC000000000000001;
        v76 = v1 + 32;
        v77 = v1 & 0xFFFFFFFFFFFFFF8;
        v78 = v0[7];
        v79 = i;
        while (1)
        {
          if (v81)
          {
            v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v39 >= *(v77 + 16))
            {
              goto LABEL_51;
            }

            v46 = *(v76 + 8 * v39);
          }

          v47 = v46;
          if (__OFADD__(v39++, 1))
          {
            break;
          }

          v49 = static ISO18013KnownDocTypes.allCases.getter();
          v50 = *(v49 + 16);
          if (v50)
          {
            v84 = v47;
            v85 = v39;
            v90 = _swiftEmptyArrayStorage;
            sub_100172D4C(0, v50, 0);
            v51 = v90;
            v52 = v49 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
            v53 = *(v78 + 72);
            v54 = *(v78 + 16);
            do
            {
              v55 = v88[8];
              v56 = v88[6];
              v54(v55, v52, v56);
              v57 = ISO18013KnownDocTypes.rawValue.getter();
              v59 = v58;
              (*(v78 + 8))(v55, v56);
              v90 = v51;
              v61 = v51[2];
              v60 = v51[3];
              if (v61 >= v60 >> 1)
              {
                sub_100172D4C((v60 > 1), v61 + 1, 1);
                v51 = v90;
              }

              v51[2] = v61 + 1;
              v62 = &v51[2 * v61];
              v62[4] = v57;
              v62[5] = v59;
              v52 += v53;
              --v50;
            }

            while (v50);

            v0 = v88;
            i = v79;
            v1 = v80;
            v47 = v84;
            v39 = v85;
          }

          else
          {

            v51 = _swiftEmptyArrayStorage;
          }

          v40 = sub_1006973D4(v51);

          v41 = v47;
          v42 = SecCertificateCopyData(v41);
          v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;

          sub_100151A58(&v90, v43, v45, v40);
          sub_10000B90C(v90, v91);

          if (v39 == i)
          {
            goto LABEL_53;
          }
        }

LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        ;
      }

LABEL_53:
    }
  }

  defaultLogger()();
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&_mh_execute_header, v66, v67, "MobileDocumentReaderIssuerRootStorage returning trusted roots.", v68, 2u);
  }

  v70 = v0[18];
  v69 = v0[19];
  v71 = v0[17];
  v72 = v0[12];
  v73 = v0[10];
  v74 = v0[9];

  (*(v73 + 8))(v72, v74);
  (*(v70 + 8))(v69, v71);

  v75 = v0[1];

  return v75(v89);
}

uint64_t sub_100346B8C()
{
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.vicalMissing(_:), v0[3]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100346D68(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for COSE_Sign1();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v6 = type metadata accessor for CharacterSet();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v2[23] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v2[26] = v7;
  v2[27] = *(v7 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_100347008, 0, 0);
}

uint64_t sub_100347008(uint64_t a1)
{
  v2 = UserDefaultsConfiguration.userDefaults.getter();
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableVICALFetch.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    sub_10034CE68();
    v5 = static NSBundle.internalSettings.getter();
    if (v5)
    {
      v6 = v5;
      v7 = String._bridgeToObjectiveC()();
      v8 = String._bridgeToObjectiveC()();
      v9 = [v6 URLForResource:v7 withExtension:v8];

      if (v9)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v10 = 0;
      }

      else
      {
        v10 = 1;
      }

      v13 = v1[26];
      v14 = v1[27];
      v16 = v1[24];
      v15 = v1[25];
      (*(v14 + 56))(v16, v10, 1, v13);
      sub_10034CEB4(v16, v15);
      if ((*(v14 + 48))(v15, 1, v13) != 1)
      {
        (*(v1[27] + 32))(v1[28], v1[25], v1[26]);
        static String.Encoding.utf8.getter();
        v20 = String.init(contentsOf:encoding:)();
        v22 = v1[21];
        v21 = v1[22];
        v23 = v1[20];
        v1[7] = v20;
        v1[8] = v24;
        static CharacterSet.whitespacesAndNewlines.getter();
        sub_10001F298();
        StringProtocol.trimmingCharacters(in:)();
        (*(v22 + 8))(v21, v23);

        v25 = Data.init(base16Encoded:)();
        if (v26 >> 60 == 15)
        {
          v27 = v1[27];
          v50 = v1[26];
          v53 = v1[28];
          (*(v1[12] + 104))(v1[13], enum case for DIPError.Code.vicalMissing(_:), v1[11]);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          (*(v27 + 8))(v53, v50);
        }

        else
        {
          v29 = v25;
          v30 = v26;
          defaultLogger()();
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&_mh_execute_header, v31, v32, "MobileDocumentReaderIssuerRootStorage storedSignedVICALDocument disable VICAL fetch call flag is enabled, returning hardcoded VICAL data.", v33, 2u);
          }

          v35 = v1[18];
          v34 = v1[19];
          v36 = v1[17];

          (*(v35 + 8))(v34, v36);
          type metadata accessor for CBORDecoder();
          swift_allocObject();
          CBORDecoder.init()();
          sub_10034D0CC(&qword_1008418A0, &type metadata accessor for COSE_Sign1, &protocol conformance descriptor for COSE_Sign1);
          dispatch thunk of CBORDecoder.decode<A>(_:from:)();
          v37 = COSE_Sign1.payload.getter();
          if (v38 >> 60 != 15)
          {
            v41 = v37;
            v42 = v38;
            type metadata accessor for VICALDocument();
            sub_10034D0CC(&qword_1008418A8, &type metadata accessor for VICALDocument, &protocol conformance descriptor for VICALDocument);
            dispatch thunk of CBORDecoder.decode<A>(_:from:)();
            v43 = v1[27];
            v52 = v1[28];
            v49 = v1[26];
            v44 = v1[15];
            v45 = v1[16];
            v46 = v1[14];
            sub_10000BD94(v41, v42);

            sub_10000BD94(v29, v30);
            (*(v44 + 8))(v45, v46);
            (*(v43 + 8))(v52, v49);

            v28 = v1[1];
            goto LABEL_15;
          }

          v39 = v1[27];
          v51 = v1[26];
          v54 = v1[28];
          v40 = v1[15];
          v47 = v1[14];
          v48 = v1[16];
          (*(v1[12] + 104))(v1[13], enum case for DIPError.Code.vicalMissing(_:), v1[11]);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          sub_10000BD94(v29, v30);
          (*(v40 + 8))(v48, v47);
          (*(v39 + 8))(v54, v51);
        }

LABEL_14:
        (*(v1[12] + 104))(v1[13], enum case for DIPError.Code.vicalMissing(_:), v1[11]);
        swift_errorRetain();
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        v28 = v1[1];
LABEL_15:

        return v28();
      }
    }

    else
    {
      (*(v1[27] + 56))(v1[25], 1, 1, v1[26]);
    }

    v18 = v1[12];
    v17 = v1[13];
    v19 = v1[11];
    sub_10000BE18(v1[25], &unk_100844540, &unk_1006BFBC0);
    (*(v18 + 104))(v17, enum case for DIPError.Code.vicalMissing(_:), v19);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_14;
  }

  v11 = swift_task_alloc();
  v1[29] = v11;
  *v11 = v1;
  v11[1] = sub_100347B00;

  return sub_1003447E4((v1 + 2));
}

uint64_t sub_100347B00()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_10034807C;
  }

  else
  {
    v2 = sub_100347C14;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100347C14()
{
  sub_10000BA08(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = sub_100347CB8;
  v2 = v0[9];

  return sub_10060D040(v2);
}

uint64_t sub_100347CB8()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100347E9C;
  }

  else
  {
    v2 = sub_100347DCC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100347DCC()
{
  sub_10000BB78((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100347E9C()
{
  sub_10000BB78(v0 + 2);
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.vicalMissing(_:), v0[11]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10034807C()
{
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.vicalMissing(_:), v0[11]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100348254(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_100007224(&qword_100841858, &qword_1006DE328);
  v5 = swift_allocObject();
  v5[14]._os_unfair_lock_opaque = 0;
  sub_10000BBC4(v7, &v5[4], &qword_100841860, &qword_1006DE330);

  sub_10000BE18(v7, &qword_100841860, &qword_1006DE330);
  *(v2 + 24) = v5;
  os_unfair_lock_lock(v5 + 14);
  sub_10034B170(&v5[4]);
  os_unfair_lock_unlock(v5 + 14);

  *(v2 + 16) = a2;
  sub_10000BE18(a1, &qword_100841868, &qword_1006DE338);
  return v2;
}

double sub_1003483C0(uint64_t a1, uint64_t a2)
{
  sub_10000BE18(a1, &qword_100841860, &qword_1006DE330);
  sub_10000BBC4(a2, v10, &qword_100841868, &qword_1006DE338);
  v4 = v11;
  if (v11)
  {
    v5 = v12;
    v6 = sub_10000BA08(v10, v11);
    *(&v14 + 1) = v4;
    v15 = v5;
    v7 = sub_100032DBC(&v13);
    (*(*(v4 - 8) + 16))(v7, v6, v4);
    sub_10000BB78(v10);
  }

  else
  {
    sub_10000BE18(v10, &qword_100841868, &qword_1006DE338);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  result = *&v13;
  v9 = v14;
  *a1 = v13;
  *(a1 + 16) = v9;
  *(a1 + 32) = v15;
  return result;
}

uint64_t sub_1003484CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderSessionStatus();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentRequestType.Storage();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentRequestType();
  v2[17] = v7;
  v2[18] = *(v7 - 8);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_100348708, 0, 0);
}

uint64_t sub_100348708()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  MobileDocumentReaderRequest.documentRequestType.getter();
  MobileDocumentRequestType.storage.getter();
  (*(v2 + 8))(v1, v3);
  v7 = (*(v6 + 88))(v4, v5);
  LODWORD(v1) = enum case for MobileDocumentRequestType.Storage.rawDataRequest(_:);
  (*(v6 + 8))(v4, v5);
  if (v7 == v1)
  {
    defaultLogger()();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "MobileDocumentReaderIssuerRootStorage raw data request - no validation required. Returning an empty list of trusted issuer root certificates.", v10, 2u);
    }

    v11 = v0[13];
    v12 = v0[10];
    v13 = v0[11];

    (*(v13 + 8))(v11, v12);

    v14 = v0[1];

    return v14(&_swiftEmptySetSingleton);
  }

  else
  {
    v16 = swift_task_alloc();
    v0[20] = v16;
    *v16 = v0;
    v16[1] = sub_100348958;

    return sub_100345F94();
  }
}

uint64_t sub_100348958(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_100348D7C;
  }

  else
  {
    v4 = sub_100348A6C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100348A6C()
{
  v1 = v0[21];
  if (*(v1 + 16))
  {

    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];

    v8 = *(v5 + 104);
    v8(v4, enum case for DIPError.Code.documentReaderInvalidRequest(_:), v6);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v8(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100348D7C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderIssuerRootStorage there was an issue fetching the trusted roots. Throwing session expired error to indicate the calling app must call prepare again.", v4, 2u);
  }

  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[8];
  v18 = v1[7];
  v11 = v1[5];
  v10 = v1[6];
  v12 = v1[4];

  (*(v5 + 8))(v6, v8);
  type metadata accessor for DaemonAnalytics();
  v13 = enum case for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason.vicalMissing(_:);
  v14 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason();
  (*(*(v14 - 8) + 104))(v10, v13, v14);
  (*(v11 + 104))(v10, enum case for DaemonAnalytics.MobileDocumentReaderSessionStatus.invalid(_:), v12);
  static DaemonAnalytics.sendReadDocumentSessionStatus(status:)();
  (*(v11 + 8))(v10, v12);
  v15 = *(v9 + 104);
  v15(v7, enum case for DIPError.Code.documentReaderSessionExpired(_:), v18);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v15(v1[9], enum case for DIPError.Code.internalError(_:), v1[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v16 = v1[1];

  return v16();
}

void sub_100349138(uint64_t a1@<X0>, void (**a2)(char *, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v73 = a3;
  v74 = a2;
  v5 = type metadata accessor for BigUIntCBOR();
  v71 = *(v5 - 1);
  v72 = v5;
  __chkstk_darwin(v5);
  v70 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for VICALCertificateInfo();
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v76 = *(v9 - 8);
  __chkstk_darwin(v9);
  v77 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ISO18013KnownDocTypes();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = VICALCertificateInfo.certificate.getter();
  v17 = v16;
  v18 = decodeCertificate(fromDER:)();
  if (v3)
  {
    v74 = v9;
    sub_10000B90C(v15, v17);
    defaultLogger()();
    v19 = v75;
    (*(v75 + 16))(v8, a1, v78);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v79 = v68;
      *v22 = 136315138;
      v23 = v70;
      VICALCertificateInfo.serialNumber.getter();
      v24 = BigUIntCBOR.value.getter();
      v69 = v3;
      v26 = v25;
      (*(v71 + 8))(v23, v72);
      v27 = Data.base64EncodedString(options:)(0);
      sub_10000B90C(v24, v26);
      (*(v19 + 8))(v8, v78);
      v28 = sub_100141FE4(v27._countAndFlagsBits, v27._object, &v79);
      v29 = v73;

      *(v22 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "MobileDocumentReaderIssuerRootStorage could not parse certificate with serial number %s", v22, 0xCu);
      sub_10000BB78(v68);

      (*(v76 + 8))(v77, v74);
    }

    else
    {

      (*(v19 + 8))(v8, v78);
      (*(v76 + 8))(v77, v74);
      v29 = v73;
    }

    *v29 = 0;
    v29[1] = 0;
    v29[2] = 0;
  }

  else
  {
    v77 = v14;
    v78 = v11;
    v30 = v12;
    v72 = v18;
    sub_10000B90C(v15, v17);
    v31 = UserDefaultsConfiguration.userDefaults.getter();
    v32._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.filterVICALByDocumentType.getter();
    v33 = NSUserDefaults.internalBool(forKey:)(v32);

    if (v33)
    {
      v34 = VICALCertificateInfo.docType.getter();
      v35 = sub_1006973D4(v34);

      v36 = v72;
      v37 = SecCertificateCopyData(v72);
      v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v73;
      v40 = v38;
      v42 = v41;

      *v39 = v40;
      v39[1] = v42;
      v39[2] = v35;
    }

    else
    {
      v43 = static ISO18013KnownDocTypes.allCases.getter();
      v44 = *(v43 + 16);
      if (v44)
      {
        v69 = 0;
        v79 = _swiftEmptyArrayStorage;
        sub_100172D4C(0, v44, 0);
        v45 = v79;
        v46 = v30 + 16;
        v47 = *(v30 + 16);
        v48 = *(v30 + 80);
        v71 = v43;
        v49 = v43 + ((v48 + 32) & ~v48);
        v75 = *(v30 + 72);
        v76 = v47;
        v74 = (v30 + 8);
        v51 = v77;
        v50 = v78;
        do
        {
          v52 = v46;
          (v76)(v51, v49, v50);
          v53 = ISO18013KnownDocTypes.rawValue.getter();
          v50 = v78;
          v54 = v53;
          v56 = v55;
          (*v74)(v51, v78);
          v79 = v45;
          v58 = v45[2];
          v57 = v45[3];
          if (v58 >= v57 >> 1)
          {
            sub_100172D4C((v57 > 1), v58 + 1, 1);
            v50 = v78;
            v45 = v79;
          }

          v45[2] = v58 + 1;
          v59 = &v45[2 * v58];
          v59[4] = v54;
          v59[5] = v56;
          v49 += v75;
          --v44;
          v46 = v52;
          v51 = v77;
        }

        while (v44);
      }

      else
      {

        v45 = _swiftEmptyArrayStorage;
      }

      v60 = sub_1006973D4(v45);

      v61 = v72;
      v62 = SecCertificateCopyData(v72);
      v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v66 = v73;
      *v73 = v63;
      v66[1] = v65;
      v66[2] = v60;
    }
  }
}

uint64_t sub_10034979C()
{
  v1[11] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = sub_100007224(&qword_100834B60, &qword_1006C0310);
  v1[16] = swift_task_alloc();
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v3 = type metadata accessor for DaemonAnalytics.VICALFetchResult();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_1003499C4, 0, 0);
}

uint64_t sub_1003499C4(uint64_t a1)
{
  v2 = UserDefaultsConfiguration.userDefaults.getter();
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableVICALFetch.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v1[28];
    v9 = v1[24];
    v10 = v1[25];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "MobileDocumentReaderIssuerRootStorage loadRemoteTrustedRoots disable VICAL fetch call flag is enabled, skipping call to fetch from network.", v11, 2u);
    }

    (*(v10 + 8))(v8, v9);

    v12 = v1[1];

    return v12();
  }

  else
  {
    v14 = swift_task_alloc();
    v1[29] = v14;
    *v14 = v1;
    v14[1] = sub_100349BEC;

    return sub_1003447E4((v1 + 2));
  }
}

uint64_t sub_100349BEC()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_10034A9B8;
  }

  else
  {
    v2 = sub_100349D00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100349D00()
{
  sub_10000BA08(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = sub_100349D9C;

  return sub_10060E758();
}

uint64_t sub_100349D9C(char a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = sub_10034A020;
  }

  else
  {
    *(v4 + 280) = a1;
    v5 = sub_100349EC4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100349EC4()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  sub_10000BB78((v0 + 16));
  v5 = &enum case for DaemonAnalytics.VICALFetchResult.fromCache(_:);
  if ((v1 & 1) == 0)
  {
    v5 = &enum case for DaemonAnalytics.VICALFetchResult.success(_:);
  }

  (*(v4 + 104))(v2, *v5, v3);
  type metadata accessor for DaemonAnalytics();
  static DaemonAnalytics.sendVICALFetchedEvent(result:error:)();
  (*(v4 + 8))(v2, v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10034A020()
{
  sub_10000BB78(v0 + 2);
  v0[33] = v0[32];
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_10034A0C0;

  return sub_100345BEC();
}

uint64_t sub_10034A0C0(char a1)
{
  *(*v1 + 281) = a1;

  return _swift_task_switch(sub_10034A1C0, 0, 0);
}

uint64_t sub_10034A1C0(uint64_t a1)
{
  if ((*(v1 + 281) & 1) == 0)
  {
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "MobileDocumentReaderIssuerRootStorage there are no trusted system roots present to fall back to. Throwing error", v14, 2u);
    }

    v15 = *(v1 + 216);
    v17 = *(v1 + 192);
    v16 = *(v1 + 200);
    v18 = *(v1 + 168);
    v19 = *(v1 + 176);
    v20 = *(v1 + 160);
    v45 = *(v1 + 128);
    v42 = *(v1 + 144);
    v44 = *(v1 + 120);
    v21 = *(v1 + 104);
    v40 = *(v1 + 152);
    v41 = *(v1 + 96);

    (*(v16 + 8))(v15, v17);
    type metadata accessor for DaemonAnalytics();
    (*(v18 + 104))(v19, enum case for DaemonAnalytics.VICALFetchResult.failure(_:), v20);
    swift_errorRetain();
    static DaemonAnalytics.sendVICALFetchedEvent(result:error:)();
    (*(v18 + 8))(v19, v20);
    swift_getErrorValue();
    Error.dipErrorCode.getter();
    v22 = *(v21 + 104);
    v22(v42, enum case for DIPError.Code.networkTimeOut(_:), v41);
    (*(v21 + 56))(v42, 0, 1, v41);
    v23 = *(v44 + 48);
    sub_10000BBC4(v40, v45, &qword_10083B020, &unk_1006D8ED0);
    sub_10000BBC4(v42, v45 + v23, &qword_10083B020, &unk_1006D8ED0);
    v24 = *(v21 + 48);
    if (v24(v45, 1, v41) == 1)
    {
      v25 = *(v1 + 152);
      v26 = *(v1 + 96);
      sub_10000BE18(*(v1 + 144), &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v25, &qword_10083B020, &unk_1006D8ED0);
      if (v24(v45 + v23, 1, v26) == 1)
      {
        sub_10000BE18(*(v1 + 128), &qword_10083B020, &unk_1006D8ED0);
LABEL_15:
        v22(*(v1 + 112), enum case for DIPError.Code.internalError(_:), *(v1 + 96));
        goto LABEL_16;
      }
    }

    else
    {
      v27 = *(v1 + 96);
      sub_10000BBC4(*(v1 + 128), *(v1 + 136), &qword_10083B020, &unk_1006D8ED0);
      v28 = v24(v45 + v23, 1, v27);
      v30 = *(v1 + 144);
      v29 = *(v1 + 152);
      v31 = *(v1 + 136);
      if (v28 != 1)
      {
        v43 = *(v1 + 128);
        v34 = *(v1 + 104);
        v35 = *(v1 + 112);
        v36 = *(v1 + 96);
        (*(v34 + 32))(v35, v45 + v23, v36);
        sub_10034D0CC(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
        v37 = dispatch thunk of static Equatable.== infix(_:_:)();
        v38 = *(v34 + 8);
        v38(v35, v36);
        sub_10000BE18(v30, &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v29, &qword_10083B020, &unk_1006D8ED0);
        v38(v31, v36);
        sub_10000BE18(v43, &qword_10083B020, &unk_1006D8ED0);
        if (v37)
        {
          goto LABEL_15;
        }

LABEL_13:
        v22(*(v1 + 112), enum case for DIPError.Code.vicalCouldNotFetch(_:), *(v1 + 96));
LABEL_16:
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        v11 = *(v1 + 8);
        goto LABEL_17;
      }

      v32 = *(v1 + 96);
      v33 = *(v1 + 104);
      sub_10000BE18(*(v1 + 144), &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v29, &qword_10083B020, &unk_1006D8ED0);
      (*(v33 + 8))(v31, v32);
    }

    sub_10000BE18(*(v1 + 128), &qword_100834B60, &qword_1006C0310);
    goto LABEL_13;
  }

  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderIssuerRootStorage there are system roots to fallback to.", v4, 2u);
  }

  v6 = *(v1 + 200);
  v5 = *(v1 + 208);
  v7 = *(v1 + 192);
  v9 = *(v1 + 168);
  v8 = *(v1 + 176);
  v10 = *(v1 + 160);

  (*(v6 + 8))(v5, v7);
  type metadata accessor for DaemonAnalytics();
  (*(v9 + 104))(v8, enum case for DaemonAnalytics.VICALFetchResult.fallback(_:), v10);
  swift_errorRetain();
  static DaemonAnalytics.sendVICALFetchedEvent(result:error:)();

  (*(v9 + 8))(v8, v10);

  v11 = *(v1 + 8);
LABEL_17:

  return v11();
}

uint64_t sub_10034A9B8()
{
  v0[33] = v0[30];
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_10034A0C0;

  return sub_100345BEC();
}

uint64_t sub_10034AA50()
{
  v1[7] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10034AB6C, 0, 0);
}

uint64_t sub_10034AB6C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderIssuerRootStorage clearTrustedRoots", v4, 2u);
  }

  v6 = v1[12];
  v5 = v1[13];
  v7 = v1[11];

  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v1[14] = v8;
  *v8 = v1;
  v8[1] = sub_10034ACA4;

  return sub_1003447E4((v1 + 2));
}

uint64_t sub_10034ACA4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10034AFAC;
  }

  else
  {
    v2 = sub_10034ADB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10034ADB8()
{
  v1 = v0[15];
  sub_10000BA08(v0 + 2, v0[5]);
  sub_1006117AC();
  sub_10000BB78(v0 + 2);
  if (v1)
  {
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_10034AFAC()
{
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t *sub_10034B18C@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_10034BFA0(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a3 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_10034B254(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_10000B90C(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_10000B90C(v7, v6);
    *v4 = xmmword_1006DE2A0;
    sub_10000B90C(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_10034B6F8(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_10000B90C(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1006DE2A0;
    sub_10000B90C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_10034B6F8(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_10034B5F8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10034BFA0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10034C0DC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10034C058(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_10034B68C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_10034B6F8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_10034B7AC@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10034B7FC(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = type metadata accessor for DIPCertUsage();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DIPError.Code();
  v5 = *(v34 - 8);
  v6 = __chkstk_darwin(v34);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v35 = &v31 - v9;
  v10 = __chkstk_darwin(v8);
  v37 = &v31 - v11;
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = sub_100007224(&qword_10083AB90, &unk_1006DE370);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v31 - v18;
  v20 = type metadata accessor for COSESignatureValidator();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  sub_10000BBC4(a1, v19, &qword_10083AB90, &unk_1006DE370);
  v24 = *(v21 + 48);
  if (v24(v19, 1, v20) == 1)
  {
    v31 = v13;
    v32 = v24;
    v25 = *(v5 + 104);
    v26 = v13;
    v27 = v34;
    v25(v26, enum case for DIPError.Code.vicalUnknownAlgorithm(_:), v34);
    v25(v37, enum case for DIPError.Code.vicalInvalidPublicKey(_:), v27);
    v25(v35, enum case for DIPError.Code.vicalMisformattedSignature(_:), v27);
    v33 = v17;
    v25(v36, enum case for DIPError.Code.vicalInvalidSignature(_:), v27);
    v17 = v33;
    COSESignatureValidator.init(errorCodeUnknownAlgorithm:errorCodeInvalidPublicKey:errorCodeMisformattedSignature:errorCodeInvalidSignature:)();
    if (v32(v19, 1, v20) != 1)
    {
      sub_10000BE18(v19, &qword_10083AB90, &unk_1006DE370);
    }
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
  }

  (*(v21 + 16))(v17, v23, v20);
  (*(v21 + 56))(v17, 0, 1, v20);
  v28 = v38;
  (*(v39 + 104))(v38, enum case for DIPCertUsage.iso18013VICALApple(_:), v40);
  v29 = sub_1001113C8(v17, v41, v28);
  sub_10000BE18(v42, &qword_10083AB90, &unk_1006DE370);
  (*(v21 + 8))(v23, v20);
  return v29;
}

id sub_10034BCA0(uint64_t a1, uint64_t a2, char *a3)
{
  v27 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v6 = __chkstk_darwin(v27);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[3] = &type metadata for VICALTrustValidator;
  v32[4] = &off_1007FD998;
  v32[0] = a2;
  v15 = OBJC_IVAR____TtC8coreidvd15VICALWebService_url;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v28 = a1;
  v18(&a3[v15], a1, v16);
  sub_100020260(v32, &a3[OBJC_IVAR____TtC8coreidvd15VICALWebService_validator]);
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v12 + 8))(v14, v11);
  if (qword_100832D28 != -1)
  {
    swift_once();
  }

  v22 = sub_10003170C(v27, qword_1008498D8);
  sub_1002BEB48(v22, v10);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v23 = &a3[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
  *v23 = v19;
  *(v23 + 1) = v21;
  sub_100020260(v31, v30);
  sub_1002BEB48(v10, v8);
  type metadata accessor for DIPHTTPSession(0);
  swift_allocObject();
  *&a3[OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession] = sub_1005BE690(v30, v8);
  v24 = type metadata accessor for DIPWebService();
  v29.receiver = a3;
  v29.super_class = v24;
  v25 = objc_msgSendSuper2(&v29, "init");
  (*(v17 + 8))(v28, v16);
  sub_10000BB78(v31);
  sub_10034CFA8(v10);
  sub_10000BB78(v32);
  return v25;
}

uint64_t sub_10034BFA0(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10034C058(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10034C0DC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10034C158(uint64_t a1)
{
  v9 = sub_100007224(&qword_1008418B8, &qword_1006DE390);
  v10 = sub_1000BA30C(&qword_1008418C0, &qword_1008418B8, &qword_1006DE390, &protocol conformance descriptor for <A> [A]);
  v8[0] = a1;
  v2 = sub_10000BA08(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_10034B5F8(v3, &v3[v4], &v7);
  v5 = v7;
  sub_10000BB78(v8);
  return v5;
}

uint64_t sub_10034C234(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_10034C2D4(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B8B8(a1, a2);
  result = sub_100343A0C(a1, a2);
  v9 = result[2];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = result + 4;
  if (!*(result + 32))
  {
    v13 = 0;
    while (v9 - 1 != v13)
    {
      v12 = v13 + 1;
      if (*(result + v13++ + 33))
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  v12 = 0;
LABEL_7:
  v15 = (2 * v9) | 1;

  defaultLogger()();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = v15;
    v19 = v18;
    v31 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = Array.description.getter();
    v28 = v5;
    v29 = v4;
    v21 = v20;
    v23 = v22;

    v24 = sub_100141FE4(v21, v23, &v31);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = ArraySlice.description.getter();
    v27 = sub_100141FE4(v25, v26, &v31);

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "IssuerRevocationList trimmed %s to %s", v19, 0x16u);
    swift_arrayDestroy();

    v15 = v30;

    (*(v28 + 8))(v7, v29);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return sub_1003440A8(v10, v11, v12, v15);
}

void *sub_10034C5B4(uint64_t a1)
{
  v91 = type metadata accessor for BigUIntCBOR();
  v2 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007224(&qword_100841870, &qword_1006DE340);
  __chkstk_darwin(v4 - 8);
  v6 = &v66 - v5;
  v68 = type metadata accessor for Logger();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VICALCertificateInfo();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  v13 = VICALDocument.certificateInfos.getter();
  v14 = v13;
  v83 = *(v13 + 16);
  if (!v83)
  {

    v16 = &_swiftEmptyDictionarySingleton;
LABEL_29:
    defaultLogger()();

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v92 = v60;
      *v59 = 136315138;
      sub_100007224(&qword_100841878, &qword_1006DE348);
      sub_10034CDDC();
      v61 = Dictionary.description.getter();
      v63 = sub_100141FE4(v61, v62, &v92);

      *(v59 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v57, v58, "IssuerRevocationList initialized with %s", v59, 0xCu);
      sub_10000BB78(v60);
    }

    v64 = type metadata accessor for VICALDocument();
    (*(*(v64 - 8) + 8))(v69, v64);
    (*(v67 + 8))(v8, v68);
    return v16;
  }

  v15 = 0;
  v82 = v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v89 = (v2 + 8);
  v73 = v2;
  v86 = v2 + 16;
  v80 = (v10 + 8);
  v81 = v10 + 16;
  v16 = &_swiftEmptyDictionarySingleton;
  v74 = v8;
  v72 = v6;
  v71 = v9;
  v70 = v10;
  v75 = v13;
  v76 = v12;
  while (v15 < *(v14 + 16))
  {
    v17 = *(v10 + 72);
    v85 = v15;
    (*(v10 + 16))(v12, v82 + v17 * v15, v9);
    VICALCertificateInfo.extensions.getter();
    v18 = type metadata accessor for VICALCertificateInfo.Extensions();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v6, 1, v18) == 1)
    {
      (*v80)(v12, v9);
      sub_10000BE18(v6, &qword_100841870, &qword_1006DE340);
    }

    else
    {
      v20 = VICALCertificateInfo.Extensions.certificateRevocationList.getter();
      (*(v19 + 8))(v6, v18);
      if (v20)
      {
        v21 = v90;
        v79 = v20;
        VICALCertificateInfo.serialNumber.getter();
        v22 = BigUIntCBOR.value.getter();
        v24 = v23;
        v88 = *v89;
        v88(v21, v91);
        v84 = sub_10034C2D4(v22, v24);
        v26 = v25;
        v27 = v22;
        v28 = v79;
        sub_10000B90C(v27, v24);
        v29 = *(v28 + 16);
        if (v29)
        {
          v77 = v26;
          v78 = v16;
          v92 = _swiftEmptyArrayStorage;
          sub_100173238(0, v29, 0);
          v30 = v92;
          v31 = v28 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
          v87 = *(v73 + 72);
          v32 = *(v73 + 16);
          do
          {
            v34 = v90;
            v33 = v91;
            v32(v90, v31, v91);
            v35 = BigUIntCBOR.value.getter();
            v37 = v36;
            v38 = sub_10034C2D4(v35, v36);
            v40 = v39;
            sub_10000B90C(v35, v37);
            v88(v34, v33);
            v92 = v30;
            v42 = v30[2];
            v41 = v30[3];
            if (v42 >= v41 >> 1)
            {
              sub_100173238((v41 > 1), v42 + 1, 1);
              v30 = v92;
            }

            v30[2] = v42 + 1;
            v43 = &v30[2 * v42];
            v43[4] = v38;
            v43[5] = v40;
            v31 += v87;
            --v29;
          }

          while (v29);

          v8 = v74;
          v26 = v77;
          v16 = v78;
          v6 = v72;
          v9 = v71;
          v10 = v70;
        }

        else
        {

          v30 = _swiftEmptyArrayStorage;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92 = v16;
        v45 = sub_10003B554(v84, v26);
        v47 = v16[2];
        v48 = (v46 & 1) == 0;
        v49 = __OFADD__(v47, v48);
        v50 = v47 + v48;
        if (v49)
        {
          goto LABEL_33;
        }

        v51 = v46;
        if (v16[3] >= v50)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_21;
          }

          v53 = v45;
          sub_100171C50();
          v45 = v53;
          v16 = v92;
          if ((v51 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_22:
          *(v16[7] + 8 * v45) = v30;

          sub_10000B90C(v84, v26);
        }

        else
        {
          sub_10016A690(v50, isUniquelyReferenced_nonNull_native);
          v45 = sub_10003B554(v84, v26);
          if ((v51 & 1) != (v52 & 1))
          {
            goto LABEL_35;
          }

LABEL_21:
          v16 = v92;
          if (v51)
          {
            goto LABEL_22;
          }

LABEL_24:
          v16[(v45 >> 6) + 8] |= 1 << v45;
          v54 = (v16[6] + 16 * v45);
          *v54 = v84;
          v54[1] = v26;
          *(v16[7] + 8 * v45) = v30;
          v55 = v16[2];
          v49 = __OFADD__(v55, 1);
          v56 = v55 + 1;
          if (v49)
          {
            goto LABEL_34;
          }

          v16[2] = v56;
        }

        v12 = v76;
        (*v80)(v76, v9);
        v14 = v75;
        goto LABEL_4;
      }

      (*v80)(v12, v9);
    }

LABEL_4:
    v15 = v85 + 1;
    if (v85 + 1 == v83)
    {

      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10034CDDC()
{
  result = qword_100841880;
  if (!qword_100841880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100841880);
  }

  return result;
}

uint64_t sub_10034CE30()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10034CE68()
{
  result = qword_100841898;
  if (!qword_100841898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100841898);
  }

  return result;
}

uint64_t sub_10034CEB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10034CF3C(void *a1)
{
  v3 = *(v1 + 16);
  ObjectType = swift_getObjectType();
  sub_10000BE18(a1, &qword_100841860, &qword_1006DE330);
  a1[3] = ObjectType;
  a1[4] = &off_1008181E8;
  *a1 = v3;
  return v3;
}

uint64_t sub_10034CFA8(uint64_t a1)
{
  v2 = type metadata accessor for DIPHTTPSession.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10034D004(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_10000B90C(result, a2);
  }

  return result;
}

void *sub_10034D044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_10034B68C(sub_10034D0AC, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_10034D0CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10034D124(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10034D178(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_10034D1D8()
{
  result = qword_1008418D8;
  if (!qword_1008418D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008418D8);
  }

  return result;
}

uint64_t sub_10034D258(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v14 = a4;
  v8 = sub_100007224(&qword_100841900, &qword_1006DE6B8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10000BA08(a1, a1[3]);
  sub_10034DAD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_10000B8B8(a2, a3);
  sub_10000B9B4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_10000B90C(v15, v16);
  if (!v4)
  {
    v15 = v14;
    v17 = 1;
    sub_100007224(&qword_10083BC60, &unk_1006DA1B0);
    sub_10034DB28(&qword_100841908, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10034D444()
{
  if (*v0)
  {
    return 0x746E656D75636F64;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_10034D484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xED00007365707954)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10034D568(uint64_t a1)
{
  v2 = sub_10034DAD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10034D5A4(uint64_t a1)
{
  v2 = sub_10034DAD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10034D5E0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10034D884(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

Swift::Int sub_10034D630()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  sub_1003D4B28(v3, v1);
  return Hasher._finalize()();
}

void sub_10034D694(__int128 *a1)
{
  v3 = *(v1 + 16);
  Data.hash(into:)();

  sub_1003D4B28(a1, v3);
}

Swift::Int sub_10034D6D8(uint64_t a1)
{
  v2 = *(v1 + 16);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  sub_1003D4B28(v4, v2);
  return Hasher._finalize()();
}

void sub_10034D738()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = SecCertificateCreateWithData(kCFAllocatorDefault, isa);

  if (v1)
  {

    sub_100007224(&qword_100841910, &qword_1006DE6C0);
    String.init<A>(describing:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10034D7C8(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (!sub_1000C31A0(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  return sub_10014DCF8(v2, v3);
}

unint64_t sub_10034D830()
{
  result = qword_1008418E0;
  if (!qword_1008418E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008418E0);
  }

  return result;
}

uint64_t sub_10034D884(void *a1)
{
  v3 = sub_100007224(&qword_1008418E8, &unk_1006DE6A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  v7 = a1[3];
  sub_10000BA08(a1, v7);
  sub_10034DAD4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000BB78(a1);
  }

  else
  {
    v11 = 0;
    sub_10000B960();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v12;
    v9 = v13;
    sub_100007224(&qword_10083BC60, &unk_1006DA1B0);
    v11 = 1;
    sub_10034DB28(&qword_1008418F8, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    sub_10000B8B8(v7, v9);

    sub_10000BB78(a1);
    sub_10000B90C(v7, v9);
  }

  return v7;
}

unint64_t sub_10034DAD4()
{
  result = qword_1008418F0;
  if (!qword_1008418F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008418F0);
  }

  return result;
}

uint64_t sub_10034DB28(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(&qword_10083BC60, &unk_1006DA1B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10034DBA8()
{
  result = qword_100841918;
  if (!qword_100841918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100841918);
  }

  return result;
}

unint64_t sub_10034DC00()
{
  result = qword_100841920;
  if (!qword_100841920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100841920);
  }

  return result;
}

unint64_t sub_10034DC58()
{
  result = qword_100841928;
  if (!qword_100841928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100841928);
  }

  return result;
}

uint64_t sub_10034DCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for Milestone();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[13] = v7;
  v8 = *(v7 - 8);
  v4[14] = v8;
  v4[15] = *(v8 + 64);
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_10034DE30, 0, 0);
}

uint64_t sub_10034DE30()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v4[6];
  v14 = v4[7];
  sub_10000BA08(v4 + 3, v8);
  (*(v3 + 16))(v1, v5, v2);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v0[17] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v7;
  (*(v3 + 32))(v10 + v9, v1, v2);

  v11 = swift_task_alloc();
  v0[18] = v11;
  v12 = type metadata accessor for MobileDocumentReaderIdentityKey(0);
  *v11 = v0;
  v11[1] = sub_10034DFB0;

  return dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)(v0 + 2, sub_10035580C, v10, v12, v8, v14);
}

uint64_t sub_10034DFB0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10034E188;
  }

  else
  {

    v2 = sub_10034E0CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10034E0CC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[2];
  static MobileDocumentReaderMilestone.readerAuthenticationKeyFetched.getter();
  Milestone.log()();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_10034E188()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 104))(v1, enum case for DIPError.Code.documentReaderMissingReaderAuthKey(_:), v3);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

void sub_10034E344(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100582C9C(a1, a2);
  if (!v4)
  {
    v13 = v12;
    v14 = [v12 attestationCertificate];

    if (v14)
    {
      v15 = v14;
      v16 = sub_100585F78(v15);
      if (v16)
      {
        v17 = v16;

        *a4 = v17;
      }

      else
      {
        (*(v9 + 104))(v11, enum case for DIPError.Code.documentReaderInvalidCoreDataIdentityKeyRecord(_:), v8);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }
    }

    else
    {
      (*(v9 + 104))(v11, enum case for DIPError.Code.documentReaderMissingReaderAuthKey(_:), v8);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_10034E6A4()
{
  v1[3] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10034E764, 0, 0);
}

uint64_t sub_10034E764()
{
  v1 = *(v0 + 24);
  v2 = v1[6];
  v3 = v1[7];
  sub_10000BA08(v1 + 3, v2);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = sub_100007224(&qword_1008419E8, &qword_1006DE8C0);
  *v4 = v0;
  v4[1] = sub_10034E854;

  return dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)(v0 + 16, sub_10034EB74, 0, v5, v2, v3);
}

uint64_t sub_10034E854()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10034E9D4;
  }

  else
  {
    v2 = sub_10034E968;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10034E968()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10034E9D4()
{
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

void sub_10034EB74(void *a1@<X8>)
{
  type metadata accessor for StoredMobileDocumentReaderAttestationCertificate();
  v3 = static StoredMobileDocumentReaderAttestationCertificate.fetchRequest()();
  v4 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {
    if (v4 >> 62)
    {
LABEL_20:
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    while (v5 != v6)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v7 = *(v4 + 8 * v6 + 32);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      ++v6;
      if (sub_100585F78(v7))
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v8;
      }
    }

    *a1 = _swiftEmptyArrayStorage;
  }
}

uint64_t sub_10034ED04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for Milestone();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[17] = v7;
  v8 = *(v7 - 8);
  v4[18] = v8;
  v4[19] = *(v8 + 64);
  v4[20] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v4[21] = swift_task_alloc();
  v9 = type metadata accessor for DIPSignpost();
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v4[25] = v10;
  v4[26] = *(v10 - 8);
  v4[27] = swift_task_alloc();

  return _swift_task_switch(sub_10034EF6C, 0, 0);
}

uint64_t sub_10034EF6C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderAuthenticationStorage generateAndStoreIdentityKey", v4, 2u);
  }

  v6 = v1[26];
  v5 = v1[27];
  v7 = v1[25];

  (*(v6 + 8))(v5, v7);
  v8 = sub_10034F96C();
  v1[28] = v8;
  v1[29] = v9;
  v1[30] = v10;
  v11 = v1[20];
  v12 = v1[18];
  v30 = v11;
  v31 = v1[19];
  v13 = v1[17];
  v15 = v1[9];
  v14 = v1[10];
  v32 = v1[7];
  v33 = v1[8];
  v34 = v8;
  v35 = v9;
  static DaemonSignposts.MobileDocumentReader.storeIdentityKey.getter();
  DIPSignpost.init(_:)();
  v16 = SecCertificateRef.derRepresentation.getter();
  v18 = v17;
  v1[31] = v16;
  v1[32] = v17;
  sub_10000BA08((v14 + 24), *(v14 + 48));
  v19 = *(v12 + 16);
  v1[33] = v19;
  v1[34] = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20 = v11;
  v21 = v13;
  v19(v20, v15, v13);
  v22 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v23 = (v31 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v1[35] = v24;
  *(v24 + 16) = v32;
  *(v24 + 24) = v33;
  v25 = *(v12 + 32);
  v1[36] = v25;
  v1[37] = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v25(v24 + v22, v30, v21);
  v26 = (v24 + v23);
  *v26 = v34;
  v26[1] = v35;
  v27 = (v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v27 = v16;
  v27[1] = v18;

  sub_10000B8B8(v34, v35);
  sub_10000B8B8(v16, v18);
  v28 = swift_task_alloc();
  v1[38] = v28;
  *v28 = v1;
  v28[1] = sub_10034F3D0;

  return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
}

uint64_t sub_10034F3D0()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_10034F730;
  }

  else
  {

    v2 = sub_10034F4EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10034F4EC()
{
  v19 = v0[36];
  v1 = v0[33];
  v13 = v0[31];
  v14 = v0[32];
  v17 = v0[28];
  v18 = v0[29];
  v20 = v0[30];
  v21 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[9];
  v15 = v0[7];
  v16 = v0[8];
  static MobileDocumentReaderMilestone.readerAuthenticationKeyCreated.getter();
  Milestone.log()();
  (*(v5 + 8))(v4, v6);
  v1(v2, v7, v3);
  type metadata accessor for SESKeystore();
  swift_allocObject();
  v8 = SESKeystore.init()();
  v0[5] = type metadata accessor for DateProvider();
  v0[6] = &protocol witness table for DateProvider;
  sub_100032DBC(v0 + 2);
  DateProvider.init()();
  sub_10000B90C(v13, v14);
  type metadata accessor for MobileDocumentReaderIdentityKey(0);
  v9 = swift_allocObject();
  *(v9 + 16) = v15;
  *(v9 + 24) = v16;
  v19(v9 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_installationIdentifier, v2, v3);
  v10 = (v9 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob);
  *v10 = v17;
  v10[1] = v18;
  *(v9 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_attestationCertificate) = v20;
  *(v9 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keystore) = v8;
  sub_10001F358(v0 + 1, v9 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_dateProvider);

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v22 + 8))(v21, v23);

  v11 = v0[1];

  return v11(v9);
}

uint64_t sub_10034F730()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  sub_10000B90C(v0[31], v0[32]);

  DIPSignpost.end(workflowID:isBackground:)(0, 2);

  sub_10000B90C(v3, v1);
  (*(v5 + 8))(v4, v6);
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.documentReaderCannotGenerateIdentityKey(_:), v0[11]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

char *sub_10034F96C()
{
  v1 = type metadata accessor for DIPError.Code();
  v74 = *(v1 - 8);
  v75 = v1;
  __chkstk_darwin(v1);
  v76 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = __chkstk_darwin(v3);
  v70 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v68 = &v64 - v7;
  __chkstk_darwin(v6);
  v9 = &v64 - v8;
  v10 = type metadata accessor for CharacterSet();
  v69 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for KeyUsage();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for DIPSignpost();
  v78 = *(v18 - 8);
  v79 = v18;
  __chkstk_darwin(v18);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DaemonSignposts.MobileDocumentReader.generateIdentityKey.getter();
  v77 = v20;
  DIPSignpost.init(_:)();
  (*(v14 + 104))(v16, enum case for KeyUsage.signature(_:), v13);
  v21 = createBAAKeyACLWithDefaultLAContext(enableUAM:keyUsage:requireUserAuth:forSecureElement:)();
  if (v0)
  {
    (*(v14 + 8))(v16, v13);
    goto LABEL_20;
  }

  v22 = v21;
  v66 = v9;
  v67 = v10;
  v24 = v71;
  v23 = v72;
  (*(v14 + 8))(v16, v13);
  v25 = *(v73 + 2);
  v26 = dispatch thunk of SESKeystore.createKey(acl:)();
  v64 = v25;
  v65 = v22;
  v73 = v26;
  v28 = v27;
  v29 = [objc_opt_self() standardUserDefaults];
  v30._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.seabassValidityInterval.getter();
  v31 = NSUserDefaults.internalString(forKey:)(v30);

  if (!v31.value._object)
  {
    goto LABEL_12;
  }

  v32 = (v31.value._object >> 56) & 0xF;
  if ((v31.value._object & 0x2000000000000000) == 0)
  {
    v32 = v31.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {

LABEL_12:
    countAndFlagsBits = 0x4122750000000000;
    v47 = v23;
    v43 = v65;
    v37 = v28;
    goto LABEL_16;
  }

  v80 = v31;
  static CharacterSet.whitespaces.getter();
  sub_10001F298();
  v33 = StringProtocol.trimmingCharacters(in:)();
  v35 = v34;
  (*(v69 + 8))(v12, v67);

  v80.value._countAndFlagsBits = 0;
  v36 = sub_1006594FC(v33, v35, &v80);

  v37 = v28;
  if (v36)
  {
    countAndFlagsBits = v80.value._countAndFlagsBits;
    v39 = v66;
    defaultLogger()();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v65;
    v44 = v70;
    if (v42)
    {
      v45 = swift_slowAlloc();
      *v45 = 134217984;
      *(v45 + 4) = countAndFlagsBits;
      _os_log_impl(&_mh_execute_header, v40, v41, "MobileDocumentReaderAuthenticationStorage found override value %f for validityInterval.", v45, 0xCu);
      v39 = v66;
    }

    v46 = v39;
    v47 = v23;
    (*(v24 + 8))(v46, v23);
    v9 = v73;
    goto LABEL_17;
  }

  v48 = v68;
  defaultLogger()();
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  v51 = os_log_type_enabled(v49, v50);
  v47 = v23;
  v43 = v65;
  if (v51)
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Unable to parse validity interval override in settings. Continuing with default value.", v52, 2u);
  }

  (*(v24 + 8))(v48, v23);
  countAndFlagsBits = 0x4122750000000000;
LABEL_16:
  v9 = v73;
  v44 = v70;
LABEL_17:
  defaultLogger()();
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 134217984;
    *(v55 + 4) = countAndFlagsBits;
    _os_log_impl(&_mh_execute_header, v53, v54, "MobileDocumentReaderAuthenticationStorage creating SEBAAS certificate with validityInterval %f", v55, 0xCu);
    v44 = v70;
  }

  (*(v24 + 8))(v44, v47);
  v58 = dispatch thunk of SESKeystore.createSEBAASCertificate(with:validityInterval:)();
  v60 = v59;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v62 = SecCertificateCreateWithData(0, isa);

  if (v62)
  {
    sub_10000B90C(v58, v60);

    v63 = v77;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v78 + 8))(v63, v79);
    return v9;
  }

  v72 = "generateIdentityKeyPair()";
  (*(v74 + 104))(v76, enum case for DIPError.Code.certificateDecodingFailed(_:), v75);
  v73 = v37;
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10000B90C(v9, v73);

  sub_10000B90C(v58, v60);
LABEL_20:
  type metadata accessor for DaemonAnalytics();
  static DaemonAnalytics.sendMobileDocumentReaderAttestationKeyCreationFailedEvent(error:)();
  (*(v74 + 104))(v76, enum case for DIPError.Code.internalError(_:), v75);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v56 = v77;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v78 + 8))(v56, v79);
  return v9;
}

void sub_1003503D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = sub_1005825E4(a2, a3, a4);
  if (!v4)
  {
    v7 = v6;
    type metadata accessor for StoredMobileDocumentReaderSigningKey();
    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v5 + 16)];
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v8 setKeyBlob:isa];

    v10 = v7;
    [v8 setApplicationInstallation:v10];
    type metadata accessor for StoredMobileDocumentReaderAttestationCertificate();
    v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v5 + 16)];
    v12 = Data._bridgeToObjectiveC()().super.isa;
    [v11 setCertificateData:v12];

    [v11 setSigningKey:v8];
    [v11 setApplicationInstallation:v10];

    sub_1005826A4();
  }
}

uint64_t sub_10035053C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Milestone();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[12] = v7;
  v8 = *(v7 - 8);
  v4[13] = v8;
  v4[14] = *(v8 + 64);
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_1003506C0, 0, 0);
}

uint64_t sub_1003506C0()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v8 = v0[3];
  sub_10000BA08((v5 + 24), *(v5 + 48));
  (*(v3 + 16))(v1, v6, v4);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v0[16] = v10;
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  (*(v3 + 32))(v10 + v9, v1, v4);
  *(v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;

  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_10035084C;

  return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
}

uint64_t sub_10035084C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100350A1C;
  }

  else
  {

    v2 = sub_100350968;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100350968()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  static MobileDocumentReaderMilestone.readerAuthenticationKeyDeleted.getter();
  Milestone.log()();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100350A1C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 104))(v1, enum case for DIPError.Code.documentReaderCannotDeleteIdentityKey(_:), v3);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

void sub_100350BD8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = sub_100582C9C(a2, a3);
  if (!v4)
  {
    v7 = v6;
    v8 = [v6 attestationCertificate];

    if (v8)
    {
      v9 = v8;
      v10 = [v9 signingKey];
      if (v10)
      {
        v11 = v10;
        sub_100350CB8(v10, v5);
      }

      [*(v5 + 16) deleteObject:v9];
    }

    sub_1005826A4();
  }
}

id sub_100350CB8(void *a1, uint64_t a2)
{
  v29 = a2;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v6 = __chkstk_darwin(v5);
  v8 = &v28 - v7;
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = [a1 attestationCertificates];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 count];
  }

  else
  {
    v13 = 0;
  }

  v14 = [a1 authenticationCertificates];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 count];

    v17 = v16 + v13;
    if (__OFADD__(v13, v16))
    {
      __break(1u);
      goto LABEL_16;
    }
  }

  else
  {
    v17 = v13;
  }

  if (v17 <= 1)
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "MobileDocumentReaderAuthenticationStorage signing key has 1 or less related certificates. Cleaning up.", v24, 2u);
    }

    (*(v4 + 8))(v10, v3);
    v25 = [a1 keyBlob];
    if (!v25)
    {
      return [*(v29 + 16) deleteObject:{a1, v28}];
    }

    v26 = v25;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v27;

    dispatch thunk of SESKeystore.deleteKey(_:)();
LABEL_16:
    sub_10000B90C(v16, v10);
    return [*(v29 + 16) deleteObject:{a1, v28}];
  }

  defaultLogger()();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "MobileDocumentReaderAuthenticationStorage signing key has more than 1 certificate. No need to clean it up.", v20, 2u);
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_100351150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Milestone();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100351270, 0, 0);
}

uint64_t sub_100351270()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = v1[6];
  v5 = v1[7];
  sub_10000BA08(v1 + 3, v4);
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;

  v7 = swift_task_alloc();
  v0[13] = v7;
  v8 = sub_100007224(&qword_1008419D8, &qword_1006DEAB0);
  *v7 = v0;
  v7[1] = sub_100351398;
  v9 = v0[2];

  return dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)(v9, sub_1003550F4, v6, v8, v4, v5);
}

uint64_t sub_100351398()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100351554;
  }

  else
  {

    v2 = sub_1003514B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003514B4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  static MobileDocumentReaderMilestone.readerAuthenticationCertificateFetched.getter();
  Milestone.log()();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100351554()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 104))(v1, enum case for DIPError.Code.documentReaderMissingReaderAuthCertificate(_:), v3);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

void *sub_100351708@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100582AA4(a1, a2);
  if (!v3)
  {
    v19[1] = 0;
    if (result)
    {
      return sub_100584784(result, a3);
    }

    else
    {
      defaultLogger()();

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v19[0] = v12;
        v16 = v15;
        v20 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_100141FE4(a1, a2, &v20);
        v17 = v19[0];
        _os_log_impl(&_mh_execute_header, v19[0], v13, "MobileDocumentReaderAuthenticationStorage could not find session for identifier %s", v14, 0xCu);
        sub_10000BB78(v16);
      }

      else
      {
      }

      (*(v8 + 8))(v10, v7);
      v18 = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
      return (*(*(v18 - 8) + 56))(a3, 1, 1, v18);
    }
  }

  return result;
}

uint64_t sub_100351940()
{
  v1[3] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100351A00, 0, 0);
}

uint64_t sub_100351A00()
{
  v1 = *(v0 + 24);
  v2 = v1[6];
  v3 = v1[7];
  sub_10000BA08(v1 + 3, v2);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = sub_100007224(&qword_1008419E0, &qword_1006DE8A0);
  *v4 = v0;
  v4[1] = sub_100351AF0;

  return dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)(v0 + 16, sub_100351D9C, 0, v5, v2, v3);
}

uint64_t sub_100351AF0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100351C04;
  }

  else
  {
    v2 = sub_100355C30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100351C04()
{
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.documentReaderCannotListCertificates(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

void sub_100351D9C(void *a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = sub_100007224(&qword_1008419D8, &qword_1006DEAB0);
  __chkstk_darwin(v3 - 8);
  v5 = &i - v4;
  v6 = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &i - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StoredMobileDocumentReaderAuthenticationCertificate();
  v10 = static StoredMobileDocumentReaderAuthenticationCertificate.fetchRequest()();
  v11 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {
    v12 = v7;
    v25 = v9;
    v26 = v6;
    if (v11 >> 62)
    {
      goto LABEL_20;
    }

    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = 0; v13; i = v2)
    {
      v14 = 0;
      v28 = v11 & 0xC000000000000001;
      v27 = v11 & 0xFFFFFFFFFFFFFF8;
      v24 = v12;
      v15 = (v12 + 48);
      v2 = _swiftEmptyArrayStorage;
      v16 = v25;
      v12 = v26;
      while (v28)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_18;
        }

LABEL_10:
        sub_100584784(v17, v5);
        if ((*v15)(v5, 1, v12) == 1)
        {
          sub_10000BE18(v5, &qword_1008419D8, &qword_1006DEAB0);
        }

        else
        {
          sub_100355438(v5, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1003C6254(0, v2[2] + 1, 1, v2);
          }

          v20 = v2[2];
          v19 = v2[3];
          if (v20 >= v19 >> 1)
          {
            v2 = sub_1003C6254((v19 > 1), v20 + 1, 1, v2);
          }

          v2[2] = v20 + 1;
          v21 = v2 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20;
          v16 = v25;
          sub_100355438(v25, v21);
          v12 = v26;
        }

        ++v14;
        if (v18 == v13)
        {
          goto LABEL_22;
        }
      }

      if (v14 >= *(v27 + 16))
      {
        goto LABEL_19;
      }

      v17 = *(v11 + 8 * v14 + 32);
      v18 = v14 + 1;
      if (!__OFADD__(v14, 1))
      {
        goto LABEL_10;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    v2 = _swiftEmptyArrayStorage;
LABEL_22:

    *v23 = v2;
  }
}

uint64_t sub_1003520AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Milestone();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
  v2[10] = v5;
  v6 = *(v5 - 8);
  v2[11] = v6;
  v2[12] = *(v6 + 64);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10035222C, 0, 0);
}

uint64_t sub_10035222C()
{
  v1 = v0[2];
  v2 = (v1 + *(v0[10] + 32));
  v3 = *v2;
  v0[14] = *v2;
  v4 = v2[1];
  v0[15] = v4;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v15 = enum case for DIPError.Code.documentReaderCannotStoreCertificate(_:);
    v18 = *(v0[5] + 104);
    v18(v0[6], enum case for DIPError.Code.documentReaderCannotStoreCertificate(_:), v0[4]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v18(v0[6], v15, v0[4]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }

  else
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    v8 = v0[3];
    sub_10000B8B8(v3, v4);
    type metadata accessor for SecCertificate(0);
    v9 = Array<A>.derRepresentation.getter();
    sub_10000BA08((v8 + 24), *(v8 + 48));
    sub_100355110(v1, v5);
    v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v11 = (v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    v0[16] = v12;
    sub_100355438(v5, v12 + v10);
    v13 = (v12 + v11);
    *v13 = v3;
    v13[1] = v4;
    *(v12 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)) = v9;
    sub_10000B8B8(v3, v4);
    v14 = swift_task_alloc();
    v0[17] = v14;
    *v14 = v0;
    v14[1] = sub_10035260C;

    return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
  }
}

uint64_t sub_10035260C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1003527F4;
  }

  else
  {

    v2 = sub_100352728;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100352728()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  static MobileDocumentReaderMilestone.readerAuthenticationCertificateStored.getter();
  Milestone.log()();
  sub_10035542C(v2, v1);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003527F4()
{
  v1 = v0[5];
  sub_10035542C(v0[14], v0[15]);

  (*(v1 + 104))(v0[6], enum case for DIPError.Code.documentReaderCannotStoreCertificate(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

void sub_1003529BC(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v43 = a4;
  v44 = a5;
  v42 = a3;
  v7 = sub_100007224(&qword_100835D88, &qword_1006DE890);
  __chkstk_darwin(v7 - 8);
  v9 = v40 - v8;
  v10 = type metadata accessor for DIPError.Code();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a2[2];
  v16 = a2[3];
  v17 = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
  v18 = v45;
  v19 = sub_100582C9C(v15, v16);
  if (!v18)
  {
    if (v19)
    {
      v45 = v19;
      v20 = sub_100582F18();
      if (v20)
      {
        v42 = v20;
        v43 = 0;
        type metadata accessor for StoredMobileDocumentReaderAuthenticationCertificate();
        v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v14 + 16)];
        v40[1] = a2[1];
        v41 = v21;
        sub_100355554(a2 + *(v17 + 56), v9);
        v22 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
        v23 = *(v22 - 8);
        if ((*(v23 + 48))(v9, 1, v22) == 1)
        {
          sub_10000BE18(v9, &qword_100835D88, &qword_1006DE890);
          v24 = 0;
          v25 = 0xF000000000000000;
        }

        else
        {
          v26 = v9;
          v27 = CBOREncodedCBOR.dataValue.getter();
          v25 = v28;
          v29 = v26;
          v24 = v27;
          (*(v23 + 8))(v29, v22);
        }

        v30 = String._bridgeToObjectiveC()();
        v31 = v41;
        [v41 setSessionIdentifier:v30];

        isa = Array._bridgeToObjectiveC()().super.isa;
        [v31 setCertificateChain:isa];

        if (v25 >> 60 == 15)
        {
          v33 = 0;
        }

        else
        {
          v33 = Data._bridgeToObjectiveC()().super.isa;
        }

        [v31 setExternalData:v33];

        sub_10000BD94(v24, v25);
        v34 = a2 + *(v17 + 40);
        v35 = *(v34 + 1);
        if (v35 >> 60 != 15)
        {
          v36 = *v34;
          sub_10000B8B8(*v34, *(v34 + 1));
          v37 = Data._bridgeToObjectiveC()().super.isa;
          [v31 setMerchantLogo:v37];

          sub_10000BD94(v36, v35);
        }

        v38 = v45;
        [v31 setApplicationInstallation:v45];
        v39 = v42;
        [v31 setSigningKey:v42];
        sub_1005826A4();
      }

      else
      {
        (*(v11 + 104))(v13, enum case for DIPError.Code.documentReaderCannotStoreCertificate(_:), v10);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }
    }

    else
    {
      (*(v11 + 104))(v13, enum case for DIPError.Code.documentReaderCannotStoreCertificate(_:), v10);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_100352FB4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Milestone();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003530D4, 0, 0);
}

uint64_t sub_1003530D4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_10000BA08((v1 + 24), *(v1 + 48));
  v4 = swift_allocObject();
  v0[11] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;

  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1003531FC;

  return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
}

uint64_t sub_1003531FC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1003533AC;
  }

  else
  {

    v2 = sub_100353318;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100353318()
{
  static MobileDocumentReaderMilestone.readerAuthenticationCertificateDeleted.getter();
  Milestone.log()();
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003533AC()
{

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

void sub_100353480(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = sub_100582AA4(a2, a3);
  if (!v3 && v5)
  {
    v6 = v5;
    v7 = [v5 signingKey];
    if (v7)
    {
      v8 = v7;
      sub_100350CB8(v7, v4);
    }

    [*(v4 + 16) deleteObject:v6];
    sub_1005826A4();
  }
}

uint64_t sub_100353530(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v2[10] = *(v5 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_10035366C, 0, 0);
}

uint64_t sub_10035366C()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v6 = v0[2];
  v5 = v0[3];
  sub_10000BA08((v5 + 24), *(v5 + 48));
  v7 = *(v3 + 16);
  v0[13] = v7;
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v4);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[15] = v9;
  (*(v3 + 32))(v9 + v8, v1, v4);
  *(v9 + ((v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;

  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_1003537FC;

  return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
}

uint64_t sub_1003537FC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100353B60;
  }

  else
  {

    v2 = sub_100353918;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100353918(uint64_t a1)
{
  v27 = v1;
  v2 = v1[13];
  v3 = v1[11];
  v4 = v1[8];
  v5 = v1[2];
  defaultLogger()();
  v2(v3, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[11];
  v11 = v1[8];
  v10 = v1[9];
  v12 = v1[7];
  v14 = v1[4];
  v13 = v1[5];
  if (v8)
  {
    v25 = v1[4];
    v15 = swift_slowAlloc();
    v23 = v7;
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136315138;
    sub_100355BE8(&qword_10083ACE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v12;
    v19 = v18;
    (*(v10 + 8))(v9, v11);
    v20 = sub_100141FE4(v17, v19, &v26);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v23, "MobileDocumentReaderAuthenticationStorage successfully deleted all sessions with expiration date earlier than %s.", v15, 0xCu);
    sub_10000BB78(v16);

    (*(v13 + 8))(v24, v25);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
    (*(v13 + 8))(v12, v14);
  }

  v21 = v1[1];

  return v21();
}

uint64_t sub_100353B60()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void sub_100353C4C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v77 = a3;
  v81 = a2;
  v5 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v6 = __chkstk_darwin(v5 - 8);
  v80 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v82 = &v69 - v8;
  v84 = type metadata accessor for Date();
  v73 = *(v84 - 8);
  v9 = __chkstk_darwin(v84);
  v78 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v79 = (&v69 - v11);
  v12 = *a1;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1003A95BC(_swiftEmptyArrayStorage);
    v13 = v32;
  }

  else
  {
    v13 = &_swiftEmptySetSingleton;
  }

  v87 = v13;
  type metadata accessor for StoredMobileDocumentReaderAuthenticationCertificate();
  v14 = static StoredMobileDocumentReaderAuthenticationCertificate.fetchRequest()();
  v15 = NSManagedObjectContext.fetch<A>(_:)();

  if (v3)
  {

    return;
  }

  v76 = 0;
  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    v83 = v12;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v83 = v12;
    if (v16)
    {
LABEL_7:
      if (v16 >= 1)
      {
        v17 = 0;
        v18 = v15 & 0xC000000000000001;
        v74 = (v73 + 6);
        v71 = (v73 + 4);
        v70 = v73 + 1;
        p_align = &stru_10082BFE8.align;
        v72 = v16;
        v75 = v15 & 0xC000000000000001;
        while (1)
        {
          if (v18)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v20 = *(v15 + 8 * v17 + 32);
          }

          v21 = v20;
          v22 = [v20 *(p_align + 478)];
          if (v22 && (v86[0] = 0, v23 = v22, static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v23, v86[0]))
          {
            if (*(v86[0] + 2))
            {
              v24 = *(v86[0] + 4);
              v25 = *(v86[0] + 5);
              sub_10000B8B8(v24, v25);

              isa = Data._bridgeToObjectiveC()().super.isa;
              v27 = SecCertificateCreateWithData(0, isa);

              if (v27)
              {
                v28 = v82;
                SecCertificateRef.expirationDate.getter();
                v29 = v84;
                if ((*v74)(v28, 1, v84) == 1)
                {
                  sub_10000B90C(v24, v25);

                  sub_10000BE18(v28, &unk_100849400, &unk_1006BFBB0);
                  goto LABEL_27;
                }

                v30 = v79;
                (*v71)(v79, v28, v29);
                if (static Date.< infix(_:_:)())
                {
                  v31 = [v21 signingKey];
                  v18 = v75;
                  if (v31)
                  {
                    sub_100151F98(v86, v31);
                  }

                  [*(v83 + 16) deleteObject:v21];
                  sub_10000B90C(v24, v25);

                  (*v70)(v79, v84);
                  v16 = v72;
                }

                else
                {
                  (*v70)(v30, v29);
                  sub_10000B90C(v24, v25);

                  v16 = v72;
LABEL_27:
                  v18 = v75;
                }
              }

              else
              {

                sub_10000B90C(v24, v25);
              }

              p_align = (&stru_10082BFE8 + 24);
              goto LABEL_10;
            }
          }

          else
          {
          }

LABEL_10:
          if (v16 == ++v17)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
      goto LABEL_55;
    }
  }

LABEL_32:

  type metadata accessor for StoredMobileDocumentReaderAttestationCertificate();
  v33 = static StoredMobileDocumentReaderAttestationCertificate.fetchRequest()();
  v34 = v76;
  v35 = NSManagedObjectContext.fetch<A>(_:)();
  v76 = v34;
  if (v34)
  {

    return;
  }

  v12 = v35;

  if (v12 >> 62)
  {
LABEL_55:
    v36 = _CocoaArrayWrapper.endIndex.getter();
    if (!v36)
    {
      goto LABEL_56;
    }

    goto LABEL_36;
  }

  v36 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v36)
  {
LABEL_36:
    if (v36 < 1)
    {
LABEL_75:
      __break(1u);
      return;
    }

    v37 = 0;
    v38 = v12 & 0xC000000000000001;
    v79 = (v73 + 6);
    v39 = (v73 + 4);
    ++v73;
    v74 = v39;
    v75 = v36;
    v82 = v12;
    do
    {
      if (v38)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v40 = *(v12 + 8 * v37 + 32);
      }

      v41 = v40;
      v42 = [v40 certificateData];
      if (v42)
      {
        v43 = v42;
        v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        v47 = Data._bridgeToObjectiveC()().super.isa;
        v48 = SecCertificateCreateWithData(0, v47);

        if (v48)
        {
          v49 = v38;
          v50 = v80;
          SecCertificateRef.expirationDate.getter();
          v51 = v84;
          if ((*v79)(v50, 1, v84) == 1)
          {
            sub_10000B90C(v44, v46);

            sub_10000BE18(v50, &unk_100849400, &unk_1006BFBB0);
          }

          else
          {
            v52 = v78;
            (*v74)(v78, v50, v51);
            if (static Date.< infix(_:_:)())
            {
              v53 = [v41 signingKey];
              v38 = v49;
              if (v53)
              {
                sub_100151F98(v86, v53);
              }

              [*(v83 + 16) deleteObject:v41];
              sub_10000B90C(v44, v46);

              (*v73)(v78, v84);
              v36 = v75;
              v12 = v82;
              goto LABEL_39;
            }

            (*v73)(v52, v51);
            sub_10000B90C(v44, v46);

            v36 = v75;
          }

          v38 = v49;
          v12 = v82;
        }

        else
        {

          sub_10000B90C(v44, v46);
        }
      }

      else
      {
      }

LABEL_39:
      ++v37;
    }

    while (v36 != v37);
  }

LABEL_56:

  v54 = v87;
  if ((v87 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for StoredMobileDocumentReaderSigningKey();
    sub_100355BE8(&qword_1008419F0, &type metadata accessor for StoredMobileDocumentReaderSigningKey, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v54 = v86[1];
    v55 = v86[2];
    v56 = v86[3];
    v57 = v86[4];
    v58 = v86[5];
  }

  else
  {
    v57 = 0;
    v59 = -1 << *(v87 + 32);
    v55 = (v87 + 56);
    v56 = ~v59;
    v60 = -v59;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    else
    {
      v61 = -1;
    }

    v58 = (v61 & *(v87 + 56));
  }

  v84 = v56;
  v62 = (v56 + 64) >> 6;
  if ((v54 & 0x8000000000000000) == 0)
  {
    goto LABEL_66;
  }

  while (1)
  {
    v63 = __CocoaSet.Iterator.next()();
    if (!v63)
    {
      break;
    }

    v85 = v63;
    type metadata accessor for StoredMobileDocumentReaderSigningKey();
    swift_dynamicCast();
    v64 = v86[0];
    v65 = v57;
    v66 = v58;
    if (!v86[0])
    {
      break;
    }

    while (1)
    {
      sub_100350CB8(v64, v83);

      v57 = v65;
      v58 = v66;
      if (v54 < 0)
      {
        break;
      }

LABEL_66:
      v67 = v57;
      v68 = v58;
      v65 = v57;
      if (!v58)
      {
        while (1)
        {
          v65 = (v67 + 1);
          if (__OFADD__(v67, 1))
          {
            break;
          }

          if (v65 >= v62)
          {
            goto LABEL_73;
          }

          v68 = v55[v65];
          ++v67;
          if (v68)
          {
            goto LABEL_70;
          }
        }

        __break(1u);
        goto LABEL_75;
      }

LABEL_70:
      v66 = (v68 - 1) & v68;
      v64 = *(*(v54 + 48) + ((v65 << 9) | (8 * __clz(__rbit64(v68)))));
      if (!v64)
      {
        goto LABEL_73;
      }
    }
  }

LABEL_73:
  sub_10001FA6C(v54);
  sub_1005826A4();
}

uint64_t sub_1003545A4()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100354670, 0, 0);
}

uint64_t sub_100354670(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderAuthenticationStorage deleteAll", v4, 2u);
  }

  v5 = v1[6];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[2];

  v9 = *(v7 + 8);
  v1[7] = v9;
  v9(v5, v6);
  sub_10000BA08((v8 + 24), *(v8 + 48));
  v10 = swift_task_alloc();
  v1[8] = v10;
  *v10 = v1;
  v10[1] = sub_1003547F0;

  return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
}

uint64_t sub_1003547F0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10035496C;
  }

  else
  {
    v2 = sub_100354904;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100354904()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10035496C(uint64_t a1)
{
  v2 = v1[7];
  v3 = v1[5];
  v4 = v1[3];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v2(v3, v4);

  v5 = v1[1];

  return v5();
}

void sub_100354A40(uint64_t *a1)
{
  v2 = *a1;
  type metadata accessor for StoredMobileDocumentReaderApplicationInstallation();
  v3 = static StoredMobileDocumentReaderApplicationInstallation.fetchRequest()();
  v4 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {
    if (v4 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_4:
        if (v5 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v5; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v7 = *(v4 + 8 * i + 32);
          }

          v8 = v7;
          [*(v2 + 16) deleteObject:v7];
        }
      }
    }

    sub_1005826A4();
  }
}

uint64_t sub_100354B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100354C24, 0, 0);
}

uint64_t sub_100354C24()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  sub_10000BA08((v0[6] + 24), *(v0[6] + 48));
  v5 = swift_allocObject();
  v0[10] = v5;
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v2;

  sub_10000B8B8(v4, v2);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_100354D50;

  return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
}

uint64_t sub_100354D50()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100354ED8;
  }

  else
  {

    v2 = sub_100354E6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100354E6C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 96) == 0;

  return v1(v2);
}

uint64_t sub_100354ED8()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];
  v5 = v0[12] == 0;

  return v4(v5);
}

void sub_100354FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100582AA4(a2, a3);
  if (!v3)
  {
    if (v4)
    {
      v5 = v4;
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v5 setMerchantLogo:isa];

      sub_1005826A4();
    }
  }
}

uint64_t sub_10035505C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1003550BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100355110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100355174()
{
  v1 = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  sub_10035542C(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  v8 = (v0 + v3 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_10000B90C(*v8, v9);
  }

  v10 = v1[12];
  v11 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNames();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = v1[13];
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  v15 = v1[14];
  v16 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v5 + v15, 1, v16))
  {
    (*(v17 + 8))(v5 + v15, v16);
  }

  v18 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_10000B90C(*(v0 + v18), *(v0 + v18 + 8));

  return _swift_deallocObject(v0, v19 + 8, v2 | 7);
}

void sub_10035542C(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    sub_10000B90C(result, a2);
  }
}

uint64_t sub_100355438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10035549C(uint64_t *a1)
{
  v3 = *(type metadata accessor for MobileDocumentReaderAuthenticationSession(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1003529BC(a1, (v1 + v4), *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100355554(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100835D88, &qword_1006DE890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003555C4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100355748()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10035588C()
{

  sub_10000B90C(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1003558EC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_10000B90C(*(v0 + v5), *(v0 + v5 + 8));
  sub_10000B90C(*(v0 + v6), *(v0 + v6 + 8));

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_100355AA4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100355B40(unint64_t *a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_100353C4C(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100355BE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100355C34()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SecKeyRef.KeyClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = dispatch thunk of SESKeystore.getPublicKey(of:)();
  if (!v0)
  {
    v11 = v9;
    v12 = v10;
    v18 = v2;
    type metadata accessor for SecKey(0);
    (*(v6 + 104))(v8, enum case for SecKeyRef.KeyClass.public(_:), v5);
    v13 = static SecKeyRef.makeECKey(from:keyClass:)();
    (*(v6 + 8))(v8, v5);
    sub_10000B90C(v11, v12);
    v14 = SecKeyRef.publicKeyData.getter();
    if (v15 >> 60 == 15)
    {
      (*(v18 + 104))(v4, enum case for DIPError.Code.sesKeyPublicKeyError(_:), v1);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      v5 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v5 = v14;
    }
  }

  return v5;
}

id sub_100355F54(uint64_t a1, uint64_t a2)
{
  v12[1] = a1;
  v12[2] = a2;
  v2 = type metadata accessor for SESKeystore.SignatureOutputFormat();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(LAContext) init];
  result = [v13 externalizedContext];
  if (result)
  {
    v7 = result;
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    (*(v3 + 104))(v5, enum case for SESKeystore.SignatureOutputFormat.raw(_:), v2);
    v11 = dispatch thunk of SESKeystore.signDigest(_:withKey:externalizedLAContext:outputFormat:seAccessEndpoint:)();
    (*(v3 + 8))(v5, v2);
    sub_10000B90C(v8, v10);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100356114()
{
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v6 = __DataStorage.init(length:)();
  v7 = sub_100355F54(0x2000000000, v6 | 0x4000000000000000);
  sub_10000B90C(v7, v8);

  sub_10000BA08((v0 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_dateProvider), *(v0 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_dateProvider + 24));
  dispatch thunk of DateProviding.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  (*(v3 + 8))(v5, v2);
  return SecCertificateIsValid();
}

uint64_t sub_100356360()
{

  v1 = OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_installationIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000B90C(*(v0 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob), *(v0 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob + 8));

  sub_10000BB78((v0 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_dateProvider));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobileDocumentReaderIdentityKey(uint64_t a1)
{
  result = qword_100841A38;
  if (!qword_100841A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10035649C(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100356574()
{
  v0 = type metadata accessor for DIPError.Code();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.unexpectedDaemonState(_:));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

uint64_t sub_1003566EC()
{
  v2 = type metadata accessor for SecKeyRef.KeyClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v0 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keystore);
  v7 = dispatch thunk of SESKeystore.getPublicKey(of:)();
  if (!v1)
  {
    v9 = v7;
    v10 = v8;
    type metadata accessor for SecKey(0);
    (*(v3 + 104))(v5, enum case for SecKeyRef.KeyClass.public(_:), v2);
    v6 = static SecKeyRef.makeECKey(from:keyClass:)();
    sub_10000B90C(v9, v10);
    (*(v3 + 8))(v5, v2);
  }

  return v6;
}

uint64_t sub_1003568CC()
{
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1006BF520;
  *(v0 + 32) = SecCertificateRef.base64EncodedString.getter();
  *(v0 + 40) = v1;
  return v0;
}

uint64_t sub_1003569BC@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_100356A2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static UUID.== infix(_:_:)() & 1) != 0 && sub_1000C31A0(*(a1 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob), *(a1 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob + 8), *(a2 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob), *(a2 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob + 8)))
  {
    v5 = SecCertificateRef.base64EncodedString.getter();
    v7 = v6;
    if (v5 == SecCertificateRef.base64EncodedString.getter() && v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_100356B30()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "MobileDocumentReaderIdentityKey persisting is done outside of this method. This is a no-op.", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100356C74(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_100007224(&qword_100841BC8, &qword_1006E6830);
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentReaderIdentityKeyRequest();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_100356EA8, 0, 0);
}

uint64_t sub_100356EA8()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  sub_10000BBC4(v0[3], v3, &qword_100841BC8, &qword_1006E6830);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000BE18(v0[17], &qword_100841BC8, &qword_1006E6830);
    v4 = swift_task_alloc();
    v0[25] = v4;
    *v4 = v0;
    v4[1] = sub_100357418;

    return sub_10034E6A4();
  }

  else
  {
    (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
    v6 = MobileDocumentReaderIdentityKeyRequest.applicationIdentifier.getter();
    v8 = v7;
    v0[21] = v7;
    MobileDocumentReaderIdentityKeyRequest.installationIdentifier.getter();
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = sub_100357068;
    v10 = v0[16];

    return sub_10034DCAC(v6, v8, v10);
  }
}

uint64_t sub_100357068(uint64_t a1)
{
  v4 = *v2;
  v4[23] = v1;

  v5 = v4[16];
  v6 = v4[14];
  v7 = v4[13];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    v8 = sub_1003578E4;
  }

  else
  {
    v4[24] = a1;
    (*(v6 + 8))(v5, v7);

    v8 = sub_100357214;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100357214()
{
  v1 = v0[24];
  v2 = v0[19];
  v12 = v0[18];
  v13 = v0[20];
  v3 = v0[12];
  v4 = v0[9];
  v11 = v0[8];
  (*(v0[14] + 16))(v0[15], v1 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_installationIdentifier, v0[13]);
  v6 = *(v1 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob);
  v5 = *(v1 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob + 8);

  sub_10000B8B8(v6, v5);
  MobileDocumentReaderIdentityKeyResponse.StatusItem.init(applicationIdentifier:installationIdentifier:identityKeyBlob:)();
  sub_100007224(&qword_10083C120, &unk_1006DA6A0);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BF520;
  (*(v4 + 16))(v8 + v7, v3, v11);
  MobileDocumentReaderIdentityKeyResponse.init(items:)();

  (*(v4 + 8))(v3, v11);
  (*(v2 + 8))(v13, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100357418(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_100357AE0;
  }

  else
  {
    v4 = sub_10035752C;
  }

  return _swift_task_switch(v4, 0, 0);
}

void *sub_10035752C()
{
  v1 = v0[26];
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_16;
    }
  }

  result = sub_100173258(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    v25 = (v0[14] + 16);
    v27 = v0[9];
    v28 = v2;
    do
    {
      v5 = v0[15];
      v6 = v0[13];
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      (*v25)(v5, v7 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_installationIdentifier, v6);
      v9 = *(v7 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob);
      v8 = *(v7 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob + 8);

      sub_10000B8B8(v9, v8);
      MobileDocumentReaderIdentityKeyResponse.StatusItem.init(applicationIdentifier:installationIdentifier:identityKeyBlob:)();
      swift_unknownObjectRelease();
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_100173258((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[11];
      v13 = v0[8];
      ++v4;
      _swiftEmptyArrayStorage[2] = v11 + 1;
      (*(v27 + 32))(_swiftEmptyArrayStorage + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v11, v12, v13);
    }

    while (v28 != v4);
  }

  else
  {
    v14 = v0[9];
    v26 = *(v0[14] + 16);
    v15 = (v0[26] + 32);
    do
    {
      v29 = v2;
      v16 = *v15;
      v26(v0[15], *v15 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_installationIdentifier, v0[13]);
      v17 = v16 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob;
      v18 = *(v16 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob);
      v19 = *(v17 + 8);

      sub_10000B8B8(v18, v19);
      MobileDocumentReaderIdentityKeyResponse.StatusItem.init(applicationIdentifier:installationIdentifier:identityKeyBlob:)();
      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (v21 >= v20 >> 1)
      {
        sub_100173258((v20 > 1), v21 + 1, 1);
      }

      v22 = v0[10];
      v23 = v0[8];
      _swiftEmptyArrayStorage[2] = v21 + 1;
      (*(v14 + 32))(_swiftEmptyArrayStorage + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v21, v22, v23);
      ++v15;
      --v2;
    }

    while (v29 != 1);
  }

LABEL_16:

  MobileDocumentReaderIdentityKeyResponse.init(items:)();

  v24 = v0[1];

  return v24();
}

uint64_t sub_1003578E4()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10035C774(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100357AE0()
{
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10035C774(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100357CC4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100357DE0, 0, 0);
}

uint64_t sub_100357DE0(uint64_t a1)
{
  v2 = MobileDocumentReaderIdentityKeyRequest.applicationIdentifier.getter();
  v4 = v3;
  v1[10] = v3;
  MobileDocumentReaderIdentityKeyRequest.installationIdentifier.getter();
  v5 = swift_task_alloc();
  v1[11] = v5;
  *v5 = v1;
  v5[1] = sub_100357EB0;
  v6 = v1[9];

  return sub_10035053C(v2, v4, v6);
}

uint64_t sub_100357EB0()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_100358098, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100358098()
{
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10035C774(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100358224(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100007224(&qword_100835D88, &qword_1006DE890);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for MobileDocumentReaderCertificateResponse.StatusItem();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  sub_100007224(&qword_1008419D8, &qword_1006DEAB0);
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_100007224(&qword_100841BB8, &qword_1006DEAB8);
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentReaderCertificateRequest();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_1003584B0, 0, 0);
}

uint64_t sub_1003584B0()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  sub_10000BBC4(v0[3], v3, &qword_100841BB8, &qword_1006DEAB8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000BE18(v0[17], &qword_100841BB8, &qword_1006DEAB8);
    v4 = swift_task_alloc();
    v0[24] = v4;
    *v4 = v0;
    v4[1] = sub_100358E50;

    return sub_100351940();
  }

  else
  {
    (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
    v6 = MobileDocumentReaderCertificateRequest.sessionIdentifier.getter();
    v8 = v7;
    v0[21] = v7;
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = sub_10035865C;
    v10 = v0[12];

    return sub_100351150(v10, v6, v8);
  }
}

uint64_t sub_10035865C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1003592E0;
  }

  else
  {
    v2 = sub_10035878C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10035878C()
{
  v1 = v0;
  v2 = v0[19];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v6 = (*(v4 + 48))(v5, 1, v3);
  v7 = (v2 + 8);
  v8 = v1[20];
  v9 = v1[18];
  if (v6 == 1)
  {
    v11 = v1[10];
    v10 = v1[11];
    v12 = v1[9];
    sub_10000BE18(v5, &qword_1008419D8, &qword_1006DEAB0);
    (*(v11 + 104))(v10, enum case for DIPError.Code.documentReaderMissingSession(_:), v12);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10035C774(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*v7)(v8, v9);
    (*(v1[10] + 104))(v1[11], enum case for DIPError.Code.internalError(_:), v1[9]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v13 = v1[1];
  }

  else
  {
    v14 = v1[16];
    sub_100355438(v5, v14);
    sub_100007224(&qword_100841BC0, &qword_1006DEAC0);
    v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1006BF520;
    sub_100355438(v14, v16 + v15);
    (*v7)(v8, v9);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = v1[14];
      v41 = v1[13];
      v19 = v1[7];
      sub_10017329C(0, v17, 0);
      v20 = v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v40 = v19;
      v39 = *(v18 + 72);
      v21 = v1;
      do
      {
        v42 = v17;
        v22 = v21[15];
        v23 = v21[5];
        sub_100355110(v20, v22);
        type metadata accessor for SecCertificate(0);

        Array<A>.base64EncodedStrings.getter();
        v24 = (v22 + *(v41 + 40));
        v25 = *v24;
        v26 = v24[1];
        sub_10000BBC4(v22 + *(v41 + 56), v23, &qword_100835D88, &qword_1006DE890);
        v27 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
        v28 = v21;
        v29 = *(v27 - 8);
        v30 = (*(v29 + 48))(v23, 1, v27);
        sub_1000363B4(v25, v26);
        v31 = v28;
        v32 = v28[5];
        if (v30 == 1)
        {
          sub_10000BE18(v32, &qword_100835D88, &qword_1006DE890);
        }

        else
        {
          CBOREncodedCBOR.dataValue.getter();
          (*(v29 + 8))(v32, v27);
        }

        v21 = v31;
        v33 = v31[15];
        MobileDocumentReaderCertificateResponse.StatusItem.init(sessionIdentifier:certificateChain:merchantLogo:externalData:)();
        sub_10035C718(v33);
        v35 = _swiftEmptyArrayStorage[2];
        v34 = _swiftEmptyArrayStorage[3];
        if (v35 >= v34 >> 1)
        {
          sub_10017329C((v34 > 1), v35 + 1, 1);
        }

        v36 = v31[8];
        v37 = v31[6];
        _swiftEmptyArrayStorage[2] = v35 + 1;
        (*(v40 + 32))(_swiftEmptyArrayStorage + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v35, v36, v37);
        v20 += v39;
        v17 = v42 - 1;
      }

      while (v42 != 1);
    }

    else
    {

      v21 = v1;
    }

    MobileDocumentReaderCertificateResponse.init(items:)();

    v13 = v21[1];
  }

  return v13();
}

uint64_t sub_100358E50(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_1003594E0;
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = sub_100358F78;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100358F78()
{
  v1 = v0[26];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    v23 = v0[13];
    v4 = v0[7];
    sub_10017329C(0, v2, 0);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = v4;
    v21 = *(v3 + 72);
    do
    {
      v24 = v2;
      v6 = v0[15];
      v7 = v0[5];
      sub_100355110(v5, v6);
      type metadata accessor for SecCertificate(0);

      Array<A>.base64EncodedStrings.getter();
      v8 = (v6 + *(v23 + 40));
      v9 = *v8;
      v10 = v8[1];
      sub_10000BBC4(v6 + *(v23 + 56), v7, &qword_100835D88, &qword_1006DE890);
      v11 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
      v12 = *(v11 - 8);
      LODWORD(v7) = (*(v12 + 48))(v7, 1, v11);
      sub_1000363B4(v9, v10);
      v13 = v0[5];
      if (v7 == 1)
      {
        sub_10000BE18(v0[5], &qword_100835D88, &qword_1006DE890);
      }

      else
      {
        CBOREncodedCBOR.dataValue.getter();
        (*(v12 + 8))(v13, v11);
      }

      v14 = v0[15];
      MobileDocumentReaderCertificateResponse.StatusItem.init(sessionIdentifier:certificateChain:merchantLogo:externalData:)();
      sub_10035C718(v14);
      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_10017329C((v15 > 1), v16 + 1, 1);
      }

      v17 = v0[8];
      v18 = v0[6];
      _swiftEmptyArrayStorage[2] = v16 + 1;
      (*(v22 + 32))(_swiftEmptyArrayStorage + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v16, v17, v18);
      v5 += v21;
      v2 = v24 - 1;
    }

    while (v24 != 1);
  }

  MobileDocumentReaderCertificateResponse.init(items:)();

  v19 = v0[1];

  return v19();
}

uint64_t sub_1003592E0()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10035C774(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003594E0()
{
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10035C774(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003596C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_100007224(&qword_100841B98, &unk_1006DF0D0);
  v6[8] = swift_task_alloc();
  sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v6[9] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
  v6[14] = swift_task_alloc();
  sub_100007224(&qword_100835D88, &qword_1006DE890);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v6[20] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v6[21] = v9;
  v6[22] = *(v9 - 8);
  v6[23] = swift_task_alloc();
  v10 = sub_100007224(&qword_100841BA0, &qword_1006DEA88);
  v6[24] = v10;
  v6[25] = *(v10 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = sub_100007224(&qword_100841BA8, &unk_1006DEA90);
  v6[28] = swift_task_alloc();
  sub_100007224(&qword_100841BB0, &unk_1006DF080);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v11 = type metadata accessor for Logotype();
  v6[31] = v11;
  v6[32] = *(v11 - 8);
  v6[33] = swift_task_alloc();
  sub_100007224(&unk_100849F90, &qword_1006DEAA0);
  v6[34] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v6[35] = v12;
  v6[36] = *(v12 - 8);
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();

  return _swift_task_switch(sub_100359B54, 0, 0);
}

uint64_t sub_100359B54()
{
  v0[40] = MobileDocumentReaderCertificateRequest.applicationIdentifier.getter();
  v0[41] = v1;
  if (!v1)
  {
LABEL_6:
    v12 = enum case for DIPError.Code.internalError(_:);
    (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10035C774(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v0[18] + 104))(v0[19], v12, v0[17]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }

  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[34];
  MobileDocumentReaderCertificateRequest.installationIdentifier.getter();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[34];

    sub_10000BE18(v5, &unk_100849F90, &qword_1006DEAA0);
    goto LABEL_6;
  }

  v6 = v0[39];
  v7 = v0[35];
  v8 = v0[36];
  v9 = v0[34];
  v10 = *(v8 + 32);
  v0[42] = v10;
  v0[43] = (v8 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v6, v9, v7);
  v0[44] = MobileDocumentReaderCertificateRequest.keyBlob.getter();
  v0[45] = v11;
  if (v11 >> 60 == 15)
  {
    (*(v0[36] + 8))(v0[39], v0[35]);

    goto LABEL_6;
  }

  v0[46] = *(v0[7] + 16);
  v15 = MobileDocumentReaderCertificateRequest.sessionIdentifier.getter();
  v17 = v16;
  v0[47] = v16;
  v18 = swift_task_alloc();
  v0[48] = v18;
  *v18 = v0;
  v18[1] = sub_100359FD4;

  return sub_100352FB4(v15, v17);
}

uint64_t sub_100359FD4()
{

  return _swift_task_switch(sub_10035A0EC, 0, 0);
}

uint64_t sub_10035A0EC()
{
  v1 = decodeCertificate(fromBase64DER:)(*(v0 + 24));
  *(v0 + 392) = v1;
  if (v2)
  {
    v4 = *(v0 + 352);
    v3 = *(v0 + 360);
    (*(*(v0 + 288) + 8))(*(v0 + 312), *(v0 + 280));
    sub_10000BD94(v4, v3);

LABEL_4:
    (*(*(v0 + 144) + 104))(*(v0 + 152), enum case for DIPError.Code.internalError(_:), *(v0 + 136));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10035C774(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }

  v115 = v1;
  SecCertificateRef.logotype.getter();
  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  v9 = *(v0 + 240);
  v10 = *(v8 + 48);
  *(v0 + 400) = v10;
  *(v0 + 408) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v11 = v10(v9, 1, v7);
  if (v11 != 1)
  {
    (*(v8 + 32))(*(v0 + 264), v9, v7);
    v14 = Logotype.logotypeTuples.getter();
    if (*(v14 + 16))
    {
      v16 = *(v0 + 216);
      v15 = *(v0 + 224);
      v17 = *(v0 + 208);
      v18 = *(v0 + 192);
      v19 = *(v0 + 176);
      v112 = *(v0 + 168);
      v108 = *(v0 + 160);
      v20 = *(*(v0 + 200) + 80);
      sub_10000BBC4(v14 + ((v20 + 32) & ~v20), v17, &qword_100841BA0, &qword_1006DEA88);

      v21 = (v17 + *(v18 + 48));
      v23 = *v21;
      v22 = v21[1];
      v24 = (v15 + *(v16 + 48));
      v25 = type metadata accessor for HashDigest();
      v26 = *(v25 - 8);
      (*(v26 + 32))(v15, v17, v25);
      *v24 = v23;
      v24[1] = v22;
      (*(v26 + 8))(v15, v25);
      URL.init(string:)();

      if ((*(v19 + 48))(v108, 1, v112) != 1)
      {
        (*(*(v0 + 176) + 32))(*(v0 + 184), *(v0 + 160), *(v0 + 168));
        v74 = swift_task_alloc();
        *(v0 + 416) = v74;
        *v74 = v0;
        v74[1] = sub_10035B0C0;
        v75 = *(v0 + 184);

        return sub_1003A1518(v75);
      }

      v27 = *(v0 + 352);
      v101 = *(v0 + 360);
      v113 = *(v0 + 312);
      v28 = *(v0 + 288);
      v29 = *(v0 + 256);
      v105 = *(v0 + 264);
      v109 = *(v0 + 280);
      v103 = *(v0 + 248);
      v31 = *(v0 + 152);
      v30 = *(v0 + 160);
      v33 = *(v0 + 136);
      v32 = *(v0 + 144);

      sub_10000BE18(v30, &unk_100844540, &unk_1006BFBC0);
      (*(v32 + 104))(v31, enum case for DIPError.Code.documentReaderCertificateInvalidLogoURL(_:), v33);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10035C774(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
    }

    else
    {
      v27 = *(v0 + 352);
      v101 = *(v0 + 360);
      v113 = *(v0 + 312);
      v28 = *(v0 + 288);
      v29 = *(v0 + 256);
      v105 = *(v0 + 264);
      v109 = *(v0 + 280);
      v103 = *(v0 + 248);
      v61 = *(v0 + 144);
      v60 = *(v0 + 152);
      v62 = *(v0 + 136);

      (*(v61 + 104))(v60, enum case for DIPError.Code.documentReaderCertificateLogotypeMissing(_:), v62);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10035C774(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
    }

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BD94(v27, v101);

    (*(v29 + 8))(v105, v103);
    (*(v28 + 8))(v113, v109);
    goto LABEL_4;
  }

  sub_10000BE18(v9, &qword_100841BB0, &unk_1006DF080);
  *(v0 + 448) = xmmword_1006BF650;
  v12 = *(v0 + 48);
  if (v12 >> 60 == 15)
  {
    v13 = 1;
  }

  else
  {
    v34 = *(v0 + 40);
    type metadata accessor for MobileDocumentReaderExternalData();
    type metadata accessor for CBORDecoder();
    swift_allocObject();
    sub_10000B8B8(v34, v12);
    CBORDecoder.init()();
    sub_10035C774(&qword_100836FD0, &type metadata accessor for MobileDocumentReaderExternalData, &protocol conformance descriptor for MobileDocumentReaderExternalData);
    sub_10035C774(&qword_100836FD8, &type metadata accessor for MobileDocumentReaderExternalData, &protocol conformance descriptor for MobileDocumentReaderExternalData);
    CBOREncodedCBOR.init(_:dataValue:decoder:)();
    v13 = 0;
  }

  v35 = *(v0 + 392);
  v37 = *(v0 + 304);
  v36 = *(v0 + 312);
  v39 = *(v0 + 280);
  v38 = *(v0 + 288);
  v41 = *(v0 + 120);
  v40 = *(v0 + 128);
  v42 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
  (*(*(v42 - 8) + 56))(v40, v13, 1, v42);
  v110 = MobileDocumentReaderCertificateRequest.sessionIdentifier.getter();
  v116 = v43;
  v106 = *(v38 + 16);
  v106(v37, v36, v39);
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1006DAE90;
  *(v44 + 32) = v35;
  sub_10000BBC4(v40, v41, &qword_100835D88, &qword_1006DE890);
  v45 = v35;
  if ((v44 & 0xC000000000000001) != 0)
  {
    sub_1000363B4(*(v0 + 352), *(v0 + 360));
    sub_1000363B4(0, 0xF000000000000000);
    v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v47 = *(v0 + 352);
    v46 = *(v0 + 360);
    v48 = *(v0 + 392);
    sub_1000363B4(v47, v46);
    sub_1000363B4(0, 0xF000000000000000);
    v49 = *(v0 + 392);
  }

  v51 = *(v0 + 80);
  v50 = *(v0 + 88);
  v52 = *(v0 + 72);
  SecCertificateRef.expirationDate.getter();
  if ((*(v50 + 48))(v52, 1, v51) == 1)
  {
    v99 = *(v0 + 392);
    v53 = *(v0 + 352);
    v54 = *(v0 + 360);
    v114 = *(v0 + 312);
    v95 = *(v0 + 288);
    v102 = *(v0 + 280);
    v55 = *(v0 + 144);
    v56 = *(v0 + 152);
    v57 = *(v0 + 136);
    v107 = *(v0 + 128);
    v111 = *(v0 + 304);
    v98 = *(v0 + 120);
    v58 = *(v0 + 72);
    sub_10000BD94(0, 0xF000000000000000);
    sub_10000BD94(v53, v54);

    sub_10000BE18(v58, &unk_100849400, &unk_1006BFBB0);
    (*(v55 + 104))(v56, enum case for DIPError.Code.documentReaderCertificateValidationFailed(_:), v57);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10035C774(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BD94(0, 0xF000000000000000);
    sub_10000BD94(v53, v54);

    sub_10000BE18(v98, &qword_100835D88, &qword_1006DE890);
    v59 = *(v95 + 8);
    v59(v111, v102);
    sub_10000BE18(v107, &qword_100835D88, &qword_1006DE890);
    v59(v114, v102);
    goto LABEL_4;
  }

  v100 = *(*(v0 + 88) + 32);
  v100(*(v0 + 96), *(v0 + 72), *(v0 + 80));
  v63 = SecCertificateRef.pseudonym.getter();
  v65 = v64;
  SecCertificateRef.logotype.getter();
  v89 = *(v0 + 232);
  v90 = (*(v0 + 400))(v89, 1, *(v0 + 248));
  sub_10000BE18(v89, &qword_100841BB0, &unk_1006DF080);
  v91 = 0;
  if (v90 == 1 || !v65)
  {
    v66 = v63;
    v67 = *(v0 + 64);
    v68 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNames();
    (*(*(v68 - 8) + 56))(v67, 1, 1, v68);
  }

  else
  {
    SecCertificateRef.localizedRelyingPartyNames.getter();
    v66 = v63;
    v91 = 1;
  }

  v69 = *(v0 + 304);
  v71 = *(v0 + 280);
  v70 = *(v0 + 288);
  v106(*(v0 + 296), v69, v71);
  v72 = SecCertificateRef.uid()();

  v73 = *(v70 + 8);
  *(v0 + 464) = v73;
  *(v0 + 472) = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v73(v69, v71);
  v104 = v44;
  if (v91)
  {
    v96 = v66;
    v97 = v65;
  }

  else
  {
    sub_10000BD94(0, 0xF000000000000000);

    v96 = 0;
    v97 = 0;
  }

  v92 = *(v0 + 352);
  v93 = *(v0 + 360);
  v76 = *(v0 + 336);
  v77 = *(v0 + 320);
  v78 = *(v0 + 328);
  v79 = *(v0 + 296);
  v80 = *(v0 + 280);
  v81 = *(v0 + 112);
  v94 = *(v0 + 120);
  v82 = *(v0 + 96);
  v83 = *(v0 + 104);
  v84 = *(v0 + 80);
  sub_1000B1FC8(*(v0 + 64), v81 + v83[12], &qword_100841B98, &unk_1006DF0D0);
  v100(v81 + v83[13], v82, v84);
  *v81 = v110;
  v81[1] = v116;
  v81[2] = v77;
  v81[3] = v78;
  v76(v81 + v83[6], v79, v80);
  *(v81 + v83[7]) = v104;
  v85 = (v81 + v83[8]);
  *v85 = v92;
  v85[1] = v93;
  *(v81 + v83[9]) = v72;
  *(v81 + v83[10]) = xmmword_1006BF650;
  v86 = (v81 + v83[11]);
  *v86 = v96;
  v86[1] = v97;
  sub_1000B1FC8(v94, v81 + v83[14], &qword_100835D88, &qword_1006DE890);
  v87 = swift_task_alloc();
  *(v0 + 480) = v87;
  *v87 = v0;
  v87[1] = sub_10035BF68;
  v88 = *(v0 + 112);

  return sub_1003520AC(v88);
}

uint64_t sub_10035B0C0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 424) = v2;

  if (v2)
  {

    v7 = sub_10035BC90;
  }

  else
  {
    *(v6 + 432) = a2;
    *(v6 + 440) = a1;
    v7 = sub_10035B1FC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10035B1FC()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 424);
  v92 = *(v0 + 432);
  v93 = *(v0 + 440);
  *(v0 + 448) = v93;
  *(v0 + 456) = v92;
  v5 = *(v0 + 48);
  if (v5 >> 60 == 15)
  {
    v84 = v4;
    v6 = 1;
  }

  else
  {
    v7 = *(v0 + 40);
    type metadata accessor for MobileDocumentReaderExternalData();
    type metadata accessor for CBORDecoder();
    swift_allocObject();
    sub_10000B8B8(v7, v5);
    CBORDecoder.init()();
    sub_10035C774(&qword_100836FD0, &type metadata accessor for MobileDocumentReaderExternalData, &protocol conformance descriptor for MobileDocumentReaderExternalData);
    sub_10035C774(&qword_100836FD8, &type metadata accessor for MobileDocumentReaderExternalData, &protocol conformance descriptor for MobileDocumentReaderExternalData);
    CBOREncodedCBOR.init(_:dataValue:decoder:)();
    v6 = v4;
    if (v4)
    {
      v8 = *(v0 + 392);
      v9 = *(v0 + 352);
      v10 = *(v0 + 360);
      (*(*(v0 + 288) + 8))(*(v0 + 312), *(v0 + 280));

      sub_10000BD94(v93, v92);
      sub_10000BD94(v9, v10);

LABEL_10:
      (*(*(v0 + 144) + 104))(*(v0 + 152), enum case for DIPError.Code.internalError(_:), *(v0 + 136));
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10035C774(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v41 = *(v0 + 8);

      return v41();
    }

    v84 = 0;
  }

  v11 = *(v0 + 392);
  v13 = *(v0 + 304);
  v12 = *(v0 + 312);
  v15 = *(v0 + 280);
  v14 = *(v0 + 288);
  v16 = *(v0 + 120);
  v17 = *(v0 + 128);
  v18 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
  (*(*(v18 - 8) + 56))(v17, v6, 1, v18);
  v19 = MobileDocumentReaderCertificateRequest.sessionIdentifier.getter();
  v91 = v20;
  v87 = *(v14 + 16);
  v87(v13, v12, v15);
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1006DAE90;
  *(v21 + 32) = v11;
  sub_10000BBC4(v17, v16, &qword_100835D88, &qword_1006DE890);
  v22 = v11;
  v90 = v21;
  if ((v21 & 0xC000000000000001) != 0)
  {
    sub_1000363B4(*(v0 + 352), *(v0 + 360));
    v26 = v92;
    v27 = v93;
    sub_1000363B4(v93, v92);
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v23 = *(v0 + 352);
    v24 = *(v0 + 360);
    v25 = *(v0 + 392);
    sub_1000363B4(v23, v24);
    v26 = v92;
    v27 = v93;
    sub_1000363B4(v93, v92);
    v28 = *(v0 + 392);
  }

  v29 = *(v0 + 80);
  v30 = *(v0 + 88);
  v31 = *(v0 + 72);
  SecCertificateRef.expirationDate.getter();
  if ((*(v30 + 48))(v31, 1, v29) == 1)
  {
    v32 = *(v0 + 360);
    v33 = v26;
    v34 = *(v0 + 352);
    v88 = *(v0 + 304);
    v89 = *(v0 + 312);
    v80 = *(v0 + 392);
    v82 = *(v0 + 280);
    v36 = *(v0 + 144);
    v35 = *(v0 + 152);
    v37 = v27;
    v38 = *(v0 + 136);
    v85 = *(v0 + 128);
    v76 = *(v0 + 288);
    v78 = *(v0 + 120);
    v39 = *(v0 + 72);
    sub_10000BD94(v37, v33);
    sub_10000BD94(v34, v32);

    sub_10000BE18(v39, &unk_100849400, &unk_1006BFBB0);
    (*(v36 + 104))(v35, enum case for DIPError.Code.documentReaderCertificateValidationFailed(_:), v38);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10035C774(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BD94(v93, v92);
    sub_10000BD94(v34, v32);

    sub_10000BE18(v78, &qword_100835D88, &qword_1006DE890);
    v40 = *(v76 + 8);
    v40(v88, v82);
    sub_10000BE18(v85, &qword_100835D88, &qword_1006DE890);
    v40(v89, v82);
    goto LABEL_10;
  }

  v79 = (*(v0 + 88) + 32);
  v81 = v19;
  v77 = *v79;
  (*v79)(*(v0 + 96), *(v0 + 72), *(v0 + 80));
  v43 = SecCertificateRef.pseudonym.getter();
  v45 = v44;
  SecCertificateRef.logotype.getter();
  v83 = v43;
  if (v84)
  {
    v46 = *(v0 + 248);
    v47 = *(v0 + 256);
    v48 = *(v0 + 232);

    (*(v47 + 56))(v48, 1, 1, v46);
    sub_10000BE18(v48, &qword_100841BB0, &unk_1006DF080);
    v49 = 0;
  }

  else
  {
    v71 = *(v0 + 232);
    v72 = (*(v0 + 400))(v71, 1, *(v0 + 248));
    sub_10000BE18(v71, &qword_100841BB0, &unk_1006DF080);
    v49 = 0;
    if (v72 != 1 && v45)
    {
      SecCertificateRef.localizedRelyingPartyNames.getter();
      v49 = 1;
      goto LABEL_16;
    }
  }

  v50 = *(v0 + 64);
  v51 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNames();
  (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
LABEL_16:
  v52 = *(v0 + 304);
  v53 = *(v0 + 280);
  v54 = *(v0 + 288);
  v87(*(v0 + 296), v52, v53);
  v55 = SecCertificateRef.uid()();

  v56 = *(v54 + 8);
  *(v0 + 464) = v56;
  *(v0 + 472) = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v56(v52, v53);
  if (v49)
  {
    v86 = v45;
  }

  else
  {
    sub_10000BD94(v93, v26);

    v83 = 0;
    v86 = 0;
    v92 = 0xF000000000000000;
    v93 = 0;
  }

  v73 = *(v0 + 352);
  v74 = *(v0 + 360);
  v57 = *(v0 + 336);
  v58 = *(v0 + 320);
  v59 = *(v0 + 328);
  v60 = *(v0 + 296);
  v61 = *(v0 + 280);
  v62 = *(v0 + 112);
  v75 = *(v0 + 120);
  v64 = *(v0 + 96);
  v63 = *(v0 + 104);
  v65 = *(v0 + 80);
  sub_1000B1FC8(*(v0 + 64), v62 + v63[12], &qword_100841B98, &unk_1006DF0D0);
  v77(v62 + v63[13], v64, v65);
  *v62 = v81;
  v62[1] = v91;
  v62[2] = v58;
  v62[3] = v59;
  v57(v62 + v63[6], v60, v61);
  *(v62 + v63[7]) = v90;
  v66 = (v62 + v63[8]);
  *v66 = v73;
  v66[1] = v74;
  *(v62 + v63[9]) = v55;
  v67 = (v62 + v63[10]);
  *v67 = v93;
  v67[1] = v92;
  v68 = (v62 + v63[11]);
  *v68 = v83;
  v68[1] = v86;
  sub_1000B1FC8(v75, v62 + v63[14], &qword_100835D88, &qword_1006DE890);
  v69 = swift_task_alloc();
  *(v0 + 480) = v69;
  *v69 = v0;
  v69[1] = sub_10035BF68;
  v70 = *(v0 + 112);

  return sub_1003520AC(v70);
}

uint64_t sub_10035BC90()
{
  v1 = v0[49];
  v12 = v0[39];
  v2 = v0[35];
  v3 = v0[36];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[31];
  v7 = v0[22];
  v8 = v0[23];
  v9 = v0[21];
  sub_10000BD94(v0[44], v0[45]);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v12, v2);
  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10035C774(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10035BF68()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  sub_10035C718(*(v2 + 112));
  if (v0)
  {
    v3 = sub_10035C244;
  }

  else
  {
    v3 = sub_10035C09C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10035C09C()
{
  v1 = v0[58];
  v2 = v0[49];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[39];
  v6 = v0[35];
  v7 = v0[16];
  sub_10000BD94(v0[56], v0[57]);
  sub_10000BD94(v4, v3);

  sub_10000BE18(v7, &qword_100835D88, &qword_1006DE890);
  v1(v5, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10035C244()
{
  v1 = v0[58];
  v2 = v0[49];
  v3 = v0[44];
  v4 = v0[45];
  v5 = v0[39];
  v6 = v0[35];
  v7 = v0[16];
  sub_10000BD94(v0[56], v0[57]);
  sub_10000BD94(v3, v4);

  sub_10000BE18(v7, &qword_100835D88, &qword_1006DE890);
  v1(v5, v6);
  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10035C774(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_10035C4FC()
{

  return swift_deallocClassInstance();
}

void *sub_10035C568()
{
  v1 = v0;
  type metadata accessor for SESKeystore();
  swift_allocObject();
  v2 = SESKeystore.init()();
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v3 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v3 + 54);
  sub_1000318FC(&v3[4], v8);
  os_unfair_lock_unlock(v3 + 54);
  v4 = v10;

  sub_100031918(v8);
  v12 = type metadata accessor for MobileDocumentReaderDataContainer();
  v13 = sub_10035C774(&qword_100841BD0, type metadata accessor for MobileDocumentReaderDataContainer, &unk_1006E86B0);
  *&v11 = v4;
  type metadata accessor for MobileDocumentReaderAuthenticationStorage();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  sub_10001F358(&v11, v5 + 24);
  v1[2] = v5;
  type metadata accessor for MobileDocumentReaderLogoFetcher();
  v1[3] = swift_allocObject();
  type metadata accessor for UserDefaultsConfiguration();
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  v6 = static UserDefaultsConfiguration.standard.getter();
  type metadata accessor for MobileDocumentReaderIssuerRootStorage();
  swift_allocObject();
  v1[4] = sub_100348254(v8, v6);
  return v1;
}

uint64_t sub_10035C718(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10035C774(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10035C7BC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10035C8E4(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10035C990(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_10000B8B8(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_10000B90C(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_10035CA40(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10035CAE8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v96 = a4;
  v71 = a3;
  v91 = a2;
  v100 = a1;
  v78 = type metadata accessor for COSE_Sign1();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v79 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for DIPError.Code();
  v103 = *(v101 - 8);
  __chkstk_darwin(v101);
  v102 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for CoreIDVFeatureFlag();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for COSE_Mac0();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for ISO18013Response.DeviceAuth();
  v80 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo();
  v89 = *(v9 - 8);
  v90 = v9;
  __chkstk_darwin(v9);
  v88 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for COSEKey();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v92 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for ISO18013SessionTranscript();
  v12 = *(v94 - 8);
  __chkstk_darwin(v94);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007224(&qword_100841BD8, &qword_1006DEB00);
  __chkstk_darwin(v15 - 8);
  v17 = &v71 - v16;
  v18 = type metadata accessor for ISO18013Response.DeviceSigned();
  v104 = *(v18 - 8);
  v105 = v18;
  __chkstk_darwin(v18);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for Logger();
  v21 = *(v106 - 8);
  v22 = __chkstk_darwin(v106);
  v93 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v73 = &v71 - v25;
  v26 = __chkstk_darwin(v24);
  v72 = &v71 - v27;
  __chkstk_darwin(v26);
  v29 = &v71 - v28;
  defaultLogger()();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "ISO18013DeviceAuthenticator validating document", v32, 2u);
  }

  v97 = *(v21 + 8);
  v98 = v21 + 8;
  v97(v29, v106);
  ISO18013Response.Document.deviceSigned.getter();
  v33 = v104;
  v34 = v105;
  if ((*(v104 + 48))(v17, 1, v105) == 1)
  {
    sub_10000BE18(v17, &qword_100841BD8, &qword_1006DEB00);
    v35 = v102;
    v36 = v101;
    (*(v103 + 104))(v102, enum case for DIPError.Code.documentReaderMalformedDeviceAuthStructure(_:), v101);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_7;
  }

  v37 = v20;
  (*(v33 + 32))(v20, v17, v34);
  sub_100007224(&qword_100841BE0, &qword_1006DEB08);
  CBOREncodedCBOR.value.getter();
  v38 = ISO18013Response.Document.docType.getter();
  v39 = v95;
  v41 = sub_10035DDC0(v14, v38, v40, v20);
  if (v39)
  {

    (*(v12 + 8))(v14, v94);
    (*(v33 + 8))(v20, v34);
    v36 = v101;
    v35 = v102;
    goto LABEL_7;
  }

  v95 = v41;
  v100 = v42;
  (*(v12 + 8))(v14, v94);

  v48 = v88;
  ISO18013MobileSecurityObject.deviceKeyInfo.getter();
  v49 = v92;
  sub_10035E320(v48, v92);
  (*(v89 + 8))(v48, v90);
  v50 = v86;
  ISO18013Response.DeviceSigned.deviceAuth.getter();
  v51 = v80;
  v52 = v87;
  v53 = (*(v80 + 88))(v50, v87);
  v36 = v101;
  v35 = v102;
  if (v53 == enum case for ISO18013Response.DeviceAuth.deviceMAC(_:))
  {
    (*(v51 + 96))(v50, v52);
    (*(v82 + 32))(v81, v50, v83);
    v54 = v72;
    defaultLogger()();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "ISO18013DeviceAuthenticator device signed structure contains a device mac.", v57, 2u);
    }

    v97(v54, v106);
    v58 = *(v99 + 4);
    v94 = *(v99 + 5);
    sub_10000BA08(v99 + 1, v58);
    v59 = v75;
    v60 = v74;
    v61 = v76;
    (*(v75 + 104))(v74, enum case for CoreIDVFeatureFlag.mobileDocumentReaderMACAuthentication(_:), v76);
    LOBYTE(v58) = dispatch thunk of FeatureFlagProviding.isEnabled(_:)();
    (*(v59 + 8))(v60, v61);
    if (v58)
    {
      type metadata accessor for ISO18013DeviceAuthenticator(0);
      v62 = v100;
      v63 = v81;
      v64 = v95;
      COSEMACValidator.validateMAC(_:deviceKey:deviceAuthenticationBytes:ephemeralReaderKey:sessionTranscript:)();
      sub_10000B90C(v64, v62);
      (*(v82 + 8))(v63, v83);
LABEL_21:
      (*(v84 + 8))(v92, v85);
      return (*(v104 + 8))(v37, v105);
    }

    (*(v103 + 104))(v35, enum case for DIPError.Code.documentReaderDeviceMacUnsupported(_:), v36);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v95, v100);
    (*(v82 + 8))(v81, v83);
    (*(v84 + 8))(v92, v85);
    (*(v104 + 8))(v37, v105);
  }

  else
  {
    if (v53 == enum case for ISO18013Response.DeviceAuth.deviceSignature(_:))
    {
      (*(v51 + 96))(v50, v52);
      (*(v77 + 32))(v79, v50, v78);
      defaultLogger()();
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v65, v66, "ISO18013DeviceAuthenticator device signed structure contains a device signature. Validating signature now", v67, 2u);
      }

      v97(v73, v106);
      v68 = v49;
      v69 = v95;
      v70 = v100;
      sub_10035E8F4(v79, v68, v95, v100);
      sub_10000B90C(v69, v70);
      (*(v77 + 8))(v79, v78);
      goto LABEL_21;
    }

    (*(v103 + 104))(v102, enum case for DIPError.Code.badLogic(_:), v101);
    v99 = v37;
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v95, v100);
    (*(v84 + 8))(v92, v85);
    (*(v104 + 8))(v99, v105);
    (*(v51 + 8))(v86, v87);
  }

LABEL_7:
  v43 = [objc_opt_self() standardUserDefaults];
  v44._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableMdocAuthentication.getter();
  v45 = NSUserDefaults.internalBool(forKey:)(v44);

  if (v45)
  {
    v46 = v93;
    defaultLogger()();
    DIPLogError(_:message:log:)();

    return (v97)(v46, v106);
  }

  else
  {
    (*(v103 + 104))(v35, enum case for DIPError.Code.internalError(_:), v36);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

unint64_t sub_10035DDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v33 = a4;
  v5 = type metadata accessor for DIPError.Code();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_10083F170, &qword_1006DC630);
  v27 = *(v7 - 8);
  v28 = v7;
  __chkstk_darwin(v7);
  v29 = &v26 - v8;
  v9 = sub_100007224(&qword_100841BF8, &unk_1006DEB20);
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for ISO18013SessionTranscript();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ISO18013DeviceAuthentication();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);

  ISO18013Response.DeviceSigned.namespaces.getter();
  ISO18013DeviceAuthentication.init(sessionTranscript:docType:deviceNamespaceBytes:)();
  sub_1003602C0(&qword_100841C00, &type metadata accessor for ISO18013DeviceAuthentication, &protocol conformance descriptor for ISO18013DeviceAuthentication);
  v18 = v37;
  v19 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  if (v18)
  {
    (*(v15 + 8))(v17, v14);
    (*(v30 + 104))(v32, enum case for DIPError.Code.cborEncodingFailed(_:), v31);
    swift_errorRetain();
    v23 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v21 = v19;
    v22 = v20;
    v35 = v19;
    v36 = v20;
    type metadata accessor for CBOREncoder();
    swift_allocObject();
    sub_10000B8B8(v21, v22);
    CBOREncoder.init()();
    sub_10000B960();
    sub_10000B9B4();
    CBOREncodedCBOR.init(value:tag:encoder:)();
    v25 = v29;
    v23 = CBOREncodedCBOR.dataValue.getter();
    sub_10000B90C(v21, v22);
    (*(v27 + 8))(v25, v28);
    (*(v15 + 8))(v17, v14);
  }

  return v23;
}

uint64_t sub_10035E320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v41 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Logger();
  v6 = *(v47 - 8);
  __chkstk_darwin(v47);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_100841BF0, &qword_1006DEB18);
  __chkstk_darwin(v9 - 8);
  v49 = &v38 - v10;
  v11 = sub_100007224(&qword_100841BF8, &unk_1006DEB20);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - v13;
  ISO18013Response.DeviceSigned.namespaces.getter();
  CBOREncodedCBOR.value.getter();
  result = (*(v12 + 8))(v14, v11);
  v17 = 0;
  v19 = v51 + 8;
  v18 = v51[8];
  v50 = v51;
  v20 = 1 << *(v51 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v44 = (v6 + 8);
  *&v16 = 136315138;
  v42 = v16;
  v45 = v23;
  v46 = v51 + 8;
  while (v22)
  {
    v24 = v17;
    v25 = v49;
LABEL_12:
    v26 = __clz(__rbit64(v22)) | (v24 << 6);
    v27 = *(v50 + 48) + 16 * v26;
    v29 = *v27;
    v28 = *(v27 + 8);
    v30 = *(*(v50 + 56) + 8 * v26);

    ISO18013MobileSecurityObject.DeviceKeyInfo.keyAuthorizations.getter();
    sub_10035F088(v29, v28, v30, v25);
    if (v3)
    {
      sub_10000BE18(v25, &qword_100841BF0, &qword_1006DEB18);

      (*(v38 + 104))(v40, enum case for DIPError.Code.internalError(_:), v39);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    v22 &= v22 - 1;
    sub_10000BE18(v25, &qword_100841BF0, &qword_1006DEB18);

    v31 = v8;
    defaultLogger()();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v43 = 0;
      v35 = v34;
      v36 = swift_slowAlloc();
      v51 = v36;
      *v35 = v42;
      v37 = sub_100141FE4(v29, v28, &v51);

      *(v35 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v32, v33, "ISO18013DeviceAuthenticator successfully authorized namespace %s", v35, 0xCu);
      sub_10000BB78(v36);

      v3 = v43;
    }

    else
    {
    }

    result = (*v44)(v31, v47);
    v17 = v24;
    v8 = v31;
    v23 = v45;
    v19 = v46;
  }

  v25 = v49;
  while (1)
  {
    v24 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return ISO18013MobileSecurityObject.DeviceKeyInfo.deviceKey.getter();
    }

    v22 = v19[v24];
    ++v17;
    if (v22)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10035E8F4(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v43 = a3;
  v44 = a4;
  v41 = a1;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v40 = *(v8 - 8);
  __chkstk_darwin(v8);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&qword_100841BE8, &qword_1006DEB10);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for PublicKeyAlgorithm();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10035FD30(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000BE18(v12, &qword_100841BE8, &qword_1006DEB10);
    v44 = "led by feature flag";
    v17 = *(v5 + 104);
    v17(v7, enum case for DIPError.Code.documentReaderUnknownDeviceAuthAlgorithm(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v45 = 0x8000000100710250;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v17(v7, enum case for DIPError.Code.internalError(_:), v4);
LABEL_5:
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  (*(v14 + 32))(v16, v12, v13);
  v18 = COSEKey.publicKeyData.getter();
  if (v19 >> 60 == 15)
  {
    v20 = *(v5 + 104);
    v43 = "ing the device signature";
    v44 = v20;
    (v20)(v7, enum case for DIPError.Code.documentReaderInvalidDeviceAuthPublicKey(_:), v4);
    v42 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v45 = 0x8000000100710250;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v14 + 8))(v16, v13);
    (v44)(v7, enum case for DIPError.Code.internalError(_:), v4);
    goto LABEL_5;
  }

  v34 = v8;
  v35 = v7;
  v36 = v4;
  v22 = v18;
  v23 = v19;
  v38 = *(type metadata accessor for ISO18013DeviceAuthenticator(0) + 28);
  v24 = COSE_Sign1.signature.getter();
  v26 = v25;
  COSE_Sign1.algorithmIdentifier.getter();
  v37 = v24;
  v38 = v26;
  v41 = v22;
  v42 = v23;
  v27 = v45;
  COSESignatureValidator.validateSignature(signature:publicKeyData:publicKeyAlgorithm:algorithmIdentifier:payload:)();
  if (v27)
  {
    (*(v14 + 8))(v16, v13);
    sub_10000B90C(v37, v38);
    sub_10000BD94(v41, v42);
    v28 = *(v5 + 104);
    v45 = 0x8000000100710250;
    v28(v35, enum case for DIPError.Code.internalError(_:), v36);
    goto LABEL_5;
  }

  sub_10000B90C(v37, v38);
  v29 = v39;
  defaultLogger()();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "ISO18013DeviceAuthenticator successfully validated device signature", v32, 2u);
  }

  sub_10000BD94(v41, v42);

  (*(v40 + 8))(v29, v34);
  return (*(v14 + 8))(v16, v13);
}

void sub_10035F088(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a3;
  v92 = a2;
  v86 = a1;
  v6 = type metadata accessor for DIPError.Code();
  v84 = *(v6 - 8);
  __chkstk_darwin(v6);
  v85 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v87 = v8;
  v88 = v9;
  v10 = __chkstk_darwin(v8);
  v83 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v80 = v78 - v13;
  v14 = __chkstk_darwin(v12);
  v79 = v78 - v15;
  __chkstk_darwin(v14);
  v81 = v78 - v16;
  v17 = sub_100007224(&qword_100841BF0, &qword_1006DEB18);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v78 - v21;
  sub_1003601DC(a4, v78 - v21);
  v23 = type metadata accessor for ISO18013MobileSecurityObject.KeyAuthorizations();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  v26 = v25(v22, 1, v23);
  v89 = v6;
  if (v26 == 1)
  {
    sub_10000BE18(v22, &qword_100841BF0, &qword_1006DEB18);
  }

  else
  {
    v27 = ISO18013MobileSecurityObject.KeyAuthorizations.namespaces.getter();
    v28 = (*(v24 + 8))(v22, v23);
    if (v27)
    {
      v78[1] = v78;
      v29 = v92;
      v90 = v86;
      v91 = v92;
      __chkstk_darwin(v28);
      v77 = &v90;
      v30 = sub_10035C8E4(sub_100360690, &v75, v27);
      v78[2] = v4;

      if (v30)
      {
        v31 = v81;
        defaultLogger()();

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = v29;
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v90 = v36;
          *v35 = 136315138;
          *(v35 + 4) = sub_100141FE4(v86, v34, &v90);
          _os_log_impl(&_mh_execute_header, v32, v33, "ISO18013DeviceAuthenticator authorizedNamespaces contains current namespace %s.", v35, 0xCu);
          sub_10000BB78(v36);
        }

        (*(v88 + 8))(v31, v87);
        return;
      }

      v6 = v89;
    }

    else
    {
      v6 = v89;
    }
  }

  sub_1003601DC(a4, v20);
  if (v25(v20, 1, v23) == 1)
  {
    sub_10000BE18(v20, &qword_100841BF0, &qword_1006DEB18);
    v37 = v85;
    v38 = v92;
LABEL_26:
    v54 = v83;
    defaultLogger()();

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = v6;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v90 = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_100141FE4(v86, v38, &v90);
      _os_log_impl(&_mh_execute_header, v55, v56, "ISO18013DeviceAuthenticator namespace %s is in device signed structure, but not the key authorizations structure.", v58, 0xCu);
      sub_10000BB78(v59);

      v6 = v57;
    }

    (*(v88 + 8))(v54, v87);
    v88 = *(v84 + 104);
    (v88)(v37, enum case for DIPError.Code.documentReaderUnauthorizedDeviceKey(_:), v6);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v60 = v37;
    v76 = 0x80000001007103E0;
    v77 = 161;
    v75 = 0xD00000000000003FLL;
    v92 = 0x8000000100710040;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_29:
    (v88)(v60, enum case for DIPError.Code.internalError(_:), v89);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v76 = 0x80000001007103E0;
    v77 = 173;
    v75 = 0xD00000000000003FLL;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v39 = ISO18013MobileSecurityObject.KeyAuthorizations.dataElements.getter();
  (*(v24 + 8))(v20, v23);
  v37 = v85;
  v38 = v92;
  if (!v39)
  {
    goto LABEL_26;
  }

  if (!*(v39 + 16) || (v40 = sub_10003ADCC(v86, v92), (v41 & 1) == 0))
  {

    goto LABEL_26;
  }

  v42 = *(*(v39 + 56) + 8 * v40);

  v43 = v82 + 64;
  v44 = 1 << *(v82 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v82 + 64);
  v47 = (v44 + 63) >> 6;

  v49 = 0;
  if (v46)
  {
    while (1)
    {
      v50 = v49;
LABEL_22:
      v51 = (*(v82 + 48) + ((v50 << 10) | (16 * __clz(__rbit64(v46)))));
      v53 = *v51;
      v52 = v51[1];
      v90 = *v51;
      v91 = v52;
      __chkstk_darwin(v48);
      v77 = &v90;

      if ((sub_10035C8E4(sub_10036024C, &v75, v42) & 1) == 0)
      {
        break;
      }

      v46 &= v46 - 1;

      v49 = v50;
      if (!v46)
      {
        goto LABEL_19;
      }
    }

    v67 = v79;
    defaultLogger()();
    v68 = v92;

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.debug.getter();

    v71 = os_log_type_enabled(v69, v70);
    v72 = v85;
    if (v71)
    {
      v73 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v73 = 136315394;
      *(v73 + 4) = sub_100141FE4(v86, v68, &v90);
      *(v73 + 12) = 2080;
      v74 = sub_100141FE4(v53, v52, &v90);

      *(v73 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v69, v70, "ISO18013DeviceAuthenticator %s.%s is in device signed structure, but not the key authorizations structure.", v73, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v88 + 8))(v67, v87);
    v60 = v72;
    v88 = *(v84 + 104);
    (v88)(v72, enum case for DIPError.Code.documentReaderUnauthorizedDeviceKey(_:), v89);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v76 = 0x80000001007103E0;
    v77 = 167;
    v75 = 0xD00000000000003FLL;
    v92 = 0x8000000100710040;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_29;
  }

  while (1)
  {
LABEL_19:
    v50 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
      return;
    }

    if (v50 >= v47)
    {
      break;
    }

    v46 = *(v43 + 8 * v50);
    ++v49;
    if (v46)
    {
      goto LABEL_22;
    }
  }

  v61 = v80;
  defaultLogger()();
  v62 = v92;

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v90 = v66;
    *v65 = 136315138;
    *(v65 + 4) = sub_100141FE4(v86, v62, &v90);
    _os_log_impl(&_mh_execute_header, v63, v64, "ISO18013DeviceAuthenticator successfully authorized elements in namespace %s.", v65, 0xCu);
    sub_10000BB78(v66);
  }

  (*(v88 + 8))(v61, v87);
}

uint64_t sub_10035FD30@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v33 - v7;
  COSEKey.ec2.getter();
  v9 = v37;
  if (v37 >> 60 != 15)
  {
    v17 = v38;
    v16 = v39;
    v19 = v35;
    v18 = v36;
    sub_10000B90C(v40, v41);
    sub_10000B90C(v17, v16);
    sub_10000B90C(v18, v9);
    switch(v19)
    {
      case 3:
        v20 = &enum case for PublicKeyAlgorithm.EC_P521(_:);
        break;
      case 2:
        v20 = &enum case for PublicKeyAlgorithm.EC_P384(_:);
        break;
      case 1:
        v20 = &enum case for PublicKeyAlgorithm.EC_P256(_:);
        break;
      default:
        goto LABEL_17;
    }

LABEL_24:
    v31 = *v20;
    v32 = type metadata accessor for PublicKeyAlgorithm();
    v34 = *(v32 - 8);
    (*(v34 + 104))(a1, v31, v32);
    v22 = *(v34 + 56);
    v24 = a1;
    v25 = 0;
    v23 = v32;
    goto LABEL_25;
  }

  COSEKey.okp.getter();
  v10 = v44;
  if (v44 >> 60 != 15)
  {
    v12 = v42;
    v11 = v43;
    sub_10000B90C(v45, v46);
    sub_10000B90C(v11, v10);
    if (v12 <= 5)
    {
      if (v12 == 4)
      {
        defaultLogger()();
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v26, v27, "X25519 is not a signing algorithm", v28, 2u);
        }

        (*(v3 + 8))(v8, v2);
        goto LABEL_22;
      }

      if (v12 == 5)
      {
        defaultLogger()();
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "X448 is not a signing algorithm", v15, 2u);
        }

        (*(v3 + 8))(v6, v2);
LABEL_22:
        v29 = type metadata accessor for PublicKeyAlgorithm();
        return (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
      }

      goto LABEL_17;
    }

    if (v12 == 7)
    {
      v20 = &enum case for PublicKeyAlgorithm.ED_448(_:);
      goto LABEL_24;
    }

    if (v12 == 6)
    {
      v20 = &enum case for PublicKeyAlgorithm.ED_25519(_:);
      goto LABEL_24;
    }
  }

LABEL_17:
  v21 = type metadata accessor for PublicKeyAlgorithm();
  v22 = *(*(v21 - 8) + 56);
  v23 = v21;
  v24 = a1;
  v25 = 1;
LABEL_25:

  return v22(v24, v25, 1, v23);
}

uint64_t sub_100360138(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t type metadata accessor for ISO18013DeviceAuthenticator(uint64_t a1)
{
  result = qword_100841C60;
  if (!qword_100841C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003601DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100841BF0, &qword_1006DEB18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100360268(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1003602C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10036031C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for COSEMACValidator();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for COSESignatureValidator();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100360454(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for COSEMACValidator();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for COSESignatureValidator();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100360578(uint64_t a1)
{
  result = type metadata accessor for CBOREncoder();
  if (v2 <= 0x3F)
  {
    result = sub_10036062C();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for COSEMACValidator();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for COSESignatureValidator();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_10036062C()
{
  result = qword_100841C70;
  if (!qword_100841C70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100841C70);
  }

  return result;
}

void sub_1003606AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_100172D4C(0, v1, 0);
    v3 = v2 + 56;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v29 = v2;
    v26 = v2 + 64;
    v27 = v1;
    v28 = v2 + 56;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      v30 = v5;
      v31 = *(v2 + 36);
      v9 = (*(v2 + 48) + 24 * v4);
      v10 = *v9;
      v11 = v9[1];
      sub_10000B8B8(*v9, v11);

      sub_10000B8B8(v10, v11);

      isa = Data._bridgeToObjectiveC()().super.isa;
      v13 = SecCertificateCreateWithData(kCFAllocatorDefault, isa);

      if (!v13)
      {
        goto LABEL_27;
      }

      v32 = SecCertificateRef.base64EncodedString.getter();
      v15 = v14;

      sub_10000B90C(v10, v11);

      sub_10000B90C(v10, v11);

      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        sub_100172D4C((v16 > 1), v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      v18 = &_swiftEmptyArrayStorage[2 * v17];
      v18[4] = v32;
      v18[5] = v15;
      v3 = v28;
      v2 = v29;
      v6 = 1 << *(v29 + 32);
      if (v4 >= v6)
      {
        goto LABEL_24;
      }

      v19 = *(v28 + 8 * v8);
      if ((v19 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      if (v31 != *(v29 + 36))
      {
        goto LABEL_26;
      }

      v20 = v19 & (-2 << (v4 & 0x3F));
      if (v20)
      {
        v6 = __clz(__rbit64(v20)) | v4 & 0x7FFFFFFFFFFFFFC0;
        v7 = v30;
      }

      else
      {
        v21 = v8 << 6;
        v22 = v8 + 1;
        v23 = (v26 + 8 * v8);
        while (v22 < (v6 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_100316220(v4, v31, 0);
            v6 = __clz(__rbit64(v24)) + v21;
            goto LABEL_20;
          }
        }

        sub_100316220(v4, v31, 0);
LABEL_20:
        v7 = v30;
      }

      v5 = v7 + 1;
      v4 = v6;
      if (v5 == v27)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

void sub_100360978(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = v1 + 56;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v6 = *(v1 + 36);
    v25 = v1 + 56;
    v22 = v1 + 64;
    v23 = v2;
    v24 = v6;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v26 = v5;
      v9 = (*(v1 + 48) + 24 * v4);
      v10 = *v9;
      v11 = v9[1];
      sub_10000B8B8(*v9, v11);

      sub_10000B8B8(v10, v11);

      v12 = v1;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v14 = SecCertificateCreateWithData(kCFAllocatorDefault, isa);

      if (!v14)
      {
        goto LABEL_26;
      }

      sub_10000B90C(v10, v11);

      sub_10000B90C(v10, v11);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v7 = 1 << *(v12 + 32);
      if (v4 >= v7)
      {
        goto LABEL_23;
      }

      v1 = v12;
      v3 = v25;
      v15 = *(v25 + 8 * v8);
      if ((v15 & (1 << v4)) == 0)
      {
        goto LABEL_24;
      }

      v6 = v24;
      if (v24 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v16 = v15 & (-2 << (v4 & 0x3F));
      if (v16)
      {
        v7 = __clz(__rbit64(v16)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v8 << 6;
        v18 = v8 + 1;
        v19 = (v22 + 8 * v8);
        while (v18 < (v7 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_100316220(v4, v24, 0);
            v7 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        sub_100316220(v4, v24, 0);
      }

LABEL_4:
      v5 = v26 + 1;
      v4 = v7;
      if (v26 + 1 == v23)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}