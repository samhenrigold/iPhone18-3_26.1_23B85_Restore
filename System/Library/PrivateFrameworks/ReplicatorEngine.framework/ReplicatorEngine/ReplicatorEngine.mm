id static OPACKCoder.decodeNSSecureCoding<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  v17 = *MEMORY[0x1E69E9840];
  sub_1DEE115C8(v15);
  if (!v4)
  {
    v6 = [objc_allocWithZone(STRPPropertyListTypeDecoder) init];
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v14[0] = 0;
    v8 = [v6 decodeRootObjectOfClass:ObjCClassFromMetadata fromEncoded:sub_1DEF8E4D8() error:v14];

    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = v14[0];
      sub_1DEF8DDE8();
      swift_unknownObjectRelease();
      if (swift_dynamicCast())
      {
        a4 = v13;
        __swift_destroy_boxed_opaque_existential_1(v15);
        return a4;
      }

      a4 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"STRPCodingErrorDomain" code:1 userInfo:0];
    }

    else
    {
      v10 = v14[0];
      v11 = sub_1DEF8D148();

      a4 = v11;
    }

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return a4;
}

uint64_t sub_1DEE115C8@<X0>(_OWORD *a3@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = sub_1DEF8D558();
  v4 = sub_1DEF8D268();
  v5 = OPACKDecodeNSData(v4);

  if (v5)
  {
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  sub_1DEE11750(v10, &v8);
  if (!*(&v9 + 1))
  {
    sub_1DEE117D0(&v8);
    goto LABEL_8;
  }

  sub_1DEE117C0(&v8, a3);
  if (v7 != sub_1DEF8D558())
  {
    __swift_destroy_boxed_opaque_existential_1(a3);
LABEL_8:
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"STRPCodingErrorDomain" code:2 userInfo:0];
    swift_willThrow();
  }

  return sub_1DEE117D0(v10);
}

uint64_t OPACKDecodeNSData(void *a1)
{
  v1 = a1;
  v2 = OPACKDecodeData();

  return v2;
}

uint64_t sub_1DEE11750(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DB8, qword_1DEF9AD50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1DEE117C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1DEE117D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DB8, qword_1DEF9AD50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1DEE1187C(void *a1)
{
  NSData = OPACKEncoderCreateNSData(a1);
  if (NSData)
  {
    v2 = NSData;
    v3 = sub_1DEF8D278();
    v5 = v4;

    if (!sub_1DEF8D558())
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
    v5 = 0xF000000000000000;
  }

  [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"STRPCodingErrorDomain" code:2 userInfo:0];
  swift_willThrow();
  sub_1DEE2416C(v3, v5);
  return v3;
}

uint64_t static OPACKCoder.encodeNSSecureCoding(_:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(STRPPropertyListTypeEncoder) init];
  v3 = [v2 encodeRootObject_];

  v4 = sub_1DEE1187C(v3);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t OPACKEncoderCreateNSData(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E12CC0F0]();

  return v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1DEE11B94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DEE11BF4(NSObject *a1, uint64_t a2, NSObject *a3)
{
  v5 = sub_1DEF8D3F8();
  v99 = *(v5 - 8);
  v100 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA0, &qword_1DEF95AA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v95 - v9);
  v11 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v97 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v95 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v102 = &v95 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v95 - v20);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v96 = v21;
    v105 = v11;
    v103 = v10;
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v24 = sub_1DEF8D508();
    v25 = __swift_project_value_buffer(v24, qword_1ECDF6010);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v26 = sub_1DEF8D4D8();
    v27 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v28 = os_log_type_enabled(v26, v27);
    v104 = v12;
    v101 = v16;
    v98 = v25;
    if (v28)
    {
      v16 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v106 = v29;
      aBlock = a3;
      *v16 = 136446722;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E80, &qword_1DEF95B48);
      v30 = sub_1DEF8D988();
      v32 = sub_1DEE12A5C(v30, v31, &v106);

      *(v16 + 4) = v32;
      *(v16 + 6) = 2082;
      aBlock = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v33 = sub_1DEF8D988();
      v35 = sub_1DEE12A5C(v33, v34, &v106);

      *(v16 + 14) = v35;
      *(v16 + 11) = 2082;
      swift_getObjectType();
      aBlock = sub_1DEE12B28();
      v108 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
      v37 = sub_1DEF8D988();
      v39 = sub_1DEE12A5C(v37, v38, &v106);

      *(v16 + 3) = v39;
      _os_log_impl(&dword_1DEE0F000, v26, v27, "%{public}s; Received new connection: %{public}s; DeviceID: %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v29, -1, -1);
      MEMORY[0x1E12CCD70](v16, -1, -1);
    }

    swift_getObjectType();
    v40 = sub_1DEE12B28();
    if (v41)
    {
      v42 = v40;
      v43 = v41;
    }

    else
    {
      if (*(v23 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType) != 1)
      {
        sub_1DEF8D3E8();
        v71 = sub_1DEF8D398();
        v42 = v72;
        (*(v99 + 8))(v7, v100);
        swift_unknownObjectRetain();

        v73 = sub_1DEF8D4D8();
        v74 = sub_1DEF8DCB8();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v106 = a1;
          aBlock = v76;
          *v75 = 136446466;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
          v77 = sub_1DEF8D988();
          v16 = sub_1DEE12A5C(v77, v78, &aBlock);

          *(v75 + 4) = v16;
          *(v75 + 12) = 2082;
          *(v75 + 14) = sub_1DEE12A5C(v71, v42, &aBlock);
          _os_log_impl(&dword_1DEE0F000, v73, v74, "Unable to get DeviceID from connection: %{public}s; Using uuidString %{public}s instead", v75, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v76, -1, -1);
          MEMORY[0x1E12CCD70](v75, -1, -1);
        }

        v80 = v104;
        v79 = v105;

        v81 = v103;
        sub_1DEF8D348();
        *v81 = a1;
        *(v81 + *(v79 + 24)) = 0;
        v80[7](v81, 0, 1, v79);
        swift_beginAccess();
        swift_unknownObjectRetain();
        sub_1DEE136B8(v81, v71, v42);
        swift_endAccess();
        v62 = *(v23 + 112);

        id = nw_connection_get_id();
        isa = v62[2].isa;
        v84 = swift_allocObject();
        v84[2] = v71;
        v84[3] = v42;
        v84[4] = id;
        v84[5] = v62;
        v85 = swift_allocObject();
        *(v85 + 16) = sub_1DEF30810;
        *(v85 + 24) = v84;
        v111 = sub_1DEE46D40;
        v112 = v85;
        aBlock = MEMORY[0x1E69E9820];
        v108 = 1107296256;
        v109 = sub_1DEE134F4;
        v110 = &block_descriptor_369;
        v55 = _Block_copy(&aBlock);
        v43 = v112;

        dispatch_sync(isa, v55);
        _Block_release(v55);
        LOBYTE(isa) = swift_isEscapingClosureAtFileLocation();

        if ((isa & 1) == 0)
        {
LABEL_30:
          sub_1DEE16294(a1);
        }

        __break(1u);
        goto LABEL_27;
      }

      v44 = *(v23 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_terminusRemoteDeviceIDLock);
      os_unfair_lock_lock((v44 + 32));
      v42 = *(v44 + 16);
      v43 = *(v44 + 24);

      os_unfair_lock_unlock((v44 + 32));
    }

    swift_unknownObjectRetain();

    v45 = sub_1DEF8D4D8();
    v46 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock = v48;
      *v47 = 136446722;
      if (*(v23 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType))
      {
        v49 = 0xD000000000000016;
      }

      else
      {
        v49 = 0x6920656369766544;
      }

      if (*(v23 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType))
      {
        v50 = 0x80000001DEF9D830;
      }

      else
      {
        v50 = 0xE900000000000064;
      }

      v51 = sub_1DEE12A5C(v49, v50, &aBlock);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2082;
      *(v47 + 14) = sub_1DEE12A5C(v42, v43, &aBlock);
      *(v47 + 22) = 2082;
      v106 = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v52 = sub_1DEF8D988();
      v54 = sub_1DEE12A5C(v52, v53, &aBlock);

      *(v47 + 24) = v54;
      _os_log_impl(&dword_1DEE0F000, v45, v46, "%{public}s %{public}s will be used for connection: %{public}s", v47, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v48, -1, -1);
      MEMORY[0x1E12CCD70](v47, -1, -1);
    }

    v55 = v104;
    v16 = v101;
    swift_beginAccess();
    v56 = *(v23 + 56);
    if (!*(v56 + 16) || (v57 = sub_1DEE13224(v42, v43), (v58 & 1) == 0))
    {
      swift_endAccess();
      goto LABEL_29;
    }

    v59 = v102;
    sub_1DEE15068(*(v56 + 56) + *(v55 + 9) * v57, v102, type metadata accessor for NetworkMessenger.ExpiringConnection);
    v60 = v59;
    v61 = v96;
    sub_1DEE1C4F0(v60, v96, type metadata accessor for NetworkMessenger.ExpiringConnection);
    swift_endAccess();
    sub_1DEE15068(v61, v16, type metadata accessor for NetworkMessenger.ExpiringConnection);

    v62 = sub_1DEF8D4D8();
    v63 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock = v65;
      *v64 = 136446466;
      sub_1DEE15068(v16, v97, type metadata accessor for NetworkMessenger.ExpiringConnection);
      v66 = sub_1DEF8D988();
      v67 = v16;
      v69 = v68;
      sub_1DEE15388(v67, type metadata accessor for NetworkMessenger.ExpiringConnection);
      v70 = sub_1DEE12A5C(v66, v69, &aBlock);

      *(v64 + 4) = v70;
      v55 = v104;
      *(v64 + 12) = 2082;
      *(v64 + 14) = sub_1DEE12A5C(v42, v43, &aBlock);
      _os_log_impl(&dword_1DEE0F000, v62, v63, "Canceling existing connection %{public}s for DeviceID %{public}s", v64, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v65, -1, -1);
      MEMORY[0x1E12CCD70](v64, -1, -1);

LABEL_28:
      v86 = v96;
      nw_connection_cancel(*v96);
      sub_1DEE15388(v86, type metadata accessor for NetworkMessenger.ExpiringConnection);
LABEL_29:
      v87 = v105;

      v88 = v103;
      sub_1DEF8D348();
      *v88 = a1;
      *(v88 + *(v87 + 24)) = 0;
      (*(v55 + 7))(v88, 0, 1, v87);
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_1DEE136B8(v88, v42, v43);
      swift_endAccess();
      v89 = *(v23 + 112);

      v90 = nw_connection_get_id();
      v91 = *(v89 + 16);
      v92 = swift_allocObject();
      v92[2] = v42;
      v92[3] = v43;
      v92[4] = v90;
      v92[5] = v89;
      v93 = swift_allocObject();
      *(v93 + 16) = sub_1DEF30810;
      *(v93 + 24) = v92;
      v111 = sub_1DEE46D40;
      v112 = v93;
      aBlock = MEMORY[0x1E69E9820];
      v108 = 1107296256;
      v109 = sub_1DEE134F4;
      v110 = &block_descriptor_380;
      v94 = _Block_copy(&aBlock);

      dispatch_sync(v91, v94);
      _Block_release(v94);
      LOBYTE(v94) = swift_isEscapingClosureAtFileLocation();

      if (v94)
      {
        __break(1u);
        return result;
      }

      goto LABEL_30;
    }

