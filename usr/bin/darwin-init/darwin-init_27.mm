uint64_t FilePath.copy(to:)(uint64_t a1)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000270B4(v10, qword_1004B00F8);
  v11 = *(v5 + 16);
  v11(v9, v1, v4);
  v11(v39, a1, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35 = v14;
    v37 = swift_slowAlloc();
    v40 = v37;
    *v14 = 136315394;
    sub_1001F4208(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v36 = v12;
    v41 = v13;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v38 = v2;
    v18 = *(v5 + 8);
    v18(v9, v4);
    v19 = sub_1000026C0(v15, v17, &v40);

    v20 = v35;
    *(v35 + 1) = v19;
    *(v20 + 6) = 2080;
    v21 = v39;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v18(v21, v4);
    v25 = sub_1000026C0(v22, v24, &v40);

    *(v20 + 14) = v25;
    v26 = v36;
    _os_log_impl(&_mh_execute_header, v36, v41, "Copying file from %s to %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v27 = *(v5 + 8);
    v27(v39, v4);
    v27(v9, v4);
  }

  while (1)
  {
    FilePath.description.getter();
    FilePath.description.getter();
    v28 = String.utf8CString.getter();

    v29 = String.utf8CString.getter();

    v30 = copyfile((v28 + 32), (v29 + 32), 0, 0x2800Fu);

    if (v30 != -1)
    {
      break;
    }

    v32 = errno.getter();
    if (v32 != 4)
    {
      v42 = v32;
      v33 = v32;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v34 = v33;
      return result;
    }
  }

  return result;
}

uint64_t static FilePath.createTemporaryDirectory(permissions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static FilePath.newTemporaryPath()(v7);
  FilePath.createDirectory(permissions:intermediateDirectories:)(a1, 1);
  (*(v5 + 32))(a2, v7, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t FilePath.createFile(permissions:)(uint64_t a1)
{
  v3 = v1;
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000270B4(v8, qword_1004B00F8);
  (*(v5 + 16))(v7, v1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26[2] = v2;
    v12 = v11;
    v26[0] = swift_slowAlloc();
    v27 = v26[0];
    *v12 = 136315394;
    sub_1001F4208(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v26[1] = v3;
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_1000026C0(v13, v15, &v27);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = FilePermissions.description.getter();
    v19 = sub_1000026C0(v17, v18, &v27);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "Creating file at %s with permissions %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  FilePath.description.getter();
  String.utf8CString.getter();

  v20 = static FileDescriptor._open(_:_:options:permissions:retryOnInterrupt:)();
  v21 = v20;
  if ((v20 & 0x100000000) != 0)
  {
    LODWORD(v27) = v20;
    sub_100187D3C();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v25 = v21;
  }

  else
  {

    result = FileDescriptor._close()();
    if ((result & 0x100000000) != 0)
    {
      LODWORD(v27) = result;
      v23 = result;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v24 = v23;
    }
  }

  return result;
}

uint64_t sub_1001F28E0(const char *a1, uint64_t (*a2)(uint64_t), ...)
{
  v5 = type metadata accessor for FilePath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000270B4(v9, qword_1004B00F8);
  (*(v6 + 16))(v8, v2, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = v12;
    v28 = swift_slowAlloc();
    v29 = v28;
    *v12 = 136315138;
    sub_1001F4208(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = a1;
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    v16 = sub_1000026C0(v13, v15, &v29);

    v17 = v26;
    v18 = v27;
    *(v27 + 1) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, v17, v18, 0xCu);
    sub_100003C3C(v28);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  while (1)
  {
    FilePath.description.getter();
    v19 = String.utf8CString.getter();

    v20 = a2(v19 + 32);

    if (v20 != -1)
    {
      break;
    }

    v22 = errno.getter();
    if (v22 != 4)
    {
      v30 = v22;
      v23 = v22;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v24 = v23;
      return result;
    }
  }

  return result;
}

uint64_t FilePath.move(to:)(uint64_t a1)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v37 - v8;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000270B4(v10, qword_1004B00F8);
  v11 = *(v5 + 16);
  v11(v9, v1, v4);
  v11(v41, a1, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v37 = v14;
    v39 = swift_slowAlloc();
    v42 = v39;
    *v14 = 136315394;
    sub_1001F4208(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v38 = v12;
    v43 = v13;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v40 = v2;
    v18 = *(v5 + 8);
    v18(v9, v4);
    v19 = sub_1000026C0(v15, v17, &v42);

    v20 = v37;
    *(v37 + 1) = v19;
    *(v20 + 6) = 2080;
    v21 = v41;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v18(v21, v4);
    v25 = sub_1000026C0(v22, v24, &v42);

    *(v20 + 14) = v25;
    v26 = v38;
    _os_log_impl(&_mh_execute_header, v38, v43, "Moving file from %s to %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v27 = *(v5 + 8);
    v27(v41, v4);
    v27(v9, v4);
  }

  while (1)
  {
    FilePath.description.getter();
    FilePath.description.getter();
    v28 = String.utf8CString.getter();

    v29 = String.utf8CString.getter();

    rename((v28 + 32), (v29 + 32), v30);
    v32 = v31;

    if (v32 != -1)
    {
      break;
    }

    v34 = errno.getter();
    if (v34 != 4)
    {
      v44 = v34;
      v35 = v34;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v36 = v35;
      return result;
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.removeAllFilesInDirectory()()
{
  v0 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v0 - 8);
  v2 = &v55 - v1;
  v60 = type metadata accessor for URL.DirectoryHint();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v68 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v67 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = &v55 - v7;
  v8 = type metadata accessor for FilePath();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v66 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v55 - v12;
  if (qword_1004A9F20 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v14 = type metadata accessor for Logger();
    v15 = sub_1000270B4(v14, qword_1004B00F8);
    v62 = *(v9 + 16);
    v62(v13, v70, v8);
    v63 = v15;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    v18 = os_log_type_enabled(v16, v17);
    v69 = v4;
    v61 = v2;
    v64 = v9;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v71 = v56;
      *v19 = 136315138;
      sub_1001F4208(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      v23 = *(v9 + 8);
      v23(v13, v8);
      v24 = sub_1000026C0(v20, v22, &v71);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "Removing all files in directory at %s", v19, 0xCu);
      sub_100003C3C(v56);

      v4 = v69;
    }

    else
    {

      v23 = *(v9 + 8);
      v23(v13, v8);
    }

    v25 = FilePath.directoryExists()();
    v13 = v26;
    v27 = v66;
    if (v26)
    {
      break;
    }

    if (!v25)
    {
      goto LABEL_15;
    }

    v66 = objc_opt_self();
    v28 = [v66 defaultManager];
    FilePath.string.getter();
    (*(v58 + 104))(v59, enum case for URL.DirectoryHint.isDirectory(_:), v60);
    v29 = v68;
    (*(v68 + 56))(v61, 1, 1, v4);
    v30 = v57;
    URL.init(filePath:directoryHint:relativeTo:)();
    URL._bridgeToObjectiveC()(v31);
    v33 = v32;
    v34 = *(v29 + 8);
    v2 = (v29 + 8);
    v70 = v2;
    v65 = v34;
    v34(v30, v4);
    v71 = 0;
    v35 = [v28 contentsOfDirectoryAtURL:v33 includingPropertiesForKeys:0 options:1 error:&v71];

    v36 = v71;
    if (!v35)
    {
      v53 = v71;
      _convertNSErrorToError(_:)();

      goto LABEL_19;
    }

    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v4 = *(v9 + 16);
    if (!v4)
    {
LABEL_14:

      return;
    }

    v8 = 0;
    while (v8 < *(v9 + 16))
    {
      v38 = v67;
      v39 = v69;
      (*(v68 + 16))(v67, v9 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v8, v69);
      v40 = [v66 defaultManager];
      URL._bridgeToObjectiveC()(v41);
      v2 = v42;
      v65(v38, v39);
      v71 = 0;
      LODWORD(v39) = [v40 removeItemAtURL:v2 error:&v71];

      if (!v39)
      {
        v54 = v71;

        _convertNSErrorToError(_:)();

        goto LABEL_19;
      }

      ++v8;
      v43 = v71;
      if (v4 == v8)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

LABEL_15:
  v69 = v23;
  v62(v27, v70, v8);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v71 = v47;
    *v46 = 136315138;
    sub_1001F4208(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    v69(v27, v8);
    v51 = sub_1000026C0(v48, v50, &v71);

    *(v46 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v44, v45, "%s is not a directory!", v46, 0xCu);
    sub_100003C3C(v47);
  }

  else
  {

    v69(v27, v8);
  }

  sub_100187D3C();
  swift_allocError();
  *v52 = 20;
LABEL_19:
  swift_willThrow();
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.isEmptyDirectory()()
{
  v1 = type metadata accessor for NSFastEnumerationIterator();
  v48 = *(v1 - 8);
  v49 = v1;
  __chkstk_darwin(v1);
  v55 = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  v4 = __chkstk_darwin(v3 - 8);
  v47 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v46 - v6;
  v8 = type metadata accessor for URL.DirectoryHint();
  v50 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v51 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FilePath();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = FilePath.directoryExists()();
  if (v19)
  {

LABEL_9:
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000270B4(v30, qword_1004B00F8);
    (*(v15 + 16))(v17, v0, v14);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v53[0] = v34;
      *v33 = 136315138;
      sub_1001F4208(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v15 + 8))(v17, v14);
      v38 = sub_1000026C0(v35, v37, v53);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s is not a directory!", v33, 0xCu);
      sub_100003C3C(v34);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    v39 = 20;
LABEL_15:
    sub_100187D3C();
    swift_allocError();
    *v40 = v39;
    swift_willThrow();
    return v29 & 1;
  }

  v46[3] = 0;
  v52 = v13;
  if (!v18)
  {
    goto LABEL_9;
  }

  v20 = [objc_opt_self() defaultManager];
  v21 = FilePath.string.getter();
  v46[1] = v22;
  v46[2] = v21;
  (*(v50 + 104))(v10, enum case for URL.DirectoryHint.isDirectory(_:), v8);
  v23 = v51;
  v24 = *(v51 + 56);
  v24(v7, 1, 1, v11);
  v25 = v52;
  URL.init(filePath:directoryHint:relativeTo:)();
  v26 = v20;
  v27 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  (*(v23 + 8))(v25, v11);
  if (!v27)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000270B4(v42, qword_1004B00F8);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Failed to create directory enumerator", v45, 2u);
    }

    v39 = 104;
    goto LABEL_15;
  }

  NSEnumerator.makeIterator()();
  NSFastEnumerationIterator.next()();
  v28 = v47;
  if (v54)
  {
    while ((swift_dynamicCast() & 1) == 0)
    {
      v24(v28, 1, 1, v11);
      sub_100013F2C(v28, &qword_1004A6D30, &unk_100376820);
      NSFastEnumerationIterator.next()();
      if (!v54)
      {
        goto LABEL_8;
      }
    }

    (*(v48 + 8))(v55, v49);

    v24(v28, 0, 1, v11);
    sub_100013F2C(v28, &qword_1004A6D30, &unk_100376820);
    v29 = 0;
  }

  else
  {
LABEL_8:
    (*(v48 + 8))(v55, v49);

    v29 = 1;
  }

  return v29 & 1;
}

void *sub_1001F3FDC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000039E8(&qword_1004AC8B0, &qword_100408450);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1001F40B4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1001F4208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001F4250(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double ApplyError.location.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

DarwinInit::ApplyError __swiftcall ApplyError.init(location:code:message:)(DarwinInit::JSONPointer location, Swift::Int code, Swift::String message)
{
  v3->_countAndFlagsBits = *location.components._rawValue;
  v3->_object = code;
  v3[1] = message;
  result.message = message;
  result.code = code;
  result.location = location;
  return result;
}

uint64_t ApplyError.init(from:at:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = a1[3];
  v7 = a1[4];
  sub_10000E2A8(a1, v6);
  a3[1] = (*(v7 + 8))(v6, v7);
  v8 = a1[3];
  v9 = a1[4];
  sub_10000E2A8(a1, v8);
  a3[2] = (*(v9 + 16))(v8, v9);
  a3[3] = v10;
  *a3 = v5;

  return sub_100003C3C(a1);
}

DarwinInit::ApplyError::CodingKeys_optional __swiftcall ApplyError.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100485CA8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t ApplyError.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  if (a1 == 1)
  {
    return 1701080931;
  }

  return 0x6567617373656DLL;
}

uint64_t sub_1001F4424(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701080931;
  if (v2 != 1)
  {
    v4 = 0x6567617373656DLL;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E6F697461636F6CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1701080931;
  if (*a2 != 1)
  {
    v8 = 0x6567617373656DLL;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6F697461636F6CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1001F4518()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001F45B4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001F463C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

DarwinInit::ApplyError::CodingKeys_optional sub_1001F46D4@<W0>(Swift::String *a1@<X0>, DarwinInit::ApplyError::CodingKeys_optional *a2@<X8>)
{
  result.value = ApplyError.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_1001F4704(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701080931;
  if (v2 != 1)
  {
    v5 = 0x6567617373656DLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F697461636F6CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1001F475C()
{
  v1 = 1701080931;
  if (*v0 != 1)
  {
    v1 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

DarwinInit::ApplyError::CodingKeys_optional sub_1001F47B0@<W0>(uint64_t a1@<X0>, DarwinInit::ApplyError::CodingKeys_optional *a2@<X8>)
{
  result.value = ApplyError.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1001F47D8(uint64_t a1)
{
  v2 = sub_1001F6400();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F4814(uint64_t a1)
{
  v2 = sub_1001F6400();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ApplyError.encode(to:)(void *a1)
{
  v4 = sub_1000039E8(&qword_1004AC8B8, &qword_1003F9698);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v12[1] = v1[2];
  v12[2] = v8;
  v12[0] = v10;
  sub_10000E2A8(a1, a1[3]);
  sub_1001F6400();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  sub_1001F6454();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ApplyError.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AC8D0, &qword_1003F96A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1001F6400();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v18 = 0;
  sub_1001F64A8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v19;
  v17 = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  v14 = v15;
  *a2 = v9;
  a2[1] = v14;
  a2[2] = v11;
  a2[3] = v13;

  sub_100003C3C(a1);
}

double ErrorReport.errors.getter()
{
  type metadata accessor for ErrorReport(0);

  return result;
}

uint64_t ErrorReport.errors.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ErrorReport(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ErrorReport.originalJson.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ErrorReport(0) + 24));
  *a1 = v3;

  return sub_1001C8518(v3, v4, v5, v6);
}

uint64_t ErrorReport.originalJson.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for ErrorReport(0) + 24);
  result = sub_1001C855C(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

uint64_t ErrorReport.init(inputConfig:errors:originalJson:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  sub_1001F6548(a1, a4);
  result = type metadata accessor for ErrorReport(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = v6;
  return result;
}

DarwinInit::ErrorReport::CodingKeys_optional __swiftcall ErrorReport.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100485D10, v2);

  if (v3 == 1)
  {
    v4.value = DarwinInit_ErrorReport_CodingKeys_errors;
  }

  else
  {
    v4.value = DarwinInit_ErrorReport_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t ErrorReport.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x73726F727265;
  }

  else
  {
    return 0x6F635F7475706E69;
  }
}

uint64_t sub_1001F4F28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73726F727265;
  }

  else
  {
    v3 = 0x6F635F7475706E69;
  }

  if (v2)
  {
    v4 = 0xEC0000006769666ELL;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x73726F727265;
  }

  else
  {
    v5 = 0x6F635F7475706E69;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEC0000006769666ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001F4FD4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001F505C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001F50D0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001F5154@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100485D10, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1001F51B4(uint64_t *a1@<X8>)
{
  v2 = 0x6F635F7475706E69;
  if (*v1)
  {
    v2 = 0x73726F727265;
  }

  v3 = 0xEC0000006769666ELL;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001F51F8()
{
  if (*v0)
  {
    return 0x73726F727265;
  }

  else
  {
    return 0x6F635F7475706E69;
  }
}

uint64_t sub_1001F5238@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100485D10, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1001F529C(uint64_t a1)
{
  v2 = sub_1001F65AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F52D8(uint64_t a1)
{
  v2 = sub_1001F65AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ErrorReport.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AC8E0, &qword_1003F96A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1001F65AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = type metadata accessor for ErrorReport(0);
  v10 = *(v3 + *(v9 + 24));
  if ((~v10 & 0xF000000000000007) != 0)
  {
    v13 = *(v3 + *(v9 + 24));
    HIBYTE(v12) = 0;
    sub_1001B54D4();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);
      return sub_1001C855C(v10);
    }

    sub_1001C855C(v10);
    goto LABEL_7;
  }

  LOBYTE(v13) = 0;
  type metadata accessor for Config(0);
  sub_1001F67E8(&qword_1004AC740, type metadata accessor for Config, &protocol conformance descriptor for Config);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
LABEL_7:
    v13 = *(v3 + *(v9 + 20));
    HIBYTE(v12) = 1;
    sub_1000039E8(&qword_1004AC8F0, &qword_1003F96B0);
    sub_1001F6654(&qword_1004AC8F8, sub_1001F6600, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ErrorReport.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for Config(0);
  __chkstk_darwin(v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000039E8(&qword_1004AC908, &qword_1003F96B8);
  v17 = *(v6 - 8);
  v18 = v6;
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ErrorReport(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v10 + 24);
  *&v12[v20] = 0xF000000000000007;
  sub_10000E2A8(a1, a1[3]);
  sub_1001F65AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);
    return sub_1001C855C(*&v12[v20]);
  }

  else
  {
    v13 = v17;
    v23 = 0;
    sub_1001F67E8(&qword_1004AC910, type metadata accessor for Config, &protocol conformance descriptor for Config);
    v14 = v18;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1001F6548(v19, v12);
    sub_1000039E8(&qword_1004AC8F0, &qword_1003F96B0);
    v22 = 1;
    sub_1001F6654(&qword_1004AC918, sub_1001F66CC, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v13 + 8))(v8, v14);
    *&v12[*(v9 + 20)] = v21;
    sub_1001F6720(v12, v16, type metadata accessor for ErrorReport);
    sub_100003C3C(a1);
    return sub_1001F6788(v12, type metadata accessor for ErrorReport);
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ErrorReport.jsonString(prettyPrinted:redacted:)(Swift::Bool prettyPrinted, Swift::Bool redacted)
{
  v39 = prettyPrinted;
  v40 = redacted;
  v2 = type metadata accessor for CodingUserInfoKey();
  v37 = *(v2 - 8);
  __chkstk_darwin(v2);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for JSONEncoder.OutputFormatting();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v11 = JSONEncoder.init()();
  sub_1000039E8(&qword_1004A84E0, &qword_100378BD0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100376BB0;
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  static JSONEncoder.OutputFormatting.withoutEscapingSlashes.getter();
  v45[0] = v12;
  sub_1001F67E8(&qword_1004A84E8, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_1000039E8(&qword_1004A84F0, qword_10037ACF0);
  sub_1001EF720();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  if (v39)
  {
    static JSONEncoder.OutputFormatting.prettyPrinted.getter();
    v13 = dispatch thunk of JSONEncoder.outputFormatting.modify();
    sub_1001CB8B0(v10, v8);
    v14 = *(v5 + 8);
    v14(v8, v4);
    v14(v10, v4);
    v13(v45, 0);
  }

  if (!v40)
  {
    if (qword_1004A9E60 != -1)
    {
      swift_once();
    }

    v15 = sub_1000270B4(v2, static CredentialString.redactionOverrideKey);
    v16 = v38;
    (*(v37 + 16))(v38, v15, v2);
    v46 = &type metadata for Bool;
    LOBYTE(v45[0]) = 1;
    v17 = dispatch thunk of JSONEncoder.userInfo.modify();
    sub_1001C9DC8(v45, v16);
    v17(v41, 0);
  }

  type metadata accessor for ErrorReport(0);
  sub_1001F67E8(&qword_1004AC928, type metadata accessor for ErrorReport, &protocol conformance descriptor for ErrorReport);
  v18 = v11;
  v19 = v47;
  v20 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v19)
  {
    v24 = v20;
    v25 = v21;
    sub_1000318C0(v20, v21, v22, v23);
    v26 = sub_1001D52F8(v24, v25);
    if (v27)
    {
      v18 = v26;
      v2 = v27;
      sub_100031928(v24, v25);
    }

    else
    {
      v43 = v24;
      v44 = v25;
      sub_1000318C0(v24, v25, v28, v29);
      sub_1000039E8(&qword_1004AB968, &qword_1003F7BE0);
      if (swift_dynamicCast())
      {
        sub_100003C88(v41, v45);
        sub_10000E2A8(v45, v46);
        HasContiguous = dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter();
        sub_100031928(v24, v25);
        if (HasContiguous)
        {
          sub_10000E2A8(v45, v46);
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();

          sub_100031928(v24, v25);
          v2 = *(&v41[0] + 1);
          v18 = *&v41[0];
          sub_100003C3C(v45);
          goto LABEL_18;
        }

        sub_100003C3C(v45);
      }

      else
      {
        sub_100031928(v24, v25);
        v42 = 0;
        memset(v41, 0, sizeof(v41));
        sub_1001EF880(v41);
      }

      v18 = sub_1001D19F8(v24, v25, v31, v32);
      v2 = v33;
    }

    sub_100031928(v24, v25);
    goto LABEL_18;
  }

LABEL_18:
  v34 = v18;
  v35 = v2;
  result._object = v35;
  result._countAndFlagsBits = v34;
  return result;
}

uint64_t ErrorReporter.report(_:function:line:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v32 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000270B4(v10, qword_1004B00F8);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = a5;
    v14 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v14 = 136316162;
    v15 = StaticString.description.getter();
    v17 = sub_1000026C0(v15, v16, v33);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v13;
    *(v14 + 22) = 2080;
    v18 = JSONPointer.rawValue.getter();
    v20 = sub_1000026C0(v18, v19, v33);

    *(v14 + 24) = v20;
    *(v14 + 32) = 2048;

    v21 = v32;
    *(v14 + 34) = v32;

    *(v14 + 42) = 2080;
    *(v14 + 44) = sub_1000026C0(v9, v8, v33);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s:%lu - %s: %ld:%s", v14, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v21 = v32;
  }

  v22 = *(*v5 + 104);

  v23 = v22(v33);
  v25 = v24;
  v26 = *v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v25 = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_10018CFB4(0, *(v26 + 2) + 1, 1, v26);
    *v25 = v26;
  }

  v29 = *(v26 + 2);
  v28 = *(v26 + 3);
  if (v29 >= v28 >> 1)
  {
    v26 = sub_10018CFB4((v28 > 1), v29 + 1, 1, v26);
    *v25 = v26;
  }

  *(v26 + 2) = v29 + 1;
  v30 = &v26[32 * v29];
  *(v30 + 4) = v7;
  *(v30 + 5) = v21;
  *(v30 + 6) = v9;
  *(v30 + 7) = v8;
  return v23(v33, 0);
}

uint64_t ErrorReporter.report<A>(_:at:function:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v28 = a6;
  HIDWORD(v27) = a5;
  v14 = *(a7 - 8);
  __chkstk_darwin(a1);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v17;
  (*(v14 + 16))(v16, v20, v19);
  v21 = *(a8 + 8);

  v22 = v21(a7, a8);
  v23 = (*(a8 + 16))(a7, a8);
  v25 = v24;
  (*(v14 + 8))(v16, a7);
  v29[0] = v18;
  v29[1] = v22;
  v29[2] = v23;
  v29[3] = v25;
  (*(*v9 + 112))(v29, a3, a4, HIDWORD(v27), v28);
}

uint64_t ErrorReporter.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t ErrorReporter.init()()
{
  result = v0;
  *(v0 + 16) = _swiftEmptyArrayStorage;
  return result;
}

unint64_t sub_1001F6400()
{
  result = qword_1004AC8C0;
  if (!qword_1004AC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC8C0);
  }

  return result;
}

unint64_t sub_1001F6454()
{
  result = qword_1004AC8C8;
  if (!qword_1004AC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC8C8);
  }

  return result;
}

unint64_t sub_1001F64A8()
{
  result = qword_1004AC8D8;
  if (!qword_1004AC8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC8D8);
  }

  return result;
}

uint64_t type metadata accessor for ErrorReport(uint64_t a1)
{
  result = qword_1004AC9B8;
  if (!qword_1004AC9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001F6548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Config(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001F65AC()
{
  result = qword_1004AC8E8;
  if (!qword_1004AC8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC8E8);
  }

  return result;
}

unint64_t sub_1001F6600()
{
  result = qword_1004AC900;
  if (!qword_1004AC900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC900);
  }

  return result;
}

uint64_t sub_1001F6654(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(&qword_1004AC8F0, &qword_1003F96B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001F66CC()
{
  result = qword_1004AC920;
  if (!qword_1004AC920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC920);
  }

  return result;
}

uint64_t sub_1001F6720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001F6788(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001F67E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001F6834()
{
  result = qword_1004AC930;
  if (!qword_1004AC930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC930);
  }

  return result;
}

unint64_t sub_1001F688C()
{
  result = qword_1004AC938;
  if (!qword_1004AC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC938);
  }

  return result;
}

unint64_t sub_1001F68E4()
{
  result = qword_1004AC940;
  if (!qword_1004AC940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC940);
  }

  return result;
}

unint64_t sub_1001F693C()
{
  result = qword_1004AC948;
  if (!qword_1004AC948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC948);
  }

  return result;
}

unint64_t sub_1001F6994()
{
  result = qword_1004AC950;
  if (!qword_1004AC950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC950);
  }

  return result;
}

unint64_t sub_1001F69EC()
{
  result = qword_1004AC958;
  if (!qword_1004AC958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC958);
  }

  return result;
}

uint64_t sub_1001F6A40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_1001F6A8C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

uint64_t sub_1001F6AE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001F6B28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001F6B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Config(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001F6C6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Config(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1001F6D24(uint64_t a1)
{
  type metadata accessor for Config(319);
  if (v1 <= 0x3F)
  {
    sub_1001F6E08(319, &qword_1004AC9C8, &type metadata for ApplyError, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_1001F6E08(319, &unk_1004AC9D0, &type metadata for JSON, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001F6E08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

DarwinInit::OutputFormat_optional __swiftcall OutputFormat.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100485D60, v2);

  if (v3 == 1)
  {
    v4.value = DarwinInit_OutputFormat_json;
  }

  else
  {
    v4.value = DarwinInit_OutputFormat_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t OutputFormat.rawValue.getter(char a1)
{
  if (a1)
  {
    return 1852797802;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_1001F6FF4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1852797802;
  }

  else
  {
    v2 = 1954047348;
  }

  if (*a2)
  {
    v3 = 1852797802;
  }

  else
  {
    v3 = 1954047348;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_1001F706C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001F70D4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001F7120()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001F7184@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100485D60, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1001F71E4(uint64_t *a1@<X8>)
{
  v2 = 1954047348;
  if (*v1)
  {
    v2 = 1852797802;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_1001F720C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001F9414();

  return RawRepresentable<>.init(argument:)();
}

uint64_t sub_1001F7280(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F9414();

  return ExpressibleByArgument<>.defaultValueDescription.getter(a1, a2, v4, &protocol witness table for String);
}

uint64_t sub_1001F72D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F93C0();
  v5 = sub_1001F9414();

  return static ExpressibleByArgument<>.allValueStrings.getter(a1, a2, v4, v5, &protocol witness table for String);
}

uint64_t sub_1001F7334(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F93C0();

  return static ExpressibleByArgument<>.defaultCompletionKind.getter(a1, a2, v4);
}

uint64_t sub_1001F7398()
{
  v0 = sub_1000039E8(&qword_1004AAD78, &unk_1003F52C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for CommandConfiguration();
  sub_1000279B4(v3, static Status.configuration);
  sub_1000270B4(v3, static Status.configuration);
  v4 = type metadata accessor for NameSpecification();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t Status.configuration.unsafeMutableAddressor()
{
  if (qword_1004A9E40 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CommandConfiguration();

  return sub_1000270B4(v0, static Status.configuration);
}

uint64_t static Status.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9E40 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_1000270B4(v2, static Status.configuration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1001F75E4(char a1)
{
  v2 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000039E8(&qword_1004AAD60, &unk_100404D80);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-v4];
  v6 = sub_1000039E8(&qword_1004AAD68, &unk_1003F52B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13[-v7];
  v9 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v9 - 8);
  v13[15] = a1 & 1;
  sub_1000039E8(&qword_1004AAD70, &qword_100404D90);
  type metadata accessor for NameSpecification.Element();
  *(swift_allocObject() + 16) = xmmword_100376BB0;
  static NameSpecification.Element.short.getter();
  static NameSpecification.Element.long.getter();
  NameSpecification.init(arrayLiteral:)();
  ArgumentHelp.init(stringLiteral:)();
  v10 = type metadata accessor for ArgumentHelp();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v11 = type metadata accessor for CompletionKind();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  static SingleValueParsingStrategy.next.getter();
  sub_1001F9468();
  return Option<A>.init(wrappedValue:name:parsing:help:completion:)();
}

uint64_t Status.format.getter()
{
  v1 = sub_1000039E8(&qword_1004ACAD0, &qword_1003F9A88);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-v3];
  v5 = OBJC_IVAR____TtC10DarwinInit6Status__format;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  Option.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  return v7[7];
}

uint64_t sub_1001F79EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1000039E8(&qword_1004ACAD0, &qword_1003F9A88);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-v6];
  v8 = *a1;
  v9 = OBJC_IVAR____TtC10DarwinInit6Status__format;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8 + v9, v4);
  Option.wrappedValue.getter();
  result = (*(v5 + 8))(v7, v4);
  *a2 = v11[7];
  return result;
}

uint64_t sub_1001F7B18(char *a1, uint64_t *a2)
{
  swift_beginAccess();
  sub_1000039E8(&qword_1004ACAD0, &qword_1003F9A88);
  Option.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t Status.format.setter(char a1)
{
  swift_beginAccess();
  sub_1000039E8(&qword_1004ACAD0, &qword_1003F9A88);
  Option.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t (*Status.format.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1000039E8(&qword_1004ACAD0, &qword_1003F9A88);
  *(v3 + 56) = Option.wrappedValue.modify();
  return sub_1001F7CB0;
}

void sub_1001F7CB0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  swift_endAccess();

  free(v1);
}

uint64_t Status.run()()
{
  v1[13] = v0;
  type metadata accessor for String.Encoding();
  v1[14] = swift_task_alloc();
  v2 = sub_1000039E8(&qword_1004ACAD0, &qword_1003F9A88);
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v3 = type metadata accessor for URL.DirectoryHint();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  v1[21] = swift_task_alloc();
  v4 = type metadata accessor for FilePath();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_1001F7EF8, 0, 0);
}

uint64_t sub_1001F7EF8()
{
  v56 = v0;
  if (qword_1004A9EA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1000270B4(*(v0 + 176), kDInitStatusFilepath);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 200);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = type metadata accessor for Logger();
  sub_1000270B4(v5, qword_1004B00F8);
  v6 = *(v3 + 16);
  v6(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 200);
  v12 = *(v0 + 176);
  v11 = *(v0 + 184);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v55 = v53;
    *v13 = 136315138;
    sub_1001F90FC(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v52 = v8;
    v14 = v1;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v6;
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v1 = v14;
    v19 = sub_1000026C0(v18, v17, &v55);
    v6 = v54;

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v52, "Loading raw data of file at %s", v13, 0xCu);
    sub_100003C3C(v53);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = *(v0 + 192);
  v21 = *(v0 + 168);
  v23 = *(v0 + 152);
  v22 = *(v0 + 160);
  v24 = *(v0 + 144);
  v6(v20, v1, *(v0 + 176));
  (*(v23 + 104))(v22, enum case for URL.DirectoryHint.inferFromPath(_:), v24);
  sub_1001746A8(v20, v22, v21);
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  result = (*(v26 + 48))(v21, 1, v25);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v28 = Data.init(contentsOf:options:)();
  v30 = v29;
  (*(v26 + 8))(*(v0 + 168), v25);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10019165C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v32 = *(v0 + 128);
  v31 = *(v0 + 136);
  v33 = *(v0 + 120);
  v34 = *(v0 + 104);

  sub_100031928(v28, v30);
  v36 = *(v0 + 40);
  v35 = *(v0 + 48);
  v37 = OBJC_IVAR____TtC10DarwinInit6Status__format;
  swift_beginAccess();
  (*(v32 + 16))(v31, v34 + v37, v33);
  Option.wrappedValue.getter();
  (*(v32 + 8))(v31, v33);
  if (*(v0 + 208))
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    *(v0 + 56) = v36;
    *(v0 + 64) = v35;
    sub_100191574();
    v43 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v45 = v44;

    static String.Encoding.utf8.getter();
    v46 = String.init(data:encoding:)();
    if (!v47)
    {
      sub_1001D6F88(v36, v35);
      sub_1001F8E94();
      swift_allocError();
      *v51 = 0xD00000000000002DLL;
      v51[1] = 0x800000010043FEC0;
      swift_willThrow();
      sub_100031928(v43, v45);

      v42 = *(v0 + 8);
      goto LABEL_10;
    }

    v48 = v46;
    v49 = v47;
    sub_1000039E8(&qword_1004AA990, &unk_1003F8E40);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_100376A40;
    *(v50 + 56) = &type metadata for String;
    *(v50 + 32) = v48;
    *(v50 + 40) = v49;
    print(_:separator:terminator:)();

    sub_100031928(v43, v45);
    if (v35 != 1)
    {
LABEL_19:
      sub_1001D6F88(v36, v35);
      exit(2);
    }
  }

  else
  {
    sub_1000039E8(&qword_1004AA990, &unk_1003F8E40);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100376A40;
    *(v0 + 72) = 0;
    *(v0 + 80) = 0xE000000000000000;
    v39._countAndFlagsBits = 0x203A737574617453;
    v39._object = 0xE800000000000000;
    String.append(_:)(v39);
    *(v0 + 88) = v36;
    *(v0 + 96) = v35;
    _print_unlocked<A, B>(_:_:)();
    v40 = *(v0 + 72);
    v41 = *(v0 + 80);
    *(v38 + 56) = &type metadata for String;
    *(v38 + 32) = v40;
    *(v38 + 40) = v41;
    print(_:separator:terminator:)();

    if (v35 != 1)
    {
      goto LABEL_19;
    }
  }

  v42 = *(v0 + 8);
LABEL_10:

  return v42();
}

uint64_t sub_1001F8630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001F86B4(uint64_t a1)
{
  v2 = sub_1001F8EE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F86F0(uint64_t a1)
{
  v2 = sub_1001F8EE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Status.deinit()
{
  v1 = OBJC_IVAR____TtC10DarwinInit6Status__format;
  v2 = sub_1000039E8(&qword_1004ACAD0, &qword_1003F9A88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Status.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10DarwinInit6Status__format;
  v2 = sub_1000039E8(&qword_1004ACAD0, &qword_1003F9A88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t Status.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_1001F75E4(0);
  return v0;
}

uint64_t Status.init()()
{
  v1 = sub_1000039E8(&qword_1004ACAD0, &qword_1003F9A88);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = OBJC_IVAR____TtC10DarwinInit6Status__format;
  sub_1001F75E4(0);
  (*(v2 + 32))(v0 + v5, v4, v1);
  return v0;
}

uint64_t Status.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Status.init(from:)(a1);
  return v2;
}

uint64_t Status.init(from:)(void *a1)
{
  v2 = v1;
  v4 = sub_1000039E8(&qword_1004ACAE8, &qword_1003F9A98);
  v21 = *(v4 - 8);
  v22 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v7 = sub_1000039E8(&qword_1004ACAD0, &qword_1003F9A88);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v23 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC10DarwinInit6Status__format;
  sub_1001F75E4(0);
  (*(v8 + 32))(v2 + v13, v12, v7);
  v14 = a1[3];
  v25 = a1;
  sub_10000E2A8(a1, v14);
  sub_1001F8EE8();
  v15 = v24;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
  }

  else
  {
    v24 = v13;
    v16 = v21;
    sub_10000E720(&qword_1004ACAF8, &qword_1004ACAD0, &qword_1003F9A88, &protocol conformance descriptor for Option<A>);
    v17 = v22;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v6, v17);
    v18 = v24;
    swift_beginAccess();
    (*(v8 + 40))(v2 + v18, v23, v7);
    swift_endAccess();
  }

  sub_100003C3C(v25);
  return v2;
}

uint64_t sub_1001F8CA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001FE0;

  return Status.run()();
}

uint64_t sub_1001F8D38@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000039E8(&qword_1004ACAD0, &qword_1003F9A88);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC10DarwinInit6Status__format;
  sub_1001F75E4(0);
  result = (*(v3 + 32))(v6 + v7, v5, v2);
  *a1 = v6;
  return result;
}

uint64_t sub_1001F8E3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = Status.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1001F8E94()
{
  result = qword_1004ACAE0;
  if (!qword_1004ACAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACAE0);
  }

  return result;
}

unint64_t sub_1001F8EE8()
{
  result = qword_1004ACAF0;
  if (!qword_1004ACAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACAF0);
  }

  return result;
}

unint64_t sub_1001F8F40()
{
  result = qword_1004ACB00;
  if (!qword_1004ACB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACB00);
  }

  return result;
}

uint64_t type metadata accessor for Status(uint64_t a1)
{
  result = qword_1004ACB58;
  if (!qword_1004ACB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001F90FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001F9164(uint64_t a1)
{
  sub_1001F9248();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001F9248()
{
  if (!qword_1004ACB68)
  {
    v0 = type metadata accessor for Option();
    if (!v1)
    {
      atomic_store(v0, &qword_1004ACB68);
    }
  }
}

unint64_t sub_1001F92BC()
{
  result = qword_1004ACBF0;
  if (!qword_1004ACBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACBF0);
  }

  return result;
}

unint64_t sub_1001F9314()
{
  result = qword_1004ACBF8;
  if (!qword_1004ACBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACBF8);
  }

  return result;
}

unint64_t sub_1001F936C()
{
  result = qword_1004ACC00;
  if (!qword_1004ACC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACC00);
  }

  return result;
}

unint64_t sub_1001F93C0()
{
  result = qword_1004ACC08;
  if (!qword_1004ACC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACC08);
  }

  return result;
}

unint64_t sub_1001F9414()
{
  result = qword_1004ACC10;
  if (!qword_1004ACC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACC10);
  }

  return result;
}

unint64_t sub_1001F9468()
{
  result = qword_1004ACC18;
  if (!qword_1004ACC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACC18);
  }

  return result;
}

unint64_t LibSecureConfigError.description.getter()
{
  _StringGuts.grow(_:)(45);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  return 0xD00000000000002BLL;
}

uint64_t static LibSecureConfig.attested(config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Config.init()(a2);
  if (*(a1 + 160))
  {
    v4 = *(a1 + 192);
    v6 = *(a1 + 168);
    v5 = *(a1 + 176);
    v7 = *(a1 + 200);
  }

  else
  {
    v4 = 0;
    v6 = 0;
    v5 = 0;
    v7 = 1;
  }

  sub_1001FA5D8(*(a2 + 160));
  *(a2 + 160) = _swiftEmptyArrayStorage;
  *(a2 + 168) = v6;
  *(a2 + 176) = v5;
  *(a2 + 184) = _swiftEmptyArrayStorage;
  *(a2 + 192) = v4;
  *(a2 + 200) = v7 & 1;
  result = type metadata accessor for Config(0);
  v9 = *(a1 + *(result + 80) + 8);
  if ((~v9 & 0xF000000000000007) != 0 && (v9 & 0xE000000000000000) == 0xA000000000000000)
  {
    v11 = result;

    v16 = sub_1001F97C0(v12, v13, v14, v15);

    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v18 = v17 | 0xA000000000000000;
    v19 = a2 + *(v11 + 80);
    result = sub_1001C855C(*(v19 + 8));
    *(v19 + 8) = v18;
  }

  return result;
}

void *static LibSecureConfig.attestedConfig(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 568);
  v4 = *(a1 + 624);
  v5 = *(a1 + 632);
  v6 = *(a1 + 640);
  v7 = *(a1 + 648);
  DInitConfig.init()(__src);
  __src[78] = v4;
  __src[79] = v5;

  __src[80] = v6;
  LOBYTE(__src[81]) = v7;
  if ((~v3 & 0xF000000000000007) != 0 && (v3 & 0xE000000000000000) == 0xA000000000000000)
  {

    v13 = sub_1001F97C0(v9, v10, v11, v12);

    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v15 = v14 | 0xA000000000000000;
    sub_1001C855C(__src[71]);
    __src[71] = v15;
  }

  return memcpy(a2, __src, 0x2D8uLL);
}

unint64_t *sub_1001F97C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_1001F9920(v9, v7, v5, v10);
    if (v4)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v14 = sub_1001F9B04(v12, v7, v5, v13);

  if (!v4)
  {
    return v14;
  }

  return result;
}

unint64_t *sub_1001F9920(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = result;
  v24 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];

    v18._object = 0x800000010043FFB0;
    v18._countAndFlagsBits = 0xD00000000000001BLL;
    if (String.hasPrefix(_:)(v18) || (v17 == 0xD000000000000023 ? (v19 = 0x800000010043FFD0 == v16) : (v19 = 0), v19))
    {

LABEL_19:
      *(v23 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_1001F9B7C(v23, a2, v24, a3);
      }
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_19;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1001F9B7C(v23, a2, v24, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1001F9B04(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
    }

    v7 = sub_1001F9920(result, a2, a3, a4);

    return v7;
  }

  return result;
}

Swift::Int sub_1001F9B7C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1000039E8(&qword_1004AA7C0, &qword_1003F3E90);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1001F9DC0(uint64_t a1, void *a2)
{
  v34 = a2;
  v3 = type metadata accessor for String.Encoding();
  v31 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = *(a1 + 568);
  v7 = *(a1 + 624);
  v8 = *(a1 + 632);
  v9 = *(a1 + 640);
  LOBYTE(a1) = *(a1 + 648);
  DInitConfig.init()(v33);
  v33[78] = v7;
  v33[79] = v8;

  v33[80] = v9;
  LOBYTE(v33[81]) = a1;
  if ((~v6 & 0xF000000000000007) != 0 && (v6 & 0xE000000000000000) == 0xA000000000000000)
  {

    v14 = sub_1001F97C0(v10, v11, v12, v13);

    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v16 = v15 | 0xA000000000000000;
    sub_1001C855C(v33[71]);
    v33[71] = v16;
  }

  memcpy(v32, v33, sizeof(v32));
  DInitConfig.jsonString(prettyPrinted:redactCredentialStrings:)(0, 0);
  if (!v17)
  {
    static String.Encoding.utf8.getter();
    v18 = String.data(using:allowLossyConversion:)();
    v20 = v19;

    (*(v31 + 8))(v5, v3);
    v21 = v34[3];
    v22 = v34[4];
    sub_10000E2A8(v34, v21);
    v23 = (*(v22 + 296))(v18, v20, v21, v22);
    if (v23)
    {
      v24 = v23;
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1000270B4(v25, qword_1004B00F8);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 67109120;
        *(v28 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v26, v27, "Failed to register config data: %d", v28, 8u);
      }

      sub_1001FA890();
      swift_allocError();
      *v29 = v24;
      swift_willThrow();
    }

    sub_100031914(v18, v20);
  }

  return sub_1001D711C(v32);
}

uint64_t sub_1001FA0F8(uint64_t a1, void *a2)
{
  v54 = a2;
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Config(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + *(v8 + 104));
  v12 = *v11;
  if (!*v11)
  {
    goto LABEL_6;
  }

  v13 = v11[1];

  if (Array<A>.version.getter(v14) != 1)
  {
    sub_1001D6FE0(v12, v13);
LABEL_6:
    v47 = v5;
    v48 = v4;
    Config.init()(v10);
    if (*(a1 + 160))
    {
      v19 = *(a1 + 192);
      v21 = *(a1 + 168);
      v20 = *(a1 + 176);
      v22 = *(a1 + 200);
    }

    else
    {
      v19 = 0;
      v21 = 0;
      v20 = 0;
      v22 = 1;
    }

    sub_1001FA5D8(*(v10 + 20));
    *(v10 + 20) = _swiftEmptyArrayStorage;
    *(v10 + 21) = v21;
    *(v10 + 22) = v20;
    *(v10 + 23) = _swiftEmptyArrayStorage;
    *(v10 + 24) = v19;
    v10[200] = v22 & 1;
    v23 = *(a1 + *(v7 + 80) + 8);
    if ((~v23 & 0xF000000000000007) != 0 && (v23 & 0xE000000000000000) == 0xA000000000000000)
    {

      v29 = sub_1001F97C0(v25, v26, v27, v28);

      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      v31 = v30 | 0xA000000000000000;
      v32 = &v10[*(v7 + 80)];
      sub_1001C855C(*(v32 + 1));
      *(v32 + 1) = v31;
    }

    Config.jsonString(prettyPrinted:redacted:origin:)(0, 0, 0);
    if (!v33)
    {
      v34 = v49;
      static String.Encoding.utf8.getter();
      v35 = String.data(using:allowLossyConversion:)();
      v37 = v36;

      (*(v47 + 8))(v34, v48);
      v38 = v54[3];
      v39 = v54[4];
      sub_10000E2A8(v54, v38);
      v40 = (*(v39 + 296))(v35, v37, v38, v39);
      if (!v40)
      {
        sub_1001FA8E4(v10);
        return sub_100031914(v35, v37);
      }

      v41 = v40;
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_1000270B4(v42, qword_1004B00F8);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 67109120;
        *(v45 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v43, v44, "Failed to register config data: %d", v45, 8u);
      }

      sub_1001FA890();
      swift_allocError();
      *v46 = v41;
      swift_willThrow();
      sub_100031914(v35, v37);
    }

    return sub_1001FA8E4(v10);
  }

  v15 = sub_100187218(_swiftEmptyArrayStorage);
  v16 = type metadata accessor for JSEnumDecoder();
  v17 = swift_allocObject();
  v17[3] = v15;
  v17[4] = v13;
  v17[2] = _swiftEmptyArrayStorage;
  v52[3] = v16;
  v52[4] = sub_1001FA940();
  v52[0] = v17;

  DInitConfig.init(from:)(v52, v53);
  if (v2)
  {
    return sub_1001D6FE0(v12, v13);
  }

  memcpy(v51, v53, sizeof(v51));
  memcpy(v50, v53, sizeof(v50));
  sub_1001F9DC0(v50, v54);
  sub_1001D6FE0(v12, v13);
  return sub_1001D711C(v51);
}

uint64_t sub_1001FA5D8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001FA624()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001FA65C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001B54D4();
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v10 = v9;

  if (!v4)
  {
    v12 = a4[3];
    v13 = a4[4];
    sub_10000E2A8(a4, v12);
    v14 = *(v13 + 288);
    sub_1000318C0(v8, v10, v15, v16);
    v17 = v14(v8, v10, a2, a3, v12, v13);
    sub_100031928(v8, v10);
    if (v17)
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1000270B4(v18, qword_1004B00F8);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 67109120;
        *(v21 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v19, v20, "Failed to register secure config parameters: %d", v21, 8u);
      }

      sub_1001FA890();
      swift_allocError();
      *v22 = v17;
      swift_willThrow();
    }

    return sub_100031928(v8, v10);
  }

  return result;
}

unint64_t sub_1001FA890()
{
  result = qword_1004ACC20;
  if (!qword_1004ACC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACC20);
  }

  return result;
}

uint64_t sub_1001FA8E4(uint64_t a1)
{
  v2 = type metadata accessor for Config(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001FA940()
{
  result = qword_1004ACC28;
  if (!qword_1004ACC28)
  {
    type metadata accessor for JSEnumDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACC28);
  }

  return result;
}

uint64_t DInitFailureAction.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x746F6F626572;
  }

  if (a1 == 1)
  {
    return 0x6E776F6474756873;
  }

  return 1953069157;
}

