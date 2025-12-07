uint64_t *XPCServiceClientConnection.init(delegate:)()
{
  sub_1BAC1FB88();
  v1 = *v0;
  sub_1BAC17658();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v8 = 0;
  v5 = type metadata accessor for XPCServiceClientConnection.State(0, v2, v3, v4);
  v6 = sub_1BAC17788(&v8, v5);
  sub_1BAC1E838(v6);
  swift_unknownObjectRelease();
  v0[3] = 0;
  return v0;
}

uint64_t sub_1BAC17658()
{
  *(v0 + 40) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t sub_1BAC17674()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1BAC176C4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1BAC38904();
  v4 = sub_1BAC388F4();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t sub_1BAC17788(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, a2);
  v7 = sub_1BAC176C4(v6, a2);
  (*(v4 + 8))(a1, a2);
  return v7;
}

void sub_1BAC178C8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1BAC17930@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v2 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2);
}

uint64_t sub_1BAC179D0()
{
}

uint64_t sub_1BAC17A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *BidirectionalXPCServiceClientConnection.init(localObject:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v3[5] = 0;
  swift_unknownObjectWeakInit();
  sub_1BAC17C74();
  v6 = v5[11];
  v7 = v5[13];
  v8 = (*(v7 + 24))(v6, v7);
  v3[3] = sub_1BAC17CB8(v8, v9, 0);
  LOBYTE(v21[0]) = 0;
  v20 = v5[12];
  v19 = v5[10];
  swift_unknownObjectRetain();
  sub_1BAC17D34(v21, v22);
  *&v11 = v19;
  *&v10 = v20;
  *(&v11 + 1) = v6;
  *(&v10 + 1) = v7;
  v21[0] = v11;
  v21[1] = v10;
  v12 = type metadata accessor for BidirectionalXPCServiceClientConnection.State(0, v21);
  v3[2] = sub_1BAC17788(v22, v12);
  v3[5] = a3;
  swift_unknownObjectWeakAssign();

  v13 = sub_1BAC17D90();
  v14 = v23;
  sub_1BAC17FE4(v13, v15, v16, v12, v17);
  if (v14)
  {
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

unint64_t sub_1BAC17C74()
{
  result = qword_1ED76BA58[0];
  if (!qword_1ED76BA58[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ED76BA58);
  }

  return result;
}

id sub_1BAC17CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1BAC38614();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

uint64_t sub_1BAC17D34@<X0>(_BYTE *a1@<X0>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BAC17DA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAC17DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAC17DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAC17DD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAC17DE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAC17DF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id static XPCService.xpcInterface()()
{
  sub_1BAC1FB88();
  v3 = (*(v2 + 16))();
  v4 = [objc_opt_self() interfaceWithProtocol_];

  v11 = v1;
  v12 = (*(v0 + 40))(v1, v0);
  v5 = *(v12 + 16);
  if (v5)
  {
    v6 = v12 + 48;
    do
    {
      v7 = *(v6 - 16);
      v8 = *(v6 - 8);
      v6 += 24;

      v9 = sub_1BAC38744();

      [v4 setClasses:v9 forSelector:v7 argumentIndex:v8 ofReply:1];

      --v5;
    }

    while (v5);
  }

  (*(v0 + 56))(v4, v11);
  return v4;
}

void sub_1BAC18014(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t sub_1BAC180B4(unsigned __int8 *a1)
{
  v4 = *v1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = v1[5];
    ObjectType = swift_getObjectType();
    (*(v5 + 32))(ObjectType, v5);
    if (v2 || *a1 > 1u)
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      v25 = a1;
      v7 = v1[3];
      v8 = v4[11];
      v23 = v4[13];
      v9 = static XPCService.xpcInterface()();
      [v7 setRemoteObjectInterface_];

      v10 = v4[10];
      v21 = v4[12];
      v11 = static XPCService.xpcInterface()();
      [v7 setExportedInterface_];

      [v7 setExportedObject_];
      swift_unknownObjectRelease();
      v12 = swift_allocObject();
      swift_weakInit();
      v13 = swift_allocObject();
      *&v14 = v10;
      *(&v14 + 1) = v8;
      *&v15 = v21;
      *(&v15 + 1) = v23;
      v22 = v14;
      v24 = v15;
      *(v13 + 16) = v14;
      *(v13 + 32) = v15;
      *(v13 + 48) = v12;
      v30 = sub_1BAC35094;
      v31 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v27 = 1107296256;
      v28 = sub_1BAC1C330;
      v29 = &unk_1F38C9BE0;
      v16 = _Block_copy(&aBlock);

      [v7 setInterruptionHandler_];
      _Block_release(v16);
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v22;
      *(v18 + 32) = v24;
      *(v18 + 48) = v17;
      v30 = sub_1BAC350AC;
      v31 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v27 = 1107296256;
      v28 = sub_1BAC1C330;
      v29 = &unk_1F38C9C30;
      v19 = _Block_copy(&aBlock);

      [v7 setInvalidationHandler_];
      _Block_release(v19);
      (*(v5 + 40))(v7, ObjectType, v5);
      if (!*v25)
      {
        [v7 activate];
      }

      result = swift_unknownObjectRelease();
      *v25 = 2;
    }
  }

  else
  {
    result = sub_1BAC389B4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAC18474()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BAC18558(uint64_t a1)
{

  return swift_once();
}

void BidirectionalXPCServiceClientConnection.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1BAC194C0();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v91 = v29;
  v92 = v28;
  v31 = v30;
  v32 = *v20;
  v93 = sub_1BAC38864();
  sub_1BAC184D0();
  v34 = v33;
  sub_1BAC18C48();
  MEMORY[0x1EEE9AC00](v35);
  sub_1BAC18D70();
  v36 = v20[2];
  v94[2] = v27;
  v95 = v20;
  sub_1BAC353D0();
  sub_1BAC353D0();
  v38 = *(v37 + 96);
  v39 = *(v32 + 104);
  v90 = v40;
  v98 = v40;
  v99 = v41;
  v89 = v41;
  v88 = v38;
  v100 = v38;
  v101 = v39;
  v42 = type metadata accessor for BidirectionalXPCServiceClientConnection.State(0, &v98);
  v43 = sub_1BAC17C74();
  sub_1BAC17E04(sub_1BAC1949C, v94, v36, v42, v43);
  if (!v21)
  {
    v84 = v34;
    v85 = v22;
    v81 = v31;
    v82 = 0;
    v44 = v97;
    sub_1BAC1AE98();
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    v46 = (v45 + 16);
    sub_1BAC1D5B8();
    v47 = swift_allocObject();
    v47[2] = v27;
    v47[3] = v25;
    v47[4] = v45;
    sub_1BAC1940C(v47);
    v99 = 1107296256;
    sub_1BAC19598();
    v100 = v48;
    v101 = &unk_1F38C9788;
    v49 = _Block_copy(&v98);

    v86 = v45;

    v87 = v44;
    v50 = [v44 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v49);
    v51 = swift_allocBox();
    sub_1BAC195CC(v52, v52, &a12);
    sub_1BAC1AE98();
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    v55 = swift_allocObject();
    v56 = v89;
    v55[2] = v90;
    v55[3] = v56;
    v57 = v51;
    v58 = v50;
    v59 = v88;
    v55[4] = v27;
    v55[5] = v59;
    v55[6] = v39;
    v55[7] = v57;
    v55[8] = v53;
    swift_unknownObjectRetain();
    v90 = v57;

    v92(v50, sub_1BAC1EC70, v55);

    sub_1BAC19504(v46, &v98);
    v60 = *v46;
    if (*v46)
    {
      swift_willThrow();
      v61 = v60;
      sub_1BAC23EB0();

      sub_1BAC353F4();
    }

    else
    {
      v54 = (v53 + 16);
      sub_1BAC19504(v83, &v97);
      (*(v84 + 16))(v85, v83, v93);
      if (sub_1BAC1DA1C(v85, 1, v27) != 1)
      {
        sub_1BAC23EB0();
        sub_1BAC353F4();
        (*(*(v27 - 8) + 32))(v81, v85, v27);

        goto LABEL_10;
      }

      (*(v84 + 8))(v85, v93);
      sub_1BAC19504(v54, &v96);
      v62 = *v54;
      if (*v54)
      {
        v63 = v62;
        v64 = sub_1BAC382E4();
        v65 = NSError.pds_unlaunderSimpleNSError()();

        if (v65)
        {
          swift_willThrow();

          sub_1BAC23EB0();

          sub_1BAC353F4();

          goto LABEL_10;
        }

        swift_willThrow();
        sub_1BAC23EB0();
      }

      else
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v92 = v58;
          v93 = v53;
          swift_getObjectType();
          sub_1BAC20C40();
          v89 = v66;
          sub_1BAC19124();
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v91 = &v80;
          sub_1BAC184D0();
          v69 = v68;
          sub_1BAC18C48();
          MEMORY[0x1EEE9AC00](v70);
          sub_1BAC18D70();
          swift_unknownObjectRetain();
          v71 = sub_1BAC1AF2C();
          v89(v71);
          sub_1BAC18DB8();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          if (sub_1BAC38A34())
          {
            (*(v69 + 8))(v54, AssociatedTypeWitness);
          }

          else
          {
            v76 = sub_1BAC3538C(AssociatedTypeWitness, AssociatedConformanceWitness);
            v78 = sub_1BAC1AD10(v76, v77);
            v79(v78);
          }

          v75 = v87;
          sub_1BAC353DC();
        }

        else
        {
          v73 = sub_1BAC32604();
          sub_1BAC3538C(&type metadata for XPCServiceError, v73);
          *v74 = 2;
          v75 = v87;
        }

        swift_willThrow();
      }

      sub_1BAC353F4();
    }
  }

LABEL_10:
  sub_1BAC35364();
}

uint64_t sub_1BAC18C00()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

BOOL sub_1BAC18C54(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1BAC18C6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1BAC1BE14(v4 - 128, v4 - 216, a3, a4);
}

uint64_t sub_1BAC18CA4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t dispatch thunk of BidirectionalServiceConnectionProtocol.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 56))(a1, a2, a3, a4);
}

{
  return (*(a5 + 48))(a1, a2, a3, a4);
}

__n128 sub_1BAC18D10(uint64_t a1)
{
  result = *(v1 - 216);
  v3 = *(v1 - 200);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  v4 = *(v1 - 72);
  *(a1 + 80) = *(v1 - 184);
  *(a1 + 88) = v4;
  return result;
}

uint64_t sub_1BAC18D58(uint64_t a1)
{

  return sub_1BAC1DA1C(a1, 1, v1);
}

uint64_t sub_1BAC18D90(uint64_t a1)
{

  return swift_getAssociatedConformanceWitness();
}

void sub_1BAC18DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BAC194C0();
  sub_1BAC353A4();
  sub_1BAC180B4(v8);
  if (!v5)
  {
    if (*v7 == 3)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v6 + 40);
        swift_getObjectType();
        v10 = *(v9 + 24);
        sub_1BAC19124();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v23[1] = v23;
        sub_1BAC184D0();
        sub_1BAC18C48();
        MEMORY[0x1EEE9AC00](v12);
        sub_1BAC18D70();
        swift_unknownObjectRetain();
        v13 = sub_1BAC1AF2C();
        v10(v13);
        sub_1BAC18DB8();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        sub_1BAC1FF14();
        if (sub_1BAC38A34())
        {
          v15 = sub_1BAC1FF14();
        }

        else
        {
          v21 = sub_1BAC3538C(AssociatedTypeWitness, AssociatedConformanceWitness);
          v15 = sub_1BAC1AD10(v21, v22);
        }

        v16(v15);
        sub_1BAC353DC();
      }

      else
      {
        v19 = sub_1BAC32604();
        sub_1BAC3538C(&type metadata for XPCServiceError, v19);
        *v20 = 1;
      }

      swift_willThrow();
    }

    else
    {
      v17 = *(v6 + 24);
      *v4 = v17;
      v18 = v17;
    }
  }

  sub_1BAC35364();
}

uint64_t sub_1BAC18F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8[17];
  v11 = v8[18];
  v12 = v8[19];

  return sub_1BAC27D80(v10, v11, v12, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAC18FBC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1BAC18FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_dynamicCast();
}

void sub_1BAC1900C()
{

  JUMPOUT(0x1BFAFF600);
}

uint64_t sub_1BAC1905C(void *a1)
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

void sub_1BAC190D4()
{

  JUMPOUT(0x1BFAFE990);
}

void sub_1BAC190EC()
{
  sub_1BAC1905C(*(v0 - 136));

  JUMPOUT(0x1BFAFF600);
}

unint64_t sub_1BAC1914C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BAC192CC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1BAC19210(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1BAC1905C(v11);
  return v7;
}

uint64_t sub_1BAC19210(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1BAC192CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BAC2BB80(a5, a6);
    *a1 = v9;
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
    result = sub_1BAC38924();
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

uint64_t sub_1BAC193D0()
{

  return sub_1BAC27C9C(v6, v5, v4, v3, v2, v1, v0);
}

uint64_t sub_1BAC1940C(uint64_t result)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = result;
  *(v2 - 136) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t sub_1BAC19430()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1BAC19458(uint64_t a1)
{
  v3 = *(v2 - 368);
  *(a1 + 16) = *(v2 - 376);
  *(a1 + 24) = v3;
  return a1 + v1;
}

uint64_t sub_1BAC19504(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_1BAC19524(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1BAC195CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 - 256) = a2;

  return sub_1BAC1926C(a1, 1, 1, v3);
}

uint64_t sub_1BAC195EC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_1BAC1964C(v8, v7);

  return v9 & 1;
}