LABEL_27:

    sub_1DEE15388(v16, type metadata accessor for NetworkMessenger.ExpiringConnection);
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1DEE129EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1DEE12A5C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DEE12D80(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1DEE12F7C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_1DEE12B28()
{
  nw_connection_copy_endpoint(v0);
  if (nw_endpoint_get_device_id())
  {
    v1 = sub_1DEF8D9E8();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v1;
}

void *sub_1DEE12B90(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1DEE12D0C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1DEF8DFA8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1DEF8D9F8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DEE12D0C(v10, 0);
        result = sub_1DEF8DF18();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1DEE12CC0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DEE12B90(a1, a2);
  sub_1DEE12E90(&unk_1F5A18E30);
  return v3;
}

void *sub_1DEE12D0C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58C8, &qword_1DEF9AE80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1DEE12D80(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1DEE12CC0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1DEF8DFA8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1DEE12E90(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1DEE202D8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DEE12F7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1DEE12FEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DEF8D378();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DEE13090(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DEE13224(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
      return sub_1DEE1B4DC(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for NetworkMessenger.ExpiringConnection);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1DEEB9F20();
    goto LABEL_7;
  }

  sub_1DEEB5BE4(v15, a4 & 1);
  v22 = sub_1DEE13224(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DEF40754(v12, a2, a3, a1, v18, type metadata accessor for NetworkMessenger.ExpiringConnection, type metadata accessor for NetworkMessenger.ExpiringConnection);
}

unint64_t sub_1DEE13224(uint64_t a1, uint64_t a2)
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  v4 = sub_1DEF8E7F8();

  return sub_1DEE1329C(a1, a2, v4);
}

unint64_t sub_1DEE1329C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1DEF8E4E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DEE1351C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE47A8, &qword_1DEF93660);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_1DEF8D348();
  *v13 = a1;
  v13[1] = a2;
  v13[2] = a3;
  sub_1DEE13B74(v13, v9);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_beginAccess();
  sub_1DEE13C90(v9, a3);
  swift_endAccess();
  sub_1DEE1425C();
  return sub_1DEE152E4(v13);
}

uint64_t sub_1DEE136B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA0, &qword_1DEF95AA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1DEE171B4(a1, &qword_1ECDE4DA0, &qword_1DEF95AA0);
    sub_1DEF759B0(a2, a3, v9);

    return sub_1DEE171B4(v9, &qword_1ECDE4DA0, &qword_1DEF95AA0);
  }

  else
  {
    sub_1DEE139C0(a1, v13, type metadata accessor for NetworkMessenger.ExpiringConnection);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1DEE13090(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_1DEE138A0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DEF8D378();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DEE13958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE139C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE13A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE13A90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor(uint64_t a1)
{
  result = qword_1ECDE4798;
  if (!qword_1ECDE4798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DEE13B74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEE13BEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DEF8D378();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DEE13C90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE47A8, &qword_1DEF93660);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1DEE171B4(a1, &qword_1ECDE47A8, &qword_1DEF93660);
    v14 = sub_1DEE140F8(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1DEEB96B0();
        v18 = v22;
      }

      sub_1DEE139C0(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
      sub_1DEF77538(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1DEE171B4(v8, &qword_1ECDE47A8, &qword_1DEF93660);
  }

  else
  {
    sub_1DEE139C0(a1, v13, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1DEE13FA4(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1DEE13EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DEF8D378();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DEE13FA4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1DEE140F8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor(0);
      return sub_1DEE1B4DC(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1DEEB96B0();
    goto LABEL_7;
  }

  sub_1DEEB4EA0(v13, a3 & 1);
  v20 = sub_1DEE140F8(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1DEE14148(v10, a2, a1, v16);
}

unint64_t sub_1DEE140F8(uint64_t a1)
{
  v2 = sub_1DEF8E798();

  return sub_1DEE141F0(a1, v2);
}

uint64_t sub_1DEE14148(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor(0);
  result = sub_1DEE139C0(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1DEE141F0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1DEE1425C()
{
  v1 = v0;
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[2];
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
  v8 = v7;
  v9 = sub_1DEF8D7B8();
  result = (*(v3 + 8))(v6, v2);
  if (v9)
  {
    v11 = v1[4];
    if (v11)
    {
      v12 = *(v11 + 24);
      MEMORY[0x1EEE9AC00](result);
      v22[-2] = sub_1DEE15450;
      v22[-1] = v11;

      os_unfair_lock_lock(v12 + 4);
      sub_1DEE15434(v13);
      os_unfair_lock_unlock(v12 + 4);
    }

    v1[4] = 0;

    sub_1DEE14768();
    result = swift_beginAccess();
    if (*(v1[3] + 16))
    {
      type metadata accessor for BasicTimer();
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v14 + 24) = v15;
      v1[4] = v14;

      v16 = swift_allocObject();
      v17 = swift_weakInit();
      v18 = *(v14 + 24);
      MEMORY[0x1EEE9AC00](v17);
      v22[-6] = v14;
      v22[-5] = 0x4082C00000000000;
      v22[-4] = v8;
      v22[-3] = sub_1DEEE4BC8;
      v22[-2] = v16;
      MEMORY[0x1EEE9AC00](v19);
      v22[-2] = sub_1DEE1B740;
      v22[-1] = v20;

      os_unfair_lock_lock(v18 + 4);
      sub_1DEE3DEF0(v21);
      os_unfair_lock_unlock(v18 + 4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE14580()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE1460C()
{
  v1 = v0;
  v2 = *(v0 + 24);

  os_unfair_lock_assert_owner(v2 + 4);

  if (*(v1 + 16))
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v4 = sub_1DEF8D508();
    __swift_project_value_buffer(v4, qword_1ECDF6028);
    v5 = sub_1DEF8D4D8();
    v6 = sub_1DEF8DC88();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DEE0F000, v5, v6, "Cancelling timer", v7, 2u);
      MEMORY[0x1E12CCD70](v7, -1, -1);
    }

    if (*(v1 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1DEF8DD88();
      swift_unknownObjectRelease();
    }

    *(v1 + 16) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DEE14768()
{
  v1 = v0;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE47B0, &qword_1DEF93668);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v69 = (&v57 - v4);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v57 - v6;
  v7 = sub_1DEF8D378();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  sub_1DEF8D348();
  v62 = v13;
  sub_1DEF8D2E8();
  swift_beginAccess();
  v14 = *(v1 + 24);
  v74 = v10;

  v15 = sub_1DEE14DDC(sub_1DEE15494, v73, v14);
  v61 = 0;

  v16 = v15[2];
  if (v16)
  {
    v57 = v8;
    v58 = v10;
    v59 = v7;
    v60 = v1;
    v78 = MEMORY[0x1E69E7CC0];
    sub_1DEEC7E08(0, v16, 0);
    v17 = v78;
    v18 = (v15 + 8);
    result = sub_1DEF8DE18();
    v20 = result;
    v21 = 0;
    v65 = *(v15 + 9);
    v22 = *(v15 + 32);
    v63 = (v15 + 9);
    v64 = v16;
    v66 = (v15 + 8);
    v67 = v15;
    do
    {
      if (v20 < 0 || v20 >= 1 << v22)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v25 = v20 >> 6;
      if ((*&v18[8 * (v20 >> 6)] & (1 << v20)) == 0)
      {
        goto LABEL_24;
      }

      v26 = v71;
      v27 = *(v71 + 48);
      v28 = v15[7];
      v29 = *(v15[6] + 8 * v20);
      v30 = v28 + *(*(type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor(0) - 8) + 72) * v20;
      v31 = v68;
      sub_1DEE13B74(v30, &v68[v27]);
      v72 = v17;
      v32 = v69;
      *v69 = v29;
      sub_1DEEE4B44(&v31[v27], v32 + *(v26 + 48));
      v33 = v70;
      sub_1DEE154B4(v32, v70);
      v34 = (v33 + *(v26 + 48));
      v35 = v34[1];
      v76 = *v34;
      v77 = v35;

      MEMORY[0x1E12CB180](14906, 0xE200000000000000);
      v75 = v34[2];
      v36 = sub_1DEF8E2E8();
      MEMORY[0x1E12CB180](v36);

      v37 = v76;
      v38 = v77;
      v39 = v32;
      v17 = v72;
      sub_1DEE15524(v39);
      result = sub_1DEE152E4(v34);
      v78 = v17;
      v41 = *(v17 + 16);
      v40 = *(v17 + 24);
      if (v41 >= v40 >> 1)
      {
        result = sub_1DEEC7E08((v40 > 1), v41 + 1, 1);
        v17 = v78;
      }

      *(v17 + 16) = v41 + 1;
      v42 = v17 + 16 * v41;
      *(v42 + 32) = v37;
      *(v42 + 40) = v38;
      v15 = v67;
      v22 = *(v67 + 32);
      v23 = 1 << v22;
      if (v20 >= 1 << v22)
      {
        goto LABEL_25;
      }

      v18 = v66;
      v43 = *&v66[8 * v25];
      if ((v43 & (1 << v20)) == 0)
      {
        goto LABEL_26;
      }

      if (v65 != *(v67 + 9))
      {
        goto LABEL_27;
      }

      v44 = v43 & (-2 << (v20 & 0x3F));
      if (v44)
      {
        v23 = __clz(__rbit64(v44)) | v20 & 0x7FFFFFFFFFFFFFC0;
        v24 = v64;
      }

      else
      {
        v45 = v25 << 6;
        v46 = v25 + 1;
        v24 = v64;
        v47 = &v63[8 * v25];
        while (v46 < (v23 + 63) >> 6)
        {
          v49 = *v47++;
          v48 = v49;
          v45 += 64;
          ++v46;
          if (v49)
          {
            v23 = __clz(__rbit64(v48)) + v45;
            break;
          }
        }
      }

      ++v21;
      v20 = v23;
    }

    while (v21 != v24);

    v1 = v60;
    v7 = v59;
    v10 = v58;
    v8 = v57;
    if (!*(v17 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_21:
      v56 = *(v8 + 8);
      v56(v62, v7);
      goto LABEL_22;
    }
  }

  v76 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
  sub_1DEE1B548(&unk_1ECDE2C40, &qword_1ECDE3C90, &unk_1DEF91590, MEMORY[0x1E69E6310]);
  v50 = sub_1DEF8D8D8();
  v52 = v51;

  sub_1DEF66074(0xD000000000000012, 0x80000001DEF9C6C0, 0xD000000000000012, 0x80000001DEF9C6E0, 0xD000000000000012, 0x80000001DEF9C6E0, v50, v52);

  v54 = *(v1 + 24);
  MEMORY[0x1EEE9AC00](v53);
  *(&v57 - 2) = v10;

  v55 = sub_1DEE14DDC(sub_1DEEE4BA8, (&v57 - 4), v54);

  v56 = *(v8 + 8);
  v56(v62, v7);
  *(v1 + 24) = v55;
LABEL_22:

  return (v56)(v10, v7);
}

void sub_1DEE14E50(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t *, char *))
{
  v28 = a4;
  v24 = a2;
  v25 = a1;
  v6 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor(0);
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0;
  v9 = 0;
  v29 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = v29[7];
    v30 = *(v29[6] + 8 * v20);
    sub_1DEE15068(v21 + *(v27 + 72) * v20, v8, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
    v22 = v28(&v30, v8);
    sub_1DEE15388(v8, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
    if (v4)
    {
      return;
    }

    if (v22)
    {
      *(v25 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1DEE1558C(v25, v24, v26, v29);
        return;
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v19 = v11[v9];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1DEE15068(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_1DEE150D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8D378();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE47B0, &qword_1DEF93668);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  *(&v20 - v14) = *a1;
  sub_1DEE13B74(a2, &v20 + *(v10 + 56) - v14);
  sub_1DEE154B4(v15, v12);
  v16 = &v12[*(v10 + 56)];
  v17 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor(0);
  (*(v6 + 16))(v8, v16 + *(v17 + 24), v5);
  sub_1DEE152E4(v16);
  sub_1DEE15340(&qword_1ECDE4DE0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v18 = sub_1DEF8D8E8();
  (*(v6 + 8))(v8, v5);
  sub_1DEE15524(v15);
  return (v18 & 1) == 0;
}

uint64_t sub_1DEE152E4(uint64_t a1)
{
  v2 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEE15340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DEE15388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DEE154B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE47B0, &qword_1DEF93668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEE15524(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE47B0, &qword_1DEF93668);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEE1558C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor(0);
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v37 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v34 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3FF8, &qword_1DEF91E40);
  result = sub_1DEF8E148();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v34 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = a4[7];
    v22 = *(a4[6] + 8 * v20);
    v23 = v35;
    v24 = *(v36 + 72);
    sub_1DEECF44C(v21 + v24 * v20, v35, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
    sub_1DEECF4B4(v23, v37, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
    result = sub_1DEF8E798();
    v25 = -1 << *(v13 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v16 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v13 + 48) + 8 * v28) = v22;
    result = sub_1DEECF4B4(v37, *(v13 + 56) + v28 * v24, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    if (!a3)
    {
      return v13;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
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

void sub_1DEE158C8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v51 = a3;
  v47 = a2;
  v45 = a1;
  v7 = sub_1DEF8D698();
  v54 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1DEF8D6D8();
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1DEF8D688();
  v10 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v44 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v41 - v13);
  v55 = sub_1DEF8D778();
  v48 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v42 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v46 = &v41 - v17;
  v18 = sub_1DEF8DD48();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v4 + 24);

  os_unfair_lock_assert_owner(v22 + 4);

  if (*(v5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1DEF8DD88();
    swift_unknownObjectRelease();
  }

  *(v5 + 16) = 0;
  swift_unknownObjectRelease();
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v23 = sub_1DEF8D508();
  __swift_project_value_buffer(v23, qword_1ECDF6028);
  v24 = sub_1DEF8D4D8();
  v25 = sub_1DEF8DC88();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134349056;
    *(v26 + 4) = a4;
    _os_log_impl(&dword_1DEE0F000, v24, v25, "Timer will fire in %{public}fs", v26, 0xCu);
    MEMORY[0x1E12CCD70](v26, -1, -1);
  }

  v27 = a4 * 1000.0;
  if (COERCE__INT64(fabs(a4 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v41 = v7;
  if (v27 >= 0x7FFFFFFF)
  {
    v28 = 0x7FFFFFFFLL;
  }

  else
  {
    v28 = v27;
  }

  sub_1DEE1B7BC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DEE1B808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4790, &qword_1DEF93538);
  sub_1DEE1B640();
  sub_1DEF8DE08();
  v29 = sub_1DEF8DD58();
  (*(v19 + 8))(v21, v18);
  v30 = v42;
  sub_1DEF8D768();
  *v14 = v28;
  v31 = v43;
  (*(v10 + 104))(v14, *MEMORY[0x1E69E7F38], v43);
  v32 = v46;
  MEMORY[0x1E12CAF50](v30, v14);
  v33 = *(v10 + 8);
  v33(v14, v31);
  v48 = *(v48 + 8);
  (v48)(v30, v55);
  ObjectType = swift_getObjectType();
  sub_1DEE16074(v14);
  v35 = v44;
  sub_1DEE1B860(v44);
  MEMORY[0x1E12CB550](v32, v14, v35, ObjectType);
  v33(v35, v31);
  v33(v14, v31);
  v36 = swift_allocObject();
  v37 = v47;
  v36[2] = v5;
  v36[3] = v37;
  v36[4] = v51;
  aBlock[4] = sub_1DEEE2F78;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_6;
  v38 = _Block_copy(aBlock);

  v39 = v49;
  sub_1DEE160E8(ObjectType);
  v40 = v52;
  sub_1DEE160EC();
  sub_1DEF8DD78();
  _Block_release(v38);
  (*(v54 + 8))(v40, v41);
  (*(v50 + 8))(v39, v53);

  *(v5 + 16) = v29;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  sub_1DEF8DD98();
  swift_unknownObjectRelease_n();
  (v48)(v32, v55);
}

uint64_t sub_1DEE16034()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE16074@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E7F40];
  v3 = sub_1DEF8D688();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1DEE160EC()
{
  sub_1DEF8D698();
  sub_1DEE1B5E4(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  return sub_1DEF8DE08();
}

void sub_1DEE16294(NSObject *a1)
{
  v2 = v1;
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 24);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4, v6);
  v10 = v9;
  v11 = sub_1DEF8D7B8();
  (*(v5 + 8))(v8, v4);
  if (v11)
  {
    if (qword_1ECDE2E50 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = sub_1DEF8D508();
  __swift_project_value_buffer(v12, qword_1ECDF6010);
  swift_unknownObjectRetain();
  v13 = sub_1DEF8D4D8();
  v14 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23[1] = a1;
    aBlock[0] = v16;
    *v15 = 136446210;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v17 = sub_1DEF8D988();
    v19 = sub_1DEE12A5C(v17, v18, aBlock);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1DEE0F000, v13, v14, "Starting connection: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1E12CCD70](v16, -1, -1);
    MEMORY[0x1E12CCD70](v15, -1, -1);
  }

  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = a1;
  aBlock[4] = sub_1DEE1733C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE172BC;
  aBlock[3] = &block_descriptor_293;
  v22 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  nw_connection_set_state_changed_handler(a1, v22);
  _Block_release(v22);
  nw_connection_set_queue(a1, v10);
  nw_connection_start(a1);
  sub_1DEE165E0();
}

void sub_1DEE165E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v54 - v3;
  v5 = sub_1DEF8D378();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = v54 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v54 - v12;
  v14 = sub_1DEF8D788();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v1 + 24);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14, v16);
  v58 = v19;
  LOBYTE(v19) = sub_1DEF8D7B8();
  v20 = (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v56 = v8;
  v21 = *(v1 + 80);
  v22 = *(v21 + 24);
  MEMORY[0x1EEE9AC00](v20);
  v54[-2] = sub_1DEE15450;
  v54[-1] = v21;

  os_unfair_lock_lock(v22 + 4);
  sub_1DEE15434(v23);
  os_unfair_lock_unlock(v22 + 4);

  sub_1DEE16C98(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1DEE171B4(v4, &qword_1ECDE4DC0, &qword_1DEF91640);
    if (qword_1ECDE2E50 == -1)
    {
LABEL_4:
      v24 = sub_1DEF8D508();
      __swift_project_value_buffer(v24, qword_1ECDF6010);
      v25 = sub_1DEF8D4D8();
      v26 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1DEE0F000, v25, v26, "Not starting connection expiration timer", v27, 2u);
        MEMORY[0x1E12CCD70](v27, -1, -1);
      }

      return;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  (*(v6 + 32))(v13, v4, v5);
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v54[0] = v1;
  v54[1] = 0;
  v28 = sub_1DEF8D508();
  __swift_project_value_buffer(v28, qword_1ECDF6010);
  v29 = *(v6 + 16);
  v30 = v57;
  v55 = v13;
  v29(v57, v13, v5);
  v31 = sub_1DEF8D4D8();
  v32 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v59 = v34;
    *v33 = 136446210;
    sub_1DEE1B9F8(&qword_1ECDE3A30, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v35 = sub_1DEF8E2E8();
    v36 = v30;
    v38 = v37;
    v39 = v5;
    v40 = *(v6 + 8);
    v40(v36, v39);
    v41 = sub_1DEE12A5C(v35, v38, &v59);

    *(v33 + 4) = v41;
    _os_log_impl(&dword_1DEE0F000, v31, v32, "Connection expiration timer will fire at %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1E12CCD70](v34, -1, -1);
    MEMORY[0x1E12CCD70](v33, -1, -1);

    v42 = v40;
  }

  else
  {

    v42 = *(v6 + 8);
    v42(v30, v5);
    v39 = v5;
  }

  v43 = v54[0];
  v44 = *(v54[0] + 80);

  v45 = v56;
  sub_1DEF8D348();
  v46 = v55;
  sub_1DEF8D2D8();
  v48 = v47;
  v49 = (v42)(v45, v39);
  v50 = *(v44 + 24);
  MEMORY[0x1EEE9AC00](v49);
  v54[-6] = v44;
  v54[-5] = v48;
  v54[-4] = v58;
  v54[-3] = sub_1DEF2F7F8;
  v54[-2] = v43;
  MEMORY[0x1EEE9AC00](v51);
  v54[-2] = sub_1DEE1B740;
  v54[-1] = v52;

  os_unfair_lock_lock(v50 + 4);
  sub_1DEE3DEF0(v53);
  os_unfair_lock_unlock(v50 + 4);

  v42(v46, v39);
}

uint64_t sub_1DEE16C98@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v56 = *v1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA8, &qword_1DEF95AA8);
  MEMORY[0x1EEE9AC00](v55);
  v5 = &v48 - v4;
  v6 = sub_1DEF8D378();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v48 - v13;
  v14 = sub_1DEF8D788();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v2[3];
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14, v16);
  v20 = v19;
  LOBYTE(v19) = sub_1DEF8D7B8();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v48 = v7;
    v49 = v6;
    v50 = a1;
    v21 = *(v2 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber + 24);
    v22 = *(v2 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber), v21);
    v53 = (*(v22 + 8))(v21, v22);
    swift_beginAccess();
    v23 = v2[7];

    sub_1DEF8D2C8();
    v24 = v23 + 64;
    v25 = 1 << *(v23 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v23 + 64);
    v28 = (v25 + 63) >> 6;
    v57 = v23;

    v29 = 0;
    v2 = 0;
    v54 = v11;
    if (v27)
    {
      while (1)
      {
        v30 = v5;
        v31 = v29;
LABEL_10:
        v32 = __clz(__rbit64(v27)) | (v31 << 6);
        v33 = *(v57 + 56);
        v34 = (*(v57 + 48) + 16 * v32);
        v35 = *v34;
        v36 = v34[1];
        v37 = v33 + *(*(type metadata accessor for NetworkMessenger.ExpiringConnection(0) - 8) + 72) * v32;
        v5 = v30;
        sub_1DEE15068(v37, &v30[*(v55 + 48)], type metadata accessor for NetworkMessenger.ExpiringConnection);
        *v30 = v35;
        *(v30 + 1) = v36;

        v11 = v54;
        sub_1DEF29EEC(v54, v30, v53 & 1, v56);
        v27 &= v27 - 1;
        sub_1DEE171B4(v30, &qword_1ECDE4DA8, &qword_1DEF95AA8);
        v29 = v31;
        if (!v27)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v31 >= v28)
      {
        break;
      }

      v27 = *(v24 + 8 * v31);
      ++v29;
      if (v27)
      {
        v30 = v5;
        goto LABEL_10;
      }
    }

    v39 = v48;
    v38 = v49;
    v40 = *(v48 + 32);
    v41 = v52;
    v40(v52, v11, v49);

    v42 = v51;
    sub_1DEF8D2C8();
    v43 = sub_1DEF8D338();
    v44 = *(v39 + 8);
    v44(v42, v38);
    if (v43)
    {
      v44(v41, v38);
      v45 = 1;
      v46 = v50;
    }

    else
    {
      v46 = v50;
      v40(v50, v41, v38);
      v45 = 0;
    }

    return (*(v39 + 56))(v46, v45, 1, v38);
  }

  else
  {
LABEL_17:
    __break(1u);

    sub_1DEE171B4(v5, &qword_1ECDE4DA8, &qword_1DEF95AA8);
    result = (*(v48 + 8))(v11, v49);
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE171B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DEE17214(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t BasicTimer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DEE172C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DEE17344(int a1, NSObject *a2, uint64_t a3, NSObject *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1 <= 3)
    {
      if (a1 == 1)
      {
        if (a2)
        {
          v43 = qword_1ECDE2E50;
          swift_unknownObjectRetain();
          if (v43 != -1)
          {
            swift_once();
          }

          v44 = sub_1DEF8D508();
          __swift_project_value_buffer(v44, qword_1ECDF6010);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v29 = sub_1DEF8D4D8();
          v45 = sub_1DEF8DC98();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (!os_log_type_enabled(v29, v45))
          {
            goto LABEL_31;
          }

          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v90 = v47;
          *v46 = 136446466;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
          v48 = sub_1DEF8D988();
          v50 = sub_1DEE12A5C(v48, v49, &v90);

          *(v46 + 4) = v50;
          *(v46 + 12) = 2082;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D98, &qword_1DEF95A98);
          v51 = sub_1DEF8D988();
          v53 = sub_1DEE12A5C(v51, v52, &v90);

          *(v46 + 14) = v53;
          _os_log_impl(&dword_1DEE0F000, v29, v45, "Connection failed and entered waiting state: %{public}s: %{public}s", v46, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v47, -1, -1);
          v42 = v46;
          goto LABEL_30;
        }

        if (qword_1ECDE2E50 != -1)
        {
          swift_once();
        }

        v77 = sub_1DEF8D508();
        __swift_project_value_buffer(v77, qword_1ECDF6010);
        swift_unknownObjectRetain();
        v66 = sub_1DEF8D4D8();
        v78 = sub_1DEF8DCB8();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v66, v78))
        {
          v68 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v90 = v79;
          *v68 = 136446466;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
          v80 = sub_1DEF8D988();
          v82 = sub_1DEE12A5C(v80, v81, &v90);

          *(v68 + 4) = v82;
          *(v68 + 12) = 2082;
          type metadata accessor for nw_connection_state_t(0);
          v83 = sub_1DEF8D988();
          v85 = sub_1DEE12A5C(v83, v84, &v90);

          *(v68 + 14) = v85;
          _os_log_impl(&dword_1DEE0F000, v66, v78, "Connection state changed: %{public}s; state: %{public}s", v68, 0x16u);
          swift_arrayDestroy();
          v76 = v79;
          goto LABEL_45;
        }

LABEL_46:
      }

      if (a1 == 3)
      {
        if (qword_1ECDE2E50 != -1)
        {
          swift_once();
        }

        v8 = sub_1DEF8D508();
        __swift_project_value_buffer(v8, qword_1ECDF6010);
        swift_unknownObjectRetain();
        v9 = sub_1DEF8D4D8();
        v10 = sub_1DEF8DCB8();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v90 = v12;
          *v11 = 136446210;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
          v13 = sub_1DEF8D988();
          v15 = sub_1DEE12A5C(v13, v14, &v90);

          *(v11 + 4) = v15;
          _os_log_impl(&dword_1DEE0F000, v9, v10, "Connection ready: %{public}s", v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v12);
          MEMORY[0x1E12CCD70](v12, -1, -1);
          MEMORY[0x1E12CCD70](v11, -1, -1);
        }

        v16 = nw_protocol_copy_quic_definition();
        v17 = nw_connection_copy_protocol_metadata(a4, v16);
        swift_unknownObjectRelease();
        if (v17)
        {
          if (MEMORY[0x1E12CC5F0](v17))
          {
            nw_quic_set_keepalive();
          }

          swift_unknownObjectRelease();
        }

        sub_1DEF296FC(a4);
        sub_1DEE18040(a4);
      }

LABEL_20:
      if (a2)
      {
        v27 = qword_1ECDE2E50;
        swift_unknownObjectRetain();
        if (v27 != -1)
        {
          swift_once();
        }

        v28 = sub_1DEF8D508();
        __swift_project_value_buffer(v28, qword_1ECDF6010);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v29 = sub_1DEF8D4D8();
        v30 = sub_1DEF8DC98();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (!os_log_type_enabled(v29, v30))
        {
          goto LABEL_31;
        }

        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v90 = v32;
        *v31 = 136446722;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
        v33 = sub_1DEF8D988();
        v35 = sub_1DEE12A5C(v33, v34, &v90);

        *(v31 + 4) = v35;
        *(v31 + 12) = 2082;
        type metadata accessor for nw_connection_state_t(0);
        v36 = sub_1DEF8D988();
        v38 = sub_1DEE12A5C(v36, v37, &v90);

        *(v31 + 14) = v38;
        *(v31 + 22) = 2082;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D98, &qword_1DEF95A98);
        v39 = sub_1DEF8D988();
        v41 = sub_1DEE12A5C(v39, v40, &v90);

        *(v31 + 24) = v41;
        _os_log_impl(&dword_1DEE0F000, v29, v30, "Connection state changed: %{public}s; state: %{public}s; error: %{public}s", v31, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v32, -1, -1);
        v42 = v31;
LABEL_30:
        MEMORY[0x1E12CCD70](v42, -1, -1);
LABEL_31:

        sub_1DEF16BA0(a4);
        swift_unknownObjectRelease();
      }

      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v65 = sub_1DEF8D508();
      __swift_project_value_buffer(v65, qword_1ECDF6010);
      swift_unknownObjectRetain();
      v66 = sub_1DEF8D4D8();
      v67 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v90 = v69;
        *v68 = 136446466;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
        v70 = sub_1DEF8D988();
        v72 = sub_1DEE12A5C(v70, v71, &v90);

        *(v68 + 4) = v72;
        *(v68 + 12) = 2082;
        type metadata accessor for nw_connection_state_t(0);
        v73 = sub_1DEF8D988();
        v75 = sub_1DEE12A5C(v73, v74, &v90);

        *(v68 + 14) = v75;
        _os_log_impl(&dword_1DEE0F000, v66, v67, "Connection state changed: %{public}s; state: %{public}s", v68, 0x16u);
        swift_arrayDestroy();
        v76 = v69;
LABEL_45:
        MEMORY[0x1E12CCD70](v76, -1, -1);
        MEMORY[0x1E12CCD70](v68, -1, -1);
        goto LABEL_46;
      }

      goto LABEL_46;
    }

    if (a1 == 4)
    {
      if (a2)
      {
        v54 = qword_1ECDE2E50;
        swift_unknownObjectRetain();
        if (v54 != -1)
        {
          swift_once();
        }

        v55 = sub_1DEF8D508();
        __swift_project_value_buffer(v55, qword_1ECDF6010);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = sub_1DEF8D4D8();
        v56 = sub_1DEF8DC98();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v19, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v90 = v58;
          *v57 = 136446466;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
          v59 = sub_1DEF8D988();
          v61 = sub_1DEE12A5C(v59, v60, &v90);

          *(v57 + 4) = v61;
          *(v57 + 12) = 2082;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D98, &qword_1DEF95A98);
          v62 = sub_1DEF8D988();
          v64 = sub_1DEE12A5C(v62, v63, &v90);

          *(v57 + 14) = v64;
          _os_log_impl(&dword_1DEE0F000, v19, v56, "Connection failed: %{public}s: %{public}s", v57, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v58, -1, -1);
          MEMORY[0x1E12CCD70](v57, -1, -1);

          swift_unknownObjectRelease();
LABEL_54:
          sub_1DEF16BA0(a4);
        }

        swift_unknownObjectRelease();
LABEL_53:

        goto LABEL_54;
      }

      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v86 = sub_1DEF8D508();
      __swift_project_value_buffer(v86, qword_1ECDF6010);
      swift_unknownObjectRetain();
      v19 = sub_1DEF8D4D8();
      v20 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_53;
      }

      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v90 = v22;
      *v21 = 136446210;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v87 = sub_1DEF8D988();
      v89 = sub_1DEE12A5C(v87, v88, &v90);

      *(v21 + 4) = v89;
      v26 = "Connection failed: %{public}s";
    }

    else
    {
      if (a1 != 5)
      {
        goto LABEL_20;
      }

      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v18 = sub_1DEF8D508();
      __swift_project_value_buffer(v18, qword_1ECDF6010);
      swift_unknownObjectRetain();
      v19 = sub_1DEF8D4D8();
      v20 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_53;
      }

      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v90 = v22;
      *v21 = 136446210;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v23 = sub_1DEF8D988();
      v25 = sub_1DEE12A5C(v23, v24, &v90);

      *(v21 + 4) = v25;
      v26 = "Connection cancelled: %{public}s";
    }

    _os_log_impl(&dword_1DEE0F000, v19, v20, v26, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1E12CCD70](v22, -1, -1);
    MEMORY[0x1E12CCD70](v21, -1, -1);
    goto LABEL_53;
  }

  return result;
}

void sub_1DEE18040(NSObject *a1)
{
  v3 = sub_1DEF8D788();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 24);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1DEF8D7B8();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = a1;
    aBlock[4] = sub_1DEF30130;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE1BDCC;
    aBlock[3] = &block_descriptor_300;
    v12 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    nw_connection_receive(a1, 0x14u, 0x14u, v12);
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DEE18220()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE18264@<X0>(int a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>)
{
  v99 = a1;
  v102 = *MEMORY[0x1E69E9840];
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v88 - v14;
  v17 = a3 >> 62;
  v97 = a2;
  v98 = v10;
  v96 = &v88 - v14;
  if ((a3 >> 62) > 1)
  {
    if (v17 != 2)
    {
      memset(v101, 0, 14);
      a2 = *(v10 + 16);
      (a2)(&v88 - v14, v101, v9, v15);
      memset(v101, 0, 14);
      (a2)(v12, &v102, v9);
      v18 = a2;
      goto LABEL_51;
    }

    v100 = v12;
    v19 = *(a2 + 16);
    v20 = sub_1DEF8D018();
    if (v20)
    {
      v21 = v20;
      v22 = sub_1DEF8D048();
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_61;
      }

      v23 = v19 - v22 + v21;
      sub_1DEF8D038();
      if (v23)
      {
        v95 = *(v10 + 16);
        v95(v16, v23, v9);
        v24 = *(a2 + 16);
        v25 = sub_1DEF8D018();
        if (!v25)
        {
LABEL_79:
          sub_1DEF8D038();
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v26 = v25;
        v27 = sub_1DEF8D048();
        if (!__OFSUB__(v24, v27))
        {
          v28 = v24 - v27 + v26;
          sub_1DEF8D038();
          if (v28)
          {
            v95(v100, v28 + 16, v9);
            v29 = *(a2 + 16);
            v30 = sub_1DEF8D018();
            if (!v30)
            {
LABEL_83:
              sub_1DEF8D038();
LABEL_84:
              __break(1u);
              goto LABEL_85;
            }

            v31 = v30;
            v32 = sub_1DEF8D048();
            if (!__OFSUB__(v29, v32))
            {
              v33 = v29 - v32 + v31;
              sub_1DEF8D038();
              if (v33)
              {
                v34 = *(v33 + 32);
                v35 = *(a2 + 16);
                v36 = sub_1DEF8D018();
                if (!v36)
                {
LABEL_87:
                  sub_1DEF8D038();
LABEL_88:
                  __break(1u);
                  goto LABEL_89;
                }

                v37 = v36;
                v38 = sub_1DEF8D048();
                if (!__OFSUB__(v35, v38))
                {
                  LODWORD(v94) = v34;
                  v39 = v35 - v38 + v37;
                  sub_1DEF8D038();
                  if (v39)
                  {
                    LODWORD(v16) = *(v39 + 36);
                    v40 = *(a2 + 16);
                    v41 = sub_1DEF8D018();
                    if (!v41)
                    {
LABEL_91:
                      sub_1DEF8D038();
LABEL_92:
                      __break(1u);
                      goto LABEL_93;
                    }

                    v42 = v41;
                    v43 = sub_1DEF8D048();
                    if (!__OFSUB__(v40, v43))
                    {
                      v44 = v40 - v43 + v42;
                      sub_1DEF8D038();
                      if (v44)
                      {
                        LODWORD(v5) = *(v44 + 40);
                        v45 = *(a2 + 16);
                        v46 = sub_1DEF8D018();
                        if (!v46)
                        {
LABEL_95:
                          sub_1DEF8D038();
LABEL_96:
                          __break(1u);
                          goto LABEL_97;
                        }

                        v47 = v46;
                        v48 = sub_1DEF8D048();
                        if (!__OFSUB__(v45, v48))
                        {
                          v4 = v45 - v48 + v47;
                          sub_1DEF8D038();
                          if (v4)
                          {
                            LODWORD(v4) = *(v4 + 44);
                            v49 = *(a2 + 16);
                            v50 = sub_1DEF8D018();
                            if (!v50)
                            {
LABEL_99:
                              sub_1DEF8D038();
LABEL_100:
                              __break(1u);
                              goto LABEL_101;
                            }

                            v51 = v50;
                            v52 = sub_1DEF8D048();
                            if (!__OFSUB__(v49, v52))
                            {
                              a2 = v49 - v52 + v51;
                              sub_1DEF8D038();
                              if (a2)
                              {
LABEL_49:
                                LODWORD(a2) = *(a2 + 48);
                                v12 = v100;
                                v18 = v95;
                                goto LABEL_51;
                              }

                              goto LABEL_100;
                            }

LABEL_73:
                            __break(1u);
                            goto LABEL_74;
                          }

                          goto LABEL_96;
                        }

LABEL_71:
                        __break(1u);
LABEL_72:
                        __break(1u);
                        goto LABEL_73;
                      }

                      goto LABEL_92;
                    }

LABEL_69:
                    __break(1u);
LABEL_70:
                    __break(1u);
                    goto LABEL_71;
                  }

                  goto LABEL_88;
                }

LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
                goto LABEL_69;
              }

              goto LABEL_84;
            }

LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          goto LABEL_80;
        }

LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }
    }

    else
    {
      sub_1DEF8D038();
    }

    __break(1u);
    goto LABEL_77;
  }

  v100 = v12;
  if (v17)
  {
    v53 = a2;
    a2 = a2;
    if (a2 <= v53 >> 32)
    {
      v54 = sub_1DEF8D018();
      if (v54)
      {
        v55 = v54;
        v56 = sub_1DEF8D048();
        if (!__OFSUB__(a2, v56))
        {
          v57 = a2 - v56 + v55;
          sub_1DEF8D038();
          if (v57)
          {
            v95 = *(v10 + 16);
            v95(v16, v57, v9);
            v58 = sub_1DEF8D018();
            if (v58)
            {
              v59 = v58;
              v60 = sub_1DEF8D048();
              if (!__OFSUB__(a2, v60))
              {
                v61 = a2 - v60 + v59;
                sub_1DEF8D038();
                if (v61)
                {
                  v95(v100, v61 + 16, v9);
                  v62 = sub_1DEF8D018();
                  if (v62)
                  {
                    v63 = v62;
                    v64 = sub_1DEF8D048();
                    if (!__OFSUB__(a2, v64))
                    {
                      v65 = a2 - v64 + v63;
                      sub_1DEF8D038();
                      if (v65)
                      {
                        v66 = *(v65 + 32);
                        v67 = sub_1DEF8D018();
                        if (v67)
                        {
                          v68 = v67;
                          v69 = sub_1DEF8D048();
                          if (!__OFSUB__(a2, v69))
                          {
                            LODWORD(v94) = v66;
                            v70 = a2 - v69 + v68;
                            sub_1DEF8D038();
                            if (v70)
                            {
                              LODWORD(v16) = *(v70 + 36);
                              v71 = sub_1DEF8D018();
                              if (v71)
                              {
                                v72 = v71;
                                v73 = sub_1DEF8D048();
                                if (!__OFSUB__(a2, v73))
                                {
                                  v74 = a2 - v73 + v72;
                                  sub_1DEF8D038();
                                  if (v74)
                                  {
                                    LODWORD(v5) = *(v74 + 40);
                                    v75 = sub_1DEF8D018();
                                    if (v75)
                                    {
                                      v76 = v75;
                                      v77 = sub_1DEF8D048();
                                      if (!__OFSUB__(a2, v77))
                                      {
                                        v4 = a2 - v77 + v76;
                                        sub_1DEF8D038();
                                        if (v4)
                                        {
                                          LODWORD(v4) = *(v4 + 44);
                                          v78 = sub_1DEF8D018();
                                          if (v78)
                                          {
                                            v79 = v78;
                                            v80 = sub_1DEF8D048();
                                            if (!__OFSUB__(a2, v80))
                                            {
                                              a2 = a2 - v80 + v79;
                                              result = sub_1DEF8D038();
                                              if (a2)
                                              {
                                                goto LABEL_49;
                                              }

LABEL_102:
                                              __break(1u);
                                              return result;
                                            }

LABEL_74:
                                            __break(1u);
                                          }

LABEL_101:
                                          result = sub_1DEF8D038();
                                          __break(1u);
                                          goto LABEL_102;
                                        }

                                        goto LABEL_98;
                                      }

                                      goto LABEL_72;
                                    }

LABEL_97:
                                    sub_1DEF8D038();
LABEL_98:
                                    __break(1u);
                                    goto LABEL_99;
                                  }

                                  goto LABEL_94;
                                }

                                goto LABEL_70;
                              }

LABEL_93:
                              sub_1DEF8D038();
LABEL_94:
                              __break(1u);
                              goto LABEL_95;
                            }

                            goto LABEL_90;
                          }

                          goto LABEL_68;
                        }

LABEL_89:
                        sub_1DEF8D038();
LABEL_90:
                        __break(1u);
                        goto LABEL_91;
                      }

                      goto LABEL_86;
                    }

                    goto LABEL_66;
                  }

LABEL_85:
                  sub_1DEF8D038();
LABEL_86:
                  __break(1u);
                  goto LABEL_87;
                }

                goto LABEL_82;
              }

              goto LABEL_64;
            }

LABEL_81:
            sub_1DEF8D038();
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          goto LABEL_78;
        }

        goto LABEL_62;
      }

LABEL_77:
      sub_1DEF8D038();
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v101[0] = a2;
  v94 = a2 >> 8;
  v95 = v9;
  v93 = a2 >> 16;
  v92 = a2 >> 24;
  v91 = HIDWORD(a2);
  v90 = a2 >> 40;
  v89 = HIWORD(a2);
  v5 = HIBYTE(a2);
  v88 = a3 >> 8;
  LOWORD(v101[1]) = a3;
  v4 = a3 >> 24;
  BYTE2(v101[1]) = BYTE2(a3);
  v16 = HIDWORD(a3);
  BYTE3(v101[1]) = BYTE3(a3);
  BYTE4(v101[1]) = BYTE4(a3);
  BYTE5(v101[1]) = BYTE5(a3);
  v18 = *(v10 + 16);
  (v18)(&v88 - v14, v101, v9, v15);
  LOBYTE(v101[0]) = a2;
  BYTE1(v101[0]) = v94;
  BYTE2(v101[0]) = v93;
  BYTE3(v101[0]) = v92;
  BYTE4(v101[0]) = v91;
  BYTE5(v101[0]) = v90;
  BYTE6(v101[0]) = v89;
  HIBYTE(v101[0]) = HIBYTE(a2);
  LOBYTE(v101[1]) = a3;
  BYTE1(v101[1]) = v88;
  BYTE2(v101[1]) = BYTE2(a3);
  BYTE3(v101[1]) = BYTE3(a3);
  BYTE4(v101[1]) = BYTE4(a3);
  BYTE5(v101[1]) = BYTE5(a3);
  v9 = v95;
  (v18)(v100, &v102);
  v12 = v100;
LABEL_51:
  if (qword_1ECDE37F8 != -1)
  {
    swift_once();
  }

  v82 = __swift_project_value_buffer(v9, qword_1ECDF60C0);
  v83 = v98;
  v18(a4, v82, v9);
  sub_1DEE1BFA0(v97, a3);
  v84 = type metadata accessor for NetworkSyncHeader(0);
  *&a4[v84[5]] = v99;
  v85 = *(v83 + 32);
  v85(&a4[v84[6]], v96, v9);
  result = (v85)(&a4[v84[7]], v12, v9);
  *&a4[v84[8]] = v94;
  *&a4[v84[10]] = v5;
  *&a4[v84[11]] = v4;
  if (v16 >= 5)
  {
    v86 = 0;
  }

  else
  {
    v86 = v16;
  }

  a4[v84[9]] = v86;
  if (a2 >= 3)
  {
    v87 = 2;
  }

  else
  {
    v87 = a2;
  }

  a4[v84[12]] = v87;
  return result;
}

uint64_t sub_1DEE18A98(void *a1, char *a2, int a3, char *a4, uint64_t a5, NSObject *a6, int a7)
{
  v121 = a3;
  v129 = a2;
  v11 = type metadata accessor for NetworkSyncHeader(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v112 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v112 - v18;
  v20 = sub_1DEF8D728();
  v123 = *(v20 - 8);
  v124 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v122 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1DEF8D508();
  v120 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v24 = result;
  v118 = v11;
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v127, qword_1ECDF6010);
  swift_unknownObjectRetain();
  v128 = v25;
  v26 = sub_1DEF8D4D8();
  v27 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  v28 = os_log_type_enabled(v26, v27);
  v126 = a1;
  v117 = v16;
  v114 = v13;
  v116 = a7;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v130 = v30;
    *v29 = 136446210;
    v132 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v31 = sub_1DEF8D988();
    v33 = sub_1DEE12A5C(v31, v32, &v130);

    *(v29 + 4) = v33;
    a1 = v126;
    _os_log_impl(&dword_1DEE0F000, v26, v27, "Received header from: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1E12CCD70](v30, -1, -1);
    MEMORY[0x1E12CCD70](v29, -1, -1);
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v34 = a1;
  v35 = v129;
  swift_unknownObjectRetain();
  v36 = sub_1DEF8D4D8();
  v37 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v38 = os_log_type_enabled(v36, v37);
  v115 = v34;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = a4;
    v41 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v130 = v113;
    *v39 = 136447234;
    v132 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v42 = sub_1DEF8D988();
    v44 = sub_1DEE12A5C(v42, v43, &v130);
    v119 = v24;
    v45 = v44;

    *(v39 + 4) = v45;
    *(v39 + 12) = 2112;
    *(v39 + 14) = v34;
    *v41 = v126;
    *(v39 + 22) = 2080;
    v132 = v129;
    v46 = v34;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E10, &qword_1DEF95B00);
    v47 = sub_1DEF8D988();
    v49 = sub_1DEE12A5C(v47, v48, &v130);

    *(v39 + 24) = v49;
    *(v39 + 32) = 1024;
    *(v39 + 34) = v121 & 1;
    *(v39 + 38) = 2080;
    v132 = v40;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E18, &qword_1DEF95B08);
    v50 = sub_1DEF8D988();
    v52 = sub_1DEE12A5C(v50, v51, &v130);
    a1 = v126;

    *(v39 + 40) = v52;
    v24 = v119;
    _os_log_impl(&dword_1DEE0F000, v36, v37, "%{public}s; Parameters: content: %@, context: %s, isComplete: %{BOOL}d, error: %s", v39, 0x30u);
    sub_1DEE171B4(v41, &unk_1ECDE4880, &qword_1DEF93420);
    v53 = v41;
    a4 = v40;
    MEMORY[0x1E12CCD70](v53, -1, -1);
    v54 = v113;
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v54, -1, -1);
    v55 = v39;
    v35 = v129;
    MEMORY[0x1E12CCD70](v55, -1, -1);
  }

  if (!a4)
  {
LABEL_11:
    v67 = v125;
    if (!v35)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v56 = sub_1DEF8D4D8();
  v57 = sub_1DEF8DC98();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v130 = v59;
    *v58 = 136446466;
    v132 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v60 = sub_1DEF8D988();
    v62 = sub_1DEE12A5C(v60, v61, &v130);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    v132 = a4;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D98, &qword_1DEF95A98);
    v63 = sub_1DEF8D988();
    v65 = sub_1DEE12A5C(v63, v64, &v130);

    *(v58 + 14) = v65;
    a1 = v126;
    _os_log_impl(&dword_1DEE0F000, v56, v57, "%{public}s; Received error: %{public}s", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v59, -1, -1);
    v66 = v58;
    v35 = v129;
    MEMORY[0x1E12CCD70](v66, -1, -1);

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  swift_unknownObjectRelease();

  v67 = v125;
  if (!v35)
  {
    goto LABEL_16;
  }

LABEL_14:
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v68 = sub_1DEF8D4D8();
  v69 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  if (!os_log_type_enabled(v68, v69))
  {
    swift_unknownObjectRelease();

    if (a1)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v70 = v35;
  v71 = swift_slowAlloc();
  v72 = swift_slowAlloc();
  v130 = v72;
  *v71 = 136446466;
  v132 = a6;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
  v73 = sub_1DEF8D988();
  v75 = sub_1DEE12A5C(v73, v74, &v130);

  *(v71 + 4) = v75;
  *(v71 + 12) = 2082;
  v132 = v70;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E08, &qword_1DEF95AF8);
  v76 = sub_1DEF8D988();
  v78 = sub_1DEE12A5C(v76, v77, &v130);

  *(v71 + 14) = v78;
  a1 = v126;
  _os_log_impl(&dword_1DEE0F000, v68, v69, "%{public}s; Received context: %{public}s", v71, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1E12CCD70](v72, -1, -1);
  MEMORY[0x1E12CCD70](v71, -1, -1);

  v67 = v125;
  swift_unknownObjectRelease();
LABEL_16:
  if (a1)
  {
LABEL_17:
    v79 = v122;
    sub_1DEF8D6F8();
    v80 = v115;
    v81 = sub_1DEF8D718();
    v130 = sub_1DEE1C048(v81);
    v131 = v82;
    MEMORY[0x1EEE9AC00](v130);
    *(&v112 - 2) = v79;
    sub_1DEE1A238(sub_1DEF30734);
    v83 = v130;
    v84 = v131;
    (*(v123 + 8))(v79, v124);
    sub_1DEE1BFF4(v83, v84);
    sub_1DEE18264(v116, v83, v84, v19);
    v85 = v117;
    sub_1DEE15068(v19, v117, type metadata accessor for NetworkSyncHeader);
    swift_unknownObjectRetain();
    v86 = sub_1DEF8D4D8();
    v87 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v128 = v83;
      v89 = v88;
      v90 = swift_slowAlloc();
      v119 = v24;
      v91 = v90;
      v130 = v90;
      *v89 = 136446466;
      v132 = a6;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v92 = sub_1DEF8D988();
      v129 = v19;
      v94 = sub_1DEE12A5C(v92, v93, &v130);
      v127 = v84;
      v95 = v80;
      v96 = v94;

      *(v89 + 4) = v96;
      *(v89 + 12) = 2082;
      sub_1DEE15068(v85, v114, type metadata accessor for NetworkSyncHeader);
      v97 = v118;
      v98 = sub_1DEF8D988();
      v100 = v99;
      sub_1DEE15388(v85, type metadata accessor for NetworkSyncHeader);
      v101 = sub_1DEE12A5C(v98, v100, &v130);
      v80 = v95;
      v84 = v127;

      *(v89 + 14) = v101;
      v19 = v129;
      _os_log_impl(&dword_1DEE0F000, v86, v87, "%{public}s; Header: %{public}s", v89, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v91, -1, -1);
      v102 = v89;
      v83 = v128;
      MEMORY[0x1E12CCD70](v102, -1, -1);
    }

    else
    {

      sub_1DEE15388(v85, type metadata accessor for NetworkSyncHeader);
      v97 = v118;
    }

    sub_1DEE19808(a6);
    if (((1 << v19[*(v97 + 36)]) & 0xD) != 0)
    {
      sub_1DEE1C0F8(a6, v19);
    }

    else
    {
      sub_1DEF239AC(a6, v19);
    }

    sub_1DEE1BFA0(v83, v84);

    return sub_1DEE15388(v19, type metadata accessor for NetworkSyncHeader);
  }

LABEL_20:
  v103 = v120;
  (*(v120 + 16))(v67, v128, v127);
  if (sub_1DEF24560(a6))
  {
    v104 = sub_1DEF8DC98();
  }

  else
  {
    v104 = sub_1DEF8DC78();
  }

  v105 = v104;
  v106 = sub_1DEF8D4D8();
  if (os_log_type_enabled(v106, v105))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v130 = v108;
    *v107 = 136446210;
    v132 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v109 = sub_1DEF8D988();
    v111 = sub_1DEE12A5C(v109, v110, &v130);

    *(v107 + 4) = v111;
    _os_log_impl(&dword_1DEE0F000, v106, v105, "Received nil instead of header; destroying connection %{public}s", v107, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v108);
    MEMORY[0x1E12CCD70](v108, -1, -1);
    MEMORY[0x1E12CCD70](v107, -1, -1);
  }

  (*(v103 + 8))(v67, v127);
  sub_1DEF16BA0(a6);
}

uint64_t sub_1DEE19808(uint64_t a1)
{
  v80 = a1;
  v2 = sub_1DEF8D378();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v69 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA0, &qword_1DEF95AA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v70 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA8, &qword_1DEF95AA8);
  v73 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v67 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v67 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DB0, &unk_1DEF95AB0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v72 = (&v67 - v16);
  v17 = sub_1DEF8D788();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = (&v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v1 + 24);
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x1E69E8020], v17, v19);
  v23 = v22;
  LOBYTE(v22) = sub_1DEF8D7B8();
  (*(v18 + 8))(v21, v17);
  if ((v22 & 1) == 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_24;
  }

  v67 = v3;
  v68 = v2;
  swift_beginAccess();
  v71 = v1;
  v24 = *(v1 + 56);
  v25 = v24 + 64;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v24 + 64);
  v29 = (v26 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v30 = 0;
  v76 = v24;
  v77 = v9;
  v75 = v24 + 64;
  v31 = v9;
  if (!v28)
  {
LABEL_6:
    while (1)
    {
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v33 >= v29)
      {

        v46 = v72;
        v45 = v73;
        (*(v73 + 56))(v72, 1, 1, v9);
        goto LABEL_14;
      }

      v28 = *(v25 + 8 * v33);
      ++v30;
      if (v28)
      {
        v32 = v81;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  while (1)
  {
    v32 = v81;
    v33 = v30;
LABEL_10:
    v34 = __clz(__rbit64(v28)) | (v33 << 6);
    v35 = *(v24 + 56);
    v36 = (*(v24 + 48) + 16 * v34);
    v38 = *v36;
    v37 = v36[1];
    v39 = v35 + *(*(type metadata accessor for NetworkMessenger.ExpiringConnection(0) - 8) + 72) * v34;
    v40 = v78;
    sub_1DEE15068(v39, &v78[*(v31 + 48)], type metadata accessor for NetworkMessenger.ExpiringConnection);
    *v40 = v38;
    v40[1] = v37;
    sub_1DEE1BA88(v40, v32, &qword_1ECDE4DA8, &qword_1DEF95AA8);
    v41 = v32;
    v42 = v79;
    sub_1DEE17214(v41, v79, &qword_1ECDE4DA8, &qword_1DEF95AA8);

    v43 = *(v31 + 48);
    v44 = *(v42 + v43);
    swift_unknownObjectRetain();
    sub_1DEE15388(v42 + v43, type metadata accessor for NetworkMessenger.ExpiringConnection);
    swift_unknownObjectRelease();
    if (v44 == v80)
    {
      break;
    }

    v28 &= v28 - 1;
    sub_1DEE171B4(v81, &qword_1ECDE4DA8, &qword_1DEF95AA8);
    v30 = v33;
    v9 = v31;
    v25 = v75;
    v24 = v76;
    if (!v28)
    {
      goto LABEL_6;
    }
  }

  v46 = v72;
  sub_1DEE1BA88(v81, v72, &qword_1ECDE4DA8, &qword_1DEF95AA8);
  v45 = v73;
  v9 = v31;
  (*(v73 + 56))(v46, 0, 1, v31);
LABEL_14:

  v47 = (*(v45 + 48))(v46, 1, v9);
  v48 = v74;
  if (v47 == 1)
  {
    sub_1DEE171B4(v46, &qword_1ECDE4DB0, &unk_1DEF95AB0);
  }

  else
  {
    v49 = *v46;
    v50 = v46[1];
    sub_1DEE15388(v46 + *(v9 + 48), type metadata accessor for NetworkMessenger.ExpiringConnection);
    v51 = v71;
    swift_beginAccess();
    v52 = *(v51 + 56);
    if (*(v52 + 16) && (v53 = sub_1DEE13224(v49, v50), (v54 & 1) != 0))
    {
      v55 = v53;
      v56 = *(v52 + 56);
      v57 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
      v58 = *(v57 - 8);
      v59 = v56 + *(v58 + 72) * v55;
      v48 = v74;
      sub_1DEE15068(v59, v74, type metadata accessor for NetworkMessenger.ExpiringConnection);
      (*(v58 + 56))(v48, 0, 1, v57);
    }

    else
    {
      v57 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
      (*(*(v57 - 8) + 56))(v48, 1, 1, v57);
    }

    swift_endAccess();
    type metadata accessor for NetworkMessenger.ExpiringConnection(0);
    if (!(*(*(v57 - 8) + 48))(v48, 1, v57))
    {
      v60 = v69;
      sub_1DEF8D348();
      (*(v67 + 40))(v48 + *(v57 + 20), v60, v68);
    }

    v61 = v70;
    sub_1DEE17214(v48, v70, &qword_1ECDE4DA0, &qword_1DEF95AA0);
    swift_beginAccess();
    sub_1DEE136B8(v61, v49, v50);
    swift_endAccess();
    sub_1DEE171B4(v48, &qword_1ECDE4DA0, &qword_1DEF95AA0);
  }

  if (qword_1ECDE2E50 != -1)
  {
    goto LABEL_30;
  }

LABEL_24:
  v62 = sub_1DEF8D508();
  __swift_project_value_buffer(v62, qword_1ECDF6010);
  v63 = sub_1DEF8D4D8();
  v64 = sub_1DEF8DC88();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_1DEE0F000, v63, v64, "Setting last activity date", v65, 2u);
    MEMORY[0x1E12CCD70](v65, -1, -1);
  }

  sub_1DEE165E0();
  return sub_1DEE1BAF0();
}