unint64_t sub_1001FA9F4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10DarwinInit18DInitFailureActionO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1001FAA24(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6E776F6474756873;
  if (v2 != 1)
  {
    v5 = 1953069157;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746F6F626572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1001FAB38(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E776F6474756873;
  if (v2 != 1)
  {
    v4 = 1953069157;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746F6F626572;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E776F6474756873;
  if (*a2 != 1)
  {
    v8 = 1953069157;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746F6F626572;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_1001FAC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001FAF14();

  return RawRepresentable<>.init(argument:)();
}

uint64_t sub_1001FAC9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001FAF14();

  return ExpressibleByArgument<>.defaultValueDescription.getter(a1, a2, v4, &protocol witness table for String);
}

uint64_t sub_1001FACF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001FAEC0();
  v5 = sub_1001FAF14();

  return static ExpressibleByArgument<>.allValueStrings.getter(a1, a2, v4, v5, &protocol witness table for String);
}

uint64_t sub_1001FAD50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001FAEC0();

  return static ExpressibleByArgument<>.defaultCompletionKind.getter(a1, a2, v4);
}

unint64_t _s10DarwinInit18DInitFailureActionO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100485E00, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001FADF4()
{
  result = qword_1004ACC30;
  if (!qword_1004ACC30)
  {
    sub_100003A94(&qword_1004ACC38, &qword_1003F9F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACC30);
  }

  return result;
}

unint64_t sub_1001FAE5C()
{
  result = qword_1004ACC40;
  if (!qword_1004ACC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACC40);
  }

  return result;
}