uint64_t sub_1BAC1964C(uint64_t a1, void *a2)
{
  v176 = a2;
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1BAC38864();
  sub_1BAC18C48();
  MEMORY[0x1EEE9AC00](v7);
  sub_1BAC192BC(&v154 - v8);
  v9 = swift_checkMetadataState();
  sub_1BAC184D0();
  v162 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1BAC18C90();
  sub_1BAC18D80();
  MEMORY[0x1EEE9AC00](v12);
  sub_1BAC192BC(&v154 - v13);
  v158 = sub_1BAC38864();
  sub_1BAC184D0();
  v157 = v14;
  sub_1BAC18C48();
  MEMORY[0x1EEE9AC00](v15);
  sub_1BAC192BC(&v154 - v16);
  v17 = sub_1BAC383E4();
  sub_1BAC184D0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1BAC18C90();
  sub_1BAC18D80();
  MEMORY[0x1EEE9AC00](v21);
  sub_1BAC1AECC();
  sub_1BAC18D80();
  MEMORY[0x1EEE9AC00](v22);
  sub_1BAC1AECC();
  sub_1BAC18D80();
  MEMORY[0x1EEE9AC00](v23);
  sub_1BAC1AECC();
  sub_1BAC18D80();
  MEMORY[0x1EEE9AC00](v24);
  sub_1BAC1AECC();
  sub_1BAC18D80();
  MEMORY[0x1EEE9AC00](v25);
  sub_1BAC1AECC();
  sub_1BAC18D80();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v154 - v27;
  v170 = v3;
  v169 = v4;
  v29 = swift_getAssociatedTypeWitness();
  v171 = AssociatedConformanceWitness;
  v172 = v9;
  v156 = swift_getAssociatedConformanceWitness();
  v30 = swift_getAssociatedConformanceWitness();
  v31 = sub_1BAC19134();
  v174 = v32;
  v173 = v33;
  v33(v31, v30);
  v34 = sub_1BAC383D4();
  v35 = sub_1BAC38774();
  v36 = os_log_type_enabled(v34, v35);
  v177 = v30;
  v161 = AssociatedTypeWitness;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = v17;
    v39 = sub_1BAC1AD64();
    *&v185 = v39;
    *v37 = 136446210;
    v40 = sub_1BAC19134();
    v42 = v41(v40, v30);
    v44 = sub_1BAC1914C(v42, v43, &v185);

    *(v37 + 4) = v44;
    _os_log_impl(&dword_1BAC16000, v34, v35, "%{public}s BidirectionalDelegate: Got connection request.", v37, 0xCu);
    sub_1BAC1905C(v39);
    v17 = v38;
    sub_1BAC1ADA8();
    sub_1BAC1ADA8();

    v45 = *(v19 + 8);
    (v45)(v28, v38);
  }

  else
  {

    v45 = *(v19 + 8);
    (v45)(v28, v17);
  }

  swift_beginAccess();
  v46 = off_1ED76B748;
  v47 = v177;
  v48 = v176;
  if (off_1ED76B748)
  {
    v49 = qword_1ED76B750;

    v50 = v46(v48, v29, v47);
    sub_1BAC1ADCC(v46, v49);
    if ((v50 & 1) == 0)
    {
      v175 = v17;
      v67 = sub_1BAC18578();
      v68(v67);
      v69 = sub_1BAC383D4();
      v70 = sub_1BAC38774();
      if (sub_1BAC18C54(v70))
      {
        v71 = swift_slowAlloc();
        v72 = sub_1BAC1AD64();
        *&v185 = v72;
        *v71 = 136446210;
        v73 = sub_1BAC1AF40();
        v75 = v74(v73);
        v77 = sub_1BAC1914C(v75, v76, &v185);

        *(v71 + 4) = v77;
        _os_log_impl(&dword_1BAC16000, v69, v70, "%{public}s BidirectionalDelegate: Failed global enablement check. Rejecting connection.", v71, 0xCu);
        sub_1BAC1905C(v72);
        sub_1BAC1ADA8();
        sub_1BAC1ADA8();
      }

      sub_1BAC1AD20();
      v45();
      return 0;
    }
  }

  v51 = sub_1BAC1ADDC();
  v168 = v45;
  if (v51)
  {
    v52 = sub_1BAC1AF40();
    v54 = v53(v52);
    v56 = v55;
    v57 = v17;
    v58 = (*(v47 + 32))(v29, v47);
    v60 = v59;
    v61 = v167;
    sub_1BAC19038();
    v62();
    v63 = v58;
    v17 = v57;
    LOBYTE(v54) = sub_1BAC1AF64(v54, v56, v63, v60);

    v47 = v177;

    v45 = v168;
    (v168)(v61, v57);
    if ((v54 & 1) == 0)
    {
      return 0;
    }
  }

  swift_getAssociatedTypeWitness();
  v64 = v176;
  swift_getAssociatedConformanceWitness();
  v65 = static XPCService.xpcInterface()();
  [v64 setRemoteObjectInterface_];

  v66 = static XPCService.xpcInterface()();
  [v64 setExportedInterface_];

  if ((*(v171 + 64))())
  {
    v189 = 0u;
    v190 = 0u;
  }

  else
  {
    v78 = sub_1BAC38614();
    v79 = [v64 valueForEntitlement_];

    if (v79)
    {
      sub_1BAC38874();
      swift_unknownObjectRelease();
    }

    else
    {
      v185 = 0u;
      v186 = 0u;
    }

    v189 = v185;
    v190 = v186;
  }

  sub_1BAC1B270(&v189, &aBlock);
  if (v182)
  {
    if (swift_dynamicCast())
    {
      v165 = v178[0];
      v80 = v178[1];
      v81 = v163;
      v82 = sub_1BAC18578();
      v83(v82);

      v84 = v80;
      v85 = v47;
      v86 = sub_1BAC383D4();
      v87 = sub_1BAC38774();

      v88 = os_log_type_enabled(v86, v87);
      v164 = v84;
      if (v88)
      {
        v89 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        sub_1BAC194E4(v167);
        *v89 = 136446466;
        v90 = v84;
        v91 = sub_1BAC19134();
        v93 = v92(v91, v85);
        v95 = sub_1BAC1914C(v93, v94, &aBlock);

        *(v89 + 4) = v95;
        *(v89 + 12) = 2080;
        *(v89 + 14) = sub_1BAC1914C(v165, v90, &aBlock);
        _os_log_impl(&dword_1BAC16000, v86, v87, "%{public}s BidirectionalDelegate: clientApplicationIdentifier: %s", v89, 0x16u);
        swift_arrayDestroy();
        sub_1BAC1ADA8();
        sub_1BAC1ADA8();

        v96 = v163;
      }

      else
      {

        v96 = v81;
      }

      (v45)(v96, v17);
      v111 = v172;
      sub_1BAC178A4();
      sub_1BAC1B2E0();
      v187 = swift_getAssociatedTypeWitness();
      sub_1BAC366E8();
      v188 = swift_getAssociatedConformanceWitness();
      sub_1BAC1DAD4(&v186);
      sub_1BAC1DAC8();
      (*(v113 + 16))();
      *&v185 = v165;
      *(&v185 + 1) = v164;
      goto LABEL_30;
    }
  }

  else
  {
    sub_1BAC1FA18(&aBlock, &unk_1EBC257D0, &qword_1BAC3A350);
  }

  if (sub_1BAC35CD0())
  {
    v97 = v164;
    v98 = sub_1BAC18578();
    v99(v98);
    v100 = sub_1BAC383D4();
    v101 = sub_1BAC38754();
    if (sub_1BAC18C54(v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v175 = v17;
      sub_1BAC194E4(v103);
      *v102 = 136446466;
      v104 = sub_1BAC1AF40();
      v106 = v105(v104);
      v108 = sub_1BAC1914C(v106, v107, &aBlock);

      *(v102 + 4) = v108;
      *(v102 + 12) = 2082;
      *(v102 + 14) = sub_1BAC1914C(0xD000000000000016, 0x80000001BAC3B5F0, &aBlock);
      _os_log_impl(&dword_1BAC16000, v100, v101, "%{public}s BidirectionalDelegate: Client is missing '%{public}s' entitlement. This entitlement is required. Rejecting connection.", v102, 0x16u);
      swift_arrayDestroy();
      sub_1BAC1ADA8();
      sub_1BAC1ADA8();

      sub_1BAC1AD20();
    }

    else
    {

      v109 = v97;
      v110 = v17;
    }

    (v45)(v109, v110);
    sub_1BAC1FA18(&v189, &unk_1EBC257D0, &qword_1BAC3A350);
    return 0;
  }

  sub_1BAC178A4();
  sub_1BAC1B2E0();
  v111 = v172;
  v187 = swift_getAssociatedTypeWitness();
  sub_1BAC366E8();
  v188 = swift_getAssociatedConformanceWitness();
  sub_1BAC1DAD4(&v186);
  sub_1BAC1DAC8();
  (*(v112 + 16))();
  v185 = 0uLL;
LABEL_30:
  v114 = swift_allocBox();
  v116 = v115;
  sub_1BAC1DB34(&v185, &aBlock);
  v117 = *(v17 + 40);
  v118 = v176;
  v119 = v166;
  v176 = v118;
  v117(&aBlock);
  if (sub_1BAC1DA1C(v119, 1, v111) == 1)
  {
    (*(v157 + 8))(v119, v158);
    swift_deallocBox();
    v120 = sub_1BAC18578();
    v121(v120);
    v122 = sub_1BAC383D4();
    v123 = sub_1BAC38754();
    if (sub_1BAC18C54(v123))
    {
      v124 = swift_slowAlloc();
      v125 = sub_1BAC1AD64();
      sub_1BAC194E4(v125);
      *v124 = 136446210;
      v126 = sub_1BAC1AF40();
      v128 = v127(v126);
      v130 = sub_1BAC1914C(v128, v129, &aBlock);

      *(v124 + 4) = v130;
      _os_log_impl(&dword_1BAC16000, v122, v123, "%{public}s BidirectionalDelegate: connection rejected by server instance.", v124, 0xCu);
      sub_1BAC1905C(v125);
      sub_1BAC1ADA8();
      sub_1BAC1ADA8();
    }

    sub_1BAC1AD20();
    v168();
    sub_1BAC1FA18(&v189, &unk_1EBC257D0, &qword_1BAC3A350);
    sub_1BAC1FA70(&v185);
    return 0;
  }

  v165 = v114;
  v131 = v162;
  (*(v162 + 32))(v116, v119, v111);
  v132 = *(v131 + 16);
  v166 = v116;
  v164 = v132;
  v132(v159, v116, v111);
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCast())
  {
    v133 = aBlock;
    v134 = v156;
    v135 = *(v156 + 24);
    v136 = v176;
    swift_unknownObjectRetain();
    v137 = v160;
    v138 = v161;
    v135(v136, v133, v161, v134);
    v139 = 1;
    sub_1BAC1926C(v137, 0, 1, v138);
    (*(v171 + 80))(v137, v172);
    v140 = swift_allocObject();
    v141 = v169;
    v142 = v170;
    v140[2] = v169;
    v140[3] = v142;
    v143 = v165;
    v140[4] = v165;
    v183 = sub_1BAC366D4;
    v184 = v140;
    aBlock = MEMORY[0x1E69E9820];
    v180 = 1107296256;
    v181 = sub_1BAC1C330;
    v182 = &unk_1F38C9F80;
    v144 = _Block_copy(&aBlock);

    [v136 setInterruptionHandler_];
    _Block_release(v144);
    v145 = swift_allocObject();
    v145[2] = v141;
    v145[3] = v142;
    v145[4] = v143;
    v183 = sub_1BAC1EE48;
    v184 = v145;
    aBlock = MEMORY[0x1E69E9820];
    v180 = 1107296256;
    v181 = sub_1BAC1C330;
    v182 = &unk_1F38C9FD0;
    v146 = _Block_copy(&aBlock);

    [v136 setInvalidationHandler_];
    _Block_release(v146);
    v147 = v166;
    swift_beginAccess();
    v148 = v155;
    v149 = v147;
    v150 = v172;
    v164(v155, v149, v172);
    v151 = v150;
    v152 = sub_1BAC38A54();
    (*(v162 + 8))(v148, v151);
    [v136 setExportedObject_];
    swift_unknownObjectRelease();
    [v136 activate];
    swift_unknownObjectRelease();
    sub_1BAC1FA18(&v189, &unk_1EBC257D0, &qword_1BAC3A350);
    sub_1BAC1FA70(&v185);

    return v139;
  }

  result = sub_1BAC389B4();
  __break(1u);
  return result;
}

uint64_t sub_1BAC1ABD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BAC1AC10(uint64_t a1)
{
  v4 = *(v1 - 264);

  return sub_1BAC1926C(v4, 1, 1, a1);
}

uint64_t sub_1BAC1AC94()
{

  return swift_task_create();
}

uint64_t sub_1BAC1ACDC()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1BAC1AD2C()
{

  return swift_slowAlloc();
}

uint64_t sub_1BAC1AD64()
{

  return swift_slowAlloc();
}

void sub_1BAC1ADA8()
{

  JUMPOUT(0x1BFAFF600);
}

uint64_t sub_1BAC1ADCC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BAC1ADDC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v2 = sub_1BAC1ACDC();
  sub_1BAC17674();
  v3 = sub_1BAC1DAB0();
  if (v4(v3))
  {
    return 0;
  }

  else
  {
    return (*(v1 + 56))(v2, v1) & 1;
  }
}

uint64_t sub_1BAC1AEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_1BAC389B4();
}