uint64_t sub_1DEE1A0B0(uint64_t a1, uint64_t a2)
{
  sub_1DEF8D728();
  sub_1DEE1B9F8(&qword_1ECDE4E78, MEMORY[0x1E69E7FD0], MEMORY[0x1E6969D38]);
  return sub_1DEF8CFB8();
}

uint64_t sub_1DEE1A15C(void (*a1)(uint64_t, uint64_t))
{
  result = sub_1DEF8D228();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = a1;

  result = sub_1DEF8D018();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  result = sub_1DEF8D048();
  v7 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v5 - v4;
  v9 = sub_1DEF8D038();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11(v6 + v7, v6 + v7 + v10);
}

uint64_t sub_1DEE1A238(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v22 = *MEMORY[0x1E69E9840];
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1DEE1BFA0(v5, v4);
      *&v21 = v5;
      *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_1DEF95880;
      sub_1DEE1BFA0(0, 0xC000000000000000);
      result = sub_1DEE1A15C(a1);
      v8 = v21;
      v9 = *(&v21 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_1DEE1BFA0(v5, v4);
      *&v21 = v5;
      WORD4(v21) = v4;
      BYTE10(v21) = BYTE2(v4);
      BYTE11(v21) = BYTE3(v4);
      BYTE12(v21) = BYTE4(v4);
      BYTE13(v21) = BYTE5(v4);
      BYTE14(v21) = BYTE6(v4);
      result = (a1)(&v21, &v21 + BYTE6(v4));
      v8 = v21;
      v9 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
    }

    *v2 = v8;
    v2[1] = v9;
    return result;
  }

  if (v6 != 2)
  {
    *(&v21 + 7) = 0;
    *&v21 = 0;
    return (a1)(&v21, &v21);
  }

  sub_1DEE1BFA0(v5, v4);
  *&v21 = v5;
  *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v2 = xmmword_1DEF95880;
  sub_1DEE1BFA0(0, 0xC000000000000000);
  sub_1DEF8D1F8();
  v10 = *(&v21 + 1);
  v11 = *(v21 + 16);
  v12 = *(v21 + 24);
  result = sub_1DEF8D018();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = sub_1DEF8D048();
  v15 = v11 - v14;
  if (__OFSUB__(v11, v14))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v16 = __OFSUB__(v12, v11);
  v17 = v12 - v11;
  if (v16)
  {
    goto LABEL_17;
  }

  v18 = sub_1DEF8D038();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  result = (a1)(v13 + v15, v13 + v15 + v19);
  *v2 = v21;
  v2[1] = v10 | 0x8000000000000000;
  return result;
}