unint64_t sub_1001FAEC0()
{
  result = qword_1004ACC48;
  if (!qword_1004ACC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACC48);
  }

  return result;
}

unint64_t sub_1001FAF14()
{
  result = qword_1004ACC50;
  if (!qword_1004ACC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACC50);
  }

  return result;
}

uint64_t sub_1001FAF68(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t static DCRT.issue()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001FE0;

  return sub_1001FB5D4();
}

uint64_t sub_1001FB0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000039E8(&qword_1004AA7D0, &unk_1003F3EA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - v7;
  sub_1001FB294(a3, v9, v10, v11);
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  aBlock[4] = sub_1001FC264;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001FAF68;
  aBlock[3] = &unk_10048CF60;
  v15 = _Block_copy(aBlock);
  MAEIssueDCRTWithCompletion();

  _Block_release(v15);
}

void sub_1001FB294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16))
  {
    sub_1000039E8(&qword_1004AA738, &qword_1003F3DE8);
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = &_swiftEmptyDictionarySingleton;
  }

  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = (v5 + 8);

  v11 = 0;
  while (v8)
  {
LABEL_15:
    v15 = __clz(__rbit64(v8)) | (v11 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    sub_100003CA0(*(a1 + 56) + 32 * v15, v38);
    *&v37 = v18;
    *(&v37 + 1) = v17;
    v35[2] = v37;
    v36[0] = v38[0];
    v36[1] = v38[1];
    v35[0] = v37;

    swift_dynamicCast();
    sub_1000279A4(v36, v30);
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_1000279A4(v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_1000279A4(v34, v35);
    v19 = AnyHashable._rawHashValue(seed:)(v5[5]);
    v20 = -1 << *(v5 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*&v10[8 * (v21 >> 6)]) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *&v10[8 * v22];
        if (v26 != -1)
        {
          v12 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v12 = __clz(__rbit64((-1 << v21) & ~*&v10[8 * (v21 >> 6)])) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v8 &= v8 - 1;
    *&v10[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
    v13 = v5[6] + 40 * v12;
    *v13 = v27;
    *(v13 + 16) = v28;
    *(v13 + 32) = v29;
    sub_1000279A4(v35, (v5[7] + 32 * v12));
    ++v5[2];
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v14);
    ++v11;
    if (v8)
    {
      v11 = v14;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1001FB55C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000039E8(&qword_1004AA7D0, &unk_1003F3EA8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000039E8(&qword_1004AA7D0, &unk_1003F3EA8);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1001FB5D4()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v0[24] = v1;
  v0[25] = *(v1 - 8);
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v2 = type metadata accessor for ContinuousClock();
  v0[28] = v2;
  v0[29] = *(v2 - 8);
  v0[30] = swift_task_alloc();
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v0[31] = v3;
  v0[32] = *(v3 - 8);
  v0[33] = swift_task_alloc();

  return _swift_task_switch(sub_1001FB754, 0, 0);
}

uint64_t sub_1001FB754()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  sub_10000E014();
  (*(v2 + 104))(v1, enum case for DispatchQoS.QoSClass.default(_:), v3);
  v0[34] = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v1, v3);
  sub_1000039E8(&qword_1004A7A90, &qword_100377310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376BB0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = v5;
  *(inited + 48) = 60;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v6;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 0;
  v0[35] = sub_100061F34(inited);
  swift_setDeallocating();
  sub_1000039E8(&qword_1004A7A98, &qword_100377318);
  swift_arrayDestroy();
  v0[36] = MobileActivationErrorDomain;
  v0[37] = 0;
  v7 = swift_task_alloc();
  v0[38] = v7;
  *(v7 + 16) = *(v0 + 17);
  v8 = swift_task_alloc();
  v0[39] = v8;
  *v8 = v0;
  v8[1] = sub_1001FB968;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0x29286575737369, 0xE700000000000000, sub_1001FC180, v7, &type metadata for () + 1);
}

uint64_t sub_1001FB968()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1001FBB24;
  }

  else
  {

    v2 = sub_1001FBA90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001FBA90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001FBB24()
{
  v1 = *(v0 + 296);

  if (v1 != 4 && ((v4 = _convertErrorToNSError(_:)(), HasDomainAndErrorCode = mobileactivationErrorHasDomainAndErrorCode(), v4, (HasDomainAndErrorCode & 1) != 0) || (v6 = _convertErrorToNSError(_:)(), v7 = mobileactivationErrorHasDomainAndErrorCode(), v6, v7)))
  {
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    v10 = *(v0 + 192);
    *(v0 + 184) = *(v0 + 296);
    sub_1001B1CDC();
    static Duration.* infix<A>(_:_:)();
    v11 = static Duration.+ infix(_:_:)();
    v13 = v12;
    static Clock<>.continuous.getter();
    *(v0 + 168) = v11;
    *(v0 + 176) = v13;
    *(v0 + 152) = 0;
    *(v0 + 144) = 0;
    *(v0 + 160) = 1;
    v14 = sub_1001FC188(&qword_1004AAFD0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_1001FC188(&qword_1004AAFD8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v15 = *(v9 + 8);
    *(v0 + 328) = v15;
    *(v0 + 336) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v8, v10);
    v16 = swift_task_alloc();
    *(v0 + 344) = v16;
    *v16 = v0;
    v16[1] = sub_1001FBE10;
    v18 = *(v0 + 216);
    v17 = *(v0 + 224);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v18, v0 + 144, v17, v14);
  }

  else
  {

    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1001FBE10()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    (*(v2 + 328))(*(v2 + 216), *(v2 + 192));

    v3 = sub_1001FC070;
  }

  else
  {
    v5 = *(v2 + 232);
    v4 = *(v2 + 240);
    v6 = *(v2 + 224);
    (*(v2 + 328))(*(v2 + 216), *(v2 + 192));
    (*(v5 + 8))(v4, v6);
    v3 = sub_1001FBF74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FBF74()
{

  ++*(v0 + 296);
  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *(v1 + 16) = *(v0 + 272);
  v2 = swift_task_alloc();
  *(v0 + 312) = v2;
  *v2 = v0;
  v2[1] = sub_1001FB968;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0x29286575737369, 0xE700000000000000, sub_1001FC180, v1, &type metadata for () + 1);
}

uint64_t sub_1001FC070()
{
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001FC188(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001FC1D0()
{
  v1 = sub_1000039E8(&qword_1004AA7D0, &unk_1003F3EA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001FC264(uint64_t a1, uint64_t a2)
{
  sub_1000039E8(&qword_1004AA7D0, &unk_1003F3EA8);

  return sub_1001FB55C(a1, a2);
}

uint64_t sub_1001FC2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
}

void *JSONConverter.init(config:codingPath:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

unint64_t *JSONConverter.container<A>(keyedBy:)()
{
  v1 = *v0;
  if (*v0 >> 61 == 5)
  {
    v2 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v5 = sub_1000039E8(&qword_1004ACCF0, &qword_1003FC360);

    _StringGuts.grow(_:)(27);

    v9[0] = 0xD000000000000019;
    v9[1] = 0x8000000100440040;
    v9[3] = v1;
    v7._countAndFlagsBits = sub_1002F660C(1, v6);
    v2 = v9;
    String.append(_:)(v7);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, enum case for DecodingError.typeMismatch(_:), v3);
    swift_willThrow();
  }

  return v2;
}

void JSONConverter.indexedContainer()(void *a1@<X8>)
{
  v2 = v1[1];
  if (*v1 >> 61 == 4)
  {
    v3 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    a1[3] = &type metadata for ArrayConverter;
    a1[4] = &protocol witness table for ArrayConverter;
    *a1 = v3;
    a1[1] = v2;
  }

  else
  {
    v4 = type metadata accessor for DecodingError();
    swift_allocError();
    v6 = v5;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v6 = sub_1000039E8(&qword_1004ACCF8, &unk_1003FA100);

    _StringGuts.grow(_:)(27);

    v8._countAndFlagsBits = sub_1002F660C(1, v7);
    String.append(_:)(v8);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v4 - 8) + 104))(v6, enum case for DecodingError.typeMismatch(_:), v4);
    swift_willThrow();
  }
}

double JSONConverter.singleValueContainer()@<D0>(void *a4@<X8>)
{
  v5 = *v4;
  v6 = v4[1];
  a4[3] = &type metadata for JSEnumDecoder.SingleValueContainer;
  a4[4] = &protocol witness table for JSEnumDecoder.SingleValueContainer;
  *a4 = v5;
  a4[1] = v6;

  return result;
}

uint64_t static JSONConverter.convert(from:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v6[3] = &type metadata for JSONConverter;
  v6[4] = &protocol witness table for JSONConverter;
  v6[0] = v4;
  v6[1] = _swiftEmptyArrayStorage;

  return Config.init(from:)(v6);
}

double JSONConverter.convert<A>(_:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v25 = a5;
  v23 = a3;
  v24 = a4;
  v8 = type metadata accessor for Optional();
  v22 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = *v5;
  v15 = v5[1];
  v28[3] = &type metadata for JSONConverter;
  v28[4] = &protocol witness table for JSONConverter;
  v28[0] = v14;
  v28[1] = v15;
  v16 = *(a2 + 8);

  v17 = v26;
  v16(v28, a1, a2);
  if (!v17)
  {
    (*(v22 + 32))(v11, v13, v8);
    v28[6] = v23;
    WitnessTable = swift_getWitnessTable();
    v27 = v24;
    v20 = swift_getWitnessTable();
    PathCoded.init(wrappedValue:at:)(v11, v15, v8, WitnessTable, v20, v25);
  }

  return result;
}

uint64_t JSEnumDecoder.SingleValueContainer.dict.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v5 = v4[1];

  v7 = sub_100187218(_swiftEmptyArrayStorage);
  type metadata accessor for JSEnumDecoder();
  v8 = swift_allocObject();
  v8[3] = v7;
  v8[4] = v6;
  v8[2] = v5;
  sub_1001FA940();
  sub_1001B5418();
  return Dictionary<>.init(from:)();
}

uint64_t sub_1001FC9DC@<X0>(unint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for URL();
  if (a1 >> 61 != 3)
  {
    v18 = type metadata accessor for DecodingError();
    swift_allocError();
    v20 = v19;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v20 = &type metadata for String;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v18 - 8) + 104))(v20, enum case for DecodingError.typeMismatch(_:), v18);
    return swift_willThrow();
  }

  v9 = v8;
  v11 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v10 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

  URL.init(string:)();
  v12 = *(v9 - 8);
  if ((*(v12 + 48))(v7, 1, v9) == 1)
  {
    sub_10004B034(v7);
    v13 = type metadata accessor for DecodingError();
    swift_allocError();
    v15 = v14;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v15 = v9;
    v22 = 0;
    v23 = 0xE000000000000000;

    _StringGuts.grow(_:)(29);

    v22 = 0xD000000000000012;
    v23 = 0x8000000100440080;
    v16._countAndFlagsBits = v11;
    v16._object = v10;
    String.append(_:)(v16);

    v17._countAndFlagsBits = 0x4C52552073612027;
    v17._object = 0xE90000000000002ELL;
    String.append(_:)(v17);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v13 - 8) + 104))(v15, enum case for DecodingError.typeMismatch(_:), v13);
    return swift_willThrow();
  }

  return (*(v12 + 32))(a3, v7, v9);
}

uint64_t JSEnumDecoder.SingleValueContainer.array.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v5 = v4[1];

  v7 = sub_100187218(_swiftEmptyArrayStorage);
  type metadata accessor for JSEnumDecoder();
  v8 = swift_allocObject();
  v8[3] = v7;
  v8[4] = v6;
  v8[2] = v5;
  sub_1001FA940();
  sub_1001B5418();
  return Array<A>.init(from:)();
}

uint64_t JSEnumDecoder.SingleValueContainer.decode(_:)()
{
  if (*v0 >> 61)
  {
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v4 = &type metadata for Bool;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, enum case for DecodingError.typeMismatch(_:), v2);
    swift_willThrow();
  }

  else
  {
    v1 = *(*v0 + 16);
  }

  return v1 & 1;
}

{
  if (*v0 >> 61 == 3)
  {
    v1 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v1 = v0[1];
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v4 = &type metadata for String;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, enum case for DecodingError.typeMismatch(_:), v2);
    swift_willThrow();
  }

  return v1;
}

{
  return sub_10035177C(&type metadata for UInt);
}

{
  return sub_10035177C(&type metadata for UInt64);
}

{
  return sub_10021894C(*v0, *(v0 + 8));
}

{
  if (*v0 >> 61 == 1)
  {
    return sub_1003560E0(*((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10), *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18));
  }

  v2 = type metadata accessor for DecodingError();
  swift_allocError();
  v4 = v3;
  sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
  *v4 = &type metadata for UInt128;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v2 - 8) + 104))(v4, enum case for DecodingError.typeMismatch(_:), v2);
  return swift_willThrow();
}

void JSEnumDecoder.SingleValueContainer.uint.getter()
{
  if (*v0 >> 61 != 1)
  {
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v4 = &type metadata for UInt;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, enum case for DecodingError.typeMismatch(_:), v2);
    swift_willThrow();
    return;
  }

  v1 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v1)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_1001FD0F8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DecodingError();
  v5 = swift_allocError();
  v7 = v6;
  sub_1000039E8(&qword_1004A7170, &qword_100376CC0);
  sub_100003B20(a1, v7);
  sub_10000E2A8(a1, a1[3]);

  dispatch thunk of CodingKey.stringValue.getter();
  v8._countAndFlagsBits = 0x756F6620746F6E20;
  v8._object = 0xEA0000000000646ELL;
  String.append(_:)(v8);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v4 - 8) + 104))(v7, enum case for DecodingError.keyNotFound(_:), v4);
  return v5;
}

uint64_t KeyedConverter.codingPath(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = a4;
  *(inited + 64) = a5;
  v10 = sub_100064BF8((inited + 32));
  (*(*(a4 - 8) + 16))(v10, a1, a4);

  sub_10034A3A8(inited);
  return a3;
}

uint64_t KeyedConverter._getValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a2 + 16))
  {
    v20 = a3;
    v14 = sub_100013364(v12, v13);
    v16 = v15;

    if (v16)
    {
      v18 = *(*(a2 + 56) + 8 * v14);

      result = KeyedConverter.codingPath(forKey:)(a1, v19, v20, a4, a5);
      *a6 = v18;
      a6[1] = result;
      return result;
    }
  }

  else
  {
  }

  *a6 = 0;
  a6[1] = 0;
  return result;
}

uint64_t KeyedConverter.raw(forKey:)@<X0>(uint64_t a1@<X1>, void *a4@<X8>)
{
  v6 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a1 + 16) && (v8 = sub_100013364(v6, v7), (v9 & 1) != 0))
  {
    *a4 = *(*(a1 + 56) + 8 * v8);
  }

  else
  {

    *a4 = 0xF000000000000007;
  }

  return result;
}

uint64_t KeyedConverter.raw(forCheckedKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v13 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a2 + 16))
  {
    v20[6] = v6;
    v15 = sub_100013364(v13, v14);
    v17 = v16;

    if (v17)
    {
      *a6 = *(*(a2 + 56) + 8 * v15);
    }
  }

  else
  {
  }

  v20[3] = a4;
  v20[4] = a5;
  v19 = sub_100064BF8(v20);
  (*(*(a4 - 8) + 16))(v19, a1, a4);
  sub_1001FD0F8(v20, a2, a3);
  sub_100003C3C(v20);
  return swift_willThrow();
}

uint64_t KeyedConverter.convert<A>(_:forKey:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v38 = a7;
  v37 = a8;
  v16 = type metadata accessor for Optional();
  v36 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  v22 = v39;
  result = KeyedConverter._getValue(forKey:)(a1, a2, a3, a4, a6, &v42);
  if (!v22)
  {
    v24 = v38;
    v39 = v19;
    v25 = v43;
    if (v43)
    {
      v34 = a9;
      v35 = a10;
      v26 = v42;
      v44 = &type metadata for JSONConverter;
      v45 = &protocol witness table for JSONConverter;
      v27 = *(v38 + 8);

      v27(&v42, a5, v24);
      v28 = v39;
      (*(v36 + 32))(v39, v21, v16);
      v41 = v34;
      WitnessTable = swift_getWitnessTable();
      v40 = v35;
      v30 = swift_getWitnessTable();
      PathCoded.init(wrappedValue:at:)(v28, v25, v16, WitnessTable, v30, v37);

      return sub_100200D34(v26, v25);
    }

    else
    {
      v31 = v39;
      (*(*(a5 - 8) + 56))(v39, 1, 1, a5);
      v47 = a9;
      v32 = swift_getWitnessTable();
      v46 = a10;
      v33 = swift_getWitnessTable();
      return PathCoded.init(wrappedValue:)(v31, v16, v32, v33, v37);
    }
  }

  return result;
}

uint64_t KeyedConverter.convert<A>(_:forKey:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, char *a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v49 = a7;
  v50 = a8;
  v51 = a6;
  v15 = type metadata accessor for Optional();
  v47 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v43 - v17;
  v48 = *(a5 - 8);
  v19 = __chkstk_darwin(v16);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v43 - v22;
  v24 = v56;
  result = KeyedConverter._getValue(forKey:)(a1, a2, a3, a4, v51, &v52);
  if (!v24)
  {
    v46 = v23;
    v51 = v21;
    v26 = v49;
    v56 = v15;
    v27 = v53;
    if (v53)
    {
      v44 = a9;
      v45 = a10;
      v28 = v52;
      v54 = &type metadata for JSONConverter;
      v55 = &protocol witness table for JSONConverter;
      v29 = *(v49 + 8);

      v30 = v18;
      v31 = a5;
      v29(&v52, a5, v26);
      v32 = v50;
      v49 = v28;
      v34 = v48;
      if ((*(v48 + 48))(v30, 1, a5) == 1)
      {
        sub_100200D34(v49, v27);
        (*(v47 + 8))(v30, v56);
        v35 = type metadata accessor for PathCoded(0, a5, v44, v45);
        return (*(*(v35 - 8) + 56))(v32, 1, 1, v35);
      }

      else
      {
        v36 = v32;
        v37 = *(v34 + 32);
        v38 = v46;
        v37(v46, v30, v31);
        v39 = v51;
        v37(v51, v38, v31);
        v41 = v44;
        v40 = v45;
        PathCoded.init(wrappedValue:at:)(v39, v27, v31, v44, v45, v36);

        sub_100200D34(v49, v27);
        v42 = type metadata accessor for PathCoded(0, v31, v41, v40);
        return (*(*(v42 - 8) + 56))(v36, 0, 1, v42);
      }
    }

    else
    {
      v33 = type metadata accessor for PathCoded(0, a5, a9, a10);
      return (*(*(v33 - 8) + 56))(v50, 1, 1, v33);
    }
  }

  return result;
}