uint64_t sub_1BAC1AF10(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_1BAC1AF64(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_1BAC38614();
  v10 = [v4 valueForEntitlement_];

  if (v10)
  {
    sub_1BAC38874();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (*(&v23 + 1))
  {
    if (swift_dynamicCast() && (v21 & 1) != 0)
    {
      v11 = v4;

      v12 = sub_1BAC383D4();
      v13 = sub_1BAC38774();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *&v24[0] = v15;
        *v14 = 136446466;
        *(v14 + 4) = sub_1BAC1914C(a1, a2, v24);
        *(v14 + 12) = 1026;
        *(v14 + 14) = [v11 processIdentifier];

        _os_log_impl(&dword_1BAC16000, v12, v13, "%{public}s Delegate: XPC connection for service from %{public}d", v14, 0x12u);
        sub_1BAC1905C(v15);
        sub_1BAC1ADA8();
        sub_1BAC1ADA8();
      }

      else
      {
      }

      return 1;
    }
  }

  else
  {
    sub_1BAC38094(v24);
  }

  v16 = v4;

  v17 = sub_1BAC383D4();
  v18 = sub_1BAC38754();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *&v24[0] = swift_slowAlloc();
    *v19 = 136446722;
    *(v19 + 4) = sub_1BAC1914C(a1, a2, v24);
    *(v19 + 12) = 1026;
    *(v19 + 14) = [v16 processIdentifier];

    *(v19 + 18) = 2082;
    *(v19 + 20) = sub_1BAC1914C(a3, a4, v24);
    _os_log_impl(&dword_1BAC16000, v17, v18, "%{public}s Delegate: Rejecting connection from %{public}d: lacking entitlement '%{public}s'", v19, 0x1Cu);
    swift_arrayDestroy();
    sub_1BAC1ADA8();
    sub_1BAC1ADA8();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1BAC1B270(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAC26FB4(&unk_1EBC257D0, &qword_1BAC3A350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void _s22ProactiveDaemonSupport21ReferenceCountedCacheV11getInstance2of4with7prewarm9keepAlivexxm_24InitializationParametersQzSbs8DurationVt0N5ErrorQzYKAA0deF6MemberRzlF(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v84 = a8;
  v86 = a4;
  v87 = a5;
  v77 = a3;
  v93 = a1;
  swift_getAssociatedTypeWitness();
  sub_1BAC184D0();
  v83 = v13;
  sub_1BAC18C48();
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v74 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1BAC184D0();
  v79 = v17;
  sub_1BAC18C48();
  v78 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v81 = &v74 - v20;
  sub_1BAC26FB4(&qword_1EBC25768, &qword_1BAC39D40);
  sub_1BAC18C48();
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v74 - v22;
  sub_1BAC1BE14((v8 + 1), v92, &qword_1EBC25770, &unk_1BAC39910);
  swift_getAssociatedConformanceWitness();
  v80 = AssociatedTypeWitness;
  sub_1BAC389E4();
  v91 = a6;
  v23 = *v8;
  v88 = &v91;
  os_unfair_lock_lock((v23 + 24));
  sub_1BAC1BF90((v23 + 16), v89);
  if (v9)
  {
    os_unfair_lock_unlock((v23 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v23 + 24));
    v24 = v89[0];
    v25 = *(v89[0] + 16);
    MEMORY[0x1EEE9AC00](v26);
    *(&v74 - 6) = a6;
    *(&v74 - 5) = a7;
    *(&v74 - 4) = v92;
    *(&v74 - 3) = v93;
    *(&v74 - 2) = a2;

    sub_1BAC17FE4(sub_1BAC20054, (&v74 - 8), v25, &unk_1F38C8B98, a6);
    v84 = v24;
    v82 = a6;
    v83 = a2;

    v29 = v89[0];
    v30 = v86;
    v76 = v89[0];
    v75 = a7;
    if (v77)
    {
      sub_1BAC18C6C(v27, v28, &qword_1EBC25770, &unk_1BAC39910);
      if (v90)
      {
        sub_1BAC1C910(v89, v90);
        v31 = sub_1BAC1ACFC();
        v32 = v82;
        v33(v31);
        sub_1BAC1905C(v89);
      }

      else
      {
        sub_1BAC1C8B0(v89, &qword_1EBC25770, &unk_1BAC39910);
        a2 = v83;
        v32 = v82;
      }

      v34 = sub_1BAC38724();
      v35 = sub_1BAC1AC10(v34);
      sub_1BAC18C6C(v35, v36, &qword_1EBC25770, &unk_1BAC39910);
      v37 = v79;
      v38 = v81;
      v39 = a2;
      a2 = v80;
      (*(v79 + 16))(v81, v39, v80);
      sub_1BAC190A8();
      v41 = v40 & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      v42[2] = 0;
      v42[3] = 0;
      v43 = v75;
      v42[4] = v32;
      v42[5] = v43;
      v44 = sub_1BAC18D10(v42);
      (*(v37 + 32))(v45 + v30, v38, a2, v44);
      v29 = v76;
      *(v42 + v41) = v76;
      swift_unknownObjectRetain();
      v46 = sub_1BAC1AD7C();
      sub_1BAC27408(v46, v47, v48, v49, v42);

      v30 = v86;
    }

    sub_1BAC38BD4();
    v50 = sub_1BAC38BC4();
    if (v50)
    {
      sub_1BAC18C6C(v50, v51, &qword_1EBC25770, &unk_1BAC39910);
      if (v90)
      {
        sub_1BAC1C910(v89, v90);
        v52 = sub_1BAC1ACFC();
        v53 = v82;
        v54(v52);
        sub_1BAC1905C(v89);
      }

      else
      {
        sub_1BAC1C8B0(v89, &qword_1EBC25770, &unk_1BAC39910);
        a2 = v83;
        v53 = v82;
      }

      v90 = v53;
      v89[0] = v29;
      sub_1BAC26FB4(&qword_1EBC25780, &unk_1BAC39920);
      v55 = swift_allocObject();
      v83 = v55;
      *(v55 + 48) = 0;
      sub_1BAC1BE14(v89, v55 + 16, &unk_1EBC257D0, &qword_1BAC3A350);
      swift_unknownObjectRetain();
      sub_1BAC1C8B0(v89, &unk_1EBC257D0, &qword_1BAC3A350);
      v56 = sub_1BAC38724();
      v57 = sub_1BAC1AC10(v56);
      sub_1BAC18C6C(v57, v58, &qword_1EBC25770, &unk_1BAC39910);
      v59 = v79;
      v60 = v80;
      (*(v79 + 16))(v81, a2, v80);
      sub_1BAC190A8();
      v62 = v61 & 0xFFFFFFFFFFFFFFF8;
      v63 = ((v61 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v64 = swift_allocObject();
      v64[2] = 0;
      v64[3] = 0;
      v65 = v75;
      v64[4] = v53;
      v64[5] = v65;
      v66 = sub_1BAC18D10(v64);
      (*(v59 + 32))(v67 + v30, v81, v60, v66);
      v68 = (v64 + v62);
      v69 = v87;
      *v68 = v86;
      v68[1] = v69;
      *(v64 + v63) = v83;
      *(v64 + ((v63 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
      swift_unknownObjectRetain();
      v70 = sub_1BAC1AD7C();
      sub_1BAC27408(v70, v71, v72, v73, v64);
    }

    sub_1BAC1C180(&v91);
    sub_1BAC1C8B0(v92, &qword_1EBC25770, &unk_1BAC39910);
  }
}

uint64_t sub_1BAC1BB14(uint64_t a1)
{
  sub_1BAC1DAA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1BAC184D0();
  v4 = v3;
  v5 = *(v3 + 80);
  swift_unknownObjectRelease();
  if (*(v1 + 72))
  {
    sub_1BAC1905C((v1 + 48));
  }

  sub_1BAC1AEB8();
  v7 = ((((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v1 + v8, AssociatedTypeWitness);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, v7 + 8, v5 | 7);
}

uint64_t sub_1BAC1BC08(uint64_t a1)
{
  sub_1BAC1DAA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1BAC184D0();
  v4 = v3;
  v5 = *(v3 + 80);
  swift_unknownObjectRelease();
  if (*(v1 + 72))
  {
    sub_1BAC1905C((v1 + 48));
  }

  sub_1BAC1AEB8();
  v7 = v6 & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v1 + v8, AssociatedTypeWitness);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, v7 + 8, v5 | 7);
}

uint64_t _s22ProactiveDaemonSupport21ReferenceCountedCacheV11getInstance2of7prewarm9keepAlivexxm_Sbs8DurationVt19InitializationErrorQzYKAA0deF6MemberRzAA14NullParametersV0nR0RtzlF(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v24[0] = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1BAC184D0();
  v15 = v14;
  sub_1BAC18C48();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v24 - v17;
  v19 = v24[3];
  _s22ProactiveDaemonSupport21ReferenceCountedCacheV11getInstance2of4with7prewarm9keepAlivexxm_24InitializationParametersQzSbs8DurationVt0N5ErrorQzYKAA0deF6MemberRzlF(a1, v20, a2, a3, a4, a5, a6, v24 - v17);
  v22 = v21;
  if (v19)
  {
    (*(v15 + 32))(v24[0], v18, AssociatedTypeWitness);
  }

  return v22;
}

uint64_t sub_1BAC1BE14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1BAC26FB4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BAC1BE7C(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1BAC1BFAC(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAC1BECC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  if (sub_1BAC1BE7C(a2, *a1))
  {
  }

  else
  {
    type metadata accessor for ReferenceCountedCache.WeakHolder();
    v7 = swift_allocObject();
    sub_1BAC26E40();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *a1;
    sub_1BAC31014(v7, a2, isUniquelyReferenced_nonNull_native);
    v6 = v10;
    *a1 = v10;
  }

  result = sub_1BAC1BE7C(a2, v6);
  if (result)
  {
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BAC1BFAC(uint64_t *a1)
{
  sub_1BAC38B24();
  MEMORY[0x1BFAFEE70](*a1);
  sub_1BAC388B4();
  v2 = sub_1BAC38B64();

  return sub_1BAC1C084(a1, v2);
}

unint64_t sub_1BAC1C084(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1 + 1;
    v7 = *a1;
    do
    {
      sub_1BAC1C028(*(v2 + 48) + 48 * v4, &v10);
      if (v10 == v7)
      {
        v8 = MEMORY[0x1BFAFEBD0](&v11, v6);
        sub_1BAC1C180(&v10);
        if (v8)
        {
          return v4;
        }
      }

      else
      {
        sub_1BAC1C180(&v10);
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t XPCServiceClientConnection.deinit()
{
  v1 = *(v0 + 16);
  sub_1BAC184B4();
  v9[2] = *(v2 + 80);
  sub_1BAC184B4();
  v10 = *(v3 + 88);
  v6 = type metadata accessor for XPCServiceClientConnection.State(0, v4, v10, v5);

  v7 = sub_1BAC26FB4(&qword_1EBC25960, &qword_1BAC3A7A0);
  sub_1BAC17FE4(sub_1BAC1C2DC, v9, v1, v6, v7);

  sub_1BAC1C288(v0 + 32);
  return v0;
}

uint64_t XPCServiceClientConnection.__deallocating_deinit()
{
  XPCServiceClientConnection.deinit();
  v0 = sub_1BAC19028();

  return MEMORY[0x1EEE6BDC0](v0);
}

id *sub_1BAC1C2DC@<X0>(id *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    result = [*result invalidate];
  }

  *a2 = v3 == 0;
  return result;
}

uint64_t sub_1BAC1C330(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1BAC1C384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v39 = a3;
  v40 = a2;
  v37 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v32 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  v32 = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v41[0] = Strong, (swift_dynamicCast() & 1) != 0))
  {
    v20 = v44;
    sub_1BAC1BE14(v40, v41, &qword_1EBC25770, &unk_1BAC39910);
    v21 = v42;
    if (v42)
    {
      v22 = v43;
      sub_1BAC1C910(v41, v42);
      (*(v22 + 8))(v39, a4, a5, a6, v21, v22);
      result = sub_1BAC1905C(v41);
    }

    else
    {
      result = sub_1BAC1C8B0(v41, &qword_1EBC25770, &unk_1BAC39910);
    }

    *v37 = v20;
  }

  else
  {
    v24 = a4;
    v33 = v7;
    sub_1BAC1BE14(v40, v41, &qword_1EBC25770, &unk_1BAC39910);
    v25 = v42;
    if (v42)
    {
      v26 = v43;
      sub_1BAC1C910(v41, v42);
      (*(v26 + 16))(v39, v24, a5, a6, v25, v26);
      sub_1BAC1905C(v41);
    }

    else
    {
      sub_1BAC1C8B0(v41, &qword_1EBC25770, &unk_1BAC39910);
    }

    sub_1BAC1BE14(v40, v41, &qword_1EBC25770, &unk_1BAC39910);
    v27 = v42;
    if (v42)
    {
      v28 = v43;
      sub_1BAC1C910(v41, v42);
      (*(v28 + 24))(v39, v24, a5, a6, v27, v28);
      sub_1BAC1905C(v41);
    }

    else
    {
      sub_1BAC1C8B0(v41, &qword_1EBC25770, &unk_1BAC39910);
    }

    (*(v16 + 16))(v18, v24, v15);
    v29 = v33;
    v30 = v38;
    v31 = (*(a6 + 56))(v18, v38, a5, a6);
    if (v29)
    {
      (*(v34 + 32))(v35, v30, AssociatedTypeWitness);
      return sub_1BAC1C7E4(v40, v39, v24, a5, a6);
    }

    else
    {
      *v37 = v31;
      swift_unknownObjectRetain();
      sub_1BAC1C7E4(v40, v39, v24, a5, a6);
      swift_unknownObjectWeakAssign();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1BAC1C7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BAC1BE14(a1, v12, &qword_1EBC25770, &unk_1BAC39910);
  v9 = v13;
  if (!v13)
  {
    return sub_1BAC1C8B0(v12, &qword_1EBC25770, &unk_1BAC39910);
  }

  v10 = v14;
  sub_1BAC1C910(v12, v13);
  (*(v10 + 32))(a2, a3, a4, a5, v9, v10);
  return sub_1BAC1905C(v12);
}

uint64_t sub_1BAC1C8B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1BAC26FB4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_1BAC1C910(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *ConcurrentLRUCache.init(cacheSize:)(uint64_t *result)
{
  v2 = *v1;
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v1[2] = result;
    type metadata accessor for ConcurrentLRUCache.Entry(255, v2[10], v2[11], v2[12]);
    swift_getTupleTypeMetadata2();
    sub_1BAC386A4();
    v4 = sub_1BAC38564();
    v3 = sub_1BAC38594();
    v1[3] = sub_1BAC17788(&v4, v3);
    return v1;
  }

  return result;
}

uint64_t sub_1BAC1CA78(uint64_t (*a1)(char *, uint64_t))
{
  v3 = v1;
  v67 = a1;
  v4 = *v1;
  v5 = sub_1BAC383E4();
  v66 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v65 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v54 - v8;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = v1[5];
    ObjectType = swift_getObjectType();
    (*(v10 + 32))(ObjectType, v10);
    if (v2)
    {
      return swift_unknownObjectRelease();
    }

    v64 = ObjectType;
    if (*v67)
    {
      return swift_unknownObjectRelease();
    }

    v12 = *(v4 + 80);
    v13 = *(v4 + 88);
    v58 = *(v13 + 48);
    v59 = v13 + 48;
    v58(v12, v13);
    v14 = sub_1BAC383D4();
    LODWORD(v60) = sub_1BAC38774();
    v61 = v14;
    v15 = os_log_type_enabled(v14, v60);
    v62 = v12;
    v63 = v13;
    v57 = v5;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v55 = v16;
      v56 = swift_slowAlloc();
      aBlock = v56;
      *v16 = 136446210;
      v17 = (*(v13 + 24))(v12, v13);
      v19 = sub_1BAC1914C(v17, v18, &aBlock);

      v20 = v55;
      *(v55 + 1) = v19;
      v21 = v61;
      _os_log_impl(&dword_1BAC16000, v61, v60, "%{public}s: establishing connection.", v20, 0xCu);
      v22 = v56;
      sub_1BAC1905C(v56);
      MEMORY[0x1BFAFF600](v22, -1, -1);
      MEMORY[0x1BFAFF600](v20, -1, -1);
    }

    else
    {
    }

    v23 = *(v66 + 8);
    v23(v9, v5);
    v24 = v3[3];
    if (v24)
    {
      v25 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
      v26 = v24;
      v61 = [v25 init];
      v27 = v62;
      v60 = *(v63 + 24);
      v60(v62);
      v28 = sub_1BAC38614();

      v29 = [v61 _initWithRemoteService:v26 name:v28 options:0];
    }

    else
    {
      sub_1BAC17C74();
      v27 = v62;
      v60 = *(v63 + 24);
      v30 = (v60)(v62);
      v29 = sub_1BAC17CB8(v30, v31, 0);
    }

    v32 = v29;
    *v67 = v32;
    if (v32)
    {
      v33 = v32;
      v34 = v63;
      v35 = static XPCService.xpcInterface()();
      [v33 setRemoteObjectInterface_];

      v36 = swift_allocObject();
      swift_weakInit();
      v37 = swift_allocObject();
      v37[2] = v27;
      v37[3] = v34;
      v37[4] = v36;
      v72 = sub_1BAC21C0C;
      v73 = v37;
      aBlock = MEMORY[0x1E69E9820];
      v69 = 1107296256;
      v70 = sub_1BAC1C330;
      v71 = &unk_1F38C9D20;
      v38 = _Block_copy(&aBlock);

      [v33 setInterruptionHandler_];
      _Block_release(v38);
      v39 = swift_allocObject();
      swift_weakInit();
      v40 = swift_allocObject();
      v40[2] = v62;
      v40[3] = v34;
      v40[4] = v39;
      v72 = sub_1BAC1C374;
      v73 = v40;
      aBlock = MEMORY[0x1E69E9820];
      v69 = 1107296256;
      v70 = sub_1BAC1C330;
      v71 = &unk_1F38C9D70;
      v41 = _Block_copy(&aBlock);

      [v33 setInvalidationHandler_];
      _Block_release(v41);
      (*(v10 + 40))(v33, v64, v10);
      [v33 activate];

      return swift_unknownObjectRelease();
    }

    v43 = v65;
    v44 = v63;
    v58(v27, v63);
    v45 = sub_1BAC383D4();
    v46 = sub_1BAC38754();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v67 = v23;
      v48 = v47;
      v64 = swift_slowAlloc();
      aBlock = v64;
      *v48 = 136446210;
      v49 = (v60)(v27, v44);
      v51 = v43;
      v52 = sub_1BAC1914C(v49, v50, &aBlock);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_1BAC16000, v45, v46, "%{public}s: did not create connection.", v48, 0xCu);
      v53 = v64;
      sub_1BAC1905C(v64);
      MEMORY[0x1BFAFF600](v53, -1, -1);
      MEMORY[0x1BFAFF600](v48, -1, -1);
      swift_unknownObjectRelease();

      return v67(v51, v57);
    }

    else
    {

      swift_unknownObjectRelease();
      return v23(v43, v57);
    }
  }

  else
  {
    result = sub_1BAC389B4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAC1D1E0()
{
  swift_weakDestroy();
  sub_1BAC1AE98();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BAC1D214()
{

  sub_1BAC1D5B8();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void XPCServiceClientConnection.call<A>(_:)()
{
  sub_1BAC194C0();
  v3 = v2;
  v36 = v4;
  v40 = v5;
  v7 = v6;
  sub_1BAC20CE4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 16);
  v37[2] = v14;
  v38 = v0;
  sub_1BAC184B4();
  v16 = *(v15 + 80);
  sub_1BAC184B4();
  v18 = *(v17 + 88);
  v19 = sub_1BAC19124();
  v23 = type metadata accessor for XPCServiceClientConnection.State(v19, v20, v21, v22);
  v24 = sub_1BAC17C74();
  sub_1BAC17E04(sub_1BAC1D59C, v37, v13, v23, v24);
  if (!v1)
  {
    v34 = v7;
    v35 = v9;
    v25 = v39[0];
    sub_1BAC1AE98();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v27 = swift_allocObject();
    v27[2] = v16;
    v27[3] = v3;
    v27[4] = v18;
    v27[5] = v26;
    v39[4] = sub_1BAC3230C;
    v39[5] = v27;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 1107296256;
    sub_1BAC19598();
    v39[2] = v28;
    v39[3] = &unk_1F38C9670;
    v29 = _Block_copy(v39);

    [v25 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v29);
    v30 = swift_unknownObjectRetain();
    v40(v30);
    sub_1BAC19504(v26 + 16, v39);
    v31 = *(v26 + 16);
    if (v31)
    {
      swift_willThrow();
      v32 = v31;

      swift_unknownObjectRelease();
      (*(v35 + 8))(v12, v3);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease_n();
      (*(v35 + 32))(v34, v12, v3);
    }
  }

  sub_1BAC35364();
}

uint64_t sub_1BAC1D538()
{
  sub_1BAC1AE98();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BAC1D56C()
{

  v0 = sub_1BAC19028();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void sub_1BAC1D5C4()
{
  sub_1BAC194C0();
  sub_1BAC353A4();
  sub_1BAC1CA78(v4);
  if (!v1)
  {
    v5 = *v3;
    if (*v3)
    {
      *v0 = v5;
      v6 = v5;
    }

    else
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v2 + 40);
        swift_getObjectType();
        v8 = *(v7 + 24);
        sub_1BAC19124();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v19[1] = v19;
        sub_1BAC184D0();
        sub_1BAC18C48();
        MEMORY[0x1EEE9AC00](v10);
        sub_1BAC18D70();
        swift_unknownObjectRetain();
        v11 = sub_1BAC1AF2C();
        v8(v11);
        sub_1BAC18DB8();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        sub_1BAC1FF14();
        if (sub_1BAC38A34())
        {
          v13 = sub_1BAC1FF14();
        }

        else
        {
          v17 = sub_1BAC3538C(AssociatedTypeWitness, AssociatedConformanceWitness);
          v13 = sub_1BAC1AD10(v17, v18);
        }

        v14(v13);
        sub_1BAC353DC();
      }

      else
      {
        v15 = sub_1BAC32604();
        sub_1BAC3538C(&type metadata for XPCServiceError, v15);
        *v16 = 0;
      }

      swift_willThrow();
    }
  }

  sub_1BAC35364();
}

uint64_t static Task<>.pds_xpcCallback<A>(priority:callback:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1BAC26FB4(&qword_1EBC25768, &qword_1BAC39D40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v17 - v12;
  v14 = sub_1BAC38724();
  sub_1BAC1926C(v13, 1, 1, v14);
  v15 = static Task<>.pds_xpcCallback<A>(discardUserInfoForErrors:priority:callback:body:)(0, v13, a2, a3, a4, a5, a6);
  sub_1BAC1DCC4(v13);
  return v15;
}

uint64_t static Task<>.pds_xpcCallback<A>(discardUserInfoForErrors:priority:callback:body:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1BAC26FB4(&qword_1EBC25768, &qword_1BAC39D40);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v19 - v15;
  sub_1BAC1D9AC(a2, &v19 - v15);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = a7;
  *(v17 + 40) = a5;
  *(v17 + 48) = a6;
  *(v17 + 56) = a3;
  *(v17 + 64) = a4;
  *(v17 + 72) = a1;

  return sub_1BAC27408(0, 0, v16, &unk_1BAC3A760, v17);
}

uint64_t sub_1BAC1D964()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1BAC1D9AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAC26FB4(&qword_1EBC25768, &qword_1BAC39D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAC1DA5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1BAC38634();
  v5 = a3(v4 + 32);

  return v5;
}

uint64_t *sub_1BAC1DAD4(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t *BidirectionalXPCServiceClientConnection.init(existingConnection:localObject:delegate:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = *v4;
  sub_1BAC17658();
  v4[3] = a1;
  LOBYTE(v16[0]) = 1;
  v10 = a1;
  swift_unknownObjectRetain();
  v14 = *(v9 + 96);
  v15 = *(v9 + 80);
  sub_1BAC17D34(v16, v17);
  v16[0] = v15;
  v16[1] = v14;
  v11 = type metadata accessor for BidirectionalXPCServiceClientConnection.State(0, v16);
  v4[2] = sub_1BAC17788(v17, v11);
  v4[5] = a4;
  swift_unknownObjectWeakAssign();
  v12 = v4[2];

  sub_1BAC17FE4(sub_1BAC17FFC, v4, v12, v11, MEMORY[0x1E69E7CA8] + 8);
  if (v6)
  {
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1BAC1DCC4(uint64_t a1)
{
  v2 = sub_1BAC26FB4(&qword_1EBC25768, &qword_1BAC39D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAC1DD2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BAC1EF60;

  return sub_1BAC1DE1C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BAC1DE1C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v16;
  *(v8 + 128) = a8;
  *(v8 + 48) = a6;
  v10 = sub_1BAC38864();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = *(v16 - 8);
  v11 = swift_task_alloc();
  *(v8 + 104) = v11;
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  *(v8 + 112) = v12;
  *v12 = v8;
  v12[1] = sub_1BAC1F058;

  return v14(v11);
}

uint64_t sub_1BAC1DFE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CancellableOSTransaction.init(_:onSIGTERM:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BAC26FB4(&qword_1EBC25768, &qword_1BAC39D40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  if (qword_1ED76BA40 != -1)
  {
    sub_1BAC18FBC(&qword_1ED76BA40);
  }

  v10 = qword_1ED76BB68;
  os_unfair_lock_lock((qword_1ED76BB68 + 28));
  sub_1BAC1E218(&v10[4]);
  os_unfair_lock_unlock(v10 + 7);
  sub_1BAC38634();
  v11 = os_transaction_create();

  if (v11)
  {

    type metadata accessor for CancellableOSTransaction.Holder();
    v13 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v13 + 112) = v11;
    *(v4 + 16) = v13;
    v14 = sub_1BAC38724();
    sub_1BAC1926C(v9, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a3;
    v15[5] = a4;
    v15[6] = v13;

    *(v4 + 24) = sub_1BAC2ADC8(0, 0, v9, &unk_1BAC39D50, v15);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAC1E1D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BAC1E218(uint64_t a1)
{
  v3 = sub_1BAC384D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BAC384F4();
  v8 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 255)
  {
    sub_1BAC2B414(0, &qword_1ED76BA20, 0x1E69E9630);
    aBlock[7] = v1;
    v12 = sub_1BAC387E4();
    swift_getObjectType();
    v15 = v3;
    aBlock[4] = sub_1BAC2AAC4;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BAC1C330;
    aBlock[3] = &unk_1F38C8EB8;
    v13 = _Block_copy(aBlock);
    sub_1BAC384E4();
    sub_1BAC2AA0C();
    sub_1BAC387F4();
    _Block_release(v13);
    (*(v4 + 8))(v6, v15);
    (*(v8 + 8))(v11, v7);
    result = sub_1BAC38814();
    *a1 = v12;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_1BAC1E49C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1BAC26FB4(a2, a3);
  sub_1BAC19294();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BAC1E4F0()
{
  sub_1BAC1AC34();
  v0 = swift_task_alloc();
  v1 = sub_1BAC193FC(v0);
  *v1 = v2;
  v3 = sub_1BAC18D2C(v1);

  return v4(v3);
}

uint64_t sub_1BAC1E584(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BAC20B5C;

  return v6(a1);
}

uint64_t sub_1BAC1E67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_1BAC26FB4(&qword_1EBC257A8, &qword_1BAC39E80);
  v6[6] = swift_task_alloc();
  v7 = sub_1BAC38834();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BAC1E858, 0, 0);
}

uint64_t sub_1BAC1E778(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = sub_1BAC193FC(v8);
  *v9 = v10;
  v9[1] = sub_1BAC20A00;

  return sub_1BAC1E67C(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_1BAC1E838(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 40) = v1;

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1BAC1E858()
{
  sub_1BAC1AC34();
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1ED76B808 != -1)
  {
    sub_1BAC19524(&qword_1ED76B808);
  }

  sub_1BAC38844();

  sub_1BAC38824();
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1BAC20078;
  v3 = *(v0 + 48);

  return sub_1BAC1E980(v3, 0, 0);
}

uint64_t sub_1BAC1E980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v5 = sub_1BAC38834();
  v6 = sub_1BAC1DFE0(&qword_1ED76B800, MEMORY[0x1E6969EF8], MEMORY[0x1E6969F00]);
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1BAC1FCE4;

  return MEMORY[0x1EEE6D8C8](a1, v5, v6);
}

uint64_t BidirectionalXPCServiceClientConnection.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *v4;
  return sub_1BAC17898(sub_1BAC1EABC);
}

uint64_t sub_1BAC1EABC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  *(v0 + 16) = *(v2 + 80);
  *(v0 + 32) = *(v2 + 96);
  v6 = type metadata accessor for BidirectionalXPCServiceClientConnection.State(0, v0 + 16);
  v7 = sub_1BAC17C74();
  sub_1BAC17E04(sub_1BAC1949C, v5, v4, v6, v7);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v15 = *(v0 + 64);

  v10 = *(v0 + 48);
  *(v0 + 104) = v10;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  *(v11 + 32) = v8;
  *(v11 + 40) = v15;
  swift_task_alloc();
  sub_1BAC353C4();
  *(v0 + 120) = v12;
  *v12 = v13;
  v12[1] = sub_1BAC207D0;
  sub_1BAC1AC40();

  return MEMORY[0x1EEE6DE38]();
}

void sub_1BAC1ECA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1BAC38864();
  v11 = swift_projectBox();
  swift_beginAccess();
  (*(*(v10 - 8) + 24))(v11, a1, v10);
  swift_beginAccess();
  v12 = *(a4 + 16);
  *(a4 + 16) = a2;
  v13 = a2;
}

uint64_t sub_1BAC1ED78()
{

  sub_1BAC1D5B8();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t BidirectionalXPCServiceClientConnection.__deallocating_deinit()
{
  BidirectionalXPCServiceClientConnection.deinit();
  v0 = sub_1BAC19028();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t BidirectionalXPCServiceClientConnection.deinit()
{
  [*(v0 + 24) setInterruptionHandler_];
  [*(v0 + 24) setInvalidationHandler_];
  [*(v0 + 24) invalidate];

  sub_1BAC1C288(v0 + 32);
  return v0;
}

uint64_t sub_1BAC1EE54()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  (*(v2 + 16))(v3, v1, v6);
  sub_1BAC1926C(v3, 0, 1, v6);
  v7(v3, 0);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1BAC1EF60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BAC1F058()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1BAC30080;
  }

  else
  {
    v2 = sub_1BAC1EE54;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BAC1F16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = &v24 - v5;
  v6 = sub_1BAC383E4();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_projectBox();
  v9 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  (*(v11 + 48))(v9, v11);
  v12 = sub_1BAC383D4();
  v13 = sub_1BAC38774();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v4;
    v16 = v15;
    v29[0] = v15;
    *v14 = 136446210;
    v17 = (*(v11 + 24))(v9, v11);
    v19 = sub_1BAC1914C(v17, v18, v29);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1BAC16000, v12, v13, "%{public}s BidirectionalDelegate: connection invalidated.", v14, 0xCu);
    sub_1BAC1905C(v16);
    v20 = v16;
    v4 = v24;
    MEMORY[0x1BFAFF600](v20, -1, -1);
    MEMORY[0x1BFAFF600](v14, -1, -1);
  }

  (*(v26 + 8))(v8, v27);
  v21 = v25;
  swift_beginAccess();
  v22 = v28;
  (*(v4 + 16))(v28, v21, AssociatedTypeWitness);
  (*(AssociatedConformanceWitness + 104))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v4 + 8))(v22, AssociatedTypeWitness);
}

uint64_t sub_1BAC1F520(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t, uint64_t (*)(), char *), uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v37 = a4;
  v34 = a1;
  v35 = a2;
  v9 = *a3;
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  v31 = a6;
  v10 = sub_1BAC386F4();
  v11 = *(v10 - 8);
  v30 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v33 = *(v11 + 16);
  v33(&v26 - v12, a1, v10);
  v14 = *(v11 + 80);
  v15 = swift_allocObject();
  v32 = v9[10];
  *(v15 + 2) = v32;
  v29 = v9[11];
  *(v15 + 3) = v29;
  *(v15 + 4) = a6;
  v28 = v9[12];
  *(v15 + 5) = v28;
  v27 = v9[13];
  *(v15 + 6) = v27;
  *(v15 + 7) = a3;
  v26 = *(v11 + 32);
  v26(&v15[(v14 + 64) & ~v14], v13, v10);
  aBlock[4] = sub_1BAC34F84;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAC3232C;
  aBlock[3] = &unk_1F38C9B40;
  v16 = _Block_copy(aBlock);

  v17 = [v35 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  v33(v13, v34, v10);
  v18 = (v14 + 56) & ~v14;
  v19 = (v30 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v29;
  *(v20 + 2) = v32;
  *(v20 + 3) = v21;
  v22 = v27;
  v23 = v28;
  *(v20 + 4) = v31;
  *(v20 + 5) = v23;
  *(v20 + 6) = v22;
  v26(&v20[v18], v13, v10);
  *&v20[v19] = a3;

  v24 = swift_unknownObjectRetain();
  v37(v24, sub_1BAC1FE5C, v20);

  return swift_unknownObjectRelease_n();
}

uint64_t sub_1BAC1F864()
{
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  sub_1BAC17634();
  v1 = sub_1BAC386F4();
  sub_1BAC184D0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1BAC1F940()
{
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  sub_1BAC17634();
  sub_1BAC386F4();
  sub_1BAC19294();
  v3 = *(v2 + 80);
  v4 = sub_1BAC1D278();
  v5(v4);

  return MEMORY[0x1EEE6BDD0](v0, v1 + 8, v3 | 7);
}

uint64_t MachIdentityToken.__deallocating_deinit()
{
  MachIdentityToken.deinit();
  v0 = sub_1BAC18FFC();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1BAC1FA18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1BAC26FB4(a2, a3);
  sub_1BAC178BC();
  sub_1BAC1DAC8();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BAC1FAA0(uint64_t a1)
{
  v2 = sub_1BAC26FB4(&qword_1EBC25870, &qword_1BAC3A3C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall Watchdog.complete()()
{
  v1 = (v0 + OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_deadline);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_deadline));
  v2 = *(sub_1BAC26FB4(&qword_1EBC25878, &qword_1BAC3A3C8) + 28);
  sub_1BAC1FAA0(v1 + v2);
  v3 = sub_1BAC38514();
  sub_1BAC1926C(v1 + v2, 1, 1, v3);

  os_unfair_lock_unlock(v1);
}

uint64_t MachIdentityToken.deinit()
{
  if (!mach_port_deallocate(*MEMORY[0x1E69E9A60], *(v0 + 16)))
  {
    return v0;
  }

  sub_1BAC1957C();
  sub_1BAC388D4();

  sub_1BAC1853C();
  sub_1BAC38A24();
  sub_1BAC190D4();

  sub_1BAC18D4C();
  result = sub_1BAC1AEF0("Fatal error", v2, v3, v4, v5, "ProactiveDaemonSupport/MachIdentityToken.swift", v6, v7, 73, v8);
  __break(1u);
  return result;
}

uint64_t CancellableOSTransaction.__deallocating_deinit()
{
  CancellableOSTransaction.deinit();
  v0 = sub_1BAC190C4();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t CancellableOSTransaction.deinit()
{

  sub_1BAC38734();

  return v0;
}

uint64_t sub_1BAC1FCE4()
{
  sub_1BAC1AC34();
  sub_1BAC194B4();
  v3 = v2;
  v4 = *(v2 + 24);
  v5 = *v1;
  sub_1BAC184E4();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (v4)
    {
      swift_getObjectType();
      v7 = sub_1BAC386C4();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v11 = sub_1BAC2AD28;
  }

  else
  {
    if (v4)
    {
      swift_getObjectType();
      v7 = sub_1BAC386C4();
      v9 = v10;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v11 = sub_1BAC1FF20;
  }

  return MEMORY[0x1EEE6DFA0](v11, v7, v9);
}

void sub_1BAC1FE5C()
{
  sub_1BAC1FB88();
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  sub_1BAC386F4();
  sub_1BAC17870();
  v0 = sub_1BAC35340();

  sub_1BAC20178(v0, v1, v2, v3, v4);
}

uint64_t static MachIdentityToken.newTokenForCurrentProcess()()
{
  v10 = *MEMORY[0x1E69E9840];
  token = 0;
  if (task_create_identity_token(*MEMORY[0x1E69E9A60], &token))
  {
    sub_1BAC1957C();
    sub_1BAC388D4();

    sub_1BAC38A24();
    sub_1BAC190D4();

    sub_1BAC18D4C();
    result = sub_1BAC1AEF0("Fatal error", v2, v3, v4, v5, "ProactiveDaemonSupport/MachIdentityToken.swift", v6, v7, 38, v8);
    __break(1u);
  }

  else
  {
    v0 = token;
    sub_1BAC18FFC();
    result = swift_allocObject();
    if (!v0)
    {
      __break(1u);
    }

    *(result + 16) = v0;
  }

  return result;
}

__n128 sub_1BAC20044(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BAC20078()
{
  sub_1BAC1AEE4();
  sub_1BAC194B4();
  v2 = *v1;
  sub_1BAC184E4();
  *v3 = v2;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BAC208DC, 0, 0);
  }

  return result;
}

void sub_1BAC20178(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35[2] = a3;
  v9 = sub_1BAC38864();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v35 - v12;
  v14 = *(a5 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v35 - v18;
  if (a2)
  {
    v20 = a2;
    v21 = sub_1BAC382E4();
    v22 = NSError.pds_unlaunderSimpleNSError()();

    if (v22)
    {
      v36 = v22;
      v23 = v22;
      sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
      sub_1BAC386F4();
      sub_1BAC386D4();

      return;
    }

    v36 = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a1, v9);
    if (sub_1BAC1DA1C(v13, 1, a5) != 1)
    {
      (*(v14 + 32))(v19, v13, a5);
      (*(v14 + 16))(v17, v19, a5);
      sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
      sub_1BAC386F4();
      sub_1BAC386E4();
      (*(v14 + 8))(v19, a5);
      return;
    }

    (*(v10 + 8))(v13, v9);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = *(a4 + 40);
      ObjectType = swift_getObjectType();
      LOBYTE(v36) = 2;
      v26 = *(v24 + 24);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v35[1] = v35;
      v28 = *(AssociatedTypeWitness - 8);
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v30 = v35 - v29;
      swift_unknownObjectRetain();
      v26(&v36, ObjectType, v24);
      swift_getAssociatedConformanceWitness();
      v31 = sub_1BAC38A34();
      if (v31)
      {
        v32 = v31;
        (*(v28 + 8))(v30, AssociatedTypeWitness);
      }

      else
      {
        v32 = swift_allocError();
        (*(v28 + 32))(v34, v30, AssociatedTypeWitness);
      }

      swift_unknownObjectRelease_n();
    }

    else
    {
      sub_1BAC32604();
      v32 = swift_allocError();
      *v33 = 2;
    }

    v36 = v32;
  }

  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  sub_1BAC386F4();
  sub_1BAC386D4();
}

uint64_t AuditToken.encode(to:)(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v20 = a5;
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v17 = HIDWORD(a2);
  v18 = HIDWORD(a3);
  v23 = *MEMORY[0x1E69E9840];
  v19 = HIDWORD(a4);
  v21 = HIDWORD(a5);
  v9 = sub_1BAC26FB4(&qword_1EBC25898, &qword_1BAC3A438);
  sub_1BAC184D0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  sub_1BAC1C910(a1, a1[3]);
  sub_1BAC20C90();
  sub_1BAC38BA4();
  v22[0] = v7;
  v22[1] = v17;
  v22[2] = v6;
  v22[3] = v18;
  v22[4] = v5;
  v22[5] = v19;
  v22[6] = v20;
  v22[7] = v21;
  sub_1BAC20CF8(v22);
  return (*(v11 + 8))(v14, v9);
}

uint64_t sub_1BAC207D0()
{
  sub_1BAC1AEE4();
  sub_1BAC194B4();
  v3 = v2;
  v4 = *v1;
  sub_1BAC184E4();
  *v5 = v4;
  *(v3 + 128) = v0;

  if (v0)
  {
    v6 = sub_1BAC33F18;
  }

  else
  {

    v6 = sub_1BAC20B00;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BAC208DC()
{
  sub_1BAC1AEE4();
  v1 = *(v0 + 48);
  v2 = sub_1BAC382D4();
  if (sub_1BAC1DA1C(v1, 1, v2) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
LABEL_5:

    sub_1BAC194D8();

    return v4();
  }

  (*(v0 + 24))();
  if (*(v0 + 88))
  {
    v3 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    sub_1BAC1E49C(v3, &qword_1EBC257A8, &qword_1BAC39E80);
    goto LABEL_5;
  }

  v6 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1BAC2AC28, v6, 0);
}

uint64_t sub_1BAC20A00()
{
  sub_1BAC1AEE4();
  sub_1BAC194B4();
  v1 = *v0;
  sub_1BAC184E4();
  *v2 = v1;

  sub_1BAC194D8();

  return v3();
}

uint64_t sub_1BAC20B00()
{
  sub_1BAC1AEE4();

  sub_1BAC194D8();

  return v1();
}

uint64_t sub_1BAC20B5C()
{
  sub_1BAC1AEE4();
  sub_1BAC194B4();
  v1 = *v0;
  sub_1BAC184E4();
  *v2 = v1;

  sub_1BAC194D8();

  return v3();
}

uint64_t sub_1BAC20C58()
{
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1BAC20C90()
{
  result = qword_1EBC254A0;
  if (!qword_1EBC254A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC254A0);
  }

  return result;
}

uint64_t sub_1BAC20CF8(uint64_t a1)
{
  v3 = sub_1BAC20D84(a1, a1 + 32);
  v4 = v1;
  sub_1BAC26FB4(&qword_1EBC25898, &qword_1BAC3A438);
  sub_1BAC20E40();
  sub_1BAC38A14();
  return sub_1BAC20F70(v3, v4);
}

uint64_t sub_1BAC20D84(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_1BAC1C910(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1BAC38304();
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = MEMORY[0x1BFAFE640]();
    }

    else
    {
      v6 = MEMORY[0x1BFAFE650]();
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1BAC1905C(v8);
  return v6;
}

unint64_t sub_1BAC20E40()
{
  result = qword_1EBC25358[0];
  if (!qword_1EBC25358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBC25358);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AuditToken.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1BAC20F34);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BAC20F70(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void *sub_1BAC20FC8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = AuditToken.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void *AuditToken.init(from:)(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = sub_1BAC26FB4(&qword_1EBC25890, &qword_1BAC3A430);
  sub_1BAC184D0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v13 - v7;
  v9 = sub_1BAC1C910(a1, a1[3]);
  sub_1BAC20C90();
  sub_1BAC38B84();
  if (!v1)
  {
    sub_1BAC21208();
    sub_1BAC38A04();
    v11 = v16;
    v12 = v17;
    memset(v13, 0, sizeof(v13));
    v14 = v16;
    v15 = v17;
    sub_1BAC2125C();
    sub_1BAC382C4();
    (*(v5 + 8))(v8, v3);
    sub_1BAC20F70(v11, v12);
    v9 = *&v13[0];
  }

  sub_1BAC1905C(a1);
  return v9;
}

unint64_t sub_1BAC21208()
{
  result = qword_1EBC25350;
  if (!qword_1EBC25350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25350);
  }

  return result;
}

unint64_t sub_1BAC2125C()
{
  result = qword_1EBC25348;
  if (!qword_1EBC25348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25348);
  }

  return result;
}

uint64_t Watchdog.init(name:duration:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v35 = a3;
  v7 = sub_1BAC26FB4(&qword_1EBC25870, &qword_1BAC3A3C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v32 = &v30 - v8;
  v9 = sub_1BAC26FB4(&qword_1EBC25878, &qword_1BAC3A3C8);
  v10 = v9 - 8;
  v33 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v30 - v11);
  v13 = sub_1BAC38514();
  sub_1BAC184D0();
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v30 - v20;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v22 = OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_logger;
  v23 = sub_1BAC383E4();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v4 + v22, v34, v23);
  sub_1BAC38504();
  MEMORY[0x1BFAFE850](v19, v35);
  v31 = *(v15 + 8);
  v31(v19, v13);
  v25 = v32;
  (*(v15 + 16))(v32, v21, v13);
  sub_1BAC1926C(v25, 0, 1, v13);
  *v12 = 0;
  v26 = *(v10 + 36);
  v27 = sub_1BAC26FB4(&qword_1EBC25880, &qword_1BAC3A3D0);
  bzero(v12 + v26, *(*(v27 - 8) + 64));
  sub_1BAC21608(v25, v12 + v26);
  memcpy((v4 + OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_deadline), v12, v33);
  sub_1BAC21678(v21);
  (*(v24 + 8))(v34, v23);
  sub_1BAC384C4();
  sub_1BAC19294();
  (*(v28 + 8))(v35);
  v31(v21, v13);
  return v4;
}

uint64_t sub_1BAC21608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAC26FB4(&qword_1EBC25870, &qword_1BAC3A3C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAC21678(uint64_t a1)
{
  v2 = sub_1BAC384D4();
  v18 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BAC384F4();
  v5 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BAC38514();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBC25230 != -1)
  {
    swift_once();
  }

  v17[1] = qword_1EBC25238;
  (*(v9 + 16))(v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = *(v9 + 80);
  v17[0] = a1;
  v13 = (v12 + 24) & ~v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v19;
  (*(v9 + 32))(v14 + v13, v11, v8);
  aBlock[4] = sub_1BAC2F16C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAC1C330;
  aBlock[3] = &unk_1F38C93C8;
  v15 = _Block_copy(aBlock);

  sub_1BAC384E4();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1BAC21B20(&qword_1ED76BA38, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BAC26FB4(&unk_1EBC257B0, &qword_1BAC39E98);
  sub_1BAC21B68(&qword_1ED76BA28, &unk_1EBC257B0, &qword_1BAC39E98);
  sub_1BAC38884();
  MEMORY[0x1BFAFEAD0](v17[0], v7, v4, v15);
  _Block_release(v15);
  (*(v18 + 8))(v4, v2);
  (*(v5 + 8))(v7, v20);
}

uint64_t sub_1BAC21A38()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1BAC26FB4(&qword_1EBC25878, &qword_1BAC3A3C8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1BAC21A68()
{
  v1 = sub_1BAC38514();
  sub_1BAC184D0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1BAC21B20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BAC21B68(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BAC2B39C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAC21BBC(uint64_t a1)
{
  v5 = a1;
  sub_1BAC19564();
  v6 = v1;
  v7 = v2;
  return v3(&v5);
}

uint64_t sub_1BAC21C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BAC383E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 48))(a2, a3);
  v10 = sub_1BAC383D4();
  v11 = sub_1BAC38754();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20[0] = v6;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20[1] = v3;
    v15 = v14;
    v21 = v14;
    *v13 = 136446210;
    v16 = (*(a3 + 24))(a2, a3);
    v18 = sub_1BAC1914C(v16, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1BAC16000, v10, v11, "%{public}s: Connection to XPC Server interrupted.", v13, 0xCu);
    sub_1BAC1905C(v15);
    MEMORY[0x1BFAFF600](v15, -1, -1);
    MEMORY[0x1BFAFF600](v13, -1, -1);

    return (*(v7 + 8))(v9, v20[0]);
  }

  else
  {

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1BAC21E48(uint64_t a1, void *a2)
{
  v160 = a2;
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v143 = sub_1BAC38864();
  sub_1BAC184D0();
  v142 = v6;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v150 = &v139 - v9;
  v159 = AssociatedTypeWitness;
  v146 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v145 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v153 = &v139 - v12;
  v156 = sub_1BAC383E4();
  sub_1BAC184D0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1BAC18D80();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v139 - v18;
  MEMORY[0x1EEE9AC00](v17);
  sub_1BAC18D80();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v139 - v22;
  MEMORY[0x1EEE9AC00](v21);
  sub_1BAC18D80();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v139 - v25;
  v27 = swift_getAssociatedTypeWitness();
  v155 = v3;
  v154 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = sub_1BAC19140();
  v158 = v30;
  v157 = v31;
  v31(v29, AssociatedConformanceWitness);
  v32 = sub_1BAC383D4();
  v33 = sub_1BAC38774();
  v34 = os_log_type_enabled(v32, v33);
  v144 = v19;
  v147 = v23;
  if (v34)
  {
    swift_slowAlloc();
    v35 = sub_1BAC1AD2C();
    *&v169 = v35;
    *v3 = 136446210;
    v36 = sub_1BAC1AF50();
    v38 = v37(v36, AssociatedConformanceWitness);
    v40 = v27;
    v41 = AssociatedConformanceWitness;
    v42 = v14;
    v43 = sub_1BAC1914C(v38, v39, &v169);

    *(v3 + 4) = v43;
    v14 = v42;
    AssociatedConformanceWitness = v41;
    v27 = v40;
    _os_log_impl(&dword_1BAC16000, v32, v33, "%{public}s Delegate: Got connection request.", v3, 0xCu);
    sub_1BAC1905C(v35);
    sub_1BAC1ADA8();
    sub_1BAC1ADA8();
  }

  v44 = *(v14 + 8);
  v45 = v26;
  v46 = v156;
  v44(v45, v156);
  swift_beginAccess();
  v47 = off_1ED76B748;
  v48 = v159;
  v49 = v160;
  if (off_1ED76B748)
  {
    v50 = qword_1ED76B750;

    v51 = (v47)(v49, v27, AssociatedConformanceWitness);
    sub_1BAC1ADCC(v47, v50);
    if ((v51 & 1) == 0)
    {
      v66 = v149;
      sub_1BAC19140();
      sub_1BAC195B8();
      v67();
      v68 = sub_1BAC383D4();
      v69 = sub_1BAC38774();
      if (os_log_type_enabled(v68, v69))
      {
        swift_slowAlloc();
        v70 = sub_1BAC1AD2C();
        *&v169 = v70;
        *v47 = 136446210;
        v71 = sub_1BAC1AF50();
        v73 = v72(v71);
        v75 = v66;
        v76 = sub_1BAC1914C(v73, v74, &v169);

        *(v47 + 4) = v76;
        _os_log_impl(&dword_1BAC16000, v68, v69, "%{public}s Delegate: Failed global enablement check. Rejecting connection.", v47, 0xCu);
        sub_1BAC1905C(v70);
        sub_1BAC1ADA8();
        sub_1BAC1ADA8();

        v77 = v75;
      }

      else
      {

        v77 = v66;
      }

      v44(v77, v46);
      return 0;
    }
  }

  if (sub_1BAC23650())
  {
    v52 = sub_1BAC1AF50();
    v53(v52, AssociatedConformanceWitness);
    (*(AssociatedConformanceWitness + 32))(v27, AssociatedConformanceWitness);
    v55 = v54;
    v149 = v44;
    v56 = v46;
    v57 = v152;
    sub_1BAC195B8();
    v58();
    sub_1BAC1ADC0();
    v48 = v159;
    v62 = sub_1BAC1AF64(v59, v60, v61, v55);

    v49 = v160;

    v63 = v57;
    v46 = v56;
    v44 = v149;
    v149(v63, v46);
    if ((v62 & 1) == 0)
    {
      return 0;
    }
  }

  v141 = v14;
  v152 = AssociatedConformanceWitness;
  v64 = static XPCService.xpcInterface()();
  [v49 setExportedInterface_];

  v65 = swift_getAssociatedConformanceWitness();
  if ((*(v65 + 48))(v48, v65))
  {
    v173 = 0u;
    v174 = 0u;
  }

  else
  {
    v78 = sub_1BAC38614();
    v79 = [v49 valueForEntitlement_];

    if (v79)
    {
      sub_1BAC38874();
      swift_unknownObjectRelease();
    }

    else
    {
      v169 = 0u;
      v170 = 0u;
    }

    v173 = v169;
    v174 = v170;
  }

  sub_1BAC1B270(&v173, &aBlock);
  if (v166)
  {
    if (swift_dynamicCast())
    {
      v149 = v161;
      v80 = v162;
      v81 = v147;
      sub_1BAC19140();
      v82 = v152;
      sub_1BAC195B8();
      v83();

      v84 = v80;
      v85 = sub_1BAC383D4();
      v86 = sub_1BAC38774();

      v87 = os_log_type_enabled(v85, v86);
      v148 = v84;
      if (v87)
      {
        v88 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        aBlock = v140;
        *v88 = 136446466;
        v89 = v84;
        v90 = sub_1BAC19140();
        v92 = v91(v90, v82);
        v94 = sub_1BAC1914C(v92, v93, &aBlock);

        *(v88 + 4) = v94;
        *(v88 + 12) = 2082;
        *(v88 + 14) = sub_1BAC1914C(v149, v89, &aBlock);
        _os_log_impl(&dword_1BAC16000, v85, v86, "%{public}s Delegate: clientApplicationIdentifier: %{public}s", v88, 0x16u);
        swift_arrayDestroy();
        sub_1BAC1ADA8();
        sub_1BAC1ADA8();

        sub_1BAC1904C();
        v95 = v147;
      }

      else
      {

        sub_1BAC1904C();
        v95 = v81;
      }

      v46 = v156;
      v44(v95, v156);
      v48 = v159;
      v171 = swift_getAssociatedTypeWitness();
      sub_1BAC1AED8();
      v172 = swift_getAssociatedConformanceWitness();
      sub_1BAC1DAD4(&v170);
      sub_1BAC1DAC8();
      (*(v109 + 16))();
      *&v169 = v149;
      *(&v169 + 1) = v148;
      goto LABEL_30;
    }
  }

  else
  {
    sub_1BAC38094(&aBlock);
  }

  if (sub_1BAC37618())
  {
    v96 = v148;
    sub_1BAC19140();
    v97 = v152;
    sub_1BAC195B8();
    v98();
    v99 = sub_1BAC383D4();
    v100 = sub_1BAC38754();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v101 = 136446466;
      v102 = sub_1BAC1AF50();
      v104 = v103(v102, v97);
      v106 = sub_1BAC1914C(v104, v105, &aBlock);

      *(v101 + 4) = v106;
      *(v101 + 12) = 2082;
      *(v101 + 14) = sub_1BAC1914C(0xD000000000000016, 0x80000001BAC3B5F0, &aBlock);
      _os_log_impl(&dword_1BAC16000, v99, v100, "%{public}s Delegate: Client is missing '%{public}s' entitlement. This entitlement is required. Rejecting connection.", v101, 0x16u);
      swift_arrayDestroy();
      sub_1BAC1ADA8();
      sub_1BAC1ADA8();

      sub_1BAC1904C();
      v107 = v148;
    }

    else
    {

      sub_1BAC1904C();
      v107 = v96;
    }

    v44(v107, v46);
    sub_1BAC38094(&v173);
    return 0;
  }

  v171 = swift_getAssociatedTypeWitness();
  sub_1BAC1AED8();
  v172 = swift_getAssociatedConformanceWitness();
  sub_1BAC1DAD4(&v170);
  sub_1BAC1DAC8();
  (*(v108 + 16))();
  v169 = 0uLL;
LABEL_30:
  sub_1BAC23718(&v169, &aBlock);
  v110 = *(v65 + 24);
  v111 = v160;
  v112 = v150;
  v110(&aBlock, v111, v48, v65);
  if (sub_1BAC1DA1C(v112, 1, v48) == 1)
  {
    (*(v142 + 8))(v112, v143);
    v113 = v144;
    sub_1BAC19140();
    v114 = v152;
    sub_1BAC195B8();
    v115();
    v116 = sub_1BAC383D4();
    v117 = sub_1BAC38754();
    if (os_log_type_enabled(v116, v117))
    {
      swift_slowAlloc();
      v118 = sub_1BAC1AD2C();
      aBlock = v118;
      *v112 = 136446210;
      v119 = sub_1BAC1AF50();
      v121 = v120(v119, v114);
      v123 = sub_1BAC1914C(v121, v122, &aBlock);

      *(v112 + 4) = v123;
      _os_log_impl(&dword_1BAC16000, v116, v117, "%{public}s Delegate: connection rejected by server instance.", v112, 0xCu);
      sub_1BAC1905C(v118);
      sub_1BAC1ADA8();
      sub_1BAC1ADA8();
    }

    sub_1BAC1904C();
    v44(v113, v46);
    sub_1BAC38094(&v173);
    sub_1BAC380FC(&v169);
    return 0;
  }

  v125 = v112;
  v126 = v48;
  v127 = v146;
  v128 = *(v146 + 32);
  v129 = v153;
  v128(v153, v125, v48);
  v130 = v128;
  v159 = v128;
  v160 = *(v127 + 16);
  v131 = v145;
  (v160)(v145, v129, v48);
  v132 = sub_1BAC18CA4(&unk_1F38CA2A8);
  v133 = sub_1BAC19458(v132);
  v130(v133);
  v167 = sub_1BAC3812C;
  v168 = v129;
  aBlock = MEMORY[0x1E69E9820];
  v164 = 1107296256;
  v165 = sub_1BAC1C330;
  v166 = &unk_1F38CA2C0;
  v134 = _Block_copy(&aBlock);

  [v111 setInterruptionHandler_];
  _Block_release(v134);
  (v160)(v131, v153, v48);
  v135 = sub_1BAC18CA4(&unk_1F38CA2F8);
  v136 = sub_1BAC19458(v135);
  v159(v136);
  v167 = sub_1BAC381D8;
  v168 = v134;
  aBlock = MEMORY[0x1E69E9820];
  v164 = 1107296256;
  v165 = sub_1BAC1C330;
  v166 = &unk_1F38CA310;
  v137 = _Block_copy(&aBlock);

  [v111 setInvalidationHandler_];
  _Block_release(v137);
  v138 = v153;
  [v111 setExportedObject_];
  swift_unknownObjectRelease();
  [v111 activate];
  (*(v127 + 8))(v138, v126);
  sub_1BAC38094(&v173);
  sub_1BAC380FC(&v169);
  return 1;
}

uint64_t ConcurrentLRUCache.__deallocating_deinit()
{
  ConcurrentLRUCache.deinit();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t XPCServiceClientConnection.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = *v4;
  return sub_1BAC17898(sub_1BAC22FF0);
}

uint64_t sub_1BAC22FF0()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v2 + 16);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v7 = type metadata accessor for XPCServiceClientConnection.State(0, *(v1 + 80), *(v1 + 88), v6);
  v8 = sub_1BAC17C74();
  sub_1BAC17E04(sub_1BAC2318C, v5, v4, v7, v8);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v16 = *(v0 + 32);

  v11 = *(v0 + 16);
  *(v0 + 72) = v11;
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  *(v12 + 32) = v16;
  *(v12 + 48) = v9;
  swift_task_alloc();
  sub_1BAC353C4();
  *(v0 + 88) = v13;
  *v13 = v14;
  v13[1] = sub_1BAC32658;
  sub_1BAC1AC40();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1BAC231BC(uint64_t a1, void *a2, void (*a3)(id, uint64_t (*)(), char *), uint64_t a4, void *a5, uint64_t a6)
{
  v34 = a4;
  v35 = a3;
  v32 = a1;
  v33 = a2;
  v9 = *a5;
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  v29 = a6;
  v10 = sub_1BAC386F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v31 = *(v11 + 16);
  v31(&v26 - v13, a1, v10);
  v15 = *(v11 + 80);
  v27 = ((v15 + 40) & ~v15) + v12;
  v16 = (v15 + 40) & ~v15;
  v17 = swift_allocObject();
  v30 = a5;
  v28 = *(v9 + 80);
  *(v17 + 2) = v28;
  *(v17 + 3) = a6;
  v18 = *(v9 + 88);
  *(v17 + 4) = v18;
  v19 = *(v11 + 32);
  v19(&v17[v16], v14, v10);
  aBlock[4] = sub_1BAC35160;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAC3232C;
  aBlock[3] = &unk_1F38C9C80;
  v20 = _Block_copy(aBlock);

  v21 = [v33 remoteObjectProxyWithErrorHandler_];
  _Block_release(v20);
  v31(v14, v32, v10);
  v22 = (v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v29;
  *(v23 + 2) = v28;
  *(v23 + 3) = v24;
  *(v23 + 4) = v18;
  v19(&v23[v16], v14, v10);
  *&v23[v22] = v30;
  swift_unknownObjectRetain();

  v35(v21, sub_1BAC35218, v23);

  return swift_unknownObjectRelease_n();
}

uint64_t sub_1BAC234A4()
{
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  sub_1BAC17634();
  sub_1BAC386F4();
  sub_1BAC19294();
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BAC23544()
{
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  sub_1BAC17634();
  sub_1BAC386F4();
  sub_1BAC19294();
  v3 = *(v2 + 80);
  v4 = sub_1BAC1D278();
  v5(v4);

  return MEMORY[0x1EEE6BDD0](v0, v1 + 8, v3 | 7);
}

uint64_t sub_1BAC235F0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_1BAC21E48(v8, v7);

  return v9 & 1;
}

uint64_t sub_1BAC23650()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v2 = sub_1BAC1ACDC();
  sub_1BAC1AED8();
  swift_getAssociatedConformanceWitness();
  v3 = sub_1BAC1AC7C();
  if (v4(v3))
  {
    return 0;
  }

  else
  {
    return (*(v1 + 40))(v2, v1) & 1;
  }
}

void sub_1BAC23760(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1BAC38864();
  v10 = swift_projectBox();
  swift_beginAccess();
  (*(*(v9 - 8) + 24))(v10, a1, v9);
  swift_beginAccess();
  v11 = *(a4 + 16);
  *(a4 + 16) = a2;
  v12 = a2;
}

void XPCServiceClientConnection.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1BAC194C0();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v90 = v28;
  v91 = v27;
  v30 = v29;
  v31 = *v24;
  v93 = sub_1BAC38864();
  sub_1BAC184D0();
  v33 = v32;
  sub_1BAC18C48();
  MEMORY[0x1EEE9AC00](v34);
  v36 = v83 - v35;
  v37 = v24[2];
  v92 = v26;
  v94[2] = v26;
  v94[3] = v24;
  v38 = *(v31 + 80);
  v39 = *(v31 + 88);
  v40 = sub_1BAC17634();
  v43 = type metadata accessor for XPCServiceClientConnection.State(v40, v41, v39, v42);
  v44 = sub_1BAC17C74();
  sub_1BAC17E04(sub_1BAC2318C, v94, v37, v43, v44);
  if (!v21)
  {
    v85 = v33;
    v86 = v36;
    v83[0] = v30;
    v83[1] = 0;
    v45 = v97[0];
    sub_1BAC1AE98();
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    v87 = (v46 + 16);
    v47 = swift_allocObject();
    v48 = v92;
    v47[2] = v38;
    v47[3] = v48;
    v47[4] = v39;
    v47[5] = v46;
    sub_1BAC1940C(v47);
    v97[1] = 1107296256;
    sub_1BAC19598();
    v97[2] = v49;
    v97[3] = &unk_1F38C96C0;
    v50 = _Block_copy(v97);
    v88 = v46;

    v89 = v45;
    v51 = [v45 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v50);
    v52 = swift_allocBox();
    sub_1BAC195CC(v53, v53, &a13);
    sub_1BAC1AE98();
    v54 = swift_allocObject();
    *(v54 + 16) = 0;
    v55 = (v54 + 16);
    v56 = swift_allocObject();
    v56[2] = v38;
    v56[3] = v48;
    v56[4] = v39;
    v56[5] = v52;
    v57 = v54;
    v58 = v52;
    v56[6] = v57;
    swift_unknownObjectRetain();

    v91(v51, sub_1BAC23750, v56);

    v59 = v87;
    sub_1BAC19504(v87, v97);
    v60 = *v59;
    if (v60)
    {
      swift_willThrow();
      v61 = v60;

      sub_1BAC179D0();
LABEL_18:
      swift_unknownObjectRelease_n();

      goto LABEL_19;
    }

    v91 = v51;
    v62 = v89;
    v63 = v84;
    sub_1BAC19504(v84, &v96);
    v64 = v85;
    v65 = v86;
    (*(v85 + 16))(v86, v63, v93);
    if (sub_1BAC1DA1C(v65, 1, v48) == 1)
    {
      (*(v64 + 8))(v65, v93);
      sub_1BAC19504(v55, &v95);
      v66 = *v55;
      if (*v55)
      {
        v67 = v66;
        v68 = sub_1BAC382E4();
        v69 = NSError.pds_unlaunderSimpleNSError()();

        swift_willThrow();
        if (v69)
        {
        }

        sub_1BAC179D0();
      }

      else
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v92 = v58;
          v93 = v57;
          swift_getObjectType();
          sub_1BAC20C40();
          v87 = v70;
          sub_1BAC19124();
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v90 = v83;
          sub_1BAC184D0();
          v73 = v72;
          sub_1BAC18C48();
          MEMORY[0x1EEE9AC00](v74);
          sub_1BAC18D70();
          swift_unknownObjectRetain();
          v75 = sub_1BAC1AF2C();
          (v87)(v75);
          sub_1BAC18DB8();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          if (sub_1BAC38A34())
          {
            (*(v73 + 8))(v58, AssociatedTypeWitness);
          }

          else
          {
            v79 = sub_1BAC3538C(AssociatedTypeWitness, AssociatedConformanceWitness);
            v81 = sub_1BAC1AD10(v79, v80);
            v82(v81);
          }

          sub_1BAC353DC();
        }

        else
        {
          v77 = sub_1BAC32604();
          sub_1BAC3538C(&type metadata for XPCServiceError, v77);
          *v78 = 2;
        }

        swift_willThrow();
      }

      goto LABEL_18;
    }

    swift_unknownObjectRelease_n();
    (*(*(v48 - 8) + 32))(v83[0], v65, v48);
    sub_1BAC179D0();
  }

LABEL_19:
  sub_1BAC35364();
}

uint64_t sub_1BAC23E6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1BAC23EB0()
{
  v2 = *(v0 - 280);
}

uint64_t sub_1BAC23EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BAC38394();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1BAC1DA1C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 44));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BAC23F74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BAC38394();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1BAC1926C(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BAC24118()
{

  v0 = sub_1BAC190C4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BAC24148()
{
  sub_1BAC383E4();
  sub_1BAC19294();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BAC24358(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BAC243A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BAC24414@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = sub_1BAC38394();
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  result = type metadata accessor for ConcurrentLRUCache.Entry(0, v6[10], v6[11], v6[12]);
  *(a3 + *(result + 44)) = a2;
  return result;
}

uint64_t sub_1BAC244D0()
{
  v0 = swift_allocObject();
  sub_1BAC24508();
  return v0;
}

void *sub_1BAC24508()
{
  v1 = *(*v0 + 88);
  v2 = sub_1BAC38864();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - v3;
  sub_1BAC1926C(&v6 - v3, 1, 1, v1);
  v0[2] = sub_1BAC17788(v4, v2);
  return v0;
}

uint64_t sub_1BAC245D8()
{
  sub_1BAC245B8();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t ConcurrentLRUCache.__allocating_init(cacheSize:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ConcurrentLRUCache.init(cacheSize:)(a1);
  return v2;
}

uint64_t ConcurrentLRUCache.getKey(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  sub_1BAC184B4();
  v5 = *(v4 + 80);
  v27 = v5;
  sub_1BAC184B4();
  v7 = *(v6 + 88);
  v28 = v7;
  sub_1BAC184B4();
  v9 = *(v8 + 96);
  v29 = v9;
  v30 = v10;
  v11 = sub_1BAC194F0();
  type metadata accessor for ConcurrentLRUCache.Entry(v11, v12, v13, v14);
  v15 = sub_1BAC38594();
  v16 = sub_1BAC194F0();
  type metadata accessor for ConcurrentLRUCache.ValueHolder(v16, v17, v18, v19);
  v20 = sub_1BAC38864();
  sub_1BAC17E04(sub_1BAC259A4, v26, v3, v15, v20);
  if (!v31)
  {
    return sub_1BAC1926C(a1, 1, 1, v7);
  }

  v22 = *(v31 + 16);
  MEMORY[0x1EEE9AC00](v21);
  v25[2] = v5;
  v25[3] = v7;
  v25[4] = v9;
  v23 = sub_1BAC38864();

  sub_1BAC17E04(sub_1BAC259DC, v25, v22, v23, v23);
}

uint64_t sub_1BAC247E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v38 = a6;
  v10 = type metadata accessor for ConcurrentLRUCache.Entry(0, a3, a4, a5);
  v37 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v35 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BAC38394();
  v16 = *(v15 - 8);
  result = MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  if (!*(*a1 + 16) || (v34 = result, result = sub_1BAC25C94(a2, a3, a5), (v21 & 1) == 0))
  {
    v30 = 0;
    goto LABEL_11;
  }

  v22 = result;
  v33 = *(v20 + 36);
  sub_1BAC38384();
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    v39 = v20;
    sub_1BAC389A4();
    result = sub_1BAC38984();
    v20 = v39;
  }

  v23 = v16;
  if (v22 < 0 || v22 >= 1 << *(v20 + 32))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (((*(v20 + 8 * (v22 >> 6) + 64) >> v22) & 1) == 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v33 == *(v20 + 36))
  {
    v24 = *(v20 + 56);
    v25 = a1;
    v26 = v35;
    v32 = a5;
    v27 = v10;
    v28 = v37;
    (*(v23 + 40))(v24 + *(v37 + 72) * v22, v19, v34);
    *v25 = v20;
    v29 = v36;
    sub_1BAC385B4();
    (*(v26 + 8))(v29, a3);
    v30 = *&v13[*(v27 + 44)];
    v31 = *(v28 + 8);

    result = v31(v13, v27);
LABEL_11:
    *v38 = v30;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t ConcurrentLRUCache.setKey(_:to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  v18 = a1;
  sub_1BAC184B4();
  v6 = *(v5 + 80);
  sub_1BAC184B4();
  v8 = *(v7 + 88);
  sub_1BAC184B4();
  v10 = *(v9 + 96);
  type metadata accessor for ConcurrentLRUCache.Entry(255, v6, v8, v10);
  v11 = sub_1BAC38594();
  v12 = type metadata accessor for ConcurrentLRUCache.ValueHolder(0, v6, v8, v10);
  sub_1BAC17E04(sub_1BAC259FC, v17, v4, v11, v12);
  v13 = *(v19 + 16);
  v16[2] = v6;
  v16[3] = v8;
  v16[4] = v10;
  v16[5] = a2;
  v14 = sub_1BAC38864();

  sub_1BAC17E04(sub_1BAC25A18, v16, v13, v14, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1BAC24CD8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v70 = a2;
  v68 = a4;
  v6 = *(*a3 + 80);
  v7 = *(*a3 + 96);
  v69 = *(*a3 + 88);
  v8 = type metadata accessor for ConcurrentLRUCache.Entry(255, v6, v69, v7);
  v9 = sub_1BAC38864();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v63 = &v55 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_1BAC38864();
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v59 = &v55 - v14;
  v60 = TupleTypeMetadata2;
  v58 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v61 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v57 = &v55 - v18;
  v67 = *(v8 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v66 = &v55 - v20;
  v64 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v55 - v21;
  v22 = sub_1BAC38394();
  v56 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v62 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v55 - v25;
  v71 = a1;
  v27 = *a1;
  if (*(*a1 + 16))
  {
    v28 = sub_1BAC25C94(v70, v6, v7);
    if (v29)
    {
      v30 = v28;
      v31 = *(v27 + 36);
      sub_1BAC38384();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v73 = v27;
        sub_1BAC389A4();
        result = sub_1BAC38984();
        v27 = v73;
      }

      if (v30 < 0 || v30 >= 1 << *(v27 + 32))
      {
        __break(1u);
      }

      else if ((*(v27 + 8 * (v30 >> 6) + 64) >> v30))
      {
        if (v31 == *(v27 + 36))
        {
          v33 = v67;
          (*(v56 + 40))(*(v27 + 56) + *(v67 + 72) * v30, v26, v22);
          *v71 = v27;
          v54 = v7;
          v35 = v65;
          v34 = v66;
          v36 = v33;
          sub_1BAC385B4();
          (*(v64 + 8))(v35, v6);
LABEL_15:
          v52 = *(v34 + *(v8 + 44));
          v53 = *(v36 + 8);

          result = v53(v34, v8);
          *v68 = v52;
          return result;
        }

        goto LABEL_18;
      }

      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  v37 = sub_1BAC38574();
  v38 = v6;
  if (a3[2] >= v37)
  {
    v36 = v67;
    v48 = v6;
    v49 = v63;
    v45 = v64;
    goto LABEL_14;
  }

  v73 = v27;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v69;
  *(&v55 - 4) = v6;
  *(&v55 - 3) = v39;
  v54 = v7;
  v56 = v7;
  v40 = sub_1BAC38594();

  swift_getWitnessTable();
  v41 = v59;
  v55 = v40;
  v42 = v72;
  sub_1BAC38694();
  v72 = v42;

  v43 = v60;
  result = sub_1BAC1DA1C(v41, 1, v60);
  if (result != 1)
  {
    v44 = *(v43 + 48);
    v45 = v64;
    v46 = v57;
    (*(v64 + 32))(v57, v41, v38);
    v36 = v67;
    (*(v67 + 32))(&v46[v44], v41 + v44, v8);
    v47 = v58;
    (*(v58 + 16))(v61, v46, v43);
    v59 = *(v43 + 48);
    v48 = v38;
    v49 = v63;
    sub_1BAC1926C(v63, 1, 1, v8);
    sub_1BAC385A4();
    (*(v47 + 8))(v46, v43);
    (*(v36 + 8))(&v61[v59], v8);
    v7 = v56;
LABEL_14:
    v50 = v62;
    sub_1BAC38384();
    type metadata accessor for ConcurrentLRUCache.ValueHolder(0, v48, v69, v7);
    v51 = sub_1BAC244D0();
    v34 = v66;
    sub_1BAC24414(v50, v51, v66);
    (*(v45 + 16))(v65, v70, v48);
    (*(v36 + 16))(v49, v34, v8);
    sub_1BAC1926C(v49, 0, 1, v8);
    sub_1BAC38594();
    sub_1BAC385A4();
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1BAC25460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a2;
  v39 = a3;
  v41 = sub_1BAC38394();
  v37 = *(v41 - 8);
  v9 = v37;
  v10 = MEMORY[0x1EEE9AC00](v41);
  v38 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v36 = &v34 - v12;
  v14 = type metadata accessor for ConcurrentLRUCache.Entry(255, a3, a4, a5);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - v20;
  v35 = *(v16 + 16);
  v35(&v34 - v20, a1, TupleTypeMetadata2);
  v22 = *(TupleTypeMetadata2 + 48);
  v23 = *(v9 + 16);
  v23(v13, &v21[v22], v41);
  v34 = v14;
  v24 = *(*(v14 - 8) + 8);
  v24(&v21[v22], v14);
  v35(v19, v40, TupleTypeMetadata2);
  v25 = *(TupleTypeMetadata2 + 48);
  v26 = v38;
  v27 = v41;
  v23(v38, &v19[v25], v41);
  v24(&v19[v25], v34);
  v28 = v36;
  v29 = v26;
  LOBYTE(v26) = sub_1BAC38374();
  v30 = *(v37 + 8);
  v30(v29, v27);
  v30(v28, v27);
  v31 = v39;
  v32 = *(*(v39 - 8) + 8);
  v32(v19, v39);
  v32(v21, v31);
  return v26 & 1;
}

uint64_t sub_1BAC25784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BAC38864();
  (*(*(v7 - 8) + 8))(a1, v7);
  (*(*(a4 - 8) + 16))(a1, a2, a4);
  return sub_1BAC1926C(a1, 0, 1, a4);
}

Swift::Void __swiftcall ConcurrentLRUCache.clear()()
{
  v1 = *(v0 + 24);
  sub_1BAC184B4();
  v8 = *(v2 + 80);
  sub_1BAC184B4();
  v9 = *(v3 + 88);
  sub_1BAC184B4();
  v10 = *(v4 + 96);
  type metadata accessor for ConcurrentLRUCache.Entry(255, v8, v5, v10);
  v6 = sub_1BAC38594();
  sub_1BAC17E04(sub_1BAC25A38, &v7, v1, v6, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1BAC25908(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  type metadata accessor for ConcurrentLRUCache.Entry(255, a2, a3, a4);
  swift_getTupleTypeMetadata2();
  sub_1BAC386A4();
  result = sub_1BAC38564();
  *a1 = result;
  return result;
}

uint64_t sub_1BAC25B38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAC25B58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MachIdentityTokenError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MachIdentityTokenError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1BAC25BE0(uint64_t *a1)
{
  result = sub_1BAC38394();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for ConcurrentLRUCache.ValueHolder(319, a1[2], a1[3], a1[4]);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BAC25C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BAC385C4();

  return sub_1BAC25D14(a1, v6, a2, a3);
}

unint64_t sub_1BAC25D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a1;
  v14[1] = a4;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v4;
  v16 = v4 + 64;
  v9 = ~(-1 << *(v4 + 32));
  for (i = v10 & v9; ((1 << i) & *(v16 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * i, a3);
    v12 = sub_1BAC385F4();
    (*(v6 + 8))(v8, a3);
    if (v12)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1BAC25E88(uint64_t a1)
{
  v3 = swift_allocObject();
  (*(*(*(v1 + 80) - 8) + 32))(v3 + *(*v3 + 88), a1);
  return v3;
}

uint64_t CopyOnWriteBox._Box.__deallocating_deinit()
{
  CopyOnWriteBox._Box.deinit();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1BAC25FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a1 + 88);
  swift_beginAccess();
  return (*(*(a2 - 8) + 16))(a3, a1 + v6, a2);
}

uint64_t sub_1BAC2606C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a1;
  v7 = *(**a1 + 88);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a4, v6 + v7, v5);
}

uint64_t sub_1BAC26104(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - v7;
  (*(v6 + 16))(&v15 - v7);
  type metadata accessor for CopyOnWriteBox._Box(0, v5, v9, v10);
  if (sub_1BAC38A44())
  {
    v11 = *a2;
    v12 = *(*v11 + 88);
    swift_beginAccess();
    (*(v6 + 40))(v11 + v12, v8, v5);
    return swift_endAccess();
  }

  else
  {
    v14 = swift_allocObject();
    (*(v6 + 32))(v14 + *(*v14 + 88), v8, v5);

    *a2 = v14;
  }

  return result;
}

uint64_t static CopyOnWriteBox<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BAC184C0();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v22[-v14];
  v16 = *(*v13 + 88);
  sub_1BAC19504(v13 + v16, v23);
  v17 = *(v8 + 16);
  v17(v15, a1 + v16, a3);
  v18 = *(*a2 + 88);
  sub_1BAC19504(a2 + v18, v22);
  v17(v12, a2 + v18, a3);
  v19 = sub_1BAC385F4();
  v20 = *(v8 + 8);
  v20(v12, a3);
  v20(v15, a3);
  return v19 & 1;
}

uint64_t sub_1BAC26428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v21[-v10];
  v12 = *v9;
  v14 = *v13;
  v15 = *(**v9 + 88);
  swift_beginAccess();
  v16 = *(v5 + 16);
  v16(v11, v12 + v15, v4);
  v17 = *(*v14 + 88);
  swift_beginAccess();
  v16(v8, v14 + v17, v4);
  v18 = sub_1BAC385F4();
  v19 = *(v5 + 8);
  v19(v8, v4);
  v19(v11, v4);
  return v18 & 1;
}

uint64_t CopyOnWriteBox<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BAC184C0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = *(*v11 + 88);
  sub_1BAC19504(v11 + v12, v15);
  (*(v7 + 16))(v10, a2 + v12, a3);
  sub_1BAC385D4();
  return (*(v7 + 8))(v10, a3);
}

uint64_t CopyOnWriteBox<A>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BAC184C0();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = *(*v8 + 88);
  sub_1BAC19504(v8 + v11, v15);
  (*(v6 + 16))(v10, a1 + v11, a2);
  v12 = sub_1BAC385E4();
  (*(v6 + 8))(v10, a2);
  return v12;
}

uint64_t sub_1BAC26850(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v8 = *(*v7 + 88);
  swift_beginAccess();
  (*(v4 + 16))(v6, v7 + v8, v3);
  v9 = sub_1BAC385E4();
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t sub_1BAC26974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v3;
  v9 = *(*v8 + 88);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8 + v9, v4);
  sub_1BAC385D4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BAC26AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BAC38B24();
  v8 = *v3;
  v9 = *(*v8 + 88);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8 + v9, v4);
  sub_1BAC385D4();
  (*(v5 + 8))(v7, v4);
  return sub_1BAC38B64();
}

uint64_t sub_1BAC26BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BAC26C24(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BAC26CFC(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    JUMPOUT(0x1BFAFEBD0);
  }

  return 0;
}

uint64_t sub_1BAC26D58()
{
  sub_1BAC38B24();
  MEMORY[0x1BFAFEE70](*v0);
  sub_1BAC388B4();
  return sub_1BAC38B64();
}

uint64_t sub_1BAC26DB4(uint64_t a1)
{
  sub_1BAC38B24();
  MEMORY[0x1BFAFEE70](*v1);
  sub_1BAC388B4();
  return sub_1BAC38B64();
}

uint64_t sub_1BAC26E08()
{

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1BAC26E40()
{
  swift_unknownObjectWeakInit();
  sub_1BAC26FB4(&qword_1EBC25790, &unk_1BAC39B80);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  sub_1BAC28D88(v3, v1 + 16);
  sub_1BAC28DC0(v3);
  *(v0 + 16) = v1;
  return v0;
}

double ReferenceCountedCache.init()@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for ReferenceCountedCache.WeakHolder();
  sub_1BAC26F60();
  v2 = sub_1BAC38564();
  sub_1BAC26FB4(&qword_1EBC25760, &unk_1BAC39900);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *a1 = v3;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

unint64_t sub_1BAC26F60()
{
  result = qword_1EBC254C8;
  if (!qword_1EBC254C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC254C8);
  }

  return result;
}

uint64_t sub_1BAC26FB4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t ReferenceCountedCache.init(callbacks:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ReferenceCountedCache.WeakHolder();
  sub_1BAC26F60();
  v4 = sub_1BAC38564();
  sub_1BAC26FB4(&qword_1EBC25760, &unk_1BAC39900);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v4;
  *a2 = v5;

  return sub_1BAC27098(a1, (a2 + 1));
}

uint64_t sub_1BAC27098(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1BAC270B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v12;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[8] = AssociatedTypeWitness;
  v8[9] = *(AssociatedTypeWitness - 8);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BAC271A0, 0, 0);
}

uint64_t sub_1BAC271A0()
{
  (*(v0[7] + 64))(v0[11], v0[6]);
  sub_1BAC2733C(v0[2], v0[3], v0[4], v0[6], v0[7]);

  sub_1BAC194D8();

  return v1();
}

uint64_t sub_1BAC2733C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BAC1BE14(a1, v12, &qword_1EBC25770, &unk_1BAC39910);
  v9 = v13;
  if (!v13)
  {
    return sub_1BAC1C8B0(v12, &qword_1EBC25770, &unk_1BAC39910);
  }

  v10 = v14;
  sub_1BAC1C910(v12, v13);
  (*(v10 + 48))(a2, a3, a4, a5, v9, v10);
  return sub_1BAC1905C(v12);
}

uint64_t sub_1BAC27408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BAC26FB4(&qword_1EBC25768, &qword_1BAC39D40);
  sub_1BAC18C48();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  sub_1BAC1BE14(a3, v21 - v9, &qword_1EBC25768, &qword_1BAC39D40);
  v11 = sub_1BAC38724();
  v12 = sub_1BAC1DA1C(v10, 1, v11);

  if (v12 == 1)
  {
    sub_1BAC1C8B0(v10, &qword_1EBC25768, &qword_1BAC39D40);
  }

  else
  {
    sub_1BAC38714();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1BAC386C4();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1BAC38634() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = sub_1BAC1AC94();

      sub_1BAC1C8B0(a3, &qword_1EBC25768, &qword_1BAC39D40);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BAC1C8B0(a3, &qword_1EBC25768, &qword_1BAC39D40);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return sub_1BAC1AC94();
}

uint64_t sub_1BAC27674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = v13;
  *(v8 + 152) = v14;
  *(v8 + 128) = v12;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 88) = a4;
  v9 = sub_1BAC38944();
  *(v8 + 160) = v9;
  *(v8 + 168) = *(v9 - 8);
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BAC27750, 0, 0);
}

uint64_t sub_1BAC27750()
{
  sub_1BAC1BE14(v0[11], (v0 + 2), &qword_1EBC25770, &unk_1BAC39910);
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[18];
    v2 = v0[19];
    v5 = v0[14];
    v4 = v0[15];
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[6];
    sub_1BAC1C910(v0 + 2, v0[5]);
    v9 = (*(v8 + 56))(v7, v6, v5, v4, v3, v2, v1, v8);
    v11 = v10;
    sub_1BAC1905C(v0 + 2);
    if (v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1BAC1C8B0((v0 + 2), &qword_1EBC25770, &unk_1BAC39910);
  }

  sub_1BAC388D4();

  v12 = sub_1BAC38C04();
  MEMORY[0x1BFAFE990](v12);

  MEMORY[0x1BFAFE990](0x20726F6620, 0xE500000000000000);
  v13 = sub_1BAC38BB4();
  MEMORY[0x1BFAFE990](v13);

  v9 = 0xD000000000000011;
  v11 = 0x80000001BAC3B000;
LABEL_6:
  v14 = v0[16];
  type metadata accessor for CancellableOSTransaction();
  v0[23] = swift_initStackObject();

  v0[24] = CancellableOSTransaction.init(_:onSIGTERM:)(v9, v11, sub_1BAC28D38, v14);
  sub_1BAC38AD4();
  v15 = swift_task_alloc();
  v0[25] = v15;
  *v15 = v0;
  v15[1] = sub_1BAC279D4;
  v17 = v0[14];
  v16 = v0[15];

  return sub_1BAC283A4(v17, v16, 0, 0, 1);
}

uint64_t sub_1BAC279D4()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *v1;
  sub_1BAC184E4();
  *v6 = v5;
  *(v7 + 208) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_1BAC27BC0;
  }

  else
  {
    v8 = sub_1BAC27B3C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

void sub_1BAC27B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1BAC18F88(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_1BAC193D0();

  sub_1BAC194D8();
  sub_1BAC1787C();

  __asm { BRAA            X1, X16 }
}

void sub_1BAC27BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1BAC18F88(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_1BAC193D0();

  sub_1BAC194D8();
  sub_1BAC1787C();

  __asm { BRAA            X1, X16 }
}

void sub_1BAC27C44(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  os_unfair_lock_lock((a1 + 48));
  sub_1BAC1C8B0(a1 + 16, &unk_1EBC257D0, &qword_1BAC3A350);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  os_unfair_lock_unlock((a1 + 48));
  *a2 = 0;
}

uint64_t sub_1BAC27C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1BAC1BE14(a1, v16, &qword_1EBC25770, &unk_1BAC39910);
  v13 = v17;
  if (!v17)
  {
    return sub_1BAC1C8B0(v16, &qword_1EBC25770, &unk_1BAC39910);
  }

  v14 = v18;
  sub_1BAC1C910(v16, v17);
  (*(v14 + 72))(a2, a3, a4, a5, a6, a7, v13, v14);
  return sub_1BAC1905C(v16);
}

uint64_t sub_1BAC27DEC(uint64_t a1)
{
  v3 = v2;
  sub_1BAC1DAA4();
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v13 = v1[2];
  v12 = v1[3];
  v6 = v1[11];
  v7 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1BAC28DF0;

  return sub_1BAC27674(a1, v13, v12, (v1 + 6), v6, v1 + v5, v8, v9);
}

uint64_t sub_1BAC27F74()
{
  sub_1BAC1DAA4();
  swift_getAssociatedTypeWitness();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BAC280C8;
  sub_1BAC1787C();

  return sub_1BAC270B0(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1BAC280C8()
{
  v1 = *v0;
  sub_1BAC184E4();
  *v2 = v1;

  sub_1BAC194D8();

  return v3();
}

Swift::Void __swiftcall ReferenceCountedCache.reset()()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  sub_1BAC26FB4(&qword_1EBC25788, &qword_1BAC39950);
  sub_1BAC38584();

  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1BAC282CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v14(v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a5);
  }

  return result;
}

uint64_t sub_1BAC283A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1BAC38934();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1BAC284A4, 0, 0);
}

uint64_t sub_1BAC284A4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1BAC38944();
  v5 = sub_1BAC28D40(&qword_1EBC25058, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1BAC38AB4();
  sub_1BAC28D40(&qword_1EBC25060, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1BAC38954();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1BAC28634;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1BAC28634()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v8 = *v1;
  sub_1BAC184E4();
  *v5 = v8;
  *(v8 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BAC287E4, 0, 0);
  }

  else
  {

    sub_1BAC194D8();

    return v6();
  }
}

uint64_t sub_1BAC287E4()
{

  sub_1BAC194D8();

  return v0();
}

unint64_t sub_1BAC28850()
{
  result = qword_1EBC254D0;
  if (!qword_1EBC254D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC254D0);
  }

  return result;
}

uint64_t destroy for ReferenceCountedCache(void *a1)
{

  if (a1[4])
  {

    return sub_1BAC1905C(a1 + 1);
  }

  return result;
}

__n128 initializeWithTake for ReferenceCountedCache(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t *assignWithTake for ReferenceCountedCache(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  if (a1[4])
  {
    sub_1BAC1905C(a1 + 1);
  }

  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  a1[5] = a2[5];
  return a1;
}

uint64_t getEnumTagSinglePayload for ReferenceCountedCache(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ReferenceCountedCache(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NullParameters(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for NullParameters(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BAC28BE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAC28C08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1BAC28C48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAC28C88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BAC28CE4()
{
  result = qword_1EBC254C0;
  if (!qword_1EBC254C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC254C0);
  }

  return result;
}

uint64_t sub_1BAC28D40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BAC28DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BAC28E54(uint64_t a1)
{
  result = sub_1BAC291CC();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BAC28ECC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1BAC28FF0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_1BAC291CC()
{
  result = qword_1EBC25050;
  if (!qword_1EBC25050)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EBC25050);
  }

  return result;
}

uint64_t sub_1BAC29214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for WeakReference(0, *(a2 + a3 - 8), a3, a5);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a4 = Strong;
  return result;
}

uint64_t sub_1BAC292CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t MainThreadParkingMode.hashValue.getter()
{
  v1 = *v0;
  sub_1BAC38B24();
  MEMORY[0x1BFAFEE70](v1);
  return sub_1BAC38B64();
}

uint64_t sub_1BAC293F0(uint64_t a1)
{
  v2 = *v1;
  sub_1BAC38B24();
  MEMORY[0x1BFAFEE70](v2);
  return sub_1BAC38B64();
}

void static Daemon.main()(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1BFAFEFA0]();
  sub_1BAC29508(v2, a1, a2);
  objc_autoreleasePoolPop(v5);
  (*(a2 + 48))(&v7, a1, a2);
  if (v7 == 1)
  {
    dispatch_main();
  }

  v6 = [objc_opt_self() mainRunLoop];
  [v6 run];
}

uint64_t sub_1BAC29508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BAC383E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAC2C25C(a2, a3);
  if ((*(a3 + 32))(a2, a3))
  {
    (*(a3 + 8))(a2, a3);
    sub_1BAC29978(v8);
    (*(v6 + 8))(v8, v5);
  }

  (*(a3 + 56))(a2, a3);
  result = (*(a3 + 40))(a2, a3);
  if (result)
  {
    (*(a3 + 8))(a2, a3);
    sub_1BAC29A98(v8);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

unint64_t sub_1BAC296BC()
{
  result = qword_1EBC25798;
  if (!qword_1EBC25798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25798);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MainThreadParkingMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MainThreadParkingMode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t CancellableOSTransaction.__allocating_init(_:onSIGTERM:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BAC190C4();
  v8 = swift_allocObject();
  CancellableOSTransaction.init(_:onSIGTERM:)(a1, a2, a3, a4);
  return v8;
}

void sub_1BAC29978(uint64_t a1)
{
  v1 = sub_1BAC383D4();
  v2 = sub_1BAC38774();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BAC16000, v1, v2, "DaemonEventHandlers: Disabling standard SIGTERM handler", v3, 2u);
    MEMORY[0x1BFAFF600](v3, -1, -1);
  }

  v4 = sub_1BAC384B4();
  v5 = signal(15, v4);
  if (qword_1ED76BA40 != -1)
  {
    v5 = sub_1BAC18FBC(&qword_1ED76BA40);
  }

  v6 = qword_1ED76BB68;
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock((v6 + 28));
  sub_1BAC2B3E4((v6 + 16));
  os_unfair_lock_unlock((v6 + 28));
}

void sub_1BAC29A98(uint64_t a1)
{
  v2 = sub_1BAC383E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = sub_1BAC383D4();
  v6 = sub_1BAC38774();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BAC16000, v5, v6, "DaemonEventHandlers: registerLaunchEvents called: registering for com.apple.distnoted.matching", v7, 2u);
    MEMORY[0x1BFAFF600](v7, -1, -1);
  }

  sub_1BAC2B414(0, &qword_1EBC254B8, 0x1E69E9610);
  v8 = sub_1BAC387C4();
  (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  aBlock[4] = sub_1BAC2B454;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAC2A5A0;
  aBlock[3] = &unk_1F38C8F30;
  v11 = _Block_copy(aBlock);

  xpc_set_event_stream_handler("com.apple.distnoted.matching", v8, v11);
  _Block_release(v11);
}

uint64_t sub_1BAC29CD0()
{
  sub_1BAC26FB4(&unk_1EBC257C0, &unk_1BAC39EA0);
  result = swift_allocObject();
  *(result + 28) = 0;
  *(result + 16) = 0;
  *(result + 24) = -1;
  qword_1ED76BB68 = result;
  return result;
}

void sub_1BAC29D1C(uint64_t a1)
{
  v1 = MEMORY[0x1BFAFF7E0]();
  if (v1 == sub_1BAC384A4())
  {
    swift_getObjectType();
    sub_1BAC3025C(v27);
    if (v28)
    {
      sub_1BAC26FB4(&qword_1EBC258D0, &qword_1BAC39EB0);
      if (swift_dynamicCast())
      {
        sub_1BAC38494();
        v4 = sub_1BAC38604();
        if (v5)
        {
          sub_1BAC2D068(v25, v27, v4, v5);

          if (!v28)
          {

            sub_1BAC1E49C(v27, &unk_1EBC257D0, &qword_1BAC3A350);
LABEL_22:
            v16 = sub_1BAC383D4();
            v17 = sub_1BAC38754();
            if (os_log_type_enabled(v16, v17))
            {
              v18 = swift_slowAlloc();
              *v18 = 0;
              v19 = "DaemonEventHandlers: Received distributed event with invalid name";
              goto LABEL_24;
            }

            goto LABEL_25;
          }

          if (swift_dynamicCast())
          {
            sub_1BAC2D068(v25, v27, 0x6F666E4972657355, 0xE800000000000000);

            if (v28)
            {
              if (swift_dynamicCast())
              {

                v6 = sub_1BAC383D4();
                v7 = sub_1BAC38774();

                if (os_log_type_enabled(v6, v7))
                {
                  v8 = swift_slowAlloc();
                  v9 = swift_slowAlloc();
                  v27[0] = v9;
                  *v8 = 136446466;
                  *(v8 + 4) = sub_1BAC1914C(v25, v26, v27);
                  *(v8 + 12) = 2080;
                  v10 = sub_1BAC38554();
                  v12 = sub_1BAC1914C(v10, v11, v27);

                  *(v8 + 14) = v12;
                  _os_log_impl(&dword_1BAC16000, v6, v7, "Posting notification %{public}s userInfo: %s", v8, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x1BFAFF600](v9, -1, -1);
                  MEMORY[0x1BFAFF600](v8, -1, -1);
                }

                v13 = [objc_opt_self() defaultCenter];
                v14 = sub_1BAC38614();

                v15 = sub_1BAC2A2DC(v25);

                sub_1BAC2B4C4(v14, 0, v15, v13);
LABEL_31:

                return;
              }
            }

            else
            {
              sub_1BAC1E49C(v27, &unk_1EBC257D0, &qword_1BAC3A350);
            }

            v20 = sub_1BAC383D4();
            v21 = sub_1BAC38774();

            if (os_log_type_enabled(v20, v21))
            {
              v22 = swift_slowAlloc();
              v23 = swift_slowAlloc();
              v27[0] = v23;
              *v22 = 136446210;
              *(v22 + 4) = sub_1BAC1914C(v25, v26, v27);
              _os_log_impl(&dword_1BAC16000, v20, v21, "Posting notification %{public}s", v22, 0xCu);
              sub_1BAC1905C(v23);
              MEMORY[0x1BFAFF600](v23, -1, -1);
              MEMORY[0x1BFAFF600](v22, -1, -1);
            }

            v13 = [objc_opt_self() defaultCenter];
            v14 = sub_1BAC38614();

            [v13 postNotificationName:v14 object:0];
            goto LABEL_31;
          }
        }

        goto LABEL_22;
      }
    }

    else
    {
      sub_1BAC1E49C(v27, &unk_1EBC257D0, &qword_1BAC3A350);
    }

    v16 = sub_1BAC383D4();
    v17 = sub_1BAC38754();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "DaemonEventHandlers: Found invalid dictionary in distributed event";
LABEL_24:
      _os_log_impl(&dword_1BAC16000, v16, v17, v19, v18, 2u);
      MEMORY[0x1BFAFF600](v18, -1, -1);
    }

LABEL_25:

    return;
  }

  oslog = sub_1BAC383D4();
  v2 = sub_1BAC38754();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BAC16000, oslog, v2, "DaemonEventHandlers: Received distributed event with invalid type", v3, 2u);
    MEMORY[0x1BFAFF600](v3, -1, -1);
  }
}

uint64_t sub_1BAC2A2DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BAC26FB4(&qword_1EBC257E0, &qword_1BAC39EB8);
    v2 = sub_1BAC389D4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1BAC19210(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1BAC2B560(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1BAC2B560(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1BAC2B560(v31, v32);
    result = sub_1BAC38894();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_1BAC2B560(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1BAC2A5A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1BAC2A600(uint64_t *a1)
{
  v25 = sub_1BAC384D4();
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BAC384F4();
  v21 = *(v5 - 8);
  v22 = v5;
  result = MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 8);
  if (v9 != 255)
  {
    if (v9)
    {
      return result;
    }

    v10 = *a1;
    v11 = sub_1BAC383D4();
    v12 = sub_1BAC38774();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v20 = v1;
      v14 = v13;
      *v13 = 0;
      _os_log_impl(&dword_1BAC16000, v11, v12, "DaemonEventHandlers: Upgrading existing SIGTERM DispatchSource", v13, 2u);
      MEMORY[0x1BFAFF600](v14, -1, -1);
    }

    swift_getObjectType();
    sub_1BAC38804();
    sub_1BAC2B400(v10, v9);
  }

  v15 = sub_1BAC383D4();
  v16 = sub_1BAC38774();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1BAC16000, v15, v16, "DaemonEventHandlers: Registering full SIGTERM DispatchSource", v17, 2u);
    MEMORY[0x1BFAFF600](v17, -1, -1);
  }

  sub_1BAC2B414(0, &qword_1ED76BA20, 0x1E69E9630);
  v18 = sub_1BAC387E4();
  swift_getObjectType();
  aBlock[4] = sub_1BAC2A968;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAC1C330;
  aBlock[3] = &unk_1F38C8EE0;
  v19 = _Block_copy(aBlock);
  sub_1BAC384E4();
  sub_1BAC2AA0C();
  sub_1BAC387F4();
  _Block_release(v19);
  (*(v23 + 8))(v4, v25);
  (*(v21 + 8))(v8, v22);
  result = sub_1BAC38814();
  *a1 = v18;
  *(a1 + 8) = 1;
  return result;
}

uint64_t sub_1BAC2A968()
{
  v0 = [objc_opt_self() defaultCenter];
  if (qword_1ED76B808 != -1)
  {
    swift_once();
  }

  [v0 postNotificationName:qword_1ED76B810 object:0 userInfo:0];

  return MEMORY[0x1EEE75030]();
}

uint64_t sub_1BAC2AA0C()
{
  sub_1BAC384D4();
  sub_1BAC1DFE0(&qword_1ED76BA38, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BAC26FB4(&unk_1EBC257B0, &qword_1BAC39E98);
  sub_1BAC2B338();
  return sub_1BAC38884();
}

void sub_1BAC2AAC4()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_1ED76B808 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_1ED76B810 object:0 userInfo:0];
}

uint64_t CancellableOSTransaction.ReleaseBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1BAC38B24();
  MEMORY[0x1BFAFEE70](v1);
  return sub_1BAC38B64();
}