void sub_1DEE1A508(void *a1, NSObject *a2, int a3, NSObject *a4, uint64_t a5, NSObject *a6)
{
  v117 = a1;
  v118 = a2;
  v9 = type metadata accessor for NetworkSyncHeaderPreamble(0);
  MEMORY[0x1EEE9AC00](v9);
  v111 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v103 - v12;
  v14 = sub_1DEF8D728();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1DEF8D508();
  v112 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v113 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  v107 = a3;
  v106 = v13;
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v116, qword_1ECDF6010);
  swift_unknownObjectRetain();
  v19 = sub_1DEF8D4D8();
  v20 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  v21 = os_log_type_enabled(v19, v20);
  v114 = v18;
  v105 = v9;
  v109 = v14;
  v108 = v15;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock = v23;
    *v22 = 136446210;
    v125 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v24 = sub_1DEF8D988();
    v26 = sub_1DEE12A5C(v24, v25, &aBlock);
    v18 = v114;

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1DEE0F000, v19, v20, "Received header preamble from: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1E12CCD70](v23, -1, -1);
    MEMORY[0x1E12CCD70](v22, -1, -1);
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v27 = v117;
  v28 = v117;
  v29 = v118;
  swift_unknownObjectRetain();
  v30 = sub_1DEF8D4D8();
  v31 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    aBlock = v104;
    *v32 = 136447234;
    v125 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v34 = sub_1DEF8D988();
    v36 = a4;
    v37 = v28;
    v38 = sub_1DEE12A5C(v34, v35, &aBlock);

    *(v32 + 4) = v38;
    *(v32 + 12) = 2112;
    *(v32 + 14) = v37;
    *v33 = v27;
    *(v32 + 22) = 2080;
    v125 = v118;
    v39 = v37;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E10, &qword_1DEF95B00);
    v40 = sub_1DEF8D988();
    v42 = sub_1DEE12A5C(v40, v41, &aBlock);

    *(v32 + 24) = v42;
    *(v32 + 32) = 1024;
    *(v32 + 34) = v107 & 1;
    *(v32 + 38) = 2080;
    v125 = v36;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E18, &qword_1DEF95B08);
    v43 = sub_1DEF8D988();
    v45 = sub_1DEE12A5C(v43, v44, &aBlock);
    v29 = v118;

    *(v32 + 40) = v45;
    v28 = v37;
    a4 = v36;
    _os_log_impl(&dword_1DEE0F000, v30, v31, "%{public}s; Parameters: content: %@, context: %s, isComplete: %{BOOL}d, error: %s", v32, 0x30u);
    sub_1DEE171B4(v33, &unk_1ECDE4880, &qword_1DEF93420);
    v18 = v114;
    MEMORY[0x1E12CCD70](v33, -1, -1);
    v46 = v104;
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v46, -1, -1);
    MEMORY[0x1E12CCD70](v32, -1, -1);
  }

  if (a4)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v47 = sub_1DEF8D4D8();
    v48 = sub_1DEF8DC98();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v47, v48))
    {
      swift_unknownObjectRelease();

      v57 = v113;
      if (!v29)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock = v50;
    *v49 = 136446466;
    v125 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v51 = sub_1DEF8D988();
    v53 = sub_1DEE12A5C(v51, v52, &aBlock);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2082;
    v125 = a4;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D98, &qword_1DEF95A98);
    v54 = sub_1DEF8D988();
    v56 = sub_1DEE12A5C(v54, v55, &aBlock);
    v29 = v118;

    *(v49 + 14) = v56;
    v18 = v114;
    _os_log_impl(&dword_1DEE0F000, v47, v48, "%{public}s; Received error: %{public}s", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v50, -1, -1);
    MEMORY[0x1E12CCD70](v49, -1, -1);

    swift_unknownObjectRelease();
  }

  v57 = v113;
  if (!v29)
  {
LABEL_16:
    if (v117)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

LABEL_14:
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v58 = sub_1DEF8D4D8();
  v59 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    aBlock = v61;
    *v60 = 136446466;
    v125 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v62 = sub_1DEF8D988();
    v118 = v28;
    v64 = sub_1DEE12A5C(v62, v63, &aBlock);

    *(v60 + 4) = v64;
    *(v60 + 12) = 2082;
    v125 = v29;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E08, &qword_1DEF95AF8);
    v65 = sub_1DEF8D988();
    v67 = sub_1DEE12A5C(v65, v66, &aBlock);

    *(v60 + 14) = v67;
    v18 = v114;
    _os_log_impl(&dword_1DEE0F000, v58, v59, "%{public}s; Received context: %{public}s", v60, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v61, -1, -1);
    MEMORY[0x1E12CCD70](v60, -1, -1);

    v28 = v118;
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  swift_unknownObjectRelease();

  if (v117)
  {
LABEL_17:
    v68 = v110;
    sub_1DEF8D6F8();
    v69 = v28;
    v70 = sub_1DEF8D718();
    aBlock = sub_1DEE1C048(v70);
    v120 = v71;
    MEMORY[0x1EEE9AC00](aBlock);
    *(&v103 - 2) = v68;
    sub_1DEE1A238(sub_1DEE1A144);
    v73 = aBlock;
    v72 = v120;
    (*(v108 + 8))(v68, v109);
    sub_1DEE1BFF4(v73, v72);
    v74 = v111;
    sub_1DEEFC0D8(v73, v72, v111);
    v76 = v74;
    v77 = v106;
    sub_1DEE1C4F0(v76, v106, type metadata accessor for NetworkSyncHeaderPreamble);
    v78 = *(v77 + *(v105 + 20));
    swift_unknownObjectRetain();
    v79 = sub_1DEF8D4D8();
    v80 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v79, v80))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v118 = v69;
      aBlock = v83;
      v84 = v73;
      v85 = v83;
      *v82 = 136446466;
      LODWORD(v125) = v78;
      v86 = sub_1DEF8E2E8();
      v88 = sub_1DEE12A5C(v86, v87, &aBlock);

      *(v82 + 4) = v88;
      *(v82 + 12) = 2082;
      v125 = a6;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v89 = sub_1DEF8D988();
      v91 = sub_1DEE12A5C(v89, v90, &aBlock);

      *(v82 + 14) = v91;
      _os_log_impl(&dword_1DEE0F000, v79, v80, "Expecting header with length %{public}s from %{public}s", v82, 0x16u);
      swift_arrayDestroy();
      v92 = v85;
      v73 = v84;
      v69 = v118;
      MEMORY[0x1E12CCD70](v92, -1, -1);
      MEMORY[0x1E12CCD70](v82, -1, -1);
    }

    if (v78 < 0x14)
    {
      __break(1u);
    }

    else
    {
      sub_1DEE19808(a6);
      v93 = swift_allocObject();
      swift_weakInit();
      v94 = swift_allocObject();
      *(v94 + 16) = v93;
      *(v94 + 24) = a6;
      *(v94 + 32) = v78;
      v123 = sub_1DEE1B468;
      v124 = v94;
      aBlock = MEMORY[0x1E69E9820];
      v120 = 1107296256;
      v121 = sub_1DEE1BDCC;
      v122 = &block_descriptor_307;
      v95 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      nw_connection_receive(a6, v78 - 20, v78 - 20, v95);
      _Block_release(v95);

      sub_1DEE1BFA0(v73, v72);

      sub_1DEE15388(v106, type metadata accessor for NetworkSyncHeaderPreamble);
    }

    return;
  }

LABEL_19:
  (*(v112 + 16))(v57, v18, v116);
  if (sub_1DEF24560(a6))
  {
    v75 = sub_1DEF8DC98();
  }

  else
  {
    v75 = sub_1DEF8DC78();
  }

  v96 = v75;
  v97 = sub_1DEF8D4D8();
  if (os_log_type_enabled(v97, v96))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    aBlock = v99;
    *v98 = 136446210;
    v125 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v100 = sub_1DEF8D988();
    v102 = sub_1DEE12A5C(v100, v101, &aBlock);

    *(v98 + 4) = v102;
    _os_log_impl(&dword_1DEE0F000, v97, v96, "Received nil instead of header length; destroying connection %{public}s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v99);
    MEMORY[0x1E12CCD70](v99, -1, -1);
    MEMORY[0x1E12CCD70](v98, -1, -1);
  }

  (*(v112 + 8))(v57, v116);
  sub_1DEF16BA0(a6);
}

uint64_t sub_1DEE1B474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE1B4DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE1B548(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DEE1B590(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DEE1B5E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DEE1B640()
{
  result = qword_1ECDE2C28;
  if (!qword_1ECDE2C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE4790, &qword_1DEF93538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2C28);
  }

  return result;
}

void sub_1DEE1B6A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v9 = *(type metadata accessor for NetworkSyncHeader(0) - 8);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  sub_1DEE1C558(a1, a2, v6, a4, v10, v11, v12);
}

unint64_t sub_1DEE1B7BC()
{
  result = qword_1ECDE2BB0;
  if (!qword_1ECDE2BB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECDE2BB0);
  }

  return result;
}

unint64_t sub_1DEE1B808()
{
  result = qword_1ECDE2BB8;
  if (!qword_1ECDE2BB8)
  {
    sub_1DEF8DD48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2BB8);
  }

  return result;
}

uint64_t sub_1DEE1B860@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  v3 = sub_1DEF8D688();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1DEE1B8D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DEE1B920(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DEE1B968(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DEE1B9B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DEE1B9F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DEE1BA40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DEE1BA88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DEE1BAF0()
{
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v0[3];
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
  v8 = v7;
  v9 = sub_1DEF8D7B8();
  result = (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_7;
  }

  if (v0[12])
  {
    return result;
  }

  result = swift_beginAccess();
  if (!*(v0[7] + 16))
  {
    return result;
  }

  result = sub_1DEE1BE7C();
  if ((result & 1) == 0)
  {
    return result;
  }

  v9 = v0;
  v11 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber + 24);
  v12 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber), v11);
  (*(v12 + 8))(v11, v12);
  v1 = sub_1DEF2F2C0();
  if (qword_1ECDE2E50 != -1)
  {
    goto LABEL_14;
  }