uint64_t KeyedConverter.indexedContainer(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyedConverter._getValue(forKey:)(a1, a2, a3, a4, a5, &v13);
  if (!v5)
  {
    v8 = v14;
    if (v14)
    {
      v9 = v13;
      if (v13 >> 61 == 4)
      {
        v6 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      }

      else
      {
        v6 = sub_1000039E8(&qword_1004ACCF8, &unk_1003FA100);
        v10 = type metadata accessor for DecodingError();
        swift_allocError();
        v12 = v11;
        sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
        *v12 = v6;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v10 - 8) + 104))(v12, enum case for DecodingError.typeMismatch(_:), v10);
        swift_willThrow();
      }

      sub_100200D34(v9, v8);
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t KeyedConverter.container<A>(keyedBy:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  KeyedConverter._getValue(forKey:)(a2, a3, a4, a5, a7, &v15);
  if (!v7)
  {
    v10 = v16;
    if (v16)
    {
      v11 = v15;
      if (v15 >> 61 == 5)
      {
        v8 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      }

      else
      {
        v8 = sub_1000039E8(&qword_1004ACCF0, &qword_1003FC360);
        v12 = type metadata accessor for DecodingError();
        swift_allocError();
        v14 = v13;
        sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
        *v14 = v8;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v12 - 8) + 104))(v14, enum case for DecodingError.typeMismatch(_:), v12);
        swift_willThrow();
      }

      sub_100200D34(v11, v10);
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t KeyedConverter.BOOL(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyedConverter._getValue(forKey:)(a1, a2, a3, a4, a5, &v12);
  if (!v6)
  {
    v5 = v13;
    if (v13)
    {
      v8 = v12;
      if (v12 >> 61)
      {
        v9 = type metadata accessor for DecodingError();
        swift_allocError();
        v11 = v10;
        sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
        *v11 = &type metadata for Bool;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.typeMismatch(_:), v9);
        swift_willThrow();
      }

      else
      {
      }

      sub_100200D34(v8, v5);
    }
  }

  return v5;
}

void *KeyedConverter.BOOL(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyedConverter._getValue(forKey:)(a1, a2, a3, a4, a5, &v12);
  if (!v6)
  {
    v5 = v13;
    if (v13)
    {
      v8 = v12;
      if (v12 >> 61)
      {
        v9 = type metadata accessor for DecodingError();
        swift_allocError();
        v11 = v10;
        sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
        *v11 = &type metadata for Bool;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.typeMismatch(_:), v9);
        swift_willThrow();
      }

      else
      {
      }

      sub_100200D34(v8, v5);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v5;
}

uint64_t KeyedConverter.BOOL(forCheckedKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyedConverter._getValue(forKey:)(a1, a2, a3, a4, a5, &v18);
  if (!v6)
  {
    v5 = v19;
    if (v19)
    {
      v13 = v18;
      if (v18 >> 61)
      {
        v15 = type metadata accessor for DecodingError();
        swift_allocError();
        v17 = v16;
        sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
        *v17 = &type metadata for Bool;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v15 - 8) + 104))(v17, enum case for DecodingError.typeMismatch(_:), v15);
        swift_willThrow();
      }

      else
      {
      }

      sub_100200D34(v13, v5);
    }

    else
    {
      v20 = a4;
      v21 = a5;
      v14 = sub_100064BF8(&v18);
      (*(*(a4 - 8) + 16))(v14, a1, a4);
      v5 = sub_1001FD0F8(&v18, a2, a3);
      sub_100003C3C(&v18);
      swift_willThrow();
    }
  }

  return v5;
}

void *KeyedConverter.objCBool(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyedConverter._getValue(forKey:)(a1, a2, a3, a4, a5, &v18);
  if (!v6)
  {
    v5 = v19;
    if (v19)
    {
      v8 = v18;
      v9 = v18 >> 61;
      if (v18 >> 61)
      {
        v10 = type metadata accessor for DecodingError();
        swift_allocError();
        v12 = v11;
        v20 = sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
        *v12 = &type metadata for Bool;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        v13 = enum case for DecodingError.typeMismatch(_:);
        v14 = *(*(v10 - 8) + 104);
        v14(v12, enum case for DecodingError.typeMismatch(_:), v10);
        swift_willThrow();
        if (v9 == 3)
        {

          v15 = String._bridgeToObjectiveC()();

          [v15 BOOLValue];
        }

        else
        {
          swift_allocError();
          v17 = v16;
          *v16 = &type metadata for String;

          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          v14(v17, v13, v10);
          swift_willThrow();

          swift_willThrow();
        }

        sub_100200D34(v8, v5);
      }

      else
      {

        sub_100200D34(v8, v5);
      }
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v5;
}

void *KeyedConverter.dict<A>(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = KeyedConverter._getValue(forKey:)(a1, a2, a3, a4, a6, &v64);
  if (!v9)
  {
    v56 = 0;
    v16 = v65;
    if (v65)
    {
      v53 = a8;
      v54 = a9;
      v17 = v64;

      v18 = sub_100187218(_swiftEmptyArrayStorage);
      v19 = type metadata accessor for JSEnumDecoder();
      v20 = swift_allocObject();
      v55 = v17;
      v20[3] = v18;
      v20[4] = v17;
      v20[2] = v16;
      v66 = v19;
      v67 = sub_1001FA940();
      v64 = v20;
      sub_1001B5418();
      v21 = Dictionary<>.init(from:)();
      if (v56)
      {
        return sub_100200D34(v55, v16);
      }

      v56 = &v50;
      v52 = v21;
      v74 = v21;
      v25 = __chkstk_darwin(v21);
      v43[12] = a4;
      v43[13] = a5;
      v44 = a6;
      v45 = a7;
      v46 = v53;
      v47 = v54;
      v48 = v55;
      v49 = v16;
      __chkstk_darwin(v25);
      v51 = v43;
      v43[2] = a4;
      v43[3] = a5;
      v43[4] = a6;
      v43[5] = a7;
      v43[6] = v27;
      v43[7] = v26;
      v43[8] = sub_100200D78;
      v43[9] = v28;
      v50 = sub_1000039E8(&qword_1004ACCF0, &qword_1003FC360);
      type metadata accessor for Optional();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v30 = sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
      v31 = sub_100200DE8();
      v32 = v51;
      v51 = TupleTypeMetadata2;
      v33 = sub_1000AF8C0(sub_100200DB0, v32, v50, TupleTypeMetadata2, v30, v31, &protocol self-conformance witness table for Error, &v63);
      v50 = v33;
      v52 = 0;

      v74 = v33;
      swift_getTupleTypeMetadata2();
      v34 = static Array._allocateUninitialized(_:)();
      v35 = sub_100200E4C(v34, &type metadata for String, a5, &protocol witness table for String);

      v63 = v35;
      __chkstk_darwin(v36);
      v44 = a4;
      v45 = a5;
      v46 = a6;
      v47 = a7;
      v37 = v53;
      v38 = v54;
      v48 = v53;
      v49 = v54;
      type metadata accessor for Array();
      type metadata accessor for Dictionary();
      swift_getWitnessTable();
      v39 = v52;
      Sequence.reduce<A>(into:_:)();
      v56 = v39;

      v74 = v64;
      v40 = type metadata accessor for Optional();
      v61 = &protocol witness table for String;
      v62 = v37;
      WitnessTable = swift_getWitnessTable();
      v41 = swift_getWitnessTable();
      v58 = &protocol witness table for String;
      v59 = v38;
      v57 = swift_getWitnessTable();
      v42 = swift_getWitnessTable();
      PathCoded.init(wrappedValue:at:)(&v74, v16, v40, v41, v42, &v64);

      sub_100200D34(v55, v16);
    }

    else
    {
      v74 = 0;
      type metadata accessor for Dictionary();
      v22 = type metadata accessor for Optional();
      v72 = &protocol witness table for String;
      v73 = a8;
      v71 = swift_getWitnessTable();
      v23 = swift_getWitnessTable();
      v69 = &protocol witness table for String;
      v70 = a9;
      v68 = swift_getWitnessTable();
      v24 = swift_getWitnessTable();
      PathCoded.init(wrappedValue:)(&v74, v22, v23, v24, &v64);
    }

    return v64;
  }

  return result;
}

uint64_t sub_1001FEC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = *a4;
  v16[3] = &type metadata for JSONConverter;
  v16[4] = &protocol witness table for JSONConverter;
  v16[0] = v13;
  v16[1] = a6;
  v14 = *(a10 + 8);

  v14(v16, a8, a10);
  if (!v10)
  {
  }

  return a2;
}

uint64_t sub_1001FED0C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t *)@<X1>, char *a4@<X8>, uint64_t a5, void *a6)
{
  v10 = *a1;
  v11 = a1[1];
  type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(&a4[*(TupleTypeMetadata2 + 48)], v10, v11, a1 + 2);
  if (v6)
  {
    *a6 = v6;
  }

  else
  {
    *a4 = result;
    *(a4 + 1) = v14;
  }

  return result;
}

uint64_t sub_1001FEDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v20 = a1;
  v5 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = __chkstk_darwin(TupleTypeMetadata2);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  v13 = *(v7 + 16);
  v13(&v17 - v11, a2, TupleTypeMetadata2);
  v14 = *v12;
  v15 = *(v12 + 1);
  v18 = *(TupleTypeMetadata2 + 48);
  v13(v10, a2, TupleTypeMetadata2);

  v21 = v14;
  v22 = v15;
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  return (*(*(v5 - 8) + 8))(&v12[v18], v5);
}

uint64_t KeyedConverter.str(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyedConverter._getValue(forKey:)(a1, a2, a3, a4, a5, &v12);
  if (!v6)
  {
    v5 = v13;
    if (v13)
    {
      v8 = v12;
      if (v12 >> 61 == 3)
      {
      }

      else
      {
        v9 = type metadata accessor for DecodingError();
        swift_allocError();
        v11 = v10;
        sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
        *v11 = &type metadata for String;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.typeMismatch(_:), v9);
        swift_willThrow();
      }

      sub_100200D34(v8, v5);
    }
  }

  return v5;
}

void *KeyedConverter.str(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyedConverter._getValue(forKey:)(a1, a2, a3, a4, a5, &v12);
  if (!v6)
  {
    v5 = v13;
    if (v13)
    {
      v8 = v12;
      if (v12 >> 61 == 3)
      {
      }

      else
      {
        v9 = type metadata accessor for DecodingError();
        swift_allocError();
        v11 = v10;
        sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
        *v11 = &type metadata for String;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.typeMismatch(_:), v9);
        swift_willThrow();
      }

      sub_100200D34(v8, v5);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v5;
}

uint64_t KeyedConverter.str(forCheckedKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyedConverter._getValue(forKey:)(a1, a2, a3, a4, a5, &v18);
  if (!v6)
  {
    v5 = v19;
    if (v19)
    {
      v13 = v18;
      if (v18 >> 61 == 3)
      {
      }

      else
      {
        v15 = type metadata accessor for DecodingError();
        swift_allocError();
        v17 = v16;
        sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
        *v17 = &type metadata for String;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v15 - 8) + 104))(v17, enum case for DecodingError.typeMismatch(_:), v15);
        swift_willThrow();
      }

      sub_100200D34(v13, v5);
    }

    else
    {
      v20 = a4;
      v21 = a5;
      v14 = sub_100064BF8(&v18);
      (*(*(a4 - 8) + 16))(v14, a1, a4);
      v5 = sub_1001FD0F8(&v18, a2, a3);
      sub_100003C3C(&v18);
      swift_willThrow();
    }
  }

  return v5;
}

uint64_t KeyedConverter.uint(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyedConverter._getValue(forKey:)(a1, a2, a3, a4, a5, &v9);
  if (!v6)
  {
    v5 = v10;
    if (v10)
    {
      v7 = v9;
      sub_1002181A0(v9, v10);

      sub_100200D34(v7, v5);
    }
  }

  return v5;
}

uint64_t KeyedConverter.uint(forCheckedKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyedConverter._getValue(forKey:)(a1, a2, a3, a4, a5, &v15);
  if (!v6)
  {
    v5 = v16;
    if (v16)
    {
      v12 = v15;
      sub_1002181A0(v15, v16);

      sub_100200D34(v12, v5);
    }

    else
    {
      v17 = a4;
      v18 = a5;
      v13 = sub_100064BF8(&v15);
      (*(*(a4 - 8) + 16))(v13, a1, a4);
      v5 = sub_1001FD0F8(&v15, a2, a3);
      sub_100003C3C(&v15);
      swift_willThrow();
    }
  }

  return v5;
}