uint64_t sub_1BAC2AC28()
{
  sub_1BAC1AEE4();
  *(*(v0 + 40) + 112) = 0;
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1BAC2AC94, 0, 0);
}

uint64_t sub_1BAC2AC94()
{
  sub_1BAC1AEE4();
  v1 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);
  sub_1BAC1E49C(v1, &qword_1EBC257A8, &qword_1BAC39E80);

  sub_1BAC194D8();

  return v2();
}

uint64_t sub_1BAC2AD28()
{
  sub_1BAC1AEE4();
  *(v0 + 16) = *(v0 + 48);
  sub_1BAC26FB4(&qword_1EBC25778, &qword_1BAC39E90);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  sub_1BAC194D8();

  return v1();
}

uint64_t sub_1BAC2ADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BAC26FB4(&qword_1EBC25768, &qword_1BAC39D40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1BAC1D9AC(a3, v24 - v10);
  v12 = sub_1BAC38724();
  v13 = sub_1BAC1DA1C(v11, 1, v12);

  if (v13 == 1)
  {
    sub_1BAC1E49C(v11, &qword_1EBC25768, &qword_1BAC39D40);
  }

  else
  {
    sub_1BAC38714();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1BAC386C4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1BAC38634() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1BAC1E49C(a3, &qword_1EBC25768, &qword_1BAC39D40);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BAC1E49C(a3, &qword_1EBC25768, &qword_1BAC39D40);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1BAC2B09C()
{
  result = sub_1BAC38614();
  qword_1ED76B810 = result;
  return result;
}

id static NSNotificationName.pds_SIGTERMReceived.getter()
{
  if (qword_1ED76B808 != -1)
  {
    sub_1BAC19524(&qword_1ED76B808);
  }

  v1 = qword_1ED76B810;

  return v1;
}

unint64_t sub_1BAC2B124()
{
  result = qword_1EBC257A0;
  if (!qword_1EBC257A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC257A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CancellableOSTransaction.ReleaseBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BAC2B2A4()
{
  sub_1BAC1AC34();
  v0 = swift_task_alloc();
  v1 = sub_1BAC193FC(v0);
  *v1 = v2;
  v3 = sub_1BAC18D2C(v1);

  return v4(v3);
}

unint64_t sub_1BAC2B338()
{
  result = qword_1ED76BA28;
  if (!qword_1ED76BA28)
  {
    sub_1BAC2B39C(&unk_1EBC257B0, &qword_1BAC39E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED76BA28);
  }

  return result;
}

uint64_t sub_1BAC2B39C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BAC2B400(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_1BAC2B414(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_1BAC2B454(uint64_t a1)
{
  sub_1BAC383E4();

  sub_1BAC29D1C(a1);
}

void sub_1BAC2B4C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1BAC38534();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

_OWORD *sub_1BAC2B560(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1BAC2B58C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1BAC2B5A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAC2B5E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t ExitReason.description.getter()
{
  result = 0x73736563637573;
  switch(*v0)
  {
    case 1:
      sub_1BAC184F4();
      result = v2 + 8;
      break;
    case 2:
      sub_1BAC184F4();
      result = v4 + 20;
      break;
    case 3:
      sub_1BAC184F4();
      result = v5 | 4;
      break;
    case 4:
      sub_1BAC184F4();
      result = v3 | 2;
      break;
    case 5:
      sub_1BAC184F4();
      result = v7 + 13;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      sub_1BAC184F4();
      result = v6 | 1;
      break;
    case 8:
      sub_1BAC184F4();
      result = v8 | 3;
      break;
    default:
      return result;
  }

  return result;
}

ProactiveDaemonSupport::ExitReason_optional __swiftcall ExitReason.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 9)
  {
    v2 = 9;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1BAC2B7EC@<X0>(_DWORD *a1@<X8>)
{
  result = ExitReason.rawValue.getter();
  *a1 = result;
  return result;
}

void static Exit.exit(_:logger:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = *a1;
  sub_1BAC2BAA8(a2, &v18 - v5);
  v8 = sub_1BAC383E4();
  if (sub_1BAC1DA1C(v6, 1, v8) == 1)
  {
    sub_1BAC2BB18(v6);
  }

  else
  {
    v9 = sub_1BAC383D4();
    v10 = sub_1BAC38774();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136446210;
      v13 = 0xD000000000000020;
      v14 = "rotected container directory";
      v15 = 0xE700000000000000;
      v16 = 0x73736563637573;
      switch(v7)
      {
        case 1:
          goto LABEL_12;
        case 2:
          v14 = "cannot create base directory";
          v13 = 0xD00000000000002CLL;
          goto LABEL_12;
        case 3:
          v14 = "cannot read base directory";
          v13 = 0xD00000000000001CLL;
          goto LABEL_12;
        case 4:
          v14 = "ffixed user directory";
          v13 = 0xD00000000000001ALL;
          goto LABEL_12;
        case 5:
          v14 = "confstr temp dir failure";
          v13 = 0xD000000000000025;
          goto LABEL_12;
        case 6:
          v14 = "confstr cache dir failure";
          v13 = 0xD000000000000018;
          goto LABEL_12;
        case 7:
          v14 = "set user dir suffix failure";
          v13 = 0xD000000000000019;
          goto LABEL_12;
        case 8:
          v14 = "com.apple.distnoted.matching";
          v13 = 0xD00000000000001BLL;
LABEL_12:
          v15 = v14 | 0x8000000000000000;
          v16 = v13;
          break;
        default:
          break;
      }

      v17 = sub_1BAC1914C(v16, v15, &v19);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_1BAC16000, v9, v10, "Exiting with reason: %{public}s", v11, 0xCu);
      sub_1BAC1905C(v12);
      MEMORY[0x1BFAFF600](v12, -1, -1);
      MEMORY[0x1BFAFF600](v11, -1, -1);
    }

    (*(*(v8 - 8) + 8))(v6, v8);
  }

  _exit(v7);
}

uint64_t sub_1BAC2BAA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAC2BB18(uint64_t a1)
{
  v2 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAC2BB80(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BAC2BBCC(a1, a2);
  sub_1BAC2BCE4(&unk_1F38C8608);
  return v3;
}

uint64_t sub_1BAC2BBCC(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1BAC38684())
  {
    result = sub_1BAC2BDC8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1BAC388C4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1BAC38924();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BAC2BCE4(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1BAC2BE38(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1BAC2BDC8(uint64_t a1, uint64_t a2)
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

  sub_1BAC26FB4(&qword_1EBC257F8, "j(");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1BAC2BE38(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAC26FB4(&qword_1EBC257F8, "j(");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_1BAC2BF30()
{
  result = qword_1EBC257F0;
  if (!qword_1EBC257F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC257F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExitReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ExitReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Exit(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OSVariant(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BAC2C25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - v8;
  v10 = sub_1BAC383E4();
  v38 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - v14;
  (*(a2 + 16))(a1, a2);
  sub_1BAC38634();

  v16 = _set_user_dir_suffix();

  if (!v16)
  {
    v30 = sub_1BAC18508();
    v37 = v31;
    v31(v30);
    v32 = sub_1BAC383D4();
    v33 = sub_1BAC38754();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1BAC16000, v32, v33, "Sandbox: _set_user_dir_suffix returned nil", v34, 2u);
      MEMORY[0x1BFAFF600](v34, -1, -1);
    }

    (*(v38 + 8))(v13, v10);
    v40 = 8;
    v35 = sub_1BAC18508();
    v37(v35);
    sub_1BAC1926C(v7, 0, 1, v10);
    v28 = &v40;
    v29 = v7;
LABEL_13:
    static Exit.exit(_:logger:)(v28, v29);
  }

  v17 = sub_1BAC2C610(65537);
  if (!v18 || (sub_1BAC2C71C(v17, v18), v20 = v19, , !v20))
  {
    v22 = sub_1BAC18508();
    v37 = v23;
    v23(v22);
    v24 = sub_1BAC383D4();
    v25 = sub_1BAC38754();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1BAC16000, v24, v25, "Sandbox: confstr(_CS_DARWIN_USER_TEMP_DIR) failed", v26, 2u);
      MEMORY[0x1BFAFF600](v26, -1, -1);
    }

    (*(v38 + 8))(v15, v10);
    v39 = 6;
    v27 = sub_1BAC18508();
    v37(v27);
    sub_1BAC1926C(v9, 0, 1, v10);
    v28 = &v39;
    v29 = v9;
    goto LABEL_13;
  }
}

uint64_t sub_1BAC2C610(int a1)
{
  v2 = sub_1BAC386B4();
  *(v2 + 16) = 1024;
  bzero((v2 + 32), 0x400uLL);
  if (confstr(a1, (v2 + 32), 0x400uLL) >= 1)
  {
    return sub_1BAC2C694(v2);
  }

  return 0;
}

uint64_t sub_1BAC2C694(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
LABEL_6:
      v5 = sub_1BAC38644();

      return v5;
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAC2C71C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BAC38634();
  v3 = realpath_DARWIN_EXTSN((v2 + 32), 0);

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1BAC38674();
  MEMORY[0x1BFAFF600](v3, -1, -1);
  return v4;
}

void *sub_1BAC2C7A8(void *a1)
{
  v3 = sub_1BAC1C910(a1, a1[3]);
  sub_1BAC38B74();
  if (!v1)
  {
    sub_1BAC1C910(v8, v8[3]);
    sub_1BAC21208();
    sub_1BAC38A74();
    sub_1BAC2B414(0, &qword_1EBC25818, 0x1E696ACD0);
    sub_1BAC2B414(0, &qword_1EBC25820, 0x1E696ABC0);
    v4 = sub_1BAC38784();
    v3 = v4;
    if (v4)
    {
      sub_1BAC20F70(v6, v7);
      sub_1BAC1905C(v8);
      sub_1BAC1905C(a1);
      return v3;
    }

    sub_1BAC2CFFC();
    swift_allocError();
    swift_willThrow();
    sub_1BAC20F70(v6, v7);
    sub_1BAC1905C(v8);
  }

  sub_1BAC1905C(a1);
  return v3;
}

uint64_t sub_1BAC2C920(void *a1, uint64_t a2)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v10];
  v4 = v10[0];
  if (v3)
  {
    v5 = sub_1BAC38344();
    v7 = v6;

    sub_1BAC1C910(a1, a1[3]);
    sub_1BAC38B94();
    sub_1BAC2CE1C(v10, v10[3]);
    sub_1BAC20E40();
    sub_1BAC38A84();
    sub_1BAC20F70(v5, v7);
    return sub_1BAC1905C(v10);
  }

  else
  {
    v9 = v4;
    sub_1BAC382F4();

    return swift_willThrow();
  }
}

void *sub_1BAC2CA78@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1BAC2C7A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id InterprocessError.error.getter()
{
  v1 = *v0;
  sub_1BAC2CAF0(*v0);
  return v1;
}

id InterprocessError.nsError.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    return v1;
  }

  else
  {
    v5 = *v0;
    v3 = v1;
    v4 = sub_1BAC382E4();
    sub_1BAC2CB70(v5);
    return v4;
  }
}

uint64_t InterprocessError.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t InterprocessError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BAC1C910(a1, a1[3]);
  sub_1BAC38B74();
  if (!v2)
  {
    sub_1BAC1C910(v9, v9[3]);
    sub_1BAC2CC8C();
    sub_1BAC38A74();
    v5 = v8;
    v6 = NSError.pds_unlaunderSimpleNSError()();

    if (v6)
    {

      v5 = v6;
    }

    sub_1BAC1905C(v9);
    *a2 = v5;
    *(a2 + 8) = v6 == 0;
  }

  return sub_1BAC1905C(a1);
}

unint64_t sub_1BAC2CC8C()
{
  result = qword_1EBC25800;
  if (!qword_1EBC25800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25800);
  }

  return result;
}

uint64_t InterprocessError.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1BAC1C910(a1, a1[3]);
  sub_1BAC2CAF0(v2);
  sub_1BAC38B94();
  if (v3)
  {
    sub_1BAC2CE1C(v8, v9);
    sub_1BAC2CE6C();
    sub_1BAC38A84();
  }

  else
  {
    swift_getErrorValue();
    Error.pds_launderToSimpleNSError(discardUserInfo:)(v4, 0);
    v6 = v5;
    sub_1BAC2CE1C(v8, v9);
    sub_1BAC2CE6C();
    sub_1BAC38A84();
  }

  sub_1BAC2CB70(v2);
  return sub_1BAC1905C(v8);
}

uint64_t sub_1BAC2CE1C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1BAC2CE6C()
{
  result = qword_1EBC25808;
  if (!qword_1EBC25808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25808);
  }

  return result;
}

uint64_t static InterprocessError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if ((*(a1 + 8) & 1) == 0)
  {
    v8 = v2;
    v5 = sub_1BAC382E4();
    sub_1BAC2CB70(v2);
    if ((v4 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = v3;
    goto LABEL_6;
  }

  v5 = v2;
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = v3;
  v7 = sub_1BAC382E4();
  sub_1BAC2CB70(v3);
LABEL_6:
  sub_1BAC2B414(0, &qword_1EBC25810, 0x1E69E58C0);
  v9 = sub_1BAC38854();

  return v9 & 1;
}

unint64_t sub_1BAC2CFFC()
{
  result = qword_1EBC25828;
  if (!qword_1EBC25828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25828);
  }

  return result;
}

double sub_1BAC2D068@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_1BAC2DC1C(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_1BAC19210(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t NSError.pds_unlaunderSimpleNSError()()
{
  v1 = v0;
  v2 = [v0 userInfo];
  v3 = sub_1BAC38544();

  v4 = sub_1BAC19544();
  sub_1BAC2D068(v3, &v32, v4, v5);

  if (!v33)
  {
    goto LABEL_11;
  }

  sub_1BAC2B560(&v32, v35);
  v6 = sub_1BAC19210(v35, &v32);
  if ((sub_1BAC18FDC(v6, v7, v8, MEMORY[0x1E69E6158], v9, v10) & 1) == 0)
  {
LABEL_15:
    sub_1BAC1905C(v35);
    return 0;
  }

  v11 = [v1 userInfo];
  v12 = sub_1BAC38544();

  v13 = sub_1BAC18518();
  sub_1BAC2D068(v12, &v32, v13, v14);

  if (!v33)
  {
    sub_1BAC1905C(v35);

LABEL_11:
    sub_1BAC1C8B0(&v32, &unk_1EBC257D0, &qword_1BAC3A350);
    return 0;
  }

  sub_1BAC2B560(&v32, v34);
  v15 = sub_1BAC19210(v34, &v32);
  if ((sub_1BAC18FDC(v15, v16, v17, MEMORY[0x1E6969080], v18, v19) & 1) == 0)
  {

LABEL_14:
    sub_1BAC1905C(v34);
    goto LABEL_15;
  }

  v20 = v29;
  v21 = sub_1BAC388E4();

  if (!v21 || (v22 = sub_1BAC2D8D4(v21, v21, MEMORY[0x1E69E6440])) == 0)
  {
    sub_1BAC20F70(v29, *(&v29 + 1));
    goto LABEL_14;
  }

  v24 = v22;
  v25 = v23;
  if (qword_1EBC254B0 != -1)
  {
    swift_once();
  }

  v30 = v24;
  v31 = v25;
  sub_1BAC1DAD4(&v29);
  sub_1BAC382A4();
  sub_1BAC20F70(v20, *(&v20 + 1));
  sub_1BAC1905C(v34);
  sub_1BAC1905C(v35);
  sub_1BAC27098(&v29, &v32);
  sub_1BAC27098(&v32, &v29);
  sub_1BAC26FB4(&qword_1EBC25838, &unk_1BAC3A360);
  sub_1BAC26FB4(&qword_1EBC25778, &qword_1BAC39E90);
  v27 = swift_dynamicCast();
  if ((v27 & 1) == 0)
  {
    return 0;
  }

  return v28;
}

void __swiftcall Error.pds_launderToSimpleNSError(discardUserInfo:)(NSError *__return_ptr retstr, Swift::Bool discardUserInfo)
{
  v4 = v3;
  v5 = v2;
  v36 = discardUserInfo;
  v6 = *(v2 - 8);
  v7 = MEMORY[0x1EEE9AC00](discardUserInfo);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v35[-v10];
  v39 = v12;
  v13 = sub_1BAC1DAD4(v38);
  v14 = *(v6 + 16);
  v14(v13, v4, v5);
  sub_1BAC1C910(v38, v39);
  swift_getDynamicType();
  sub_1BAC1905C(v38);
  v14(v11, v4, v5);
  v15 = sub_1BAC38A34();
  if (v15)
  {
    v16 = v15;
    (*(v6 + 8))(v11, v5);
  }

  else
  {
    v16 = swift_allocError();
    (*(v6 + 32))(v17, v11, v5);
  }

  v18 = sub_1BAC382E4();

  v14(v9, v4, v5);
  sub_1BAC26FB4(&qword_1EBC25840, &qword_1BAC3A370);
  if (swift_dynamicCast())
  {
    sub_1BAC2DB58(v37, v38);
    sub_1BAC1C910(v38, v39);
    if (qword_1EBC254A8 != -1)
    {
      swift_once();
    }

    v29 = sub_1BAC382B4();
    v31 = v30;
    sub_1BAC26FB4(&qword_1EBC25850, &qword_1BAC3A380);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BAC3A330;
    strcpy((inited + 32), "pds_typeHint");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    v33 = sub_1BAC38964();
    *(inited + 72) = MEMORY[0x1E69E6158];
    if (!v34)
    {
      v33 = sub_1BAC38C04();
    }

    *(inited + 48) = v33;
    *(inited + 56) = v34;
    strcpy((inited + 80), "pds_errorData");
    *(inited + 94) = -4864;
    *(inited + 120) = MEMORY[0x1E6969080];
    *(inited + 96) = v29;
    *(inited + 104) = v31;
    v19 = sub_1BAC38564();
    sub_1BAC1905C(v38);
  }

  else
  {
    memset(v37, 0, sizeof(v37));
    sub_1BAC1C8B0(v37, &qword_1EBC25848, &qword_1BAC3A378);
    v19 = sub_1BAC38564();
  }

  if (v36)
  {
    v20 = sub_1BAC38564();
  }

  else
  {
    v21 = [v18 userInfo];
    v20 = sub_1BAC38544();
  }

  v22 = [v18 domain];
  v23 = sub_1BAC38624();
  v25 = v24;

  v26 = [v18 code];
  v27 = sub_1BAC2DA24(v19, v20);
  v28 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  sub_1BAC2DAA8(v23, v25, v26, v27);
}

uint64_t sub_1BAC2D8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAC2D94C(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1BFAFF600);
  }

  return result;
}

uint64_t sub_1BAC2D9D0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1BAC2DA24(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1BAC2E0D8(a1, sub_1BAC2E0A0, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

id sub_1BAC2DAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BAC38614();

  if (a4)
  {
    v8 = sub_1BAC38534();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

_OWORD *sub_1BAC2DB58(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ErrorSupport(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1BAC2DC1C(uint64_t a1, uint64_t a2)
{
  sub_1BAC38B24();
  sub_1BAC38654();
  v4 = sub_1BAC38B64();

  return sub_1BAC2DC94(a1, a2, v4);
}

unint64_t sub_1BAC2DC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1BAC38A64() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1BAC2DD48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1BAC26FB4(&qword_1EBC25860, &qword_1BAC3A3B0);
  v33 = v4;
  result = sub_1BAC389C4();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_1BAC2DFFC(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 32 * v18);
    if (v33)
    {
      sub_1BAC2B560(v22, v34);
    }

    else
    {
      sub_1BAC19210(v22, v34);
    }

    sub_1BAC38B24();
    sub_1BAC38654();
    result = sub_1BAC38B64();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = sub_1BAC2B560(v34, (*(v7 + 56) + 32 * v26));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1BAC2DFFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1BAC3A340;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1BAC2E060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BAC19210(a4, a1);

  return a2;
}

uint64_t sub_1BAC2E0A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BAC2E060((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1BAC2E0D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1BAC2E308(a1, a2, a3, v34);
  v30 = v34[0];
  v31 = v34[1];
  v32 = v34[2];
  v33 = v35;

  while (1)
  {
    sub_1BAC2E344(&v28);
    v7 = *(&v28 + 1);
    if (!*(&v28 + 1))
    {
      sub_1BAC2E494(v30);
    }

    v8 = v28;
    sub_1BAC2B560(&v29, v27);
    v9 = *a5;
    v11 = sub_1BAC2DC1C(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1BAC26FB4(&qword_1EBC25858, &qword_1BAC3A3A8);
        sub_1BAC38984();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1BAC2DD48(v14, a4 & 1);
      v16 = sub_1BAC2DC1C(v8, v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

      v11 = v16;
      if (v15)
      {
LABEL_10:
        v18 = *a5;
        sub_1BAC19210(v27, v26);
        sub_1BAC1905C(v27);

        v19 = (v18[7] + 32 * v11);
        sub_1BAC1905C(v19);
        sub_1BAC2B560(v26, v19);
        goto LABEL_14;
      }
    }

    v20 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v21 = (v20[6] + 16 * v11);
    *v21 = v8;
    v21[1] = v7;
    sub_1BAC2B560(v27, (v20[7] + 32 * v11));
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v20[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1BAC38AA4();
  __break(1u);
  return result;
}

uint64_t sub_1BAC2E308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1BAC2E344@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_1BAC19210(*(v3 + 56) + 32 * v10, v18);
    *&v19 = v13;
    *(&v19 + 1) = v12;
    sub_1BAC2B560(v18, &v20);

    v15 = *(&v19 + 1);
    v16 = v19;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v17 = v1[5];
      *&v18[0] = v16;
      *(&v18[0] + 1) = v15;
      v18[1] = v20;
      v18[2] = v21;
      v17(v18);
      return sub_1BAC1C8B0(v18, &qword_1EBC25868, &qword_1BAC3A3B8);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Watchdog.__allocating_init(name:duration:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  Watchdog.init(name:duration:logger:)(a1, a2, a3, a4);
  return v8;
}

void Watchdog.pet(adding:)(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_deadline);
  os_unfair_lock_lock(v3);
  v4 = sub_1BAC26FB4(&qword_1EBC25878, &qword_1BAC3A3C8);
  sub_1BAC2E584(v3 + *(v4 + 28), a1);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1BAC2E584(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAC38514();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BAC26FB4(&qword_1EBC25870, &qword_1BAC3A3C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  sub_1BAC2E9E4(a1, &v13 - v9);
  v11 = sub_1BAC1DA1C(v10, 1, v4);
  result = sub_1BAC1FAA0(v10);
  if (v11 != 1)
  {
    sub_1BAC1FAA0(a1);
    sub_1BAC38504();
    MEMORY[0x1BFAFE850](v7, a2);
    (*(v5 + 8))(v7, v4);
    return sub_1BAC1926C(a1, 0, 1, v4);
  }

  return result;
}

uint64_t Watchdog.deinit()
{
  v1 = (v0 + OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_deadline);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_deadline));
  v2 = *(sub_1BAC26FB4(&qword_1EBC25878, &qword_1BAC3A3C8) + 28);
  sub_1BAC1FAA0(v1 + v2);
  v3 = sub_1BAC38514();
  sub_1BAC1926C(v1 + v2, 1, 1, v3);
  os_unfair_lock_unlock(v1);

  v4 = OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_logger;
  sub_1BAC383E4();
  sub_1BAC19294();
  (*(v5 + 8))(v0 + v4);
  sub_1BAC1FAA0(v1 + v2);
  return v0;
}

uint64_t Watchdog.__deallocating_deinit()
{
  Watchdog.deinit();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t type metadata accessor for Watchdog(uint64_t a1)
{
  result = qword_1EBC25090;
  if (!qword_1EBC25090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BAC2E87C(uint64_t a1)
{
  sub_1BAC383E4();
  if (v1 <= 0x3F)
  {
    sub_1BAC2E980(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BAC2E980(uint64_t a1)
{
  if (!qword_1EBC25340)
  {
    sub_1BAC2B39C(&qword_1EBC25870, &qword_1BAC3A3C0);
    v1 = sub_1BAC383C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBC25340);
    }
  }
}

uint64_t sub_1BAC2E9E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAC26FB4(&qword_1EBC25870, &qword_1BAC3A3C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAC2EA54(uint64_t a1, uint64_t a2)
{
  v34[3] = *MEMORY[0x1E69E9840];
  v3 = sub_1BAC38514();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BAC26FB4(&qword_1EBC25870, &qword_1BAC3A3C0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = (a1 + OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_deadline);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_deadline));
  v14 = sub_1BAC26FB4(&qword_1EBC25878, &qword_1BAC3A3C8);
  sub_1BAC2E9E4(v13 + *(v14 + 28), v12);
  os_unfair_lock_unlock(v13);
  sub_1BAC2E9E4(v12, v10);
  if (sub_1BAC1DA1C(v10, 1, v3) != 1)
  {
    (*(v4 + 32))(v6, v10, v3);
    sub_1BAC21B20(&qword_1EBC25088, MEMORY[0x1E69E8008], MEMORY[0x1E69E8010]);
    if ((sub_1BAC385F4() & 1) == 0)
    {
      sub_1BAC21678(v6);
LABEL_14:
      (*(v4 + 8))(v6, v3);
      v15 = v12;
      return sub_1BAC1FAA0(v15);
    }

    v16 = OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_logger;

    v17 = sub_1BAC383D4();
    v18 = sub_1BAC38754();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v16;
      v21 = v20;
      v34[0] = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_1BAC1914C(*(a1 + 16), *(a1 + 24), v34);
      _os_log_impl(&dword_1BAC16000, v17, v18, "WATCHDOG EXPIRED: The watchdog for %{public}s has expired. Capturing stackshot.", v19, 0xCu);
      sub_1BAC1905C(v21);
      MEMORY[0x1BFAFF600](v21, -1, -1);
      MEMORY[0x1BFAFF600](v19, -1, -1);
    }

    *(&v34[1] + 4) = 0;
    LODWORD(v34[0]) = 20;
    *(v34 + 4) = 1;
    getpid();
    v22 = sub_1BAC38614();
    v23 = WriteCrashReportWithStackshot();

    if (v23)
    {
      v24 = sub_1BAC383D4();
      v25 = sub_1BAC38774();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1BAC16000, v24, v25, "WATCHDOG EXPIRED: Stackshot acquired", v26, 2u);
        v27 = v26;
LABEL_12:
        MEMORY[0x1BFAFF600](v27, -1, -1);
      }
    }

    else
    {

      v24 = sub_1BAC383D4();
      v28 = sub_1BAC38764();

      if (os_log_type_enabled(v24, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v33 = v30;
        *v29 = 136446210;
        *(v29 + 4) = sub_1BAC1914C(*(a1 + 16), *(a1 + 24), &v33);
        _os_log_impl(&dword_1BAC16000, v24, v28, "WATCHDOG EXPIRED: The watchdog for %{public}s has expired. Unable to get stackshot.", v29, 0xCu);
        sub_1BAC1905C(v30);
        MEMORY[0x1BFAFF600](v30, -1, -1);
        v27 = v29;
        goto LABEL_12;
      }
    }

    goto LABEL_14;
  }

  sub_1BAC1FAA0(v12);
  v15 = v10;
  return sub_1BAC1FAA0(v15);
}

uint64_t sub_1BAC2EF1C()
{
  v7 = sub_1BAC387B4();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BAC38794();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1BAC384F4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1BAC2F1D0();
  sub_1BAC384E4();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1BAC21B20(&unk_1EBC25068, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1BAC26FB4(&qword_1EBC25888, &unk_1BAC3A420);
  sub_1BAC21B68(&qword_1EBC25080, &qword_1EBC25888, &unk_1BAC3A420);
  sub_1BAC38884();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1BAC387D4();
  qword_1EBC25238 = result;
  return result;
}

uint64_t sub_1BAC2F16C()
{
  v1 = *(sub_1BAC38514() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1BAC2EA54(v2, v3);
}

unint64_t sub_1BAC2F1D0()
{
  result = qword_1EBC254B8;
  if (!qword_1EBC254B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC254B8);
  }

  return result;
}

uint64_t sub_1BAC2F224()
{
  sub_1BAC38B24();
  sub_1BAC38654();
  return sub_1BAC38B64();
}