LABEL_7:
  v13 = sub_1DEF8D508();
  __swift_project_value_buffer(v13, qword_1ECDF6010);
  v14 = sub_1DEF8D4D8();
  v15 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134349056;
    *(v16 + 4) = v1;
    _os_log_impl(&dword_1DEE0F000, v14, v15, "Creating prevent-sleep assertion with duration %{public}f", v16, 0xCu);
    MEMORY[0x1E12CCD70](v16, -1, -1);
  }

  v17 = objc_allocWithZone(MEMORY[0x1E69D54A0]);
  v18 = sub_1DEF8D918();
  v19 = [v17 initWithIdentifier_];

  v20 = *(v9 + 96);
  *(v9 + 96) = v19;

  result = *(v9 + 96);
  if (result)
  {
    result = [result acquireWithTimeout:0 handler:0.0];
  }

  if (*(v9 + 104))
  {

    sub_1DEF00820();
  }

  return result;
}

void sub_1DEE1BDCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v10 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9(a2, a3, a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_1DEE1BE7C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1DEF8D918();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1DEE171B4(v7, &qword_1ECDE4DB8, qword_1DEF9AD50);
  }

  return 0;
}

uint64_t sub_1DEE1BFA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1DEE1BFF4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1DEE1C048(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1DEEFC68C(result);
    }

    else
    {
      sub_1DEF8D068();
      swift_allocObject();
      sub_1DEF8D028();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1DEF8D238();
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

void sub_1DEE1C0F8(NSObject *a1, uint64_t a2)
{
  v5 = type metadata accessor for NetworkSyncHeader(0);
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1DEF8D788();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + 24);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1DEF8D7B8();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v14 = *(a2 + *(v5 + 32));
    v15 = swift_allocObject();
    swift_weakInit();
    sub_1DEE15068(a2, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkSyncHeader);
    v16 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = a1;
    sub_1DEE1C4F0(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for NetworkSyncHeader);
    aBlock[4] = sub_1DEE1B6A4;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE1BDCC;
    aBlock[3] = &block_descriptor_315;
    v18 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    nw_connection_receive(a1, v14, v14, v18);
    _Block_release(v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DEE1C3C0()
{
  v1 = (type metadata accessor for NetworkSyncHeader(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  swift_unknownObjectRelease();
  v5 = sub_1DEF8D3F8();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + v1[8], v5);
  v6(v0 + v3 + v1[9], v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DEE1C4F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1DEE1C558(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7)
{
  v151 = a7;
  v141 = a3;
  v150 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E20, &unk_1DEF95B10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v130[-v11];
  v13 = type metadata accessor for Message(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v137 = &v130[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for NetworkSyncHeader(0);
  MEMORY[0x1EEE9AC00](v16);
  v142 = &v130[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v148 = &v130[-v19];
  v20 = sub_1DEF8D728();
  v144 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v143 = &v130[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = sub_1DEF8D508();
  v140 = *(v149 - 1);
  MEMORY[0x1EEE9AC00](v149);
  v139 = &v130[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v24 = Strong;
  v135 = v12;
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v149, qword_1ECDF6010);
  swift_unknownObjectRetain();
  v147 = v25;
  v26 = sub_1DEF8D4D8();
  v27 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  v28 = os_log_type_enabled(v26, v27);
  v146 = v24;
  v138 = v16;
  v134 = v13;
  v133 = v14;
  v136 = v20;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v155 = v30;
    *v29 = 136446210;
    v152[0] = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v31 = sub_1DEF8D988();
    v33 = sub_1DEE12A5C(v31, v32, &v155);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_1DEE0F000, v26, v27, "Received message data from: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1E12CCD70](v30, -1, -1);
    MEMORY[0x1E12CCD70](v29, -1, -1);
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v34 = a4;
  v35 = v150;
  v36 = v150;
  v37 = a2;
  swift_unknownObjectRetain();
  v38 = v147;
  v39 = sub_1DEF8D4D8();
  v40 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v41 = os_log_type_enabled(v39, v40);
  v145 = a6;
  v42 = v151;
  if (v41)
  {
    v43 = swift_slowAlloc();
    v131 = v40;
    v44 = v43;
    v45 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v155 = v132;
    *v44 = 136447234;
    v152[0] = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v46 = sub_1DEF8D988();
    v48 = sub_1DEE12A5C(v46, v47, &v155);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2112;
    *(v44 + 14) = v36;
    *v45 = v35;
    v49 = v45;
    *(v44 + 22) = 2080;
    v152[0] = v37;
    v50 = v36;
    v51 = v36;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E10, &qword_1DEF95B00);
    v52 = sub_1DEF8D988();
    v54 = sub_1DEE12A5C(v52, v53, &v155);

    *(v44 + 24) = v54;
    *(v44 + 32) = 1024;
    *(v44 + 34) = v141 & 1;
    *(v44 + 38) = 2080;
    a6 = v145;
    v152[0] = v34;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E18, &qword_1DEF95B08);
    v55 = sub_1DEF8D988();
    v57 = sub_1DEE12A5C(v55, v56, &v155);
    v42 = v151;

    *(v44 + 40) = v57;
    v38 = v147;
    _os_log_impl(&dword_1DEE0F000, v39, v131, "%{public}s; Parameters: content: %@, context: %s, isComplete: %{BOOL}d, error: %s", v44, 0x30u);
    sub_1DEE171B4(v49, &unk_1ECDE4880, &qword_1DEF93420);
    MEMORY[0x1E12CCD70](v49, -1, -1);
    v58 = v132;
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v58, -1, -1);
    MEMORY[0x1E12CCD70](v44, -1, -1);
  }

  else
  {
    v50 = v36;
  }

  v59 = v148;
  v60 = v34;
  if (!v34)
  {
LABEL_12:
    if (!v37)
    {
      goto LABEL_18;
    }

LABEL_15:
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v72 = sub_1DEF8D4D8();
    v73 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v155 = v75;
      *v74 = 136446466;
      v152[0] = a6;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v76 = sub_1DEF8D988();
      v78 = sub_1DEE12A5C(v76, v77, &v155);

      *(v74 + 4) = v78;
      *(v74 + 12) = 2082;
      v152[0] = v37;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E08, &qword_1DEF95AF8);
      v79 = sub_1DEF8D988();
      v81 = sub_1DEE12A5C(v79, v80, &v155);
      v42 = v151;

      *(v74 + 14) = v81;
      v59 = v148;
      _os_log_impl(&dword_1DEE0F000, v72, v73, "%{public}s; Received context: %{public}s", v74, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v75, -1, -1);
      MEMORY[0x1E12CCD70](v74, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    goto LABEL_18;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v61 = sub_1DEF8D4D8();
  v62 = sub_1DEF8DC98();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v155 = v64;
    *v63 = 136446466;
    v152[0] = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v65 = sub_1DEF8D988();
    v67 = sub_1DEE12A5C(v65, v66, &v155);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2082;
    v152[0] = v60;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D98, &qword_1DEF95A98);
    v68 = sub_1DEF8D988();
    v70 = sub_1DEE12A5C(v68, v69, &v155);
    v42 = v151;

    *(v63 + 14) = v70;
    v38 = v147;
    _os_log_impl(&dword_1DEE0F000, v61, v62, "%{public}s; Received error: %{public}s", v63, 0x16u);
    swift_arrayDestroy();
    v71 = v64;
    v59 = v148;
    MEMORY[0x1E12CCD70](v71, -1, -1);
    MEMORY[0x1E12CCD70](v63, -1, -1);

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  swift_unknownObjectRelease();

  if (v37)
  {
    goto LABEL_15;
  }

LABEL_18:
  if (v150)
  {
    v82 = v143;
    sub_1DEF8D6F8();
    v150 = v50;
    v83 = sub_1DEF8D718();
    v155 = sub_1DEE1C048(v83);
    v156 = v84;
    MEMORY[0x1EEE9AC00](v155);
    sub_1DEE1A238(sub_1DEF30734);
    v85 = v145;
    v87 = v155;
    v86 = v156;
    (*(v144 + 8))(v82, v136);
    sub_1DEE15068(v42, v59, type metadata accessor for NetworkSyncHeader);
    sub_1DEE1BFF4(v87, v86);
    swift_unknownObjectRetain();
    sub_1DEE1BFF4(v87, v86);
    v88 = sub_1DEF8D4D8();
    v89 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v88, v89))
    {
      sub_1DEE1BFA0(v87, v86);
      sub_1DEE15388(v59, type metadata accessor for NetworkSyncHeader);
      sub_1DEE1BFA0(v87, v86);

      v95 = v138;
      goto LABEL_39;
    }

    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v155 = v91;
    *v90 = 136446722;
    v152[0] = v85;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v92 = sub_1DEF8D988();
    v94 = sub_1DEE12A5C(v92, v93, &v155);

    *(v90 + 4) = v94;
    *(v90 + 12) = 1026;
    v95 = v138;
    LODWORD(v94) = *(v59 + *(v138 + 32));
    sub_1DEE15388(v59, type metadata accessor for NetworkSyncHeader);
    *(v90 + 14) = v94;
    *(v90 + 18) = 2050;
    v96 = v86 >> 62;
    if ((v86 >> 62) > 1)
    {
      if (v96 != 2)
      {
        sub_1DEE1BFA0(v87, v86);
        v97 = 0;
        goto LABEL_37;
      }

      v110 = *(v87 + 16);
      v109 = *(v87 + 24);
      sub_1DEE1BFA0(v87, v86);
      v97 = v109 - v110;
      if (!__OFSUB__(v109, v110))
      {
        v85 = v145;
        v95 = v138;
LABEL_38:
        *(v90 + 20) = v97;
        sub_1DEE1BFA0(v87, v86);
        _os_log_impl(&dword_1DEE0F000, v88, v89, "%{public}s; Expected %{public}u; got %{public}ld", v90, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_1(v91);
        MEMORY[0x1E12CCD70](v91, -1, -1);
        MEMORY[0x1E12CCD70](v90, -1, -1);

        v42 = v151;
LABEL_39:
        v111 = *(v42 + *(v95 + 36));
        v112 = v142;
        if (v111 <= 1)
        {
          if (!*(v42 + *(v95 + 36)))
          {
            type metadata accessor for OPACKCoder();
            sub_1DEE115C8(&v160);
            sub_1DEE12F7C(&v160, v157);
            v123 = MEMORY[0x1E69E7CC0];
            v124 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
            v155 = v123;
            v156 = v124;
            v158 = 0;
            v159 = 1;
            v153 = &type metadata for PropertyListTypeDecoder.RootDecoder;
            v154 = sub_1DEE1DC98();
            v152[0] = swift_allocObject();
            sub_1DEE1DCEC(&v155, v152[0] + 16);
            v125 = v135;
            Message.init(from:)(v152, v135);
            sub_1DEE1EBB4(&v155);
            __swift_destroy_boxed_opaque_existential_1(&v160);
            (*(v133 + 56))(v125, 0, 1, v134);
            v129 = v137;
            sub_1DEE1C4F0(v125, v137, type metadata accessor for Message);
            sub_1DEE19808(v85);
            sub_1DEE1ED34(v129, v85, v42);
            sub_1DEE15388(v129, type metadata accessor for Message);
            goto LABEL_49;
          }
        }

        else
        {
          if (v111 == 2)
          {
            type metadata accessor for OPACKCoder();
            sub_1DEE115C8(&v160);
            sub_1DEE12F7C(&v160, v157);
            v126 = MEMORY[0x1E69E7CC0];
            v127 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
            v155 = v126;
            v156 = v127;
            v158 = 0;
            v159 = 1;
            v153 = &type metadata for PropertyListTypeDecoder.RootDecoder;
            v154 = sub_1DEE1DC98();
            v152[0] = swift_allocObject();
            sub_1DEE1DCEC(&v155, v152[0] + 16);
            v128 = sub_1DEF2E474(v152);
            sub_1DEE1EBB4(&v155);
            __swift_destroy_boxed_opaque_existential_1(&v160);
            sub_1DEE19808(v85);
            sub_1DEF2473C(v128, v85, v42);

LABEL_49:
            sub_1DEE19808(v85);
            sub_1DEE18040(v85);

            sub_1DEE1BFA0(v87, v86);

            return;
          }

          if (v111 == 3)
          {
            sub_1DEE15068(v42, v142, type metadata accessor for NetworkSyncHeader);
            v113 = sub_1DEF8D4D8();
            v114 = sub_1DEF8DC98();
            if (os_log_type_enabled(v113, v114))
            {
              v115 = v112;
              v116 = swift_slowAlloc();
              v149 = swift_slowAlloc();
              v155 = v149;
              *v116 = 136446210;
              sub_1DEF8D3F8();
              sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
              v85 = v145;
              v117 = sub_1DEF8E2E8();
              v119 = v118;
              sub_1DEE15388(v115, type metadata accessor for NetworkSyncHeader);
              v120 = sub_1DEE12A5C(v117, v119, &v155);
              v95 = v138;

              *(v116 + 4) = v120;
              _os_log_impl(&dword_1DEE0F000, v113, v114, "Incoming message failed: %{public}s", v116, 0xCu);
              v121 = v149;
              __swift_destroy_boxed_opaque_existential_1(v149);
              MEMORY[0x1E12CCD70](v121, -1, -1);
              MEMORY[0x1E12CCD70](v116, -1, -1);
            }

            else
            {

              sub_1DEE15388(v112, type metadata accessor for NetworkSyncHeader);
            }

            sub_1DEF25394(v151 + *(v95 + 24), 1, v122);
            goto LABEL_49;
          }
        }

LABEL_53:
        sub_1DEF8E0F8();
        __break(1u);
        return;
      }

      __break(1u);
    }

    else
    {
      if (!v96)
      {
        sub_1DEE1BFA0(v87, v86);
        v97 = BYTE6(v86);
LABEL_37:
        v85 = v145;
        goto LABEL_38;
      }

      sub_1DEE1BFA0(v87, v86);
      LODWORD(v97) = HIDWORD(v87) - v87;
      if (!__OFSUB__(HIDWORD(v87), v87))
      {
        v97 = v97;
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

  v98 = v140;
  v99 = v139;
  (*(v140 + 16))(v139, v38, v149);
  if (sub_1DEF24560(a6))
  {
    v100 = sub_1DEF8DC98();
  }

  else
  {
    v100 = sub_1DEF8DC78();
  }

  v101 = v100;
  v102 = sub_1DEF8D4D8();
  if (os_log_type_enabled(v102, v101))
  {
    v103 = v99;
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v155 = v105;
    *v104 = 136446210;
    v152[0] = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v106 = sub_1DEF8D988();
    v108 = sub_1DEE12A5C(v106, v107, &v155);

    *(v104 + 4) = v108;
    _os_log_impl(&dword_1DEE0F000, v102, v101, "Received nil instead of data; destroying connection %{public}s", v104, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v105);
    MEMORY[0x1E12CCD70](v105, -1, -1);
    MEMORY[0x1E12CCD70](v104, -1, -1);

    (*(v98 + 8))(v103, v149);
  }

  else
  {

    (*(v98 + 8))(v99, v149);
  }

  sub_1DEF16BA0(a6);
}

uint64_t sub_1DEE1D9F4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t type metadata accessor for Message(uint64_t a1)
{
  result = qword_1ECDE2E70;
  if (!qword_1ECDE2E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DEE1DAAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CA8, &qword_1DEF915A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CB0, &qword_1DEF915A8);
    v7 = sub_1DEF8E148();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1DEE17214(v9, v5, &qword_1ECDE3CA8, &qword_1DEF915A0);
      result = sub_1DEEAF284(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1DEF8E018();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_1DEE117C0(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DEE1DC98()
{
  result = qword_1ED7861F0[0];
  if (!qword_1ED7861F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED7861F0);
  }

  return result;
}

uint64_t Message.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v33 - v4;
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5780, &qword_1DEF99708);
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for Message(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 20);
  v34 = v6;
  (*(v6 + 56))(&v14[v16], 1, 1, v5, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE1E328();
  v39 = v10;
  v17 = v40;
  sub_1DEF8E848();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1DEF32324(&v14[v16]);
  }

  else
  {
    v18 = v35;
    v40 = v16;
    LOBYTE(v41) = 0;
    sub_1DEE1E37C(&qword_1ECDE3630, MEMORY[0x1E69695D0]);
    sub_1DEF8E1F8();
    (*(v34 + 32))(v14, v38, v5);
    LOBYTE(v41) = 1;
    sub_1DEF8E1B8();
    sub_1DEE1E70C(v18, &v14[v40]);
    LOBYTE(v41) = 2;
    v20 = sub_1DEF8E1D8();
    v21 = a1;
    v22 = &v14[v11[6]];
    *v22 = v20;
    v22[1] = v23;
    LOBYTE(v41) = 3;
    v24 = sub_1DEF8E1D8();
    v25 = v14;
    v26 = &v14[v11[7]];
    *v26 = v24;
    v26[1] = v27;
    v42 = 5;
    sub_1DEE1E77C();
    sub_1DEF8E1F8();
    v28 = v36;
    *(v25 + v11[9]) = v41;
    LOBYTE(v41) = 4;
    v29 = sub_1DEF8E1C8();
    v31 = v30;
    (*(v28 + 8))(v39, v37);
    v32 = 7;
    if ((v31 & 1) == 0)
    {
      v32 = v29;
    }

    *(v25 + v11[8]) = v32;
    sub_1DEE1EAF4(v25, v33);
    __swift_destroy_boxed_opaque_existential_1(v21);
    return sub_1DEE1EB58(v25);
  }
}

unint64_t sub_1DEE1E328()
{
  result = qword_1ECDE5788;
  if (!qword_1ECDE5788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5788);
  }

  return result;
}

uint64_t sub_1DEE1E37C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DEF8D3F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DEE1E3C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DEE1E408()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x65447265646E6573;
  v4 = 0x6C6F636F746F7270;
  if (v1 != 4)
  {
    v4 = 0x426465646F636E65;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65736E6F70736572;
  if (v1 != 1)
  {
    v5 = 0x546567617373656DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DEE1E4E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  a2[4] = sub_1DEE1E588();
  v4 = swift_allocObject();
  *a2 = v4;
  return sub_1DEE1DCEC(v2, v4 + 16);
}

uint64_t sub_1DEE1E540()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

unint64_t sub_1DEE1E588()
{
  result = qword_1ED7860A8;
  if (!qword_1ED7860A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7860A8);
  }

  return result;
}

uint64_t sub_1DEE1E5DC()
{
  sub_1DEE12F7C(v0 + 16, v7);
  v1 = MEMORY[0x1E69E6158];
  if (swift_dynamicCast())
  {
    return v6;
  }

  v3 = sub_1DEF8DF68();
  swift_allocError();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
  *v5 = v1;

  sub_1DEF8DF48();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
  return swift_willThrow();
}

uint64_t sub_1DEE1E70C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DEE1E77C()
{
  result = qword_1ECDE3660;
  if (!qword_1ECDE3660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3660);
  }

  return result;
}

void *sub_1DEE1E7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a10, uint64_t a11)
{
  result = sub_1DEE22CCC(a2, MEMORY[0x1E69E7CA0] + 8, a3, a6, a7, MEMORY[0x1E69E7CA0] + 8, v29, a10);
  if (!v11)
  {
    v19 = a4;
    if (a1 == MEMORY[0x1E6969080] && (sub_1DEE12F7C(v29, &v26), sub_1DEE1EA18(0, &qword_1ED7863D8, 0x1E695DEF0), (swift_dynamicCast() & 1) != 0))
    {

      sub_1DEE117C0(v29, &v26);
      return swift_dynamicCast();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DEF907F0;
      *(inited + 56) = a7;
      *(inited + 64) = a10;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
      (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a2, a7);
      *&v26 = a3;

      sub_1DEE2262C(inited);
      v22 = v26;
      sub_1DEE12F7C(v29, v27);
      v23 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
      *&v26 = v22;
      *(&v26 + 1) = v23;
      v27[4] = v19;
      v28 = a5 & 1;
      sub_1DEE1DC98();
      v25 = swift_allocObject();
      sub_1DEE1DCEC(&v26, v25 + 16);
      sub_1DEF8DBC8();
      sub_1DEE1EBB4(&v26);
      return __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }

  return result;
}

uint64_t sub_1DEE1EA18(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1DEE1EA60()
{
  result = sub_1DEF8E5B8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DEE1EAF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Message(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEE1EB58(uint64_t a1)
{
  v2 = type metadata accessor for Message(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEE1EC1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1DEE1ED34(void (*a1)(void, void, void), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v46 = &v42 - v11;
  v45 = type metadata accessor for Message(0);
  MEMORY[0x1EEE9AC00](v45);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DEF8D788();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v4 + 24);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14, v16);
  v20 = v19;
  LOBYTE(v19) = sub_1DEF8D7B8();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    if (qword_1ECDE2E50 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v21 = sub_1DEF8D508();
  __swift_project_value_buffer(v21, qword_1ECDF6010);
  sub_1DEE15068(a1, v13, type metadata accessor for Message);
  swift_unknownObjectRetain();
  v22 = sub_1DEF8D4D8();
  v23 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  v24 = os_log_type_enabled(v22, v23);
  v44 = a2;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v48 = a2;
    v49 = v26;
    *v25 = 136446466;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v27 = sub_1DEF8D988();
    v43 = v8;
    v29 = a1;
    v30 = sub_1DEE12A5C(v27, v28, &v49);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2082;
    v31 = &v13[*(v45 + 28)];
    v32 = *v31;
    v33 = v31[1];

    sub_1DEE15388(v13, type metadata accessor for Message);
    v34 = sub_1DEE12A5C(v32, v33, &v49);
    a1 = v29;

    *(v25 + 14) = v34;
    v8 = v43;
    _os_log_impl(&dword_1DEE0F000, v22, v23, "%{public}s; Received message from %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v26, -1, -1);
    MEMORY[0x1E12CCD70](v25, -1, -1);
  }

  else
  {

    sub_1DEE15388(v13, type metadata accessor for Message);
  }

  v35 = type metadata accessor for NetworkSyncHeader(0);
  if (*(a3 + *(v35 + 40)) == 1)
  {
    v36 = sub_1DEF8D1E8();
    v37 = v46;
    (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
    sub_1DEE1F270(a1, v37, v44);
    return sub_1DEE171B4(v37, &qword_1ECDE4890, &qword_1DEF90990);
  }

  else
  {
    v39 = v35;
    v40 = v47;
    sub_1DEE15068(a1, v47, type metadata accessor for Message);
    v41 = *(a3 + *(v39 + 48));
    *(v40 + *(v8 + 20)) = 0;
    *(v40 + *(v8 + 24)) = v41;
    sub_1DEF2934C(v40);
    return sub_1DEE15388(v40, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
  }
}

uint64_t sub_1DEE1F270(void (*a1)(void, void, void), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v116 = a1;
  v117 = a3;
  v114 = a2;
  v115 = type metadata accessor for Message(0);
  MEMORY[0x1EEE9AC00](v115);
  *&v111 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DEF8D698();
  v108 = *(v6 - 8);
  v109 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v106 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1DEF8D6D8();
  v105 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v104 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v99 - v10;
  v12 = sub_1DEF8D3F8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v103 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v110 = &v99 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v112 = &v99 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E30, &qword_1DEF96220);
  v100 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v102 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v99 - v22;
  v24 = sub_1DEF8D788();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (&v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v4 + 24);
  *v28 = v29;
  (*(v25 + 104))(v28, *MEMORY[0x1E69E8020], v24, v26);
  v30 = v29;
  LOBYTE(v29) = sub_1DEF8D7B8();
  (*(v25 + 8))(v28, v24);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v31 = v117;
  v113 = v4;
  sub_1DEE19808(v117);
  v32 = v116;
  sub_1DEE15068(v116, v23, type metadata accessor for Message);
  sub_1DEE17214(v114, &v23[*(v19 + 28)], &qword_1ECDE4890, &qword_1DEF90990);
  *&v23[*(v19 + 32)] = v31;
  sub_1DEE17214(v32 + *(v115 + 5), v11, &unk_1ECDE3E80, &unk_1DEF90970);
  v33 = (*(v13 + 48))(v11, 1, v12);
  v115 = v23;
  if (v33 == 1)
  {
    v13 = v32;
    swift_unknownObjectRetain();
    sub_1DEE171B4(v11, &unk_1ECDE3E80, &unk_1DEF90970);
    if (qword_1ECDE2E50 == -1)
    {
LABEL_4:
      v34 = sub_1DEF8D508();
      __swift_project_value_buffer(v34, qword_1ECDF6010);
      v35 = sub_1DEF8D4D8();
      v36 = sub_1DEF8DCB8();
      v37 = os_log_type_enabled(v35, v36);
      v38 = v113;
      v39 = v111;
      if (v37)
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1DEE0F000, v35, v36, "Message is not a response", v40, 2u);
        MEMORY[0x1E12CCD70](v40, -1, -1);
      }

      sub_1DEE15068(v13, v39, type metadata accessor for Message);

      v41 = sub_1DEF8D4D8();
      v42 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        aBlock[0] = v44;
        *v43 = 136446466;
        if (*(v38 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType))
        {
          v45 = 0x73756E696D726574;
        }

        else
        {
          v45 = 0;
        }

        if (*(v38 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType))
        {
          v46 = 0xE900000000000020;
        }

        else
        {
          v46 = 0xE000000000000000;
        }

        v47 = sub_1DEE12A5C(v45, v46, aBlock);

        *(v43 + 4) = v47;
        *(v43 + 12) = 2082;
        v48 = Message.description.getter();
        v50 = v49;
        sub_1DEE15388(v39, type metadata accessor for Message);
        v51 = sub_1DEE12A5C(v48, v50, aBlock);

        *(v43 + 14) = v51;
        _os_log_impl(&dword_1DEE0F000, v41, v42, "Publishing incoming %{public}smessage: %{public}s", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v44, -1, -1);
        MEMORY[0x1E12CCD70](v43, -1, -1);
      }

      else
      {

        sub_1DEE15388(v39, type metadata accessor for Message);
      }

      v72 = v115;
      sub_1DEF8D588();
      v73 = v72;
      return sub_1DEE171B4(v73, &qword_1ECDE4E30, &qword_1DEF96220);
    }

LABEL_31:
    swift_once();
    goto LABEL_4;
  }

  v52 = v12;
  v53 = v13;
  v54 = v112;
  (*(v13 + 32))(v112, v11, v52);
  v55 = qword_1ECDE2E50;
  swift_unknownObjectRetain();
  if (v55 != -1)
  {
    swift_once();
  }

  v56 = sub_1DEF8D508();
  v57 = __swift_project_value_buffer(v56, qword_1ECDF6010);
  v58 = v110;
  v116 = *(v13 + 16);
  v116(v110, v54, v52);
  v117 = v57;
  v59 = sub_1DEF8D4D8();
  v60 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    aBlock[0] = v62;
    *v61 = 136446210;
    sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v63 = sub_1DEF8E2E8();
    v64 = v58;
    v65 = v53;
    v66 = v52;
    v68 = v67;
    v69 = *(v65 + 8);
    v69(v64, v66);
    v70 = sub_1DEE12A5C(v63, v68, aBlock);
    v52 = v66;
    v53 = v65;

    *(v61 + 4) = v70;
    _os_log_impl(&dword_1DEE0F000, v59, v60, "Message is a response to outgoing message: %{public}s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    v71 = v62;
    v54 = v112;
    MEMORY[0x1E12CCD70](v71, -1, -1);
    MEMORY[0x1E12CCD70](v61, -1, -1);
  }

  else
  {

    v69 = *(v53 + 8);
    v69(v58, v52);
  }

  v74 = v113;
  swift_beginAccess();
  v75 = *(v74 + 64);
  if (!*(v75 + 16) || (v76 = sub_1DEEAF350(v54), (v77 & 1) == 0))
  {
    swift_endAccess();
    v96 = sub_1DEF8D4D8();
    v97 = sub_1DEF8DC98();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_1DEE0F000, v96, v97, "No response handler found", v98, 2u);
      MEMORY[0x1E12CCD70](v98, -1, -1);
    }

    v69(v54, v52);
    v73 = v115;
    return sub_1DEE171B4(v73, &qword_1ECDE4E30, &qword_1DEF96220);
  }

  v78 = v76;
  v112 = v69;
  v114 = v53;
  v79 = *(v75 + 56);
  v80 = swift_allocObject();
  v111 = *(v79 + 16 * v78);
  *(v80 + 16) = v111;
  swift_endAccess();

  v81 = sub_1DEF8D4D8();
  v82 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = v52;
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_1DEE0F000, v81, v82, "Found response handler", v84, 2u);
    v85 = v84;
    v52 = v83;
    MEMORY[0x1E12CCD70](v85, -1, -1);
  }

  v99 = v52;

  v86 = v103;
  v116(v103, v54, v52);
  swift_beginAccess();
  sub_1DEF33BDC(0, 0, v86);
  swift_endAccess();
  v117 = *(v74 + 32);
  v87 = v115;
  v88 = v102;
  sub_1DEE17214(v115, v102, &qword_1ECDE4E30, &qword_1DEF96220);
  v89 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v90 = swift_allocObject();
  *(v90 + 16) = sub_1DEF30814;
  *(v90 + 24) = v80;
  sub_1DEE1BA88(v88, v90 + v89, &qword_1ECDE4E30, &qword_1DEF96220);
  aBlock[4] = sub_1DEF30138;
  aBlock[5] = v90;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_330;
  v91 = _Block_copy(aBlock);

  v92 = v104;
  sub_1DEF8D6B8();
  v118 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
  v93 = v106;
  v94 = v109;
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v92, v93, v91);
  _Block_release(v91);

  (*(v108 + 8))(v93, v94);
  (*(v105 + 8))(v92, v107);
  (v112)(v54, v99);
  sub_1DEE171B4(v87, &qword_1ECDE4E30, &qword_1DEF96220);
}

uint64_t sub_1DEE20078()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE200B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E30, &qword_1DEF96220);
  v2 = *(*(v1 - 8) + 80);
  v13 = *(*(v1 - 8) + 64);

  v3 = v0 + ((v2 + 32) & ~v2);
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = type metadata accessor for Message(0);
  v8 = *(v7 + 20);
  if (!(*(v5 + 48))(v3 + v8, 1, v4))
  {
    v6(v3 + v8, v4);
  }

  sub_1DEE1BFA0(*(v3 + *(v7 + 36)), *(v3 + *(v7 + 36) + 8));
  v9 = *(v1 + 28);
  v10 = sub_1DEF8D1E8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v3 + v9, v10);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 32) & ~v2) + v13, v2 | 7);
}