void *KeyedConverter.uint8(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = KeyedConverter._getValue(forKey:)(a1, a2, a3, a4, a5, &v9);
  if (!v5)
  {
    v7 = v10;
    if (v10)
    {
      v8 = v9;
      sub_1002181C0(v9, v10);

      sub_100200D34(v8, v7);
      return v7;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t KeyedConverter.uint8(forCheckedKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyedConverter._getValue(forKey:)(a1, a2, a3, a4, a5, &v15);
  if (!v6)
  {
    v5 = v16;
    if (v16)
    {
      v12 = v15;
      sub_1002181C0(v15, v16);

      sub_100200D34(v12, v5);
    }

    else
    {
      v17 = a4;
      v18 = a5;
      v13 = sub_100064BF8(&v15);
      (*(*(a4 - 8) + 16))(v13, a1, a4);
      v5 = sub_1001FD0F8(&v15, a2, a3);
      sub_100003C3C(&v15);
      swift_willThrow();
    }
  }

  return v5;
}

void *sub_1001FF83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  result = KeyedConverter._getValue(forKey:)(a1, a2, a3, a4, a5, &v11);
  if (!v6)
  {
    v9 = v12;
    if (v12)
    {
      v10 = v11;
      a6(v11, v12);

      sub_100200D34(v10, v9);
      return v9;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t KeyedConverter.url(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v26 = a6;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = KeyedConverter._getValue(forKey:)(a1, a2, a3, a4, a5, &v24);
  if (!v6)
  {
    v17 = v26;
    v18 = v25;
    if (v25)
    {
      v19 = v13;
      v20 = v24;
      sub_1001FC9DC(v24, v15);
      v22 = v17;
      v23 = sub_1000039E8(&qword_1004ACD08, &unk_1004046A0);
      (*(v19 + 32))(v22 + *(v23 + 44), v15, v12);

      sub_100200D34(v20, v18);
      *v22 = v18;
      return (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
    }

    else
    {
      v21 = sub_1000039E8(&qword_1004ACD08, &unk_1004046A0);
      return (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
    }
  }

  return result;
}

{
  v24 = a6;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = KeyedConverter._getValue(forKey:)(a1, a2, a3, a4, a5, &v22);
  if (!v6)
  {
    v17 = v24;
    v18 = v23;
    if (v23)
    {
      v19 = v22;
      sub_1001FC9DC(v22, v15);
      v21 = *(sub_1000039E8(&qword_1004ACD10, &qword_1003FA110) + 44);
      (*(v13 + 32))(v17 + v21, v15, v12);
      (*(v13 + 56))(v17 + v21, 0, 1, v12);

      result = sub_100200D34(v19, v18);
      *v17 = v18;
    }

    else
    {
      v20 = sub_1000039E8(&qword_1004ACD10, &qword_1003FA110);
      result = (*(v13 + 56))(v17 + *(v20 + 44), 1, 1, v12);
      *v17 = _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t KeyedConverter.url(forCheckedKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v27 = a6;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = KeyedConverter._getValue(forKey:)(a1, a2, a3, a4, a5, &v23);
  if (!v6)
  {
    v22 = v13;
    v17 = v27;
    v18 = v24;
    if (v24)
    {
      v19 = v23;
      sub_1001FC9DC(v23, v15);
      v21 = sub_1000039E8(&qword_1004ACD08, &unk_1004046A0);
      (*(v22 + 32))(v17 + *(v21 + 44), v15, v12);

      result = sub_100200D34(v19, v18);
      *v17 = v18;
    }

    else
    {
      v25 = a4;
      v26 = a5;
      v20 = sub_100064BF8(&v23);
      (*(*(a4 - 8) + 16))(v20, a1, a4);
      sub_1001FD0F8(&v23, a2, a3);
      sub_100003C3C(&v23);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t PathCoded<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a6;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v34 = v11;
  v35 = v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v33 - v14;
  v36 = *(a2 - 8);
  __chkstk_darwin(v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PathCoded(0, a2, a4, a5);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v33 - v20);
  sub_100003B20(a1, v38);
  v22 = v39;
  (*(a3 + 8))(v38, a2, a3);
  if (!v22)
  {
    v39 = v18;
    v33 = v19;
    v23 = v35;
    v24 = v36;
    if ((*(v36 + 48))(v15, 1, a2) == 1)
    {
      (*(v23 + 8))(v15, v34);
      sub_100003C3C(a1);
      return (*(v33 + 56))(v37, 1, 1, v39);
    }

    v26 = v17;
    (*(v24 + 32))(v17, v15, a2);
    (*(v24 + 16))(v21 + *(v39 + 44), v17, a2);
    v27 = a1[3];
    v28 = a1[4];
    sub_10000E2A8(a1, v27);
    v29 = (*(v28 + 8))(v27, v28);
    (*(v24 + 8))(v26, a2);
    *v21 = v29;
    v30 = v33;
    v31 = v37;
    v32 = v39;
    (*(v33 + 32))(v37, v21, v39);
    (*(v30 + 56))(v31, 0, 1, v32);
  }

  return sub_100003C3C(a1);
}

uint64_t ArrayConverter._get(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a2 + 16) <= a1)
  {
    v10 = type metadata accessor for DecodingError();
    swift_allocError();
    v12 = v11;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v12 = &type metadata for Any + 8;

    _StringGuts.grow(_:)(20);

    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v10 - 8) + 104))(v12, enum case for DecodingError.valueNotFound(_:), v10);
    return swift_willThrow();
  }

  else
  {
    sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376A40;
    *(inited + 56) = &type metadata for JSEnumDecoder.IndexKey;
    *(inited + 64) = sub_10020115C();
    *(inited + 32) = a1;
    *(inited + 40) = 0;

    result = sub_10034A3A8(inited);
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      *a4 = *(a2 + 8 * a1 + 32);
      a4[1] = a3;
    }
  }

  return result;
}

uint64_t ArrayConverter.convert<A>(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  result = ArrayConverter._get(at:)(a2, a3, a4, v11);
  if (!v6)
  {
    v11[3] = &type metadata for JSONConverter;
    v11[4] = &protocol witness table for JSONConverter;
    v10 = *(a6 + 8);

    v10(v11, a5, a6);
  }

  return result;
}

uint64_t ArrayConverter.container<A>(keyedBy:at:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ArrayConverter._get(at:)(a2, a3, a4, &v10);
  if (!v5)
  {
    if (v10 >> 61 == 5)
    {
      v4 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    }

    else
    {
      v4 = sub_1000039E8(&qword_1004ACCF0, &qword_1003FC360);
      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
      *v8 = v4;

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 8) + 104))(v8, enum case for DecodingError.typeMismatch(_:), v6);
      swift_willThrow();
    }
  }

  return v4;
}

uint64_t Array<A>.init(from:)(void *a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v5 = type metadata accessor for Optional();
  v31 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v32 = *(a2 - 8);
  v9 = __chkstk_darwin(v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = a1[3];
  v15 = a1[4];
  sub_10000E2A8(a1, v14);
  v16 = v41;
  (*(v15 + 24))(v43, v14, v15);
  if (v16)
  {
LABEL_2:
    sub_100003C3C(a1);
    return v13;
  }

  v39 = v8;
  v35 = v13;
  v36 = v11;
  v17 = static Array._allocateUninitialized(_:)();
  v46 = v17;
  v19 = v44;
  v18 = v45;
  sub_10000E2A8(v43, v44);
  result = (*(v18 + 16))(v19, v18);
  if ((result & 0x8000000000000000) == 0)
  {
    if (result)
    {
      v41 = 0;
      v13 = 0;
      v37 = (v32 + 6);
      v38 = a2;
      v33 = (v32 + 2);
      v34 = (v32 + 4);
      ++v31;
      ++v32;
      do
      {
        v22 = result;
        v23 = v5;
        v24 = a1;
        v25 = v44;
        v26 = v45;
        sub_10000E2A8(v43, v44);
        v28 = v38;
        v27 = v39;
        v29 = v41;
        (*(v26 + 24))(v38, v13, v38, v40, v25, v26);
        v41 = v29;
        if (v29)
        {

          sub_100003C3C(v43);
          a1 = v24;
          goto LABEL_2;
        }

        a1 = v24;
        if ((*v37)(v27, 1, v28) == 1)
        {
          v5 = v23;
          (*v31)(v27, v23);
        }

        else
        {
          v21 = v35;
          (*v34)(v35, v27, v28);
          (*v33)(v36, v21, v28);
          type metadata accessor for Array();
          Array.append(_:)();
          (*v32)(v21, v28);
          v5 = v23;
        }

        ++v13;
        result = v22;
      }

      while (v22 != v13);
      v17 = v46;
    }

    v42 = v17;
    type metadata accessor for Array();
    swift_getWitnessTable();
    v13 = Array.init<A>(_:)();
    sub_100003C3C(v43);
    sub_100003C3C(a1);
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100200B1C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Array<A>.init(from:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_100200B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100200BAC(a1, v6, a2, a3);
}

unint64_t sub_100200BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  __chkstk_darwin(a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_100200D34(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

unint64_t sub_100200DE8()
{
  result = qword_1004ACD00;
  if (!qword_1004ACD00)
  {
    sub_100003A94(&qword_1004ACCF0, &qword_1003FC360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACD00);
  }

  return result;
}

unint64_t sub_100200E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (Array.count.getter())
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = &_swiftEmptyDictionarySingleton;
  }

  result = Array._getCount()();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_100200B50(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t sub_10020115C()
{
  result = qword_1004ACD18[0];
  if (!qword_1004ACD18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1004ACD18);
  }

  return result;
}

uint64_t sub_100201408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100201460(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002014AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t *sub_100201504(unint64_t a1, uint64_t a2)
{
  if (a1 >> 61 == 5)
  {
    v3 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v4 = type metadata accessor for DecodingError();
    swift_allocError();
    v6 = v5;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v6 = sub_1000039E8(&qword_1004ACCF0, &qword_1003FC360);

    _StringGuts.grow(_:)(27);

    v10[0] = 0xD000000000000019;
    v10[1] = 0x8000000100440040;
    v10[3] = a1;
    v8._countAndFlagsBits = sub_1002F660C(1, v7);
    v3 = v10;
    String.append(_:)(v8);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v4 - 8) + 104))(v6, enum case for DecodingError.typeMismatch(_:), v4);
    swift_willThrow();
  }

  return v3;
}

uint64_t Config.init(from:)(uint64_t a1)
{
  v542 = v1;
  v2 = __chkstk_darwin(a1);
  v532 = v3;
  v4 = type metadata accessor for DecodingError.Context();
  v527 = *(v4 - 8);
  v528 = v4;
  __chkstk_darwin(v4);
  v526 = &v504 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000039E8(&qword_1004ACDA0, &qword_1003FA370);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  *&v537 = &v504 - v8;
  v9 = type metadata accessor for Config(0);
  v10 = (v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v504 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = _swiftEmptyArrayStorage;
  *(v12 + 8) = 0u;
  *(v12 + 24) = 0u;
  *(v12 + 40) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 104) = 0u;
  *(v12 + 15) = 0;
  *(v12 + 16) = _swiftEmptyArrayStorage;
  *(v12 + 17) = 0;
  v12[144] = 0;
  *(v12 + 19) = _swiftEmptyArrayStorage;
  *(v12 + 10) = 0u;
  *(v12 + 11) = 0u;
  *(v12 + 185) = 0u;
  sub_100218CA0(v604);
  *(v12 + 26) = _swiftEmptyArrayStorage;
  *&v540 = v12 + 208;
  *&v539 = v12 + 216;
  memcpy(v12 + 216, v604, 0x101uLL);
  *(v12 + 60) = _swiftEmptyArrayStorage;
  *(v12 + 61) = 0;
  v13 = &v12[v10[11]];
  v14 = *(v7 + 52);
  v15 = type metadata accessor for Config.Diavlo(0);
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  *v13 = _swiftEmptyArrayStorage;
  v16 = &v12[v10[12]];
  *v16 = _swiftEmptyArrayStorage;
  *(v16 + 1) = 0;
  v535 = v16;
  *&v536 = v13;
  v17 = &v12[v10[13]];
  *v17 = _swiftEmptyArrayStorage;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  v534 = v17;
  v17[88] = 0;
  v18 = &v12[v10[14]];
  *v18 = _swiftEmptyArrayStorage;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  *(v18 + 40) = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 72) = 0u;
  v517 = v18;
  *(v18 + 88) = 0u;
  v19 = &v12[v10[15]];
  *v19 = _swiftEmptyArrayStorage;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  v518 = v19;
  v19[32] = 0;
  v20 = &v12[v10[16]];
  *v20 = _swiftEmptyArrayStorage;
  *(v20 + 40) = 0u;
  v519 = v20;
  v520 = v20 + 40;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v21 = &v12[v10[17]];
  *v21 = _swiftEmptyArrayStorage;
  *(v21 + 1) = 0;
  v521 = v21;
  v22 = &v12[v10[18]];
  *v22 = _swiftEmptyArrayStorage;
  *(v22 + 8) = 0u;
  v522 = v22 + 8;
  v523 = v22;
  *(v22 + 24) = 0u;
  *(v22 + 40) = 0u;
  *(v22 + 49) = 0u;
  v23 = &v12[v10[19]];
  *v23 = _swiftEmptyArrayStorage;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  v538 = v23;
  *(v23 + 40) = 0;
  v24 = &v12[v10[20]];
  *v24 = _swiftEmptyArrayStorage;
  *(v24 + 1) = 0;
  v533 = v24;
  v25 = &v12[v10[21]];
  *v25 = _swiftEmptyArrayStorage;
  *(v25 + 1) = 0;
  v516 = v25;
  v26 = &v12[v10[22]];
  *v26 = _swiftEmptyArrayStorage;
  *(v26 + 1) = 0xF000000000000007;
  v525 = v26;
  v27 = &v12[v10[23]];
  *v27 = _swiftEmptyArrayStorage;
  *(v27 + 1) = 0;
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v27[32] = 0;
  v28 = &v12[v10[24]];
  *(v28 + 8) = 0u;
  v529 = v28 + 8;
  *v28 = _swiftEmptyArrayStorage;
  *(v28 + 24) = 0u;
  *(v28 + 40) = 0u;
  v29 = &v12[v10[25]];
  *v29 = _swiftEmptyArrayStorage;
  *(v29 + 8) = 0u;
  v530 = v29 + 8;
  *(v29 + 24) = 0u;
  *(v29 + 40) = 0u;
  *(v29 + 56) = 0u;
  *(v29 + 72) = 0u;
  *(v29 + 11) = 0;
  v29[96] = -1;
  v30 = &v12[v10[26]];
  *v30 = _swiftEmptyArrayStorage;
  *(v30 + 1) = 0;
  v524 = v30;
  v31 = &v12[v10[27]];
  *v31 = _swiftEmptyArrayStorage;
  *(v31 + 1) = 0;
  v531 = v31;
  v32 = &v12[v10[28]];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = v2;
  v34 = *(v2 + 24);
  v35 = *(v2 + 32);
  v605 = v33;
  sub_10000E2A8(v33, v34);
  v541 = *(v35 + 16);
  v36 = sub_100218CCC();
  v37 = v542;
  v38 = (v541)(&type metadata for Config.VersionOneKeys, &type metadata for Config.VersionOneKeys, v36, v34, v35);
  if (v37)
  {
    sub_100220BA8(v12, type metadata accessor for Config);
    goto LABEL_6;
  }

  v512 = v27;
  v513 = v28;
  v514 = v29;
  v515 = v39;
  v541 = v38;
  v542 = v12;
  v40 = v605[3];
  v41 = v605[4];
  sub_10000E2A8(v605, v40);
  v42 = *(v41 + 40);
  v43 = sub_100218D20();
  v44 = sub_100218D74();
  v42(v601, &type metadata for Config.Authentication, &type metadata for Config.Authentication, &protocol witness table for Config.Authentication, v43, v44, v40, v41);
  v596 = v601[4];
  v597 = v601[5];
  v598 = v601[6];
  v599 = v601[7];
  v592 = v601[0];
  v593 = v601[1];
  v594 = v601[2];
  v595 = v601[3];
  v45 = v542;
  v46 = *v542;
  v47 = *(v542 + 1);
  v48 = *(v542 + 2);
  v600[3] = *(v542 + 3);
  v600[2] = v48;
  v600[1] = v47;
  v600[0] = v46;
  v49 = *(v542 + 4);
  v50 = *(v542 + 5);
  v51 = *(v542 + 6);
  v600[7] = *(v542 + 7);
  v600[6] = v51;
  v600[5] = v50;
  v600[4] = v49;
  sub_100013F2C(v600, &qword_1004ACDC0, &qword_1003FA378);
  v52 = v597;
  *(v45 + 64) = v596;
  *(v45 + 80) = v52;
  v53 = v599;
  *(v45 + 96) = v598;
  *(v45 + 112) = v53;
  v54 = v593;
  *v45 = v592;
  *(v45 + 16) = v54;
  v55 = v595;
  *(v45 + 32) = v594;
  *(v45 + 48) = v55;
  v56 = v541;
  v57 = v515;
  *(v45 + 128) = sub_100208FB0(0, v541, v515);
  *(v45 + 136) = v58;
  *(v45 + 144) = v59;
  sub_100209124(1, v56, v57, v591);
  v60 = v540;
  memcpy(v590, v540, 0x109uLL);
  sub_100013F2C(v590, &qword_1004ACDC8, &unk_1003FA380);
  memcpy(v60, v591, 0x109uLL);
  v61 = sub_10020AC98(33, v56, v57);
  v65 = v64;
  *&v540 = v61;
  sub_1002060D0(34, v56, v57, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC, v589);
  v66 = v589[1];
  if (v589[1])
  {
    v67 = v589[0];
    v511 = sub_10021830C(v589[0], v589[1], &type metadata for UInt);

    sub_100200D34(v67, v66);
    v68 = v66;
  }

  else
  {
    v68 = 0;
    v511 = 0;
    v66 = _swiftEmptyArrayStorage;
  }

  sub_100209124(40, v56, v57, v589);
  LODWORD(v510) = v65;
  memcpy(v588, v589, 0x109uLL);
  v69 = sub_10020BF08(42, v56, v57, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC);
  v71 = v70;
  v509 = v66;
  *&v508 = v72;
  v73 = v69;
  v74 = sub_10020A33C(25, v56, v57, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC);
  v507 = v73;
  v76 = v74;
  if (v75 == 2)
  {
  }

  else
  {
    v77 = v75;
    memcpy(v587, v539, 0x101uLL);
    if (sub_100218DC8(v587) == 1)
    {
      sub_100219B90(v546);
      *(&v551[5] + 8) = v546[5];
      *(&v551[6] + 8) = v547;
      *(&v551[7] + 8) = v548;
      *(&v551[1] + 8) = v546[1];
      *(&v551[2] + 8) = v546[2];
      *(&v551[3] + 8) = v546[3];
      *(&v551[4] + 8) = v546[4];
      BYTE8(v551[8]) = v549;
      *(v551 + 8) = v546[0];
      *&v551[0] = _swiftEmptyArrayStorage;
      *(&v551[9] + 8) = 0u;
      *(&v551[10] + 8) = 0u;
      *(&v551[11] + 8) = 0u;
      *(&v551[12] + 8) = 0u;
      *(&v551[13] + 8) = 0u;
      *&v551[9] = _swiftEmptyArrayStorage;
      *(&v551[14] + 1) = _swiftEmptyArrayStorage;
      *&v551[15] = 0;
      *(&v551[15] + 1) = _swiftEmptyArrayStorage;
      LOBYTE(v551[16]) = 2;
      DInitData.init(rawValue:)();
      v78 = v539;
      memcpy(v552, v539, 0x101uLL);
      sub_100013F2C(v552, &qword_1004ACE90, &unk_1003FA3F0);
      memcpy(v78, v551, 0x101uLL);
    }

    v79 = Config.cryptex.modify();
    v81 = v80;
    memmove(v552, v80, 0x101uLL);
    if (sub_100218DC8(v552) == 1)
    {
    }

    else
    {

      v81[31] = v76;
      *(v81 + 256) = v77;
    }

    (v79)(v551, 0);
  }

  if (v510 == 2 && !v68 && (memcpy(v587, &v588[8], 0x101uLL), sub_100218DC8(v587) == 1) && !v71)
  {

    sub_100013F2C(v588, &qword_1004ACDC8, &unk_1003FA380);
  }

  else
  {
    v82 = v539;
    memcpy(v587, v539, 0x101uLL);
    if (sub_100218DC8(v587) == 1)
    {
      sub_100219B90(v546);
      *(&v551[5] + 8) = v546[5];
      *(&v551[6] + 8) = v547;
      *(&v551[7] + 8) = v548;
      *(&v551[1] + 8) = v546[1];
      *(&v551[2] + 8) = v546[2];
      *(&v551[3] + 8) = v546[3];
      *(&v551[4] + 8) = v546[4];
      BYTE8(v551[8]) = v549;
      *(v551 + 8) = v546[0];
      *&v551[0] = _swiftEmptyArrayStorage;
      *(&v551[9] + 8) = 0u;
      *(&v551[10] + 8) = 0u;
      *(&v551[11] + 8) = 0u;
      *(&v551[12] + 8) = 0u;
      *(&v551[13] + 8) = 0u;
      *&v551[9] = _swiftEmptyArrayStorage;
      *(&v551[14] + 1) = _swiftEmptyArrayStorage;
      *&v551[15] = 0;
      *(&v551[15] + 1) = _swiftEmptyArrayStorage;
      LOBYTE(v551[16]) = 2;
      DInitData.init(rawValue:)();
      memcpy(v552, v82, 0x101uLL);
      sub_100013F2C(v552, &qword_1004ACE90, &unk_1003FA3F0);
      memcpy(v82, v551, 0x101uLL);
    }

    v83 = v82[7];
    v552[6] = v82[6];
    v552[7] = v83;
    v552[8] = v82[8];
    v84 = *(v82 + 18);
    v85 = v82[3];
    v552[2] = v82[2];
    v552[3] = v85;
    v86 = v82[5];
    v552[4] = v82[4];
    v552[5] = v86;
    v87 = v82[1];
    v552[0] = *v82;
    v552[1] = v87;
    v88 = *(v542 + 46);
    *&v552[14] = *(v542 + 55);
    v89 = *(v542 + 424);
    v552[12] = *(v542 + 408);
    v552[13] = v89;
    v90 = *(v542 + 376);
    v552[11] = *(v542 + 392);
    v552[10] = v90;
    *(&v552[14] + 8) = *(v542 + 28);
    *(&v552[15] + 1) = *(v542 + 457);
    *&v552[9] = v84;
    *(&v552[9] + 1) = v88;
    if (sub_100218DC8(v552) == 1 || !v88)
    {
      v91 = Config.cryptex.modify();
      v93 = v92;
      memmove(v551, v92, 0x101uLL);
      if (sub_100218DC8(v551) != 1)
      {
        v94 = *(v93 + 168);
        v95 = *(v93 + 200);
        v546[2] = *(v93 + 184);
        v546[3] = v95;
        v546[4] = *(v93 + 216);
        v546[0] = *(v93 + 152);
        v546[1] = v94;
        *(v93 + 19) = _swiftEmptyArrayStorage;
        *(v93 + 20) = 0;
        v93[168] = 1;
        *(v93 + 22) = _swiftEmptyArrayStorage;
        v93[184] = 2;
        *(v93 + 24) = _swiftEmptyArrayStorage;
        *(v93 + 25) = 0;
        *(v93 + 27) = 0;
        *(v93 + 28) = 0;
        *(v93 + 26) = _swiftEmptyArrayStorage;
        sub_100013F2C(v546, &qword_1004ACEA0, &unk_1003FA400);
      }

      (v91)(v545, 0);
    }

    memcpy(v551, &v588[8], 0x101uLL);
    if (sub_100218DC8(v551) == 1)
    {
      sub_100013F2C(v588, &qword_1004ACDC8, &unk_1003FA380);
      v96 = Config.cryptex.modify();
      memmove(v546, v97, 0x101uLL);
      if (sub_100218DC8(v546) == 1)
      {
        (v96)(v545, 0);
      }

      else
      {
        v100 = Config.Cryptex.cache.modify();
        if (*v99)
        {
          v101 = v99;

          v101[5] = _swiftEmptyArrayStorage;
          v101[6] = 0;
        }

        (v100)(v543, 0);
        (v96)(v545, 0);
      }
    }

    else
    {
      memcpy(v545, &v588[8], sizeof(v545));
      sub_100219BAC(v545, v543);
      sub_100013F2C(v588, &qword_1004ACDC8, &unk_1003FA380);
      v506 = Config.cryptex.modify();
      memmove(v546, v98, 0x101uLL);
      if (sub_100218DC8(v546) == 1)
      {
        sub_100013F2C(&v588[8], &qword_1004ACE90, &unk_1003FA3F0);
        (v506)(v543, 0);
      }

      else
      {
        v505 = Config.Cryptex.cache.modify();
        if (*v102)
        {
          v103 = v102;
          v104 = *(&v551[14] + 1);
          v105 = *&v551[15];

          sub_100013F2C(&v588[8], &qword_1004ACE90, &unk_1003FA3F0);

          v103[5] = v104;
          v103[6] = v105;
        }

        else
        {
          sub_100013F2C(&v588[8], &qword_1004ACE90, &unk_1003FA3F0);
        }

        (v505)(&v571, 0);
        (v506)(v543, 0);
      }
    }

    v106 = Config.cryptex.modify();
    memmove(v546, v107, 0x101uLL);
    if (sub_100218DC8(v546) == 1)
    {

      (v106)(v545, 0);
    }

    else
    {
      v109 = Config.Cryptex.cache.modify();
      if (*v108)
      {
        v110 = v108;

        v111 = v511;
        *v110 = v509;
        v110[1] = v111;
        *(v110 + 16) = v68 == 0;
      }

      else
      {
      }

      (v109)(v543, 0);
      (v106)(v545, 0);
    }

    v112 = Config.cryptex.modify();
    memmove(v545, v113, 0x101uLL);
    if (sub_100218DC8(v545) == 1)
    {

      (v112)(v543, 0);
    }

    else
    {
      v115 = Config.Cryptex.cache.modify();
      if (*v114)
      {
        v116 = v114;

        v116[3] = v540;
        *(v116 + 32) = v510;
      }

      else
      {
      }

      (v115)(&v571, 0);
      (v112)(v543, 0);
    }

    v117 = Config.cryptex.modify();
    memmove(v543, v118, 0x101uLL);
    if (sub_100218DC8(v543) == 1)
    {

      (v117)(&v571, 0);
    }

    else
    {
      v120 = Config.Cryptex.cache.modify();
      if (*v119)
      {
        v121 = v119;

        v122 = v508;
        v121[7] = v507;
        v121[8] = v122;
        v121[9] = v71;
      }

      else
      {
      }

      (v120)(v570, 0);
      (v117)(&v571, 0);
    }
  }

  v123 = sub_10020D470(39, v541, v515);
  *&v540 = v124;
  v125 = v123;
  if (v126)
  {
  }

  else
  {
    memcpy(v587, v539, 0x101uLL);
    if (sub_100218DC8(v587) == 1)
    {
      sub_100219B90(v546);
      *(&v551[5] + 8) = v546[5];
      *(&v551[6] + 8) = v547;
      *(&v551[7] + 8) = v548;
      *(&v551[1] + 8) = v546[1];
      *(&v551[2] + 8) = v546[2];
      *(&v551[3] + 8) = v546[3];
      *(&v551[4] + 8) = v546[4];
      BYTE8(v551[8]) = v549;
      *(v551 + 8) = v546[0];
      *&v551[0] = _swiftEmptyArrayStorage;
      *(&v551[9] + 8) = 0u;
      *(&v551[10] + 8) = 0u;
      *(&v551[11] + 8) = 0u;
      *(&v551[12] + 8) = 0u;
      *(&v551[13] + 8) = 0u;
      *&v551[9] = _swiftEmptyArrayStorage;
      *(&v551[14] + 1) = _swiftEmptyArrayStorage;
      *&v551[15] = 0;
      *(&v551[15] + 1) = _swiftEmptyArrayStorage;
      LOBYTE(v551[16]) = 2;
      DInitData.init(rawValue:)();
      v127 = v539;
      memcpy(v552, v539, 0x101uLL);
      sub_100013F2C(v552, &qword_1004ACE90, &unk_1003FA3F0);
      memcpy(v127, v551, 0x101uLL);
    }

    memcpy(v550, v539, 0x101uLL);
    memcpy(v552, v539, 0x101uLL);
    if (sub_100218DC8(v552) == 1 || (v551[6] = *&v550[13], v551[7] = *&v550[15], LOBYTE(v551[8]) = v550[17], v551[2] = *&v550[5], v551[3] = *&v550[7], v551[5] = *&v550[11], v551[4] = *&v550[9], v551[1] = *&v550[3], v551[0] = *&v550[1], sub_100218DC8(v551) == 1))
    {
      v128 = Config.cryptex.modify();
      v130 = v129;
      memmove(v551, v129, 0x101uLL);
      if (sub_100218DC8(v551) != 1)
      {
        LOBYTE(v546[0]) = 1;
        LOBYTE(v571) = 1;
        *v545 = _swiftEmptyArrayStorage;
        *&v545[8] = 0;
        *&v545[16] = 0;
        *&v545[24] = _swiftEmptyArrayStorage;
        v545[32] = 2;
        *&v545[40] = _swiftEmptyArrayStorage;
        *&v545[48] = 0;
        v545[56] = 1;
        *&v545[64] = _swiftEmptyArrayStorage;
        *&v545[72] = 0;
        v545[80] = 1;
        *&v545[88] = _swiftEmptyArrayStorage;
        *&v545[96] = 0;
        v545[104] = 1;
        *&v545[112] = _swiftEmptyArrayStorage;
        *&v545[120] = 0;
        v545[128] = 1;
        DInitData.init(rawValue:)();
        v131 = *(v130 + 88);
        v132 = *(v130 + 104);
        v133 = *(v130 + 120);
        v549 = v130[136];
        v546[0] = *(v130 + 8);
        v134 = *(v130 + 24);
        v135 = *(v130 + 40);
        v136 = *(v130 + 72);
        v546[3] = *(v130 + 56);
        v546[4] = v136;
        v546[1] = v134;
        v546[2] = v135;
        v547 = v132;
        v548 = v133;
        v546[5] = v131;
        v137 = *&v545[80];
        v138 = *&v545[96];
        v139 = *&v545[112];
        v130[136] = v545[128];
        *(v130 + 8) = *v545;
        v140 = *&v545[16];
        v141 = *&v545[32];
        v142 = *&v545[48];
        *(v130 + 72) = *&v545[64];
        *(v130 + 56) = v142;
        *(v130 + 40) = v141;
        *(v130 + 24) = v140;
        *(v130 + 120) = v139;
        *(v130 + 104) = v138;
        *(v130 + 88) = v137;
        sub_100013F2C(v546, &qword_1004ACE98, &qword_100408DE0);
      }

      (v128)(v543, 0);
    }

    v143 = Config.cryptex.modify();
    memmove(v551, v144, 0x101uLL);
    if (sub_100218DC8(v551) == 1)
    {

      (v143)(v545, 0);
    }

    else
    {
      v145 = Config.Analytics.submit.modify();
      v147 = v146;
      memmove(v546, v146, 0x81uLL);
      if (sub_100218DC8(v546) == 1)
      {
      }

      else
      {

        v148 = v540;
        v147[5] = v125;
        v147[6] = v148;
        *(v147 + 56) = 0;
      }

      (v145)(v543, 0);
      (v143)(v545, 0);
    }
  }

  v149 = v605[3];
  v150 = v605[4];
  sub_10000E2A8(v605, v149);
  v151 = *(v150 + 40);
  v152 = sub_100218DE0();
  v153 = sub_100218E34();
  v151(v587, &type metadata for Config.Analytics, &type metadata for Config.Analytics, &protocol witness table for Config.Analytics, v152, v153, v149, v150);
  v154 = *&v587[0];
  LOBYTE(v149) = BYTE8(v587[2]);
  v155 = v538;
  v539 = *(&v587[1] + 8);
  v540 = *(v587 + 8);

  sub_100218E88(*(v155 + 8), *(v155 + 16), *(v155 + 24), *(v155 + 32), *(v155 + 40));
  *v155 = v154;
  v156 = v540;
  *(v155 + 24) = v539;
  *(v155 + 8) = v156;
  *(v155 + 40) = v149;
  v157 = v605[3];
  v158 = v605[4];
  sub_10000E2A8(v605, v157);
  v159 = *(v158 + 40);
  v160 = sub_100218F08();
  v161 = sub_100218F5C();
  v159(v587, &type metadata for Config.SecurityPolicy, &type metadata for Config.SecurityPolicy, &protocol witness table for Config.SecurityPolicy, v160, v161, v157, v158);
  v162 = *&v587[0];
  v163 = *(&v587[2] + 1);
  LOBYTE(v158) = v587[3];
  v164 = v542;
  v539 = *(&v587[1] + 8);
  v540 = *(v587 + 8);

  sub_1001FA5D8(*(v164 + 160));
  *(v164 + 152) = v162;
  v165 = v539;
  *(v164 + 160) = v540;
  *(v164 + 176) = v165;
  *(v164 + 192) = v163;
  *(v164 + 200) = v158;
  sub_10020926C(2, v541, v515, v537);
  v166 = v536;
  sub_100013F2C(v536, &qword_1004ACDA0, &qword_1003FA370);
  sub_10003E154(v537, v166, &qword_1004ACDA0, &qword_1003FA370);
  v167 = sub_10020946C(14, v541, v515, sub_10020EEA4);
  v169 = v168;
  v170 = v535;

  *v170 = v167;
  v170[1] = v169;
  v171 = v605[3];
  v172 = v605[4];
  sub_10000E2A8(v605, v171);
  v173 = *(v172 + 40);
  v174 = sub_100218FB0();
  v175 = sub_100219004();
  v173(v585, &type metadata for Config.Finish, &type metadata for Config.Finish, &protocol witness table for Config.Finish, v174, v175, v171, v172);
  v580 = v585[2];
  v581 = v585[3];
  v582[0] = v586[0];
  *(v582 + 9) = *(v586 + 9);
  v578 = v585[0];
  v579 = v585[1];
  v176 = v534;
  v177 = *(v534 + 3);
  v583[2] = *(v534 + 2);
  v583[3] = v177;
  v584[0] = *(v534 + 4);
  *(v584 + 9) = *(v534 + 73);
  v178 = *(v534 + 1);
  v583[0] = *v534;
  v583[1] = v178;
  sub_100013F2C(v583, &qword_1004ACE00, &qword_1003FC300);
  v179 = v581;
  *(v176 + 2) = v580;
  *(v176 + 3) = v179;
  *(v176 + 4) = v582[0];
  *(v176 + 73) = *(v582 + 9);
  v180 = v579;
  *v176 = v578;
  *(v176 + 1) = v180;
  v181 = sub_10020946C(5, v541, v515, sub_10020EABC);
  v183 = v182;
  v184 = v533;

  *v184 = v181;
  v184[1] = v183;
  v538 = sub_100209BA0(6, v541, v515);
  *&v536 = v185;
  *&v540 = 0;
  if (v538)
  {
    v186 = sub_100186DC4(_swiftEmptyArrayStorage);
    *&v551[0] = v186;
    v509 = *(v538 + 16);
    if (v509)
    {
      *&v537 = 0;
      v508 = xmmword_100376A40;
      while (1)
      {
        v190 = v540;
        ArrayConverter._get(at:)(v537, v538, v536, v587);
        if (v190)
        {

          goto LABEL_123;
        }

        v191 = *(&v587[0] + 1);
        if (*&v587[0] >> 61 != 5)
        {

          v226 = sub_1000039E8(&qword_1004ACCF0, &qword_1003FC360);
          v227 = type metadata accessor for DecodingError();
          swift_allocError();
          v229 = v228;
          sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
          *v229 = v226;

          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          (*(*(v227 - 8) + 104))(v229, enum case for DecodingError.typeMismatch(_:), v227);
          swift_willThrow();

          goto LABEL_122;
        }

        v192 = *((*&v587[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        swift_bridgeObjectRetain_n();

        v193 = sub_10020C7E4(0, v192, v191);
        v533 = v194;
        v534 = v193;
        v510 = v195;
        sub_100207674(1u, v192, v587);
        *&v540 = 0;
        v511 = *&v587[0];
        if (!*(v192 + 16))
        {
          break;
        }

        v196 = sub_100013364(0x746163696C707061, 0xEE0064695F6E6F69);
        v535 = 0x696C707041796E41;
        *&v539 = 0xEE006E6F69746163;
        if (v197)
        {
          v198 = *(*(v192 + 56) + 8 * v196);
          sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
          v199 = swift_allocObject();
          *(v199 + 16) = v508;
          *(v199 + 56) = &type metadata for Config.PrefsVersionOneKeys;
          *(v199 + 64) = sub_100219B3C();
          *(v199 + 32) = 2;
          *&v587[0] = v191;

          sub_10034A3A8(v199);
          if (v198 >> 61 != 3)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_121;
          }

          v200 = *((v198 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v535 = *((v198 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          *&v539 = v200;
        }

        if (!*(v192 + 16))
        {
          goto LABEL_92;
        }

        v201 = sub_100013364(0x656D616E72657375, 0xE800000000000000);
        if ((v202 & 1) == 0)
        {
          goto LABEL_92;
        }

        v203 = *(*(v192 + 56) + 8 * v201);
        sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
        v204 = swift_allocObject();
        *(v204 + 16) = v508;
        *(v204 + 56) = &type metadata for Config.PrefsVersionOneKeys;
        *(v204 + 64) = sub_100219B3C();
        *(v204 + 32) = 3;
        *&v587[0] = v191;

        sub_10034A3A8(v204);

        if (v203 >> 61 != 3)
        {

LABEL_121:
          v262 = type metadata accessor for DecodingError();
          swift_allocError();
          v264 = v263;
          sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
          *v264 = &type metadata for String;

          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          (*(*(v262 - 8) + 104))(v264, enum case for DecodingError.typeMismatch(_:), v262);
          swift_willThrow();

LABEL_122:

LABEL_123:
          sub_100220BA8(v542, type metadata accessor for Config);
LABEL_5:

          goto LABEL_6;
        }

        v205 = *((v203 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v206 = *((v203 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

LABEL_93:
        v207 = *&v551[0];
        if (!*(*&v551[0] + 16) || (sub_100013364(v205, v206), (v208 & 1) == 0))
        {
          v209 = sub_100186DD8(_swiftEmptyArrayStorage);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v587[0] = v207;
          sub_1001835F8(v209, v205, v206, isUniquelyReferenced_nonNull_native);

          v207 = *&v587[0];
          *&v551[0] = *&v587[0];
        }

        if (!*(v207 + 16) || (v211 = sub_100013364(v205, v206), (v212 & 1) == 0) || !*(*(*(v207 + 56) + 8 * v211) + 16) || (, sub_100013364(v535, v539), v214 = v213, , (v214 & 1) == 0))
        {
          v216 = sub_10020FF00(v587, v205, v206);
          if (*v215)
          {
            v217 = v215;
            v218 = sub_100186EE8(_swiftEmptyArrayStorage);
            v219 = v539;

            v220 = swift_isUniquelyReferenced_nonNull_native();
            *&v552[0] = *v217;
            sub_10018360C(v218, v535, v219, v220);

            *v217 = *&v552[0];
          }

          (v216)(v587, 0);
        }

        v221 = sub_10020FF00(v587, v205, v206);
        if (!*v222)
        {

          goto LABEL_107;
        }

        v224 = sub_10020FF88(v552, v535, v539);
        if (!*v223)
        {

          (v224)(v552, 0);
LABEL_107:

          (v221)(v587, 0);

          goto LABEL_80;
        }

        v187 = v223;
        v188 = v511;

        v189 = swift_isUniquelyReferenced_nonNull_native();
        *&v546[0] = *v187;
        *v187 = 0x8000000000000000;
        sub_1001837C0(v188, v510, v533, v189);
        *v187 = *&v546[0];

        (v224)(v552, 0);

        (v221)(v587, 0);

LABEL_80:
        *&v537 = v537 + 1;
        if (v509 == v537)
        {
          v225 = *&v551[0];
          goto LABEL_112;
        }
      }

      *&v539 = 0xEE006E6F69746163;
      v535 = 0x696C707041796E41;
LABEL_92:

      swift_bridgeObjectRelease_n();
      v206 = 0xE700000000000000;
      v205 = 0x72657355796E41;
      goto LABEL_93;
    }

    v225 = v186;
LABEL_112:

    if (*(v225 + 16))
    {
      v230 = v516;

      *(v230 + 1) = v225;
    }

    else
    {
    }
  }

  v231 = v605[3];
  v232 = v605[4];
  sub_10000E2A8(v605, v231);
  v233 = *(v232 + 40);
  v234 = sub_100219058();
  v235 = sub_1002190AC();
  v236 = v540;
  v233(v545, &type metadata for Config.Identification, &type metadata for Config.Identification, &protocol witness table for Config.Identification, v234, v235, v231, v232);
  if (v236)
  {
    sub_100220BA8(v542, type metadata accessor for Config);

    goto LABEL_5;
  }

  v575 = *&v545[64];
  v576 = *&v545[80];
  v577 = *&v545[96];
  v571 = *v545;
  v572 = *&v545[16];
  v574 = *&v545[48];
  v573 = *&v545[32];
  v237 = v517;
  v238 = *(v517 + 1);
  v543[0] = *v517;
  v543[1] = v238;
  v239 = *(v517 + 2);
  v240 = *(v517 + 3);
  v241 = *(v517 + 4);
  v242 = *(v517 + 5);
  v544 = *(v517 + 12);
  v543[4] = v241;
  v543[5] = v242;
  v543[2] = v239;
  v543[3] = v240;
  sub_100013F2C(v543, &qword_1004ACE18, &unk_1003FA390);
  v243 = v576;
  *(v237 + 4) = v575;
  *(v237 + 5) = v243;
  *(v237 + 12) = v577;
  v244 = v572;
  *v237 = v571;
  *(v237 + 1) = v244;
  v245 = v574;
  *(v237 + 2) = v573;
  *(v237 + 3) = v245;
  sub_10020956C(10, v541, v515, v602);
  v246 = v518;

  sub_1002191A8(*(v246 + 1));
  v247 = v602[1];
  *v246 = v602[0];
  *(v246 + 1) = v247;
  v246[32] = v603;
  v250 = sub_10020B9E0(38, v541, v515);
  if (v250)
  {
    v251 = v248;
    v252 = v249;
    v253 = v519;
    v254 = *(v519 + 1);
    v255 = *(v519 + 6);
    *&v540 = *(v519 + 5);
    *&v539 = v255;

    sub_100219ADC(v254);
    *(v253 + 1) = _swiftEmptyArrayStorage;
    *(v253 + 2) = v251;
    *(v253 + 3) = v252;
    *(v253 + 4) = _swiftEmptyArrayStorage;
    v256 = v520;
    *v520 = 0;
    v256[1] = 0;
    v258 = Config.meta.modify();
    if (*v257)
    {
      v259 = v257;
      v261 = v257[1];
      v260 = v257[2];

      *v259 = v250;
      v259[1] = v261;
      v259[2] = v260;
    }

    else
    {
    }

    (v258)(v587, 0);
  }

  v538 = sub_100209BA0(11, v541, v515);
  *&v536 = v265;
  if (v538)
  {
    *&v540 = sub_100186EE8(_swiftEmptyArrayStorage);
    v534 = *(v538 + 16);
    if (v534)
    {
      v266 = 0;
      while (1)
      {
        ArrayConverter._get(at:)(v266, v538, v536, v587);
        v267 = *(&v587[0] + 1);
        if (*&v587[0] >> 61 != 5)
        {

          v328 = sub_1000039E8(&qword_1004ACCF0, &qword_1003FC360);
          v329 = type metadata accessor for DecodingError();
          swift_allocError();
          v331 = v330;
          sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
          *v331 = v328;

          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          (*(*(v329 - 8) + 104))(v331, enum case for DecodingError.typeMismatch(_:), v329);
          swift_willThrow();

          sub_100220BA8(v542, type metadata accessor for Config);

          v62 = v605;
          return sub_100003C3C(v62);
        }

        v268 = *((*&v587[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v535 = sub_10020CAD4(0, v268, v267);
        *&v537 = v269;
        *&v539 = v270;
        if (!*(v268 + 16))
        {
          break;
        }

        v271 = sub_100013364(0x65756C6176, 0xE500000000000000);
        if ((v272 & 1) == 0)
        {
          break;
        }

        v273 = *(*(v268 + 56) + 8 * v271);
        swift_retain_n();

        v274 = v540;
        v275 = swift_isUniquelyReferenced_nonNull_native();
        *&v587[0] = v274;
        v277 = sub_100013364(v537, v539);
        v278 = *(v274 + 2);
        v279 = (v276 & 1) == 0;
        v280 = v278 + v279;
        if (__OFADD__(v278, v279))
        {
          __break(1u);
LABEL_192:

          goto LABEL_193;
        }

        v281 = v276;
        if (*(v540 + 24) >= v280)
        {
          if ((v275 & 1) == 0)
          {
            sub_10018420C();
          }
        }

        else
        {
          sub_100182348(v280, v275);
          v282 = sub_100013364(v537, v539);
          if ((v281 & 1) != (v283 & 1))
          {
LABEL_244:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v277 = v282;
        }

        *&v540 = *&v587[0];
        if (v281)
        {
          *(*(v540 + 56) + 8 * v277) = v273;
        }

        else
        {
          v284 = v540;
          *(v540 + 8 * (v277 >> 6) + 64) |= 1 << v277;
          v285 = (v284[6] + 16 * v277);
          v286 = v539;
          *v285 = v537;
          v285[1] = v286;
          *(v284[7] + 8 * v277) = v273;
          v287 = v284[2];
          v288 = __OFADD__(v287, 1);
          v289 = v287 + 1;
          if (v288)
          {
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            sub_1000039E8(&qword_1004ACE68, &qword_1003FA3C8);
            v366 = swift_allocObject();
            *(v366 + 16) = xmmword_100376A40;
            *(v366 + 32) = v277;
            *(v366 + 40) = v266;
            v367 = *(&v552[11] + 8);
            v368 = *(&v552[13] + 8);
            *(v366 + 240) = *(&v552[12] + 8);
            *(v366 + 256) = v368;
            *(v366 + 272) = *(&v552[14] + 8);
            v369 = *(&v552[7] + 8);
            v370 = *(&v552[9] + 8);
            *(v366 + 176) = *(&v552[8] + 8);
            *(v366 + 192) = v370;
            *(v366 + 208) = *(&v552[10] + 8);
            *(v366 + 224) = v367;
            v371 = *(&v552[3] + 8);
            v372 = *(&v552[5] + 8);
            *(v366 + 112) = *(&v552[4] + 8);
            *(v366 + 128) = v372;
            *(v366 + 144) = *(&v552[6] + 8);
            *(v366 + 160) = v369;
            v373 = *(&v552[1] + 8);
            *(v366 + 48) = *(v552 + 8);
            *(v366 + 64) = v373;
            *(v366 + 80) = *(&v552[2] + 8);
            *(v366 + 96) = v371;

            sub_100189980(v552 + 8, v546);
            sub_100013F2C(v551, &qword_1004ACE70, &unk_1003FA3D0);

            v374 = sub_1001875D8(v366);
            swift_setDeallocating();
            sub_100013F2C(v366 + 32, &qword_1004AA760, &qword_1003F3E28);
            swift_deallocClassInstance();
            v375 = v524;

            v375[1] = v374;

            *v375 = v281;
            v375[1] = v374;
LABEL_201:
            if (*(v541 + 16) && (v376 = sub_100013364(0x632D657275636573, 0xED00006769666E6FLL), (v377 & 1) != 0))
            {
              v378 = *(*(v541 + 56) + 8 * v376);
            }

            else
            {
              v378 = 0xF000000000000007;
            }

            v379 = v525;
            sub_1001C855C(*(v525 + 1));
            *(v379 + 1) = v378;
            v380 = v605[3];
            v381 = v605[4];
            sub_10000E2A8(v605, v380);
            v382 = *(v381 + 40);
            v383 = sub_100219100();
            v384 = sub_100219154();
            v382(v587, &type metadata for Config.SSH, &type metadata for Config.SSH, &protocol witness table for Config.SSH, v383, v384, v380, v381);
            v540 = v587[0];
            v386 = *(&v587[1] + 1);
            v385 = *&v587[1];
            LOBYTE(v381) = v587[2];
            v387 = v512;

            sub_1002191A8(*(v387 + 1));
            *v387 = v540;
            *(v387 + 2) = v385;
            *(v387 + 3) = v386;
            v387[32] = v381;
            v388 = v605[3];
            v389 = v605[4];
            sub_10000E2A8(v605, v388);
            v390 = *(v389 + 40);
            v391 = sub_1002191E8();
            v392 = sub_10021923C();
            v390(v587, &type metadata for Config.Start, &type metadata for Config.Start, &protocol witness table for Config.Start, v391, v392, v388, v389);
            *&v540 = *(&v587[2] + 1);
            v538 = *&v587[0];
            *&v539 = *&v587[3];
            v393 = v513;
            v394 = *(v513 + 1);
            v536 = *(&v587[1] + 8);
            v537 = *(v587 + 8);

            sub_100219290(v394);
            *v393 = v538;
            v395 = v537;
            *(v393 + 24) = v536;
            *(v393 + 8) = v395;
            v396 = v539;
            *(v393 + 5) = v540;
            *(v393 + 6) = v396;
            v397 = sub_100209D50(4, v541, v515);
            v302 = v397;
            if (v397)
            {
              v309 = v398;
              v308 = sub_10020BD90(3u, v397, v398);
              v303 = 0;
              goto LABEL_208;
            }

LABEL_236:
            v448 = sub_100209D50(13, v541, v515);
            v450 = v448;
            if (v448)
            {
              v451 = v449;
              v452 = sub_10020AA04(1, v448, v449);
              if (v453)
              {
                sub_100209A60(0, v450, v451, v551);

                v570[2] = v551[2];
                v570[3] = v551[3];
                v570[4] = v551[4];
                v570[5] = v551[5];
                v570[0] = v551[0];
                v570[1] = v551[1];
                v546[2] = v551[2];
                v546[3] = v551[3];
                v546[4] = v551[4];
                v546[5] = v551[5];
                v546[0] = v551[0];
                v546[1] = v551[1];
                if (*&v551[0])
                {

                  v556 = *(&v546[2] + 8);
                  v557 = *(&v546[3] + 8);
                  v558 = *(&v546[4] + 8);
                  v559 = *(&v546[5] + 1);
                  v554 = *(v546 + 8);
                  v555 = *(&v546[1] + 8);
                  v553 = 1;
                  v466 = v530;
                  v467 = v530[1];
                  v560 = *v530;
                  v561 = v467;
                  v468 = v530[2];
                  v469 = v530[3];
                  v470 = v530[4];
                  *(v564 + 9) = *(v530 + 73);
                  v564[0] = v470;
                  v563 = v469;
                  v562 = v468;
                  sub_1002192F0(v546 + 8, v587);
                  sub_100013F2C(&v560, &qword_1004ACE40, &qword_100408DC0);
                  v471 = v555;
                  *v466 = v554;
                  v466[1] = v471;
                  *(v466 + 10) = v559;
                  v472 = v558;
                  v473 = v556;
                  v466[3] = v557;
                  v466[4] = v472;
                  v466[2] = v473;
                  v474 = v514;
                  v514[96] = 1;
                  v475 = *&v546[0];
                  v476 = *v474;
                  v552[1] = *(v474 + 1);
                  v552[0] = v476;
                  v477 = *(v474 + 2);
                  v478 = *(v474 + 3);
                  v479 = *(v474 + 4);
                  v480 = *(v474 + 5);
                  LOBYTE(v552[6]) = 1;
                  v552[5] = v480;
                  v552[4] = v479;
                  v552[2] = v477;
                  v552[3] = v478;

                  sub_100013E54(v552, v587, &qword_1004ACE48, &qword_1003FA3A0);

                  sub_100013F2C(v570, &qword_1004ACE50, &qword_1003FA3A8);
                  v567 = *(&v552[2] + 8);
                  v568 = *(&v552[3] + 8);
                  v569[0] = *(&v552[4] + 8);
                  *(v569 + 9) = *(&v552[5] + 1);
                  v565 = *(v552 + 8);
                  v566 = *(&v552[1] + 8);
                  v481 = *(v474 + 1);
                  v587[0] = *v474;
                  v587[1] = v481;
                  v482 = *(v474 + 2);
                  v483 = *(v474 + 3);
                  v484 = *(v474 + 4);
                  v485 = *(v474 + 5);
                  LOBYTE(v587[6]) = v474[96];
                  v587[5] = v485;
                  v587[4] = v484;
                  v587[2] = v482;
                  v587[3] = v483;
                  sub_100013F2C(v587, &qword_1004ACE48, &qword_1003FA3A0);
                  *v474 = v475;
                  v486 = v568;
                  v466[2] = v567;
                  v466[3] = v486;
                  v466[4] = v569[0];
                  *(v466 + 73) = *(v569 + 9);
                  v487 = v566;
                  *v466 = v565;
                  v466[1] = v487;
                }

                else
                {
                  LOBYTE(v554) = 0;
                  v488 = v530;
                  v489 = v530[3];
                  v562 = v530[2];
                  v563 = v489;
                  v564[0] = v530[4];
                  *(v564 + 9) = *(v530 + 73);
                  v490 = v530[1];
                  v560 = *v530;
                  v561 = v490;
                  sub_100013F2C(&v560, &qword_1004ACE40, &qword_100408DC0);
                  v491 = v514;
                  v514[8] = 1;
                  v491[96] = 0;
                  LOBYTE(v552[6]) = 0;
                  v492 = *(v491 + 5);
                  v552[4] = *(v491 + 4);
                  v552[5] = v492;
                  v493 = *(v491 + 1);
                  v552[0] = *v491;
                  v552[1] = v493;
                  v494 = *(v491 + 2);
                  v552[3] = *(v491 + 3);
                  v552[2] = v494;
                  sub_100013E54(v552, v587, &qword_1004ACE48, &qword_1003FA3A0);

                  v567 = *(&v552[2] + 8);
                  v568 = *(&v552[3] + 8);
                  v569[0] = *(&v552[4] + 8);
                  *(v569 + 9) = *(&v552[5] + 1);
                  v565 = *(v552 + 8);
                  v566 = *(&v552[1] + 8);
                  v495 = *(v491 + 5);
                  v587[4] = *(v491 + 4);
                  v587[5] = v495;
                  LOBYTE(v587[6]) = v491[96];
                  v496 = *(v491 + 1);
                  v587[0] = *v491;
                  v587[1] = v496;
                  v497 = *(v491 + 2);
                  v587[3] = *(v491 + 3);
                  v587[2] = v497;
                  sub_100013F2C(v587, &qword_1004ACE48, &qword_1003FA3A0);
                  *v491 = v452;
                  v498 = v568;
                  v488[2] = v567;
                  v488[3] = v498;
                  v488[4] = v569[0];
                  *(v488 + 73) = *(v569 + 9);
                  v499 = v566;
                  *v488 = v565;
                  v488[1] = v499;
                }
              }

              else
              {

                LOBYTE(v570[0]) = 0;
                v454 = v530;
                v455 = v530[3];
                v546[2] = v530[2];
                v546[3] = v455;
                v546[4] = v530[4];
                *(&v546[4] + 9) = *(v530 + 73);
                v456 = v530[1];
                v546[0] = *v530;
                v546[1] = v456;
                sub_100013F2C(v546, &qword_1004ACE40, &qword_100408DC0);
                v457 = v514;
                v514[8] = 0;
                v457[96] = 0;
                LOBYTE(v552[6]) = 0;
                v458 = *(v457 + 5);
                v552[4] = *(v457 + 4);
                v552[5] = v458;
                v459 = *(v457 + 1);
                v552[0] = *v457;
                v552[1] = v459;
                v460 = *(v457 + 2);
                v552[3] = *(v457 + 3);
                v552[2] = v460;

                sub_100013E54(v552, v587, &qword_1004ACE48, &qword_1003FA3A0);

                v551[2] = *(&v552[2] + 8);
                v551[3] = *(&v552[3] + 8);
                v551[4] = *(&v552[4] + 8);
                *(&v551[4] + 9) = *(&v552[5] + 1);
                v551[0] = *(v552 + 8);
                v551[1] = *(&v552[1] + 8);

                v461 = *(v457 + 5);
                v587[4] = *(v457 + 4);
                v587[5] = v461;
                LOBYTE(v587[6]) = v457[96];
                v462 = *(v457 + 1);
                v587[0] = *v457;
                v587[1] = v462;
                v463 = *(v457 + 2);
                v587[3] = *(v457 + 3);
                v587[2] = v463;
                sub_100013F2C(v587, &qword_1004ACE48, &qword_1003FA3A0);
                *v457 = v451;
                v464 = v551[3];
                v454[2] = v551[2];
                v454[3] = v464;
                v454[4] = v551[4];
                *(v454 + 73) = *(&v551[4] + 9);
                v465 = v551[1];
                *v454 = v551[0];
                v454[1] = v465;
              }
            }

            v500 = sub_10020B1E8(41, v541, v515);
            v502 = v501;

            v503 = v531;

            *v503 = v500;
            *(v503 + 1) = v502;
            sub_100220AD8(v542, v532, type metadata accessor for Config);
LABEL_6:
            v62 = v605;
            return sub_100003C3C(v62);
          }

          *(v540 + 16) = v289;
        }

        v266 = (v266 + 1);
        if (v534 == v266)
        {
          goto LABEL_143;
        }
      }

      *(&v587[1] + 1) = &type metadata for Config.NetworkVersionOneKeys;
      *&v587[2] = sub_100219A88();
      LOBYTE(v587[0]) = 1;
      v314 = type metadata accessor for DecodingError();
      swift_allocError();
      v316 = v315;
      sub_1000039E8(&qword_1004A7170, &qword_100376CC0);
      sub_100003B20(v587, v316);
      *&v552[0] = 0x65756C6176;
      *(&v552[0] + 1) = 0xE500000000000000;

      v317._countAndFlagsBits = 0x756F6620746F6E20;
      v317._object = 0xEA0000000000646ELL;
      String.append(_:)(v317);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v314 - 8) + 104))(v316, enum case for DecodingError.keyNotFound(_:), v314);
      sub_100003C3C(v587);
      swift_willThrow();
      sub_100220BA8(v542, type metadata accessor for Config);

      goto LABEL_5;
    }

LABEL_143:

    if (*(v540 + 16))
    {
      if (!*v522)
      {
        v290 = v522[1];
        v587[0] = *v522;
        v587[1] = v290;
        v587[2] = v522[2];
        *(&v587[2] + 9) = *(v522 + 41);
        sub_100013F2C(v587, &qword_1004ACE78, &unk_1003FA3E0);
        v291 = v523;
        *(v523 + 1) = _swiftEmptyArrayStorage;
        *(v291 + 2) = 0;
        *(v291 + 3) = 0;
        *(v291 + 4) = _swiftEmptyArrayStorage;
        *(v291 + 5) = 0;
        *(v291 + 6) = _swiftEmptyArrayStorage;
        *(v291 + 7) = 0;
        v291[64] = 1;
      }

      v293 = Config.network.modify();
      if (*v292)
      {
        v292[4] = v540;
      }

      (v293)(v587, 0);
    }
  }

  v538 = sub_100209BA0(7, v541, v515);
  *&v537 = v294;
  if (!v538)
  {
    goto LABEL_171;
  }

  *&v540 = sub_100186EE8(_swiftEmptyArrayStorage);
  v535 = *(v538 + 16);
  if (!v535)
  {
LABEL_170:
    v318 = v521;

    v319 = v540;
    *(v318 + 1) = v540;

    *v318 = v537;
    *(v318 + 1) = v319;
LABEL_171:
    v321 = sub_10020D3A0(12, v541, v515);
    if (v321)
    {
      v322 = v320;
      if (!*v522)
      {
        v323 = v522[1];
        v587[0] = *v522;
        v587[1] = v323;
        v587[2] = v522[2];
        *(&v587[2] + 9) = *(v522 + 41);
        sub_100013F2C(v587, &qword_1004ACE78, &unk_1003FA3E0);
        v324 = v523;
        *(v523 + 1) = _swiftEmptyArrayStorage;
        *(v324 + 2) = 0;
        *(v324 + 3) = 0;
        *(v324 + 4) = _swiftEmptyArrayStorage;
        *(v324 + 5) = 0;
        *(v324 + 6) = _swiftEmptyArrayStorage;
        *(v324 + 7) = 0;
        v324[64] = 1;
      }

      v326 = Config.network.modify();
      if (*v325)
      {
        v327 = v325;

        v327[5] = v321;
        v327[6] = v322;
        *(v327 + 56) = 0;
      }

      else
      {
      }

      (v326)(v587, 0);
    }

    v337 = sub_100209D50(3, v541, v515);
    if (v337)
    {
      v338 = v336;
      if (!*v522)
      {
        v339 = v522[1];
        v587[0] = *v522;
        v587[1] = v339;
        v587[2] = v522[2];
        *(&v587[2] + 9) = *(v522 + 41);
        sub_100013F2C(v587, &qword_1004ACE78, &unk_1003FA3E0);
        v340 = v523;
        *(v523 + 1) = _swiftEmptyArrayStorage;
        *(v340 + 2) = 0;
        *(v340 + 3) = 0;
        *(v340 + 4) = _swiftEmptyArrayStorage;
        *(v340 + 5) = 0;
        *(v340 + 6) = _swiftEmptyArrayStorage;
        *(v340 + 7) = 0;
        v340[64] = 1;
      }

      v341 = sub_10020BB88(v337, v338);
      v343 = v342;
      v345 = v344;

      if (v341)
      {
        v347 = Config.network.modify();
        if (*v346)
        {
          v348 = v346;
          sub_1000039E8(&qword_1004A6B08, &unk_100376270);
          v349 = swift_allocObject();
          *(v349 + 16) = xmmword_100376A40;
          *(v349 + 32) = v343;
          *(v349 + 40) = v345;
          v350 = v348[1];
          v348[1] = _swiftEmptyArrayStorage;
          v348[2] = v349;

          sub_100219A48(v350);
        }

        (v347)(v587, 0);
        v266 = Config.network.modify();
        if (*v351)
        {
          v274 = Config.Analytics.submit.modify();
          if (!*v352)
          {
            goto LABEL_192;
          }

          v353 = v352;
          v354 = v352[1];

          *v353 = v341;
          v353[1] = v354;
LABEL_193:
          (v274)(v552, 0);
          (v266)(v587, 0);
        }

        else
        {

          (v266)(v587, 0);
        }
      }
    }

    v355 = sub_100209D50(9, v541, v515);
    if (!v355)
    {
      goto LABEL_201;
    }

    v281 = v356;
    sub_10020D01C(0, v355, v356);
    v277 = v357;
    v266 = v358;
    sub_1002097A0(9, v541, v515, v587);
    v551[12] = v587[12];
    v551[13] = v587[13];
    v551[14] = v587[14];
    v551[8] = v587[8];
    v551[9] = v587[9];
    v551[10] = v587[10];
    v551[11] = v587[11];
    v551[4] = v587[4];
    v551[5] = v587[5];
    v551[6] = v587[6];
    v551[7] = v587[7];
    v551[0] = v587[0];
    v551[1] = v587[1];
    v551[2] = v587[2];
    v551[3] = v587[3];
    v552[12] = v587[12];
    v552[13] = v587[13];
    v552[14] = v587[14];
    v552[8] = v587[8];
    v552[9] = v587[9];
    v552[10] = v587[10];
    v552[11] = v587[11];
    v552[4] = v587[4];
    v552[5] = v587[5];
    v552[6] = v587[6];
    v552[7] = v587[7];
    v552[0] = v587[0];
    v552[1] = v587[1];
    *&v551[15] = *&v587[15];
    *&v552[15] = *&v587[15];
    v552[2] = v587[2];
    v552[3] = v587[3];
    if (sub_100218DC8(v552) != 1)
    {
      goto LABEL_200;
    }

    v359 = v526;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();

    v360 = type metadata accessor for DecodingError();
    swift_allocError();
    v362 = v361;
    v363 = *(sub_1000039E8(&qword_1004A7168, &unk_100376CB0) + 48);
    *v362 = &type metadata for Config.User;
    v365 = v527;
    v364 = v528;
    (*(v527 + 16))(&v362[v363], v359, v528);
    (*(*(v360 - 8) + 104))(v362, enum case for DecodingError.valueNotFound(_:), v360);
    swift_willThrow();
    (*(v365 + 8))(v359, v364);
LABEL_197:
    sub_100220BA8(v542, type metadata accessor for Config);
    goto LABEL_6;
  }

  v266 = 0;
  while (1)
  {
    ArrayConverter._get(at:)(v266, v538, v537, v587);
    v295 = *(&v587[0] + 1);
    if (*&v587[0] >> 61 != 5)
    {

      v332 = sub_1000039E8(&qword_1004ACCF0, &qword_1003FC360);
      v333 = type metadata accessor for DecodingError();
      swift_allocError();
      v335 = v334;
      sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
      *v335 = v332;

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v333 - 8) + 104))(v335, enum case for DecodingError.typeMismatch(_:), v333);
      swift_willThrow();

      sub_100220BA8(v542, type metadata accessor for Config);
      goto LABEL_178;
    }

    v296 = *((*&v587[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    swift_bridgeObjectRetain_n();

    *&v536 = sub_10020CD78(0, v296, v295);
    *&v539 = v297;
    v281 = v298;

    if (*(v296 + 16) && (v299 = sub_100013364(0x736E6F6974706FLL, 0xE700000000000000), (v300 & 1) != 0))
    {
      v301 = *(*(v296 + 56) + 8 * v299);
      swift_retain_n();
    }

    else
    {
      v301 = 0xC000000000000000;
    }

    v302 = v540;
    v303 = swift_isUniquelyReferenced_nonNull_native();
    *&v587[0] = v302;
    v277 = sub_100013364(v539, v281);
    v306 = *(v302 + 2);
    v307 = (v304 & 1) == 0;
    v308 = v306 + v307;
    if (__OFADD__(v306, v307))
    {
      goto LABEL_199;
    }

    v309 = v304;
    if (*(v540 + 24) >= v308)
    {
      if ((v303 & 1) == 0)
      {
        v302 = v587;
        sub_10018420C();
      }
    }

    else
    {
      sub_100182348(v308, v303);
      v302 = *&v587[0];
      v308 = sub_100013364(v539, v281);
      if ((v309 & 1) != (v304 & 1))
      {
        goto LABEL_244;
      }

      v277 = v308;
    }

    *&v540 = *&v587[0];
    if ((v309 & 1) == 0)
    {
      break;
    }

    *(*(v540 + 56) + 8 * v277) = v301;

LABEL_154:

    v266 = (v266 + 1);
    if (v535 == v266)
    {
      goto LABEL_170;
    }
  }

  v310 = v540;
  *(v540 + 8 * (v277 >> 6) + 64) |= 1 << v277;
  v311 = (v310[6] + 16 * v277);
  *v311 = v539;
  v311[1] = v281;
  *(v310[7] + 8 * v277) = v301;
  v312 = v310[2];
  v288 = __OFADD__(v312, 1);
  v313 = v312 + 1;
  if (!v288)
  {
    *(v540 + 16) = v313;

    goto LABEL_154;
  }

  __break(1u);
LABEL_208:
  v399 = v308;
  if (!v308)
  {
    sub_1000039E8(&qword_1004ACE58, &qword_1003FA3B0);
    *&v539 = swift_allocObject();
    *&v540 = v539 + 32;
    v407 = sub_10020C088(1, v302, v309, sub_100205E10);
    if (v303)
    {

      swift_setDeallocating();
      sub_1000039E8(&qword_1004ACE60, &unk_1003FA3B8);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      goto LABEL_197;
    }

    v414 = v539;
    *(v539 + 32) = v407;
    *(v414 + 40) = v408;
    *(v414 + 48) = v409;
    v423 = sub_10020C088(4, v302, v309, sub_100205E10);
    v425 = v424;
    v427 = v426;

    v428 = 0;
    v429 = 0;
    v430 = v539;
    *(v539 + 56) = v423;
    *(v430 + 64) = v425;
    *(v430 + 72) = v427;
    v536 = xmmword_100376A40;
    while (1)
    {
      v433 = v428;
      v434 = v540 + 24 * v429;
      v435 = *(v434 + 16);
      if (v435)
      {
        v436 = *(v434 + 8);
        if (!*v529)
        {
          v445 = v513;
          *(v513 + 1) = _swiftEmptyArrayStorage;
          *(v445 + 2) = 2;
          *(v445 + 3) = _swiftEmptyArrayStorage;
          *(v445 + 4) = 2;
          *(v445 + 5) = _swiftEmptyArrayStorage;
          *(v445 + 6) = 0;
LABEL_229:

          v447 = Config.start.modify();
          if (*v446)
          {
            v431 = v446;
            sub_1000039E8(&qword_1004A6B08, &unk_100376270);
            v432 = swift_allocObject();
            *(v432 + 16) = v536;
            *(v432 + 32) = v436;
            *(v432 + 40) = v435;
            v431[5] = v432;
          }

          (v447)(v587, 0);
          goto LABEL_217;
        }

        if (!*(v513 + 6))
        {
          goto LABEL_229;
        }

        v538 = Config.start.modify();
        if (*v437)
        {
          *&v537 = Config.Tailspin.ClassConfig.subclassConfigs.modify();
          v439 = *v438;
          if (*v438)
          {
            v440 = v438;
            v441 = swift_isUniquelyReferenced_nonNull_native();
            *v440 = v439;
            if ((v441 & 1) == 0)
            {
              v439 = sub_100011A4C(0, *(v439 + 2) + 1, 1, v439);
              *v440 = v439;
            }

            v443 = *(v439 + 2);
            v442 = *(v439 + 3);
            if (v443 >= v442 >> 1)
            {
              v439 = sub_100011A4C((v442 > 1), v443 + 1, 1, v439);
              *v440 = v439;
            }

            *(v439 + 2) = v443 + 1;
            v444 = &v439[16 * v443];
            *(v444 + 4) = v436;
            *(v444 + 5) = v435;
          }

          else
          {
          }

          (v537)(v552, 0);
        }

        else
        {
        }

        (v538)(v587, 0);
      }

LABEL_217:
      v428 = 1;
      v429 = 1;
      if (v433)
      {
        swift_setDeallocating();
        sub_1000039E8(&qword_1004ACE60, &unk_1003FA3B8);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        goto LABEL_236;
      }
    }
  }

  v400 = v304;
  v401 = v305;
  v402 = v542;
  v403 = *(v542 + 61);

  *(v402 + 480) = v309;
  *(v402 + 488) = v403;
  v538 = v403;
  v404 = sub_10020C088(1, v302, v309, sub_100205E10);
  *&v539 = v405;
  *&v540 = v406;
  if (!v303)
  {
    v410 = v404;
    v411 = sub_10020C088(4, v302, v309, sub_100205E10);
    *&v537 = v412;
    *&v536 = v413;
    v415 = v411;

    sub_1000039E8(&qword_1004AA9A0, &qword_1003F4070);
    v416 = swift_allocObject();
    v535 = v410;
    *&v552[0] = v410;
    v417 = v539;
    *(&v552[0] + 1) = v539;
    v418 = v540;
    *&v552[1] = v540;
    *(&v552[1] + 1) = v399;
    *&v552[2] = v400;
    *(&v552[2] + 1) = v401;
    *&v552[3] = v415;
    *(&v552[3] + 1) = v537;
    *&v552[4] = v536;
    *(&v552[4] + 1) = _swiftEmptyArrayStorage;
    v552[5] = 0uLL;
    v419 = v552[0];
    v420 = v552[1];
    v416[1] = xmmword_100376A40;
    v416[2] = v419;
    v421 = v552[5];
    v416[6] = v552[4];
    v416[7] = v421;
    v422 = v552[3];
    v416[4] = v552[2];
    v416[5] = v422;
    v416[3] = v420;
    sub_1002193A0(v552, v587);

    *(v542 + 61) = v416;
    *&v587[0] = v535;
    *(&v587[0] + 1) = v417;
    *&v587[1] = v418;
    *(&v587[1] + 1) = v399;
    *&v587[2] = v400;
    *(&v587[2] + 1) = v401;
    *&v587[3] = v415;
    *(&v587[3] + 1) = v537;
    *&v587[4] = v536;
    *(&v587[4] + 1) = _swiftEmptyArrayStorage;
    v587[5] = 0uLL;
    sub_10021934C(v587);
    goto LABEL_236;
  }

  sub_100220BA8(v542, type metadata accessor for Config);

  *&v587[0] = _swiftEmptyArrayStorage;
  *(&v587[0] + 1) = 0;
  *&v587[1] = 0;
  *(&v587[1] + 1) = v399;
  *&v587[2] = v400;
  *(&v587[2] + 1) = v401;
  *&v587[3] = _swiftEmptyArrayStorage;
  *(&v587[3] + 1) = 0;
  *&v587[4] = 0;
  *(&v587[4] + 1) = _swiftEmptyArrayStorage;
  v587[5] = 0uLL;
  sub_10021934C(v587);
LABEL_178:
  v62 = v605;
  return sub_100003C3C(v62);
}

uint64_t sub_100205E10@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = a1;
  v7 = 0xED0000656D756C6FLL;
  v8 = 0x56726F4674696177;
  v9 = 0xE400000000000000;
  v10 = 1953460082;
  v11 = 0xEA00000000007468;
  if (a1 != 4)
  {
    v11 = 0xEF6C6C6568537468;
  }

  if (a1 != 3)
  {
    v10 = 0x67696C6674736F70;
    v9 = v11;
  }

  v12 = 0xE900000000000074;
  if (a1 != 1)
  {
    v12 = 0xEE006C6C65685374;
  }

  if (a1)
  {
    v8 = 0x6867696C66657270;
    v7 = v12;
  }

  if (a1 <= 2u)
  {
    v13 = v8;
  }

  else
  {
    v13 = v10;
  }

  if (v6 <= 2)
  {
    v14 = v7;
  }

  else
  {
    v14 = v9;
  }

  if (*(a2 + 16))
  {
    v17 = sub_100013364(v13, v14);
    v19 = v18;

    if (v19)
    {
      v21 = *(*(a2 + 56) + 8 * v17);
      sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.Root.VersionOneKeys;
      *(inited + 64) = sub_1002203B0();
      *(inited + 32) = a1;

      result = sub_10034A3A8(inited);
      *a4 = v21;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_100205FE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(result + 16) && (v5 = result, result = sub_100013364(0xD000000000000014, 0x800000010043D450), (v6 & 1) != 0))
  {
    v7 = *(*(v5 + 56) + 8 * result);
    sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376A40;
    *(inited + 56) = &type metadata for Config.CARoots.VersionOneKeys;
    *(inited + 64) = sub_10021E5E4();

    result = sub_10034A3A8(inited);
    *a3 = v7;
    a3[1] = a2;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_1002060D0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, void *a7@<X8>)
{
  v13 = a4();
  if (*(a2 + 16))
  {
    v21 = a6;
    v15 = sub_100013364(v13, v14);
    v17 = v16;

    if (v17)
    {
      v19 = *(*(a2 + 56) + 8 * v15);
      sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = a5;
      *(inited + 64) = v21();
      *(inited + 32) = a1;

      result = sub_10034A3A8(inited);
      *a7 = v19;
      a7[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a7 = 0;
  a7[1] = 0;
  return result;
}

uint64_t sub_1002061E8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1)
  {
    v5 = 0x800000010043D480;
  }

  else
  {
    v5 = 0xEE0064695F657669;
  }

  if (*(a2 + 16))
  {
    if (a1)
    {
      v9 = 0xD000000000000012;
    }

    else
    {
      v9 = 0x686372615F616561;
    }

    v10 = sub_100013364(v9, v5);
    v12 = v11;

    if (v12)
    {
      v14 = *(*(a2 + 56) + 8 * v10);
      sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.Cryptex.Cryptex.AeaDecryptionParams.VersionOneKeys;
      *(inited + 64) = sub_10021E698();
      *(inited + 32) = a1 & 1;

      result = sub_10034A3A8(inited);
      *a4 = v14;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_100206330@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(result + 16) && (v5 = result, result = sub_100013364(7107189, 0xE300000000000000), (v6 & 1) != 0))
  {
    v7 = *(*(v5 + 56) + 8 * result);
    sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376A40;
    *(inited + 56) = &type metadata for Config.Package.VersionOneKeys;
    *(inited + 64) = sub_10021E794();

    result = sub_10034A3A8(inited);
    *a3 = v7;
    a3[1] = a2;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_10020640C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1)
  {
    v5 = 0x800000010043D6C0;
  }

  else
  {
    v5 = 0xEF7265626D756E5FLL;
  }

  if (*(a2 + 16))
  {
    if (a1)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x7373616C63627573;
    }

    v10 = sub_100013364(v9, v5);
    v12 = v11;

    if (v12)
    {
      v14 = *(*(a2 + 56) + 8 * v10);
      sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.Tailspin.ClassConfig.SubclassConfig.VersionOneKeys;
      *(inited + 64) = sub_1002201B8();
      *(inited + 32) = a1 & 1;

      result = sub_10034A3A8(inited);
      *a4 = v14;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_100206554@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = a1;
  v7 = 0xEF7465735F657A69;
  v8 = 0x735F726566667562;
  if (a1 != 2)
  {
    v8 = 0x6F635F7373616C63;
    v7 = 0xED0000736769666ELL;
  }

  v9 = 0xD000000000000018;
  v10 = 0x800000010043D610;
  if (a1)
  {
    v9 = 0xD00000000000001ALL;
    v10 = 0x800000010043D630;
  }

  if (a1 <= 1u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  if (v6 <= 1)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (*(a2 + 16))
  {
    v15 = sub_100013364(v11, v12);
    v17 = v16;

    if (v17)
    {
      v19 = *(*(a2 + 56) + 8 * v15);
      sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.Tailspin.VersionOneKeys;
      *(inited + 64) = sub_100220260();
      *(inited + 32) = a1;

      result = sub_10034A3A8(inited);
      *a4 = v19;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_1002066E4@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a1;
  if (!a1)
  {
    v10 = 0xEC0000007265626DLL;
    v9 = 0x756E5F7373616C63;
    if (*(a2 + 16))
    {
      goto LABEL_9;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (a1 == 1)
  {
    v9 = 0x6E655F7373616C63;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (v8 == 1)
  {
    v10 = 0xED000064656C6261;
  }

  else
  {
    v10 = 0x800000010043D690;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_12;
  }

LABEL_9:
  v11 = sub_100013364(v9, v10);
  v13 = v12;

  if (v13)
  {
    v15 = *(*(a2 + 56) + 8 * v11);
    sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376A40;
    *(inited + 56) = &type metadata for Config.Tailspin.ClassConfig.VersionOneKeys;
    *(inited + 64) = sub_10022020C();
    *(inited + 32) = a1;

    result = sub_10034A3A8(inited);
    *a4 = v15;
    a4[1] = a3;
    return result;
  }

LABEL_13:
  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_100206850@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a1;
  if (!a1)
  {
    v10 = 0xE300000000000000;
    v9 = 7107189;
    if (*(a2 + 16))
    {
      goto LABEL_9;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (a1 == 1)
  {
    v9 = 0xD000000000000010;
  }

  else
  {
    v9 = 0x6F635F656C707061;
  }

  if (v8 == 1)
  {
    v10 = 0x800000010043D4A0;
  }

  else
  {
    v10 = 0xED00007463656E6ELL;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_12;
  }

LABEL_9:
  v11 = sub_100013364(v9, v10);
  v13 = v12;

  if (v13)
  {
    v15 = *(*(a2 + 56) + 8 * v11);
    sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376A40;
    *(inited + 56) = &type metadata for Config.Diavlo.VersionOneKeys;
    *(inited + 64) = sub_10021E740();
    *(inited + 32) = a1;

    result = sub_10034A3A8(inited);
    *a4 = v15;
    a4[1] = a3;
    return result;
  }

LABEL_13:
  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_1002069AC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a1;
  if (a1 > 3u)
  {
    v9 = 0x800000010043D5B0;
    v10 = 0x800000010043D5D0;
    v11 = 0xD000000000000015;
    if (a1 != 7)
    {
      v11 = 0xD000000000000014;
      v10 = 0x800000010043D5F0;
    }

    if (a1 == 6)
    {
      v11 = 0xD000000000000011;
    }

    else
    {
      v9 = v10;
    }

    v12 = 0xE700000000000000;
    if (a1 == 4)
    {
      v13 = 0x6E696D64417369;
    }

    else
    {
      v13 = 0xD000000000000012;
    }

    if (a1 != 4)
    {
      v12 = 0x800000010043D590;
    }

    if (a1 <= 5u)
    {
      v14 = v13;
    }

    else
    {
      v14 = v11;
    }

    if (v8 <= 5)
    {
      v15 = v12;
    }

    else
    {
      v15 = v9;
    }

    if (*(a2 + 16))
    {
      goto LABEL_19;
    }

LABEL_32:

    goto LABEL_33;
  }

  v22 = 0xE400000000000000;
  v23 = 1701667182;
  v24 = 0xE300000000000000;
  v25 = 6580583;
  if (a1 != 2)
  {
    v25 = 0x64726F7773736170;
    v24 = 0xE800000000000000;
  }

  if (a1)
  {
    v23 = 6580597;
    v22 = 0xE300000000000000;
  }

  if (a1 <= 1u)
  {
    v14 = v23;
  }

  else
  {
    v14 = v25;
  }

  if (v8 <= 1)
  {
    v15 = v22;
  }

  else
  {
    v15 = v24;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_32;
  }

LABEL_19:
  v16 = sub_100013364(v14, v15);
  v18 = v17;

  if (v18)
  {
    v20 = *(*(a2 + 56) + 8 * v16);
    sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376A40;
    *(inited + 56) = &type metadata for Config.User.VersionOneKeys;
    *(inited + 64) = sub_10022035C();
    *(inited + 32) = a1;

    result = sub_10034A3A8(inited);
    *a4 = v20;
    a4[1] = a3;
    return result;
  }

LABEL_33:
  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_100206BB0@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a1;
  if (!a1)
  {
    v10 = 0xE500000000000000;
    v9 = 0x7372657375;
    if (*(a2 + 16))
    {
      goto LABEL_9;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (a1 == 1)
  {
    v9 = 0x7370756F7267;
  }

  else
  {
    v9 = 0x7265732D7061646CLL;
  }

  if (v8 == 1)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v10 = 0xEB00000000726576;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_12;
  }

LABEL_9:
  v11 = sub_100013364(v9, v10);
  v13 = v12;

  if (v13)
  {
    v15 = *(*(a2 + 56) + 8 * v11);
    sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376A40;
    *(inited + 56) = &type metadata for Config.User.Authentication.Memento.VersionOneKeys;
    *(inited + 64) = sub_1002202B4();
    *(inited + 32) = a1;

    result = sub_10034A3A8(inited);
    *a4 = v15;
    a4[1] = a3;
    return result;
  }

LABEL_13:
  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_100206D04@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEA0000000000736CLL;
  }

  if (*(a2 + 16))
  {
    if (a1)
    {
      v9 = 0x7370756F7267;
    }

    else
    {
      v9 = 0x617069636E697270;
    }

    v10 = sub_100013364(v9, v5);
    v12 = v11;

    if (v12)
    {
      v14 = *(*(a2 + 56) + 8 * v10);
      sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.User.Authentication.ESC.VersionOneKeys;
      *(inited + 64) = sub_100220308();
      *(inited + 32) = a1 & 1;

      result = sub_10034A3A8(inited);
      *a4 = v14;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_100206E3C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = "system-log-privacy-level";
  if (a1)
  {
    v5 = "system-logging-enabled";
  }

  if (*(a2 + 16))
  {
    if (a1)
    {
      v9 = 0xD000000000000016;
    }

    else
    {
      v9 = 0xD000000000000018;
    }

    v10 = sub_100013364(v9, (v5 - 32) | 0x8000000000000000);
    v12 = v11;

    if (v12)
    {
      v14 = *(*(a2 + 56) + 8 * v10);
      sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.Log.VersionOneKeys;
      *(inited + 64) = sub_100220404();
      *(inited + 32) = a1 & 1;

      result = sub_10034A3A8(inited);
      *a4 = v14;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_100206F6C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = a1;
  v7 = 0xE600000000000000;
  v8 = 0x6E69616D6F64;
  v9 = 0xEE00656D616E5F65;
  v10 = 0x7475626972747461;
  v11 = 0xEF65756C61765F65;
  v12 = 0x7475626972747461;
  if (a1 != 4)
  {
    v12 = 0x5F65727574616566;
    v11 = 0xED00006573616870;
  }

  if (a1 != 3)
  {
    v10 = v12;
    v9 = v11;
  }

  v13 = 0xE700000000000000;
  v14 = 0x65727574616566;
  if (a1 != 1)
  {
    v14 = 0x656C62616E65;
    v13 = 0xE600000000000000;
  }

  if (a1)
  {
    v8 = v14;
    v7 = v13;
  }

  if (a1 <= 2u)
  {
    v15 = v8;
  }

  else
  {
    v15 = v10;
  }

  if (v6 <= 2)
  {
    v16 = v7;
  }

  else
  {
    v16 = v9;
  }

  if (*(a2 + 16))
  {
    v19 = sub_100013364(v15, v16);
    v21 = v20;

    if (v21)
    {
      v23 = *(*(a2 + 56) + 8 * v19);
      sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.FeatureFlag.VersionOneKeys;
      *(inited + 64) = sub_1002204AC();
      *(inited + 32) = a1;

      result = sub_10034A3A8(inited);
      *a4 = v23;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_10020713C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = "configuration_options";
  if (a1)
  {
    v5 = "tailspin_enabled";
  }

  if (*(a2 + 16))
  {
    if (a1)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0xD000000000000015;
    }

    v10 = sub_100013364(v9, (v5 - 32) | 0x8000000000000000);
    v12 = v11;

    if (v12)
    {
      v14 = *(*(a2 + 56) + 8 * v10);
      sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.TailspinVersionOneKeys;
      *(inited + 64) = sub_1002205A8();
      *(inited + 32) = a1 & 1;

      result = sub_10034A3A8(inited);
      *a4 = v14;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_100207270@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*(a2 + 16))
  {
    if (a1)
    {
      v9 = 0x736E6F6974706FLL;
    }

    else
    {
      v9 = 0x797469746E656469;
    }

    v10 = sub_100013364(v9, v5);
    v12 = v11;

    if (v12)
    {
      v14 = *(*(a2 + 56) + 8 * v10);
      sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.NarrativeVersionOneKeys;
      *(inited + 64) = sub_100220554();
      *(inited + 32) = a1 & 1;

      result = sub_10034A3A8(inited);
      *a4 = v14;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_1002073A8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*(a2 + 16))
  {
    if (a1)
    {
      v9 = 0x65756C6176;
    }

    else
    {
      v9 = 0x6361667265746E69;
    }

    v10 = sub_100013364(v9, v5);
    v12 = v11;

    if (v12)
    {
      v14 = *(*(a2 + 56) + 8 * v10);
      sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.NetworkVersionOneKeys;
      *(inited + 64) = sub_100219A88();
      *(inited + 32) = a1 & 1;

      result = sub_10034A3A8(inited);
      *a4 = v14;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_1002074E0@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = a1;
  v7 = 0xE300000000000000;
  v8 = 7955819;
  v9 = 0xEE0064695F6E6F69;
  v10 = 0x746163696C707061;
  v11 = 0x656D616E72657375;
  if (a1 != 3)
  {
    v11 = 0x656D616E74736F68;
  }

  if (a1 != 2)
  {
    v10 = v11;
    v9 = 0xE800000000000000;
  }

  if (a1)
  {
    v8 = 0x65756C6176;
    v7 = 0xE500000000000000;
  }

  if (a1 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 <= 1)
  {
    v13 = v7;
  }

  else
  {
    v13 = v9;
  }

  if (*(a2 + 16))
  {
    v16 = sub_100013364(v12, v13);
    v18 = v17;

    if (v18)
    {
      v20 = *(*(a2 + 56) + 8 * v16);
      sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.PrefsVersionOneKeys;
      *(inited + 64) = sub_100219B3C();
      *(inited + 32) = a1;

      result = sub_10034A3A8(inited);
      *a4 = v20;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_100207674@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v6 = a1;
  v7 = 0xE300000000000000;
  v8 = 0x746163696C707061;
  v9 = 0xEE0064695F6E6F69;
  v10 = 0x656D616E72657375;
  if (a1 != 3)
  {
    v10 = 0x656D616E74736F68;
  }

  if (a1 != 2)
  {
    v8 = v10;
    v9 = 0xE800000000000000;
  }

  v11 = 0x65756C6176;
  if (a1)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v11 = 7955819;
  }

  if (a1 <= 1u)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8;
  }

  if (v6 <= 1)
  {
    v13 = v7;
  }

  else
  {
    v13 = v9;
  }

  if (*(a2 + 16))
  {
    v15 = sub_100013364(v12, v13);
    v17 = v16;

    if (v17)
    {
      *a4 = *(*(a2 + 56) + 8 * v15);
    }
  }

  else
  {
  }

  v23[3] = &type metadata for Config.PrefsVersionOneKeys;
  v23[4] = sub_100219B3C();
  LOBYTE(v23[0]) = a1;
  v19 = type metadata accessor for DecodingError();
  swift_allocError();
  v21 = v20;
  sub_100003B20(v23, v20);
  sub_1000039E8(&qword_1004A7170, &qword_100376CC0);

  v22._countAndFlagsBits = 0x756F6620746F6E20;
  v22._object = 0xEA0000000000646ELL;
  String.append(_:)(v22);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.keyNotFound(_:), v19);
  sub_100003C3C(v23);
  return swift_willThrow();
}

__n128 sub_10020791C@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1002060D0(a1, a2, a3, Config.Cryptex.VersionOneKeys.stringValue.getter, &type metadata for Config.Cryptex.VersionOneKeys, sub_10021E4D4, v28);
  if (!v4)
  {
    v7 = *(&v28[0] + 1);
    if (*(&v28[0] + 1))
    {
      v8 = *&v28[0];

      v9 = sub_100201504(v8, v7);
      v11 = v10;
      v12 = sub_10020C530(0, v9, v10);
      v24 = v13;
      v15 = v14;
      v26 = v12;
      v16 = sub_10020C530(1, v9, v11);
      v31 = 0;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      sub_100212994(v26, v24, v15, v17, v19, v21, v28);

      v25 = v28[1];
      v27 = v28[0];
      v22 = v29;
      v23 = v30;

      sub_100200D34(v8, v7);
      result = v25;
      *(a4 + 8) = v27;
      *(a4 + 24) = v25;
      *(a4 + 40) = v22;
      *(a4 + 48) = v23;
      *a4 = v7;
    }

    else
    {
      result.n128_u64[0] = 0;
      *(a4 + 40) = 0u;
      *(a4 + 24) = 0u;
      *(a4 + 8) = 0u;
      *a4 = _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void *sub_100207B58(char a1, uint64_t a2, uint64_t a3)
{
  sub_1002060D0(a1, a2, a3, Config.Cryptex.VersionOneKeys.stringValue.getter, &type metadata for Config.Cryptex.VersionOneKeys, sub_10021E4D4, &v12);
  if (!v4)
  {
    v3 = v13;
    if (v13)
    {
      v6 = v12;
      if (v12 >> 61 == 3)
      {
        v7 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v8 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        swift_retain_n();
        swift_bridgeObjectRetain_n();

        v14._countAndFlagsBits = v7;
        v14._object = v8;
        _s10DarwinInit25DInitAuthorizationServiceO8rawValueACSgSS_tcfC_0(v14);
        swift_bridgeObjectRelease_n();

        sub_100200D34(v6, v3);
      }

      else
      {
        v9 = type metadata accessor for DecodingError();
        swift_allocError();
        v11 = v10;
        sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
        *v11 = &type metadata for String;
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.typeMismatch(_:), v9);
        swift_willThrow();

        sub_100200D34(v6, v3);
      }
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_100207D74(char a1, uint64_t a2, uint64_t a3)
{
  sub_1002060D0(a1, a2, a3, Config.Cryptex.VersionOneKeys.stringValue.getter, &type metadata for Config.Cryptex.VersionOneKeys, sub_10021E4D4, &v12);
  if (!v4)
  {
    v3 = v13;
    if (v13)
    {
      v6 = v12;
      if (v12 >> 61 == 3)
      {
        v7 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v8 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        swift_retain_n();
        swift_bridgeObjectRetain_n();

        _s10DarwinInit17DInitSHA256DigestV8argumentACSgSS_tcfC_0(v7, v8);
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v9 = type metadata accessor for DecodingError();
        swift_allocError();
        v11 = v10;
        sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
        *v11 = &type metadata for String;
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.typeMismatch(_:), v9);
        swift_willThrow();
        swift_bridgeObjectRelease_n();
      }

      sub_100200D34(v6, v3);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_100207F94(char a1, uint64_t a2, uint64_t a3)
{
  sub_1002060D0(a1, a2, a3, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC, &v12);
  if (!v4)
  {
    v3 = v13;
    if (v13)
    {
      v6 = v12;
      if (v12 >> 61 == 3)
      {
        v7 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v8 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        swift_retain_n();
        swift_bridgeObjectRetain_n();

        v14._countAndFlagsBits = v7;
        v14._object = v8;
        _s10DarwinInit8DInitUSRO8rawValueACSgSS_tcfC_0(v14);
        swift_bridgeObjectRelease_n();

        sub_100200D34(v6, v3);
      }

      else
      {
        v9 = type metadata accessor for DecodingError();
        swift_allocError();
        v11 = v10;
        sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
        *v11 = &type metadata for String;
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.typeMismatch(_:), v9);
        swift_willThrow();

        sub_100200D34(v6, v3);
      }
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_1002081B0(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = sub_100013364(0x416572756C696166, 0xED00006E6F697463);
  if ((v5 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(*(a1 + 56) + 8 * v4);
  sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Finish.ResultConfigVersionOneKeys;
  *(inited + 64) = sub_100220458();

  sub_10034A3A8(inited);
  if (v6 >> 61 == 3)
  {
    sub_1002205FC();
    sub_1001FAF14();
    swift_retain_n();
    swift_bridgeObjectRetain_n();

    RawRepresentable<>.init(argument:)();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v8 = type metadata accessor for DecodingError();
    swift_allocError();
    v10 = v9;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v10 = &type metadata for String;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v8 - 8) + 104))(v10, enum case for DecodingError.typeMismatch(_:), v8);
    swift_willThrow();
    swift_bridgeObjectRelease_n();
  }

  return a2;
}

uint64_t sub_100208450@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = type metadata accessor for DecodingError.Context();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100206850(a1, a2, a3, &v28);
  if (!v4)
  {
    v14 = v29;
    if (v29)
    {
      v15 = v28;
      if (v28 >> 61 != 3)
      {
        v23 = type metadata accessor for DecodingError();
        swift_allocError();
        v25 = v24;
        sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
        *v25 = &type metadata for String;
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v23 - 8) + 104))(v25, enum case for DecodingError.typeMismatch(_:), v23);
        swift_willThrow();

        sub_100200D34(v15, v14);
      }

      v27 = v10;
      v30 = 0;
      swift_bridgeObjectRetain_n();

      swift_retain_n();
      v16 = Data.init(base64Encoded:options:)();
      v18 = v17;

      if (v18 >> 60 == 15)
      {

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        v19 = type metadata accessor for DecodingError();
        swift_allocError();
        v21 = v20;
        v22 = v27;
        (*(v27 + 16))(v20, v12, v9);
        (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.dataCorrupted(_:), v19);
        swift_willThrow();

        sub_100200D34(v15, v14);
        (*(v22 + 8))(v12, v9);
      }

      swift_bridgeObjectRelease_n();

      result = sub_100200D34(v15, v14);
    }

    else
    {
      v16 = 0;
      v14 = _swiftEmptyArrayStorage;
      v18 = 0xF000000000000000;
    }

    a4[1] = v16;
    a4[2] = v18;
    *a4 = v14;
  }

  return result;
}

uint64_t sub_100208810@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_1002069AC(a1, a2, a3, &v16);
  if (!v4)
  {
    v7 = v17;
    if (v17)
    {
      v8 = v16;
      v18 = &type metadata for JSONConverter;
      v19 = &protocol witness table for JSONConverter;

      v9 = sub_10021E2C4(&v16);
      v11 = v10;
      v13 = v12;
      v15 = v14;

      result = sub_100200D34(v8, v7);
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v13 = 0;
      v15 = 0;
      v7 = _swiftEmptyArrayStorage;
    }

    *a4 = v7;
    a4[1] = v9;
    a4[2] = v11;
    a4[3] = v13;
    a4[4] = v15;
  }

  return result;
}

double sub_100208904@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1002069AC(a1, a2, a3, v17);
  if (!v4)
  {
    v7 = *(&v17[0] + 1);
    if (*(&v17[0] + 1))
    {
      v8 = *&v17[0];
      v11 = &type metadata for JSONConverter;
      v12 = &protocol witness table for JSONConverter;
      v10 = v17[0];

      sub_10021DFE0(&v10, v17);
      v13 = v17[0];
      v14 = v17[1];
      v15 = v17[2];
      v16 = v18;

      sub_100200D34(v8, v7);
      v9 = v14;
      *(a4 + 8) = v13;
      *(a4 + 24) = v9;
      result = *&v15;
      *(a4 + 40) = v15;
      *(a4 + 56) = v16;
      *a4 = v7;
    }

    else
    {
      *(a4 + 56) = 0;
      result = 0.0;
      *(a4 + 40) = 0u;
      *(a4 + 24) = 0u;
      *(a4 + 8) = 0u;
      *a4 = _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void *sub_100208A18(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t *))
{
  a4(&v10, a1, a2, a3);
  if (!v6)
  {
    v5 = v11;
    if (v11)
    {
      v9 = v10;
      v12 = &type metadata for JSONConverter;
      v13 = &protocol witness table for JSONConverter;

      a5(&v10);

      sub_100200D34(v9, v5);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v5;
}