char *sub_1DEE202D8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58C8, &qword_1DEF9AE80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t Message.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v10 - v3;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1DEF8DF28();
  MEMORY[0x1E12CB180](540697705, 0xE400000000000000);
  sub_1DEF8D3F8();
  sub_1DEE1E37C(&unk_1ECDE3620, MEMORY[0x1E69695E0]);
  v5 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v5);

  MEMORY[0x1E12CB180](0xD000000000000010, 0x80000001DEF9E320);
  v6 = type metadata accessor for Message(0);
  sub_1DEE205E0(v0 + v6[5], v4);
  v7 = sub_1DEF8D988();
  MEMORY[0x1E12CB180](v7);

  MEMORY[0x1E12CB180](0x67617373656D203BLL, 0xEF203A6570795465);
  MEMORY[0x1E12CB180](*(v1 + v6[6]), *(v1 + v6[6] + 8));
  MEMORY[0x1E12CB180](0xD000000000000012, 0x80000001DEF9E340);
  MEMORY[0x1E12CB180](*(v1 + v6[7]), *(v1 + v6[7] + 8));
  MEMORY[0x1E12CB180](0xD000000000000013, 0x80000001DEF9C230);
  v10[1] = *(v0 + v6[8]);
  v8 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v8);

  return v11;
}

uint64_t sub_1DEE205E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DeviceDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v64.i8[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E90, &qword_1DEF91888);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v64.i8[-v9];
  v11 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v64.i8[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v13 + 72) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 44) = 256;
  *(v13 + 7) = xmmword_1DEF90FE0;
  v15 = *(v14 + 68);
  v16 = sub_1DEF8D3F8();
  v17 = *(*(v16 - 8) + 56);
  v70 = v15;
  v71 = v13;
  v17(&v13[v15], 1, 1, v16);
  v18 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1DEE23F54();
  sub_1DEF8E848();
  if (v2)
  {
    v21 = v71;
    __swift_destroy_boxed_opaque_existential_1(v69);
    sub_1DEE2416C(*(v21 + 14), *(v21 + 15));

    return sub_1DEE171B4(&v21[v70], &unk_1ECDE3E80, &unk_1DEF90970);
  }

  v67 = v6;
  v19 = v8;
  v76 = 2;
  sub_1DEE23F00();
  v20 = v10;
  sub_1DEF8E1F8();
  v23 = v71;
  *(v71 + 2) = v72;
  LOBYTE(v72) = 0;
  *v23 = sub_1DEF8E1D8();
  *(v23 + 1) = v24;
  LOBYTE(v72) = 1;
  *(v23 + 2) = sub_1DEF8E1D8();
  *(v23 + 3) = v25;
  v76 = 3;
  sub_1DEE23EAC();
  sub_1DEF8E1B8();
  v26 = v72;
  if (v72 == 6)
  {
    LOBYTE(v72) = 12;
    v27 = sub_1DEF8E1A8();
    if (v27)
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    if (v27 == 2)
    {
      v26 = 0;
    }

    else
    {
      v26 = v28;
    }
  }

  v23[48] = v26;
  v76 = 4;
  sub_1DEE24030();
  sub_1DEF8E1B8();
  v29 = v74;
  v30 = v75;
  v31 = v73;
  *(v23 + 56) = v72;
  *(v23 + 72) = v31;
  v23[88] = v29;
  v23[89] = v30;
  v76 = 7;
  sub_1DEE1E77C();
  sub_1DEF8E1B8();
  v66 = v7;
  v33 = *(&v72 + 1);
  v32 = v72;
  sub_1DEE2416C(*(v23 + 14), *(v23 + 15));
  *(v23 + 14) = v32;
  *(v23 + 15) = v33;
  LOBYTE(v72) = 8;
  *(v23 + 16) = sub_1DEF8E198();
  *(v23 + 17) = v34;
  LOBYTE(v72) = 9;
  *(v23 + 18) = sub_1DEF8E198();
  *(v23 + 19) = v35;
  LOBYTE(v72) = 10;
  *(v23 + 20) = sub_1DEF8E198();
  *(v23 + 21) = v36;
  LOBYTE(v72) = 11;
  sub_1DEEBC680(&qword_1ECDE3630, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v65 = v20;
  sub_1DEF8E1B8();
  sub_1DEE1E70C(v67, &v71[v70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3EA8, &qword_1DEF91890);
  v76 = 5;
  sub_1DEE23BE4();
  sub_1DEF8E1B8();
  v37 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3EB8, &qword_1DEF91898);
  v76 = 6;
  sub_1DEE24AE4(&qword_1ECDE2CD0, sub_1DEE2505C, sub_1DEEBB854, MEMORY[0x1E69E5E58]);
  sub_1DEF8E1B8();
  v38 = v72;
  v70 = 0x80000001DEF9C1B0;
  if (!v37)
  {
    v37 = sub_1DEEBB8A8(&unk_1F5A18E58, 0xD000000000000011, v70, 1, 1);
    swift_arrayDestroy();
  }

  *(v71 + 12) = v37;
  if (v38)
  {
LABEL_29:
    (*(v19 + 8))(v65, v66);
    v63 = v71;
    *(v71 + 13) = v38;
    sub_1DEEBC728(v63, v68, type metadata accessor for DeviceDescriptor);
    __swift_destroy_boxed_opaque_existential_1(v69);
    return sub_1DEEBC6C8(v63, type metadata accessor for DeviceDescriptor);
  }

  v38 = MEMORY[0x1E69E7CC8];
  v39 = &unk_1F5A18F10;
  v67 = 4;
  v64 = vdupq_n_s64(1uLL);
  while (1)
  {
    v42 = *(v39 - 1);
    v43 = *v39;
    swift_bridgeObjectRetain_n();
    v44 = v70;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v72 = v38;
    v46 = v42;
    v47 = v42;
    v48 = v43;
    v50 = sub_1DEEAF16C(v47, v43, 0xD000000000000011, v44);
    v51 = v38[2];
    v52 = (v49 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      break;
    }

    v54 = v49;
    if (v38[3] >= v53)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v49)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_1DEEB7550();
        if (v54)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_1DEEB0D14(v53, isUniquelyReferenced_nonNull_native);
      v55 = sub_1DEEAF16C(v46, v48, 0xD000000000000011, v70);
      if ((v54 & 1) != (v56 & 1))
      {
        goto LABEL_32;
      }

      v50 = v55;
      if (v54)
      {
LABEL_15:
        v40 = v70;

        v38 = v72;
        v41 = *(v72 + 56) + 48 * v50;
        *v41 = v46;
        *(v41 + 8) = v48;
        *(v41 + 16) = 0xD000000000000011;
        *(v41 + 24) = v40;
        *(v41 + 32) = v64;

        goto LABEL_16;
      }
    }

    v38 = v72;
    *(v72 + 8 * (v50 >> 6) + 64) |= 1 << v50;
    v57 = (v38[6] + 32 * v50);
    *v57 = v46;
    v57[1] = v48;
    v58 = v70;
    v57[2] = 0xD000000000000011;
    v57[3] = v58;
    v59 = (v38[7] + 48 * v50);
    v59->i64[0] = v46;
    v59->i64[1] = v48;
    v59[1].i64[0] = 0xD000000000000011;
    v59[1].i64[1] = v58;
    v59[2] = vdupq_n_s64(1uLL);

    v60 = v38[2];
    v61 = __OFADD__(v60, 1);
    v62 = v60 + 1;
    if (v61)
    {
      goto LABEL_31;
    }

    v38[2] = v62;
LABEL_16:
    v39 += 2;
    if (!--v67)
    {
      swift_arrayDestroy();
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t ScreenDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4C10, &qword_1DEF95628);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE23D60();
  sub_1DEF8E848();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    v16 = 0;
    sub_1DEE23CD0(&qword_1ECDE2B98, MEMORY[0x1E695EFA0]);
    sub_1DEF8E1F8();
    v9 = v17;
    v10 = v18;
    v16 = 1;
    sub_1DEE23FDC();
    sub_1DEF8E1F8();
    v12 = v17;
    v16 = 2;
    sub_1DEF8E1B8();
    (*(v6 + 8))(v8, v5);
    v13 = v17;
    v14 = v18;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL sub_1DEE212E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  *&v11[0] = sub_1DEF8E868();
  *(&v11[0] + 1) = v8;
  v9 = [a5 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  sub_1DEE117D0(v11);
  return v9 != 0;
}

uint64_t sub_1DEE21398()
{
  sub_1DEE12F7C(v0 + 16, v6);
  v1 = MEMORY[0x1E69E63B0];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v3 = sub_1DEF8DF68();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
    *v5 = v1;

    sub_1DEF8DF48();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DEE214FC(uint64_t a1)
{
  sub_1DEE12F7C(v1 + 16, v8);
  if (swift_dynamicCast())
  {
    return v7;
  }

  v4 = sub_1DEF8DF68();
  swift_allocError();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
  *v6 = a1;

  sub_1DEF8DF48();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v4);
  return swift_willThrow();
}

uint64_t sub_1DEE216A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v22 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v22);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DEF8D3F8();
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5588, &unk_1DEF98970);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6E874();
  v27 = v9;
  v13 = v28;
  sub_1DEF8E848();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v4;
  v14 = v12;
  v15 = v23;
  LOBYTE(v29) = 0;
  sub_1DEF6D188(&qword_1ECDE3630, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v16 = v24;
  sub_1DEF8E1F8();
  (*(v15 + 32))(v12, v16, v5);
  v30 = 1;
  sub_1DEF6E8C8();
  sub_1DEF8E1F8();
  v17 = v10;
  *(v14 + *(v10 + 20)) = v29;
  LOBYTE(v29) = 2;
  sub_1DEF6D188(&qword_1ECDE4920, type metadata accessor for DeviceDescriptor, &protocol conformance descriptor for DeviceDescriptor);
  v18 = v28;
  v24 = 0;
  sub_1DEF8E1F8();
  v19 = v25;
  sub_1DEF6E54C(v18, v14 + *(v17 + 24), type metadata accessor for DeviceDescriptor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46E8, &qword_1DEF92F08);
  v30 = 3;
  sub_1DEE2524C();
  sub_1DEF8E1F8();
  (*(v19 + 8))(v27, v26);
  *(v14 + *(v17 + 28)) = v29;
  sub_1DEF6E6BC(v14, v21, type metadata accessor for ReplicatorMessage.Handshake.Request);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DEF6E5B4(v14, type metadata accessor for ReplicatorMessage.Handshake.Request);
}

uint64_t PairingRelationship.State.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4A18, &qword_1DEF93FB0);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v40 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4A20, &qword_1DEF93FB8);
  v49 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v50 = &v40 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4A28, &qword_1DEF93FC0);
  v46 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v52 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4A30, &qword_1DEF93FC8);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4A38, &qword_1DEF93FD0);
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4A40, &qword_1DEF93FD8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v40 - v15;
  v17 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1DEEFA0AC();
  v18 = v55;
  sub_1DEF8E848();
  if (!v18)
  {
    v19 = v12;
    v55 = v10;
    v20 = v52;
    v21 = v53;
    v22 = sub_1DEF8E228();
    v23 = (2 * *(v22 + 16)) | 1;
    v56 = v22;
    v57 = v22 + 32;
    v58 = 0;
    v59 = v23;
    v24 = sub_1DEE4F064();
    if (v24 != 5 && v58 == v59 >> 1)
    {
      if (v24 <= 1u)
      {
        if (v24)
        {
          v60 = 1;
          sub_1DEEFA1FC();
          sub_1DEF8E178();
          (*(v43 + 8))(v9, v44);
          (*(v14 + 8))(v16, v13);
          swift_unknownObjectRelease();
          v39 = 0;
          v38 = 1;
        }

        else
        {
          v60 = 0;
          sub_1DEEFA250();
          sub_1DEF8E178();
          (*(v41 + 8))(v19, v55);
          (*(v14 + 8))(v16, v13);
          swift_unknownObjectRelease();
          v39 = 0;
          v38 = 0;
        }
      }

      else
      {
        if (v24 == 2)
        {
          v33 = v51;
          v60 = 2;
          sub_1DEEFA1A8();
          sub_1DEF8E178();
          (*(v46 + 8))(v20, v42);
          (*(v14 + 8))(v16, v13);
          swift_unknownObjectRelease();
          v39 = 0;
          v38 = 2;
          v31 = v54;
LABEL_17:
          *v33 = v39;
          v33[1] = v38;
          return __swift_destroy_boxed_opaque_existential_1(v31);
        }

        if (v24 == 3)
        {
          v60 = 3;
          sub_1DEEFA154();
          v25 = v50;
          sub_1DEF8E178();
          v26 = v45;
          v27 = sub_1DEF8E1D8();
          v34 = v25;
          v35 = v27;
          v37 = v36;
          (*(v49 + 8))(v34, v26);
          (*(v14 + 8))(v16, v13);
          swift_unknownObjectRelease();
          v38 = v37;
          v39 = v35;
        }

        else
        {
          v60 = 4;
          sub_1DEEFA100();
          sub_1DEF8E178();
          (*(v47 + 8))(v21, v48);
          (*(v14 + 8))(v16, v13);
          swift_unknownObjectRelease();
          v39 = 0;
          v38 = 3;
        }
      }

      v31 = v54;
      v33 = v51;
      goto LABEL_17;
    }

    v28 = sub_1DEF8DF68();
    swift_allocError();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
    *v30 = &type metadata for PairingRelationship.State;
    sub_1DEF8E188();
    sub_1DEF8DF48();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    (*(v14 + 8))(v16, v13);
    swift_unknownObjectRelease();
  }

  v31 = v54;
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

BOOL sub_1DEE223CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1DEF8DF68();
  v23 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v24 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DEE1EA18(0, &qword_1ED7860B0, 0x1E695DFB0);
  sub_1DEE22CCC(a1, v15, a2, a5, a6, v15, &v25, a7);
  if (!v7)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v16 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  v17 = v24;
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v18 = v23;
  if ((*(v23 + 88))(v17, v13) != *MEMORY[0x1E69E6AF8])
  {
    (*(v18 + 8))(v17, v13);
LABEL_7:

    return v7 == 0;
  }

  (*(v18 + 96))(v17, v13);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
  v20 = sub_1DEF8DF58();
  (*(*(v20 - 8) + 8))(&v17[v19], v20);

  return v7 == 0;
}

void *sub_1DEE2262C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1DEE22B84(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC8, &unk_1DEF95E90);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *Zone.ID.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE51F8, &qword_1DEF963C8);
  v15 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE24084();
  sub_1DEF8E848();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v15;
    v17 = 0;
    *(v1 + 16) = sub_1DEF8E1D8();
    *(v1 + 24) = v9;
    v16 = 1;
    v11 = sub_1DEF8E1D8();
    v13 = v12;
    (*(v8 + 8))(v7, v5);
    *(v3 + 32) = v11;
    *(v3 + 40) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

void *sub_1DEE22944(uint64_t a1)
{
  v6 = v4;
  result = sub_1DEE24590();
  if (!v5)
  {
    v26 = 0;
    if (a1 == MEMORY[0x1E6969080] && (sub_1DEE12F7C(v25, &v22), sub_1DEE1EA18(0, &qword_1ED7863D8, 0x1E695DEF0), (swift_dynamicCast() & 1) != 0))
    {

      sub_1DEE117C0(v25, &v22);
      return swift_dynamicCast();
    }

    else
    {
      v9 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DEF907F0;
      *&v22 = v4[1];
      v11 = v22;

      v12 = sub_1DEF8E2E8();
      v14 = v13;
      *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(inited + 64) = sub_1DEE2453C();
      v15 = swift_allocObject();
      *(inited + 32) = v15;
      *(v15 + 16) = v12;
      *(v15 + 24) = v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = 0;
      *&v22 = v9;
      sub_1DEE2262C(inited);
      v16 = v22;
      sub_1DEE12F7C(v25, v23);
      v17 = v6[3];
      v18 = *(v6 + 32);
      v19 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
      *&v22 = v16;
      *(&v22 + 1) = v19;
      v23[4] = v17;
      v24 = v18;
      sub_1DEE1DC98();
      v21 = swift_allocObject();
      sub_1DEE1DCEC(&v22, v21 + 16);
      sub_1DEF8DBC8();
      sub_1DEE1EBB4(&v22);
      return __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  return result;
}

void *sub_1DEE22B84(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC8, &unk_1DEF95E90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DEE22CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v34 = a2;
  v40 = a3;
  v33 = a7;
  v12 = sub_1DEF8DDC8();
  v32 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = sub_1DEF8E888();
  if (v16)
  {
    v17 = sub_1DEF8E868();
    v18 = MEMORY[0x1E69E6158];
    v38 = MEMORY[0x1E69E6158];
    *&v37 = v17;
    *(&v37 + 1) = v19;
  }

  else
  {
    v36 = MEMORY[0x1E69E6530];
    *&v35 = v15;
    sub_1DEE117C0(&v35, &v37);
    v18 = v38;
  }

  __swift_project_boxed_opaque_existential_1(&v37, v18);
  v20 = [a4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
    sub_1DEE117C0(&v35, v39);
    __swift_destroy_boxed_opaque_existential_1(&v37);
    sub_1DEE12F7C(v39, &v37);
    v21 = swift_dynamicCast();
    v22 = *(*(a6 - 8) + 56);
    if (v21)
    {
      v23 = *(a6 - 8);
      v22(v14, 0, 1, a6);
      __swift_destroy_boxed_opaque_existential_1(v39);
      return (*(v23 + 32))(v33, v14, a6);
    }

    else
    {
      v22(v14, 1, 1, a6);
      (*(v32 + 8))(v14, v12);
      v29 = sub_1DEF8DF68();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
      *v31 = v34;

      sub_1DEF8DF48();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v39);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v37);
    v25 = sub_1DEF8DF68();
    swift_allocError();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5260, &qword_1DEF975C0);
    v27[3] = a5;
    v27[4] = a8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);

    sub_1DEF8DF48();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF0], v25);
    return swift_willThrow();
  }
}

uint64_t sub_1DEE23100@<X0>(uint64_t a1@<X0>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

void *Zone.init(from:)(void *a1)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5208, &qword_1DEF963D8);
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v10 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE24180();
  sub_1DEF8E848();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v4;
    type metadata accessor for Zone.ID();
    v13 = 0;
    sub_1DEE244C8(&qword_1ECDE2E98, type metadata accessor for Zone.ID, &protocol conformance descriptor for Zone.ID);
    v8 = v11;
    sub_1DEF8E1F8();
    *(v1 + 16) = v12;
    v13 = 1;
    sub_1DEE23F00();
    sub_1DEF8E1F8();
    (*(v7 + 8))(v6, v8);
    *(v1 + 24) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t ProtocolVersion.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A40, &qword_1DEF90588);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE24474();
  sub_1DEF8E848();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_1DEF8E218();
    v13 = 1;
    v10 = sub_1DEF8E218();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DEE235E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DEE23A88(&qword_1ED7860B8, 0x1E695DF20);
  if (!v3)
  {
    type metadata accessor for PropertyListTypeDecoder.KeyedDecoder(0, a2, a3, v7);

    swift_getWitnessTable();
    return sub_1DEF8E238();
  }

  return result;
}

uint64_t sub_1DEE236E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1DEE1EA18(0, &qword_1ED786078, 0x1E695DEC8);
  sub_1DEE12F7C((v1 + 2), v13);
  if (swift_dynamicCast())
  {
    v4 = *v1;
    v5 = v1[6];
    v6 = *(v1 + 56);
    a1[3] = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder;
    a1[4] = sub_1DEE247F0();
    v7 = swift_allocObject();
    *a1 = v7;
    *(v7 + 16) = v4;
    *(v7 + 24) = 0;
    *(v7 + 32) = v12;
    *(v7 + 40) = v5;
    *(v7 + 48) = v6;
  }

  else
  {
    v9 = sub_1DEF8DF68();
    swift_allocError();
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
    *v11 = v3;

    sub_1DEF8DF48();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69E6AF8], v9);
    return swift_willThrow();
  }
}

uint64_t sub_1DEE2386C()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1DEE2393C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1DEE22CCC(a1, a8, a2, a5, a6, a8, &v10, a7);
  if (!v8)
  {
    return v10;
  }

  return result;
}

uint64_t sub_1DEE239C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  result = sub_1DEE22CCC(a1, MEMORY[0x1E69E6158], a2, a5, a6, MEMORY[0x1E69E6158], &v9, a7);
  if (!v7)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1DEE23A88(unint64_t *a1, void *a2)
{
  v3 = sub_1DEE1EA18(0, a1, a2);
  sub_1DEE12F7C(v2 + 16, v9);
  if (swift_dynamicCast())
  {
    return v8;
  }

  v5 = sub_1DEF8DF68();
  swift_allocError();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
  *v7 = v3;

  sub_1DEF8DF48();
  (*(*(v5 - 8) + 104))(v7, *MEMORY[0x1E69E6AF8], v5);
  return swift_willThrow();
}

unint64_t sub_1DEE23BE4()
{
  result = qword_1ECDE2CA0;
  if (!qword_1ECDE2CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECDE3EA8, &qword_1DEF91890);
    sub_1DEEBC680(&qword_1ECDE2E98, type metadata accessor for Zone.ID, &protocol conformance descriptor for Zone.ID);
    sub_1DEEBC680(&unk_1ECDE2E80, type metadata accessor for Zone, &protocol conformance descriptor for Zone);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2CA0);
  }

  return result;
}

uint64_t sub_1DEE23CD0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DEE23D14(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1DEE23D60()
{
  result = qword_1ECDE33E0;
  if (!qword_1ECDE33E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE33E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

ReplicatorEngine::DeviceType_optional __swiftcall DeviceType.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1DEE23E58()
{
  result = qword_1ECDE35C0;
  if (!qword_1ECDE35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE35C0);
  }

  return result;
}

unint64_t sub_1DEE23EAC()
{
  result = qword_1ECDE35B8;
  if (!qword_1ECDE35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE35B8);
  }

  return result;
}

unint64_t sub_1DEE23F00()
{
  result = qword_1ECDE3460;
  if (!qword_1ECDE3460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3460);
  }

  return result;
}

unint64_t sub_1DEE23F54()
{
  result = qword_1ECDE3E98;
  if (!qword_1ECDE3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3E98);
  }

  return result;
}

unint64_t sub_1DEE23FDC()
{
  result = qword_1ECDE35F8;
  if (!qword_1ECDE35F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE35F8);
  }

  return result;
}

unint64_t sub_1DEE24030()
{
  result = qword_1ECDE33C0;
  if (!qword_1ECDE33C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE33C0);
  }

  return result;
}

unint64_t sub_1DEE24084()
{
  result = qword_1ECDE2EC0;
  if (!qword_1ECDE2EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2EC0);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DEE2416C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DEE1BFA0(result, a2);
  }

  return result;
}

unint64_t sub_1DEE24180()
{
  result = qword_1ECDE2ED8;
  if (!qword_1ECDE2ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2ED8);
  }

  return result;
}

unint64_t sub_1DEE241D4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6C6F636F746F7270;
      break;
    case 3:
      result = 0x7954656369766564;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x73656E6F7ALL;
      break;
    case 6:
      result = 0x546567617373656DLL;
      break;
    case 7:
      result = 0x746E656449736469;
      break;
    case 8:
      result = 0x6E6974656B72616DLL;
      break;
    case 9:
      result = 0x54746375646F7270;
      break;
    case 10:
      result = 0x49616E6F73726570;
      break;
    case 11:
      result = 0x754E6C6169726573;
      break;
    case 12:
      result = 0x656372756F537369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for DeviceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DEE24444(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 33) = v3;
  return result;
}

unint64_t sub_1DEE24474()
{
  result = qword_1ECDE3488;
  if (!qword_1ECDE3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3488);
  }

  return result;
}

uint64_t sub_1DEE244C8(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DEE2453C()
{
  result = qword_1ED786090;
  if (!qword_1ED786090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED786090);
  }

  return result;
}

uint64_t sub_1DEE24590()
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  if (v2 >= [v3 count])
  {
    v6 = sub_1DEF8DF68();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
    *v8 = MEMORY[0x1E69E7CA0] + 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    v10 = sub_1DEF8E2E8();
    v12 = v11;
    *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
    *(inited + 64) = sub_1DEE2453C();
    v13 = swift_allocObject();
    *(inited + 32) = v13;
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    *(v13 + 32) = v2;
    *(v13 + 40) = 0;

    sub_1DEE2262C(inited);
    sub_1DEF8DF48();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B08], v6);
    return swift_willThrow();
  }

  else
  {
    v4 = [v3 objectAtIndexedSubscript_];
    sub_1DEF8DDE8();
    result = swift_unknownObjectRelease();
    *(v1 + 8) = v2 + 1;
  }

  return result;
}

uint64_t sub_1DEE24788()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

unint64_t sub_1DEE247F0()
{
  result = qword_1ED786088;
  if (!qword_1ED786088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED786088);
  }

  return result;
}

uint64_t sub_1DEE24850(void *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 16);
  v5 = *(*a2 + 24);
  v6 = v4 == v2[2] && v5 == v2[3];
  if (v6 || (v7 = sub_1DEF8E4E8(), result = 0, (v7 & 1) != 0))
  {
    if (*(v3 + 32) == v2[4] && *(v3 + 40) == v2[5])
    {
      return 1;
    }

    else
    {

      return sub_1DEF8E4E8();
    }
  }

  return result;
}

uint64_t sub_1DEE248D4(uint64_t a1)
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  return sub_1DEF8E7F8();
}

unint64_t sub_1DEE24964()
{
  v1 = 0x496E6F6973736573;
  v2 = 0x656369766564;
  if (*v0 != 2)
  {
    v2 = 0x73726556656E6F7ALL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DEE249EC()
{
  if (*v0)
  {
    return 0x6D756D696E696DLL;
  }

  else
  {
    return 0x746E6572727563;
  }
}

uint64_t sub_1DEE24A20()
{
  v1 = 0x656C616373;
  if (*v0 != 1)
  {
    v1 = 0x615272656E726F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702521203;
  }
}

uint64_t sub_1DEE24A78()
{
  if (*v0)
  {
    return 0x4449746E65696C63;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1DEE24AA8()
{
  if (*v0)
  {
    return 0x6C6F636F746F7270;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1DEE24AE4(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECDE3EB8, &qword_1DEF91898);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MessageType.ID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE57D0, &qword_1DEF99A78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE24D8C();
  sub_1DEF8E848();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_1DEF8E1D8();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1DEF8E1D8();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DEE24D8C()
{
  result = qword_1ECDE3588;
  if (!qword_1ECDE3588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3588);
  }

  return result;
}

uint64_t MessageType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE57E0, &qword_1DEF99A88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE25008();
  sub_1DEF8E848();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  sub_1DEE2505C();
  sub_1DEF8E1F8();
  v9 = *(&v16 + 1);
  v10 = v18;
  v14 = v17;
  v15 = v16;
  v19 = 1;
  sub_1DEE23F00();
  sub_1DEF8E1F8();
  (*(v6 + 8))(v8, v5);
  v11 = v16;
  v12 = v14;
  *a2 = v15;
  *(a2 + 8) = v9;
  *(a2 + 16) = v12;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DEE25008()
{
  result = qword_1ECDE35A0;
  if (!qword_1ECDE35A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE35A0);
  }

  return result;
}

unint64_t sub_1DEE2505C()
{
  result = qword_1ECDE3548;
  if (!qword_1ECDE3548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3548);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1DEE250C4(uint64_t a1)
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEE25128(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DEF8E4E8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DEF8E4E8();
    }
  }

  return result;
}

uint64_t sub_1DEE251CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1DEE2524C()
{
  result = qword_1ECDE2C88;
  if (!qword_1ECDE2C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE46E8, &qword_1DEF92F08);
    sub_1DEEE0768(&qword_1ECDE34D8, type metadata accessor for ZoneVersion, &protocol conformance descriptor for ZoneVersion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2C88);
  }

  return result;
}

uint64_t sub_1DEE25328(uint64_t a1, uint64_t a2, char a3, id a4, uint64_t a5, uint64_t a6)
{
  v6 = [a4 allKeys];
  sub_1DEF8DAD8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5268, &qword_1DEF975C8);
  sub_1DEE25424();
  v7 = sub_1DEF8DA28();

  return v7;
}

unint64_t sub_1DEE25424()
{
  result = qword_1ED7860C0;
  if (!qword_1ED7860C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE5268, &qword_1DEF975C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7860C0);
  }

  return result;
}

uint64_t sub_1DEE25488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a4@<X8>)
{
  sub_1DEE12F7C(a1, v7);
  if (swift_dynamicCast())
  {
    sub_1DEF8E878();
  }

  else if (swift_dynamicCast())
  {
    sub_1DEF8E898();
  }

  else
  {
    (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t ZoneVersion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4BA0, &qword_1DEF94E88);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4BA8, &qword_1DEF94E90);
  v7 = *(v6 - 8);
  v44 = v6;
  v45 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4BB0, &unk_1DEF94E98);
  v50 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for ZoneVersion(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v19 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1DEE25C44();
  v20 = v51;
  sub_1DEF8E848();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v51 = v13;
  v42 = v15;
  v43 = v18;
  v22 = v48;
  v21 = v49;
  v23 = sub_1DEF8E228();
  v24 = (2 * *(v23 + 16)) | 1;
  v53 = v23;
  v54 = v23 + 32;
  v55 = 0;
  v56 = v24;
  v25 = sub_1DEE25E0C();
  v26 = v10;
  v27 = v12;
  if (v25 == 2 || v55 != v56 >> 1)
  {
    v30 = sub_1DEF8DF68();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
    *v32 = v51;
    sub_1DEF8E188();
    sub_1DEF8DF48();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v50 + 8))(v12, v26);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  if (v25)
  {
    v57 = 1;
    sub_1DEF048FC();
    v28 = v22;
    sub_1DEF8E178();
    v29 = v50;
    v35 = v21;
    v36 = sub_1DEF8D3F8();
    sub_1DEE1E37C(&qword_1ECDE3630, MEMORY[0x1E69695D0]);
    v37 = v42;
    v38 = v46;
    sub_1DEF8E1F8();
    (*(v47 + 8))(v28, v38);
    (*(v29 + 8))(v27, v26);
    swift_unknownObjectRelease();
    (*(*(v36 - 8) + 56))(v37, 0, 1, v36);
    v39 = v43;
    sub_1DEE260C4(v37, v43);
  }

  else
  {
    v57 = 0;
    sub_1DEE25E48();
    sub_1DEF8E178();
    v34 = v50;
    v35 = v21;
    (*(v45 + 8))(v9, v44);
    (*(v34 + 8))(v12, v10);
    swift_unknownObjectRelease();
    v40 = sub_1DEF8D3F8();
    v39 = v43;
    (*(*(v40 - 8) + 56))(v43, 1, 1, v40);
  }

  sub_1DEE260C4(v39, v35);
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t type metadata accessor for ZoneVersion(uint64_t a1)
{
  result = qword_1ECDE34C8;
  if (!qword_1ECDE34C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DEE25C44()
{
  result = qword_1ECDE3528;
  if (!qword_1ECDE3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3528);
  }

  return result;
}

uint64_t sub_1DEE25C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1752392040 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

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

uint64_t getEnumTagSinglePayload for ProtocolVersion.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1DEE25E14()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DEE25E48()
{
  result = qword_1ECDE34F8;
  if (!qword_1ECDE34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE34F8);
  }

  return result;
}

void sub_1DEE25EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = sub_1DEE1EA18(0, &qword_1ED7860B8, 0x1E695DF20);
  v19 = a5 & 1;
  sub_1DEE22CCC(a2, v18, a3, a6, a7, v18, v26, a9);
  if (!v10)
  {
    v20 = v26[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    *(inited + 56) = a7;
    *(inited + 64) = a9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a2, a7);
    v26[0] = a3;
    v23 = v20;

    sub_1DEE2262C(inited);
    v26[1] = a4;
    v27 = v19;
    v28 = v23;
    type metadata accessor for PropertyListTypeDecoder.KeyedDecoder(0, a8, a10, v24);

    v25 = v23;
    swift_getWitnessTable();
    sub_1DEF8E238();
  }
}

uint64_t sub_1DEE26094()
{
  if (*v0)
  {
    return 1752392040;
  }

  else
  {
    return 0x7974706D65;
  }
}

uint64_t sub_1DEE260C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoneVersion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_16ReplicatorEngine19PairingRelationshipV5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t PairingRelationship.State.description.getter()
{
  v1 = v0[1];
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x6576697463616E69;
      }

      goto LABEL_8;
    }

    return 0x646572696170;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x676E6972696170;
      }

LABEL_8:
      MEMORY[0x1E12CB180](*v0);
      MEMORY[0x1E12CB180](41, 0xE100000000000000);
      return 0x6E6974617267696DLL;
    }

    return 0x6375646F72746E69;
  }
}

uint64_t type metadata accessor for DeviceDescriptor(uint64_t a1)
{
  result = qword_1ECDE3440;
  if (!qword_1ECDE3440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProtocolVersion.description.getter()
{
  sub_1DEF8DF28();

  v0 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v0);

  MEMORY[0x1E12CB180](0x756D696E696D203BLL, 0xEB00000000203A6DLL);
  v1 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v1);

  return 0x3A746E6572727563;
}

uint64_t sub_1DEE263B0()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 6578544;
  v4 = 0x6863746177;
  if (v1 != 4)
  {
    v4 = 30324;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6513005;
  if (v1 != 1)
  {
    v5 = 0x656E6F6870;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DEE26458(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t ScreenDescriptor.description.getter()
{
  v1 = *(v0 + 32);
  v6 = sub_1DEF8DBA8();
  MEMORY[0x1E12CB180](120, 0xE100000000000000);
  v2 = sub_1DEF8DBA8();
  MEMORY[0x1E12CB180](v2);

  MEMORY[0x1E12CB180](64, 0xE100000000000000);
  v3 = sub_1DEF8DBA8();
  MEMORY[0x1E12CB180](v3);

  result = v6;
  if ((v1 & 1) == 0)
  {
    v5 = sub_1DEF8DBA8();
    MEMORY[0x1E12CB180](v5);

    MEMORY[0x1E12CB180](114, 0xE100000000000000);

    return v6;
  }

  return result;
}

uint64_t sub_1DEE265AC()
{
  v1 = *v0;
  v3 = *(*v0 + 32);

  MEMORY[0x1E12CB180](14906, 0xE200000000000000);
  MEMORY[0x1E12CB180](*(v1 + 16), *(v1 + 24));
  return v3;
}

uint64_t Zone.description.getter()
{
  v1 = *(v0 + 16);
  v3 = v1[4];
  v4 = v1[5];

  MEMORY[0x1E12CB180](14906, 0xE200000000000000);
  MEMORY[0x1E12CB180](v1[2], v1[3]);
  MEMORY[0x1E12CB180](v3, v4);

  MEMORY[0x1E12CB180](8250, 0xE200000000000000);
  sub_1DEE266C0();
  return 0;
}

uint64_t sub_1DEE266C0()
{
  sub_1DEF8DF28();

  v0 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v0);

  MEMORY[0x1E12CB180](0x756D696E696D203BLL, 0xEB00000000203A6DLL);
  v1 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v1);

  MEMORY[0x1E12CB180](0x3A746E6572727563, 0xE900000000000020);
}

uint64_t sub_1DEE267F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DEE2683C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DEF8DF28();

  MEMORY[0x1E12CB180](v1, v2);
  MEMORY[0x1E12CB180](0x746E65696C63203BLL, 0xEC000000203A4449);
  MEMORY[0x1E12CB180](v3, v4);
  return 540697705;
}

uint64_t sub_1DEE268EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DEF8DF28();
  MEMORY[0x1E12CB180](540697705, 0xE400000000000000);
  sub_1DEF8DF28();

  MEMORY[0x1E12CB180](v1, v2);
  MEMORY[0x1E12CB180](0x746E65696C63203BLL, 0xEC000000203A4449);
  MEMORY[0x1E12CB180](v3, v4);
  MEMORY[0x1E12CB180](540697705, 0xE400000000000000);

  MEMORY[0x1E12CB180](0xD000000000000013, 0x80000001DEF9C230);
  sub_1DEE266C0();
  return 0;
}

uint64_t sub_1DEE26A24(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1DEE26A64()
{
  v1 = v0;
  v2 = sub_1DEF8D3F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEE26C0C(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return 0x7974706D65;
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_1DEE1E37C(&unk_1ECDE3620, MEMORY[0x1E69695E0]);
  v10 = sub_1DEF8E2E8();
  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t sub_1DEE26C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoneVersion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEE26C70(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PairingRelationship(0);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  MEMORY[0x1EEE9AC00](v62);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - v9;
  v11 = sub_1DEF8D788();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v2[29];
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11, v13);
  v17 = v16;
  LOBYTE(v16) = sub_1DEF8D7B8();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v60 = v4;
    if (qword_1ECDE2E58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v18 = sub_1DEF8D508();
  __swift_project_value_buffer(v18, qword_1ECDF6028);
  sub_1DEEACA70(a1, v10, type metadata accessor for ReplicatorMessage.Handshake.Request);

  v19 = sub_1DEF8D4D8();
  v20 = sub_1DEF8DCB8();

  v21 = os_log_type_enabled(v19, v20);
  v63 = a1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v68 = v23;
    *v22 = 136446466;
    *(v22 + 4) = sub_1DEE12A5C(v2[66], v2[67], &v68);
    *(v22 + 12) = 2080;
    sub_1DEEACA70(v10, v7, type metadata accessor for ReplicatorMessage.Handshake.Request);
    v24 = v62;
    v25 = sub_1DEF8D988();
    v27 = v26;
    sub_1DEE273A0(v10, type metadata accessor for ReplicatorMessage.Handshake.Request);
    v28 = sub_1DEE12A5C(v25, v27, &v68);

    *(v22 + 14) = v28;
    _os_log_impl(&dword_1DEE0F000, v19, v20, "(%{public}s) Received handshake request: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v23, -1, -1);
    v29 = v22;
    a1 = v63;
    MEMORY[0x1E12CCD70](v29, -1, -1);
  }

  else
  {

    sub_1DEE273A0(v10, type metadata accessor for ReplicatorMessage.Handshake.Request);
    v24 = v62;
  }

  v30 = a1 + *(v24 + 24);
  v32 = *v30;
  v31 = *(v30 + 8);
  if (v2[32])
  {
    v33 = v2[32];
    if (v32 != v2[31])
    {
      goto LABEL_18;
    }
  }

  else
  {
    v34 = v2[23];
    ObjectType = swift_getObjectType();
    v36 = (*(v34 + 16))(ObjectType, v34);
    if (v37)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0xD000000000000016;
    }

    if (v37)
    {
      v33 = v37;
    }

    else
    {
      v33 = 0x80000001DEF9BCA0;
    }

    if (v32 != v38)
    {
      goto LABEL_18;
    }
  }

  if (v33 == v31)
  {

    goto LABEL_22;
  }

LABEL_18:
  v39 = sub_1DEF8E4E8();

  if (v39)
  {

    v40 = sub_1DEF8D4D8();
    v41 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v68 = v43;
      *v42 = 136446210;
      *(v42 + 4) = sub_1DEE12A5C(v2[66], v2[67], &v68);
      _os_log_impl(&dword_1DEE0F000, v40, v41, "(%{public}s) Sending new handshake request to lower-ordered device", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      v24 = v62;
      MEMORY[0x1E12CCD70](v43, -1, -1);
      MEMORY[0x1E12CCD70](v42, -1, -1);
    }

    v44 = v60;
    v45 = (v63 + *(v24 + 20));
    v46 = v45[1];
    *&v68 = *v45;
    *(&v68 + 1) = v46;
    sub_1DEE4F8C0(v68, v46);
    v47 = v61;
    sub_1DEE5F828(v30, &v68, 0, 1, v61);
    sub_1DEE4F8D4(v68, *(&v68 + 1));
    v49 = *(v30 + 160);
    v48 = *(v30 + 168);
    v50 = *(v30 + 48);
    *&v68 = v32;
    *(&v68 + 1) = v31;
    v69 = v49;
    v70 = v48;
    v71 = v50;
    v72 = *(v30 + 32);
    v51 = (v47 + *(v44 + 32));
    v53 = v51[1];
    v66 = *v51;
    v52 = v66;
    v67 = v53;
    v64 = 0;
    v65 = 0;

    sub_1DEE4F8C0(v52, v53);
    sub_1DEE76BD8(&v68, &v66, &v64);
    sub_1DEE4F8D4(v66, v67);

    return sub_1DEE273A0(v47, type metadata accessor for PairingRelationship);
  }

LABEL_22:

  v55 = sub_1DEF8D4D8();
  v56 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *&v68 = v58;
    *v57 = 136446210;
    *(v57 + 4) = sub_1DEE12A5C(v2[66], v2[67], &v68);
    _os_log_impl(&dword_1DEE0F000, v55, v56, "(%{public}s) Sending handshake response to higher-ordered device", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x1E12CCD70](v58, -1, -1);
    MEMORY[0x1E12CCD70](v57, -1, -1);
  }

  return sub_1DEE27C60(v63);
}

uint64_t sub_1DEE273A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DEE27400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DEE27460(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DEE274C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DEE27524()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = sub_1DEF8DDC8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-1] - v4;
  LOBYTE(v12[0]) = 0;
  sub_1DEE276F8();
  sub_1DEF8D898();
  v6 = *(v2 - 8);
  result = (*(v6 + 48))(v5, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v1 + 104) + 72))(v12, v2);
    (*(v6 + 8))(v5, v2);
    v8 = v13;
    v9 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v10 = (*(v9 + 24))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v10;
  }

  return result;
}

unint64_t sub_1DEE276F8()
{
  result = qword_1ECDE2EE8;
  if (!qword_1ECDE2EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2EE8);
  }

  return result;
}

uint64_t sub_1DEE2775C(uint64_t a1)
{
  v2 = *v1;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](v2);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEE277D4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE27884(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

double sub_1DEE2789C@<D0>(void (*a1)(__int128 *__return_ptr)@<X1>, _OWORD *a2@<X8>)
{
  a1(&v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1DEE278FC@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1DEF8D698();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DEF8D6D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&a1[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_localDeviceID + 8];
  if (v13)
  {
    *a2 = *&a1[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_localDeviceID];
    a2[1] = v13;
  }

  else
  {
    if ((a1[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_fetchingLocalDeviceID] & 1) == 0)
    {
      a1[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_fetchingLocalDeviceID] = 1;
      v20 = *&a1[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_identityFetchQueue];
      v21 = v10;
      v22 = 0;
      v14 = swift_allocObject();
      *(v14 + 16) = a1;
      aBlock[4] = sub_1DEF3238C;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DEE3F0C0;
      aBlock[3] = &block_descriptor_21_0;
      v19 = _Block_copy(aBlock);
      v15 = a1;
      sub_1DEF8D6B8();
      aBlock[7] = MEMORY[0x1E69E7CC0];
      v18[1] = sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
      sub_1DEF8DE08();
      v16 = v19;
      MEMORY[0x1E12CB4D0](0, v12, v7, v19);
      _Block_release(v16);
      (*(v5 + 8))(v7, v4);
      (*(v9 + 8))(v12, v21);
    }

    *a2 = 0;
    a2[1] = 0;
  }
}

uint64_t sub_1DEE27C28()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE27C60(uint64_t a1)
{
  v2 = *v1;
  v26 = a1;
  v27 = v2;
  v3 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1DEF8D788();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v1[29];
  *v10 = v11;
  v12 = *(v7 + 104);
  v25 = *MEMORY[0x1E69E8020];
  v24 = v12;
  v12(v10, v8);
  v23 = v11;
  LOBYTE(v11) = sub_1DEF8D7B8();
  v13 = *(v7 + 8);
  result = v13(v10, v6);
  if (v11)
  {
    sub_1DEEACA70(v26, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReplicatorMessage.Handshake.Request);
    v15 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    sub_1DEEAB218(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ReplicatorMessage.Handshake.Request);
    *(v16 + ((v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v17 = v24;
    *v10 = v23;
    v17(v10, v25, v6);

    LOBYTE(v15) = sub_1DEF8D7B8();
    result = v13(v10, v6);
    if (v15)
    {
      v18 = v1[63];
      v19 = v1[64];
      __swift_project_boxed_opaque_existential_1(v1 + 60, v18);
      v20 = swift_allocObject();
      v20[2] = v1;
      v20[3] = sub_1DEEAA960;
      v20[4] = v16;
      v21 = *(v19 + 8);

      v21(sub_1DEEACE1C, v20, v18, v19);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE27FC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE28028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE28090(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE280F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t PinnedIdentityManager.fetchIdentityBlob(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DEF8D698();
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1DEF8D6D8();
  v8 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[6];
  v12 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v11);
  if ((*(v12 + 16))(v11, v12))
  {
    v13 = swift_allocObject();
    v13[2] = v2;
    v13[3] = a1;
    v13[4] = a2;
    v38 = sub_1DEEE5A20;
    v39 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1DEE3F0C0;
    v37 = &block_descriptor_6;
    v14 = _Block_copy(&aBlock);

    sub_1DEF8D6B8();
    v33 = MEMORY[0x1E69E7CC0];
    sub_1DEE2BB40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v10, v7, v14);
    _Block_release(v14);
    (*(v32 + 8))(v7, v5);
    (*(v8 + 8))(v10, v31);
  }

  else
  {
    v29 = a1;
    v30 = v8;
    v15 = v10;
    v16 = v7;
    v17 = v5;
    v18 = v31;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v19 = sub_1DEF8D508();
    __swift_project_value_buffer(v19, qword_1ECDF6028);
    v20 = sub_1DEF8D4D8();
    v21 = sub_1DEF8DC98();
    v22 = v16;
    v23 = v15;
    if (os_log_type_enabled(v20, v21))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DEE0F000, v20, v21, "Cannot fetch IDS identity blob before first unlock", v24, 2u);
      MEMORY[0x1E12CCD70](v24, -1, -1);
    }

    v25 = swift_allocObject();
    *(v25 + 16) = v29;
    *(v25 + 24) = a2;
    v38 = sub_1DEEE59F0;
    v39 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1DEE3F0C0;
    v37 = &block_descriptor_8;
    v26 = _Block_copy(&aBlock);

    sub_1DEF8D6B8();
    v33 = MEMORY[0x1E69E7CC0];
    sub_1DEE2BB40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v23, v22, v26);
    _Block_release(v26);
    (*(v32 + 8))(v22, v17);
    (*(v30 + 8))(v23, v18);
  }
}

uint64_t sub_1DEE286E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE28720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = sub_1DEF8E888();
  if (v7)
  {
    v8 = sub_1DEF8E868();
    v9 = MEMORY[0x1E69E6158];
    v15 = MEMORY[0x1E69E6158];
    *&v14 = v8;
    *(&v14 + 1) = v10;
  }

  else
  {
    v13 = MEMORY[0x1E69E6530];
    *&v12 = v6;
    sub_1DEE117C0(&v12, &v14);
    v9 = v15;
  }

  __swift_project_boxed_opaque_existential_1(&v14, v9);
  [v5 __swift_setObject_forKeyedSubscript_];
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(&v14);
}

void sub_1DEE287F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  sub_1DEE28720(v9, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DEF907F0;
  v11 = *(a3 + 16);
  *(inited + 56) = v11;
  *(inited + 64) = *(a3 + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a2, v11);
  v13 = v9;

  sub_1DEE2262C(inited);
  type metadata accessor for PropertyListTypeEncoder.KeyedEncoder(0, a4, a5, v14);

  v15 = v13;
  swift_getWitnessTable();
  sub_1DEF8E2C8();
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1DEE289C0(void *a1)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5498, &qword_1DEF98900);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v27 - v2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE54A0, &qword_1DEF98908);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v32 = &v27 - v3;
  v30 = type metadata accessor for ReplicatorMessage.Sync(0);
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE54A8, &qword_1DEF98910);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v27 = type metadata accessor for ReplicatorMessage.Handshake(0);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReplicatorMessage(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE54B0, &qword_1DEF98918);
  v13 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v15 = &v27 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6D018();
  sub_1DEF8E858();
  sub_1DEF6E6BC(v38, v12, type metadata accessor for ReplicatorMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = v12;
      v18 = v31;
      sub_1DEF6E54C(v17, v31, type metadata accessor for ReplicatorMessage.Sync);
      v41 = 1;
      sub_1DEF6D114();
      v19 = v32;
      v20 = v39;
      sub_1DEF8E248();
      sub_1DEF6D188(&qword_1ECDE54C0, type metadata accessor for ReplicatorMessage.Sync, &unk_1DEF98064);
      v21 = v36;
      sub_1DEF8E298();
      (*(v34 + 8))(v19, v21);
      sub_1DEF6E5B4(v18, type metadata accessor for ReplicatorMessage.Sync);
    }

    else
    {
      v42 = 2;
      sub_1DEF6D06C();
      v25 = v33;
      v20 = v39;
      sub_1DEF8E248();
      sub_1DEE28FF4();
      v26 = v37;
      sub_1DEF8E298();
      (*(v35 + 8))(v25, v26);
    }

    return (*(v13 + 8))(v15, v20);
  }

  else
  {
    sub_1DEF6E54C(v12, v9, type metadata accessor for ReplicatorMessage.Handshake);
    v40 = 0;
    sub_1DEF6D1D0();
    v22 = v39;
    sub_1DEF8E248();
    sub_1DEF6D188(&qword_1ECDE54C8, type metadata accessor for ReplicatorMessage.Handshake, &unk_1DEF982AC);
    v23 = v29;
    sub_1DEF8E298();
    (*(v28 + 8))(v7, v23);
    sub_1DEF6E5B4(v9, type metadata accessor for ReplicatorMessage.Handshake);
    return (*(v13 + 8))(v15, v22);
  }
}