unint64_t sub_188A921E4()
{
  result = qword_1ED48EC30;
  if (!qword_1ED48EC30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED48EC30);
  }

  return result;
}

uint64_t sub_188A92230(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(*(v3 + 48) + 16) && (sub_188A5E664(a1 & 1, a2, a3), (v9 & 1) != 0))
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364F8, &qword_18A650CA0);
    v10 = swift_dynamicCastClassUnconditional();
    sub_188A34360(&qword_1ED48C930, &qword_1EA9364F8, &qword_18A650CA0, &unk_18A662940);
    swift_unknownObjectRetain();
  }

  else
  {
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = Strong;
    v13 = 0uLL;
    if (Strong)
    {
      if (a1)
      {
        v14 = [(UIView *)Strong _backing_outermostLayer];
      }

      else
      {
        v14 = [Strong layer];
      }

      v22 = v14;

      v23 = sub_18A4A7258();
      v24 = [v22 valueForKeyPath_];

      if (v24)
      {
        sub_18A4A7DE8();
        swift_unknownObjectRelease();
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      sub_188A3F29C(&v45, &v41, &qword_1EA934050, qword_18A64CA10);
      if (v42)
      {
        sub_188A55538(&v41, v40);
        sub_188A55598(v40, v39);
        sub_188A55598(v39, v38);
        sub_188A91E9C(v38, 0, v43);
        v36 = v43[1];
        v37 = v43[0];
        v34 = v43[3];
        v35 = v43[2];
        v32 = v43[5];
        v33 = v43[4];
        v30 = v43[7];
        v31 = v43[6];
        LOBYTE(v12) = v44;
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
        sub_188A3F5FC(&v45, &qword_1EA934050, qword_18A64CA10);
        v21 = v30;
        v20 = v31;
        v19 = v32;
        v18 = v33;
        v17 = v34;
        v16 = v35;
        v15 = v36;
        v13 = v37;
      }

      else
      {
        sub_188A3F5FC(&v45, &qword_1EA934050, qword_18A64CA10);
        LOBYTE(v12) = 0;
        v15 = 0uLL;
        v16 = 0uLL;
        v17 = 0uLL;
        v18 = 0uLL;
        v19 = 0uLL;
        v20 = 0uLL;
        v21 = 0uLL;
        v13 = 0uLL;
      }
    }

    else
    {
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
    }

    v45 = v13;
    v46 = v15;
    v47 = v16;
    v48 = v17;
    v49 = v18;
    v50 = v19;
    v51 = v20;
    v52 = v21;
    v53 = v12;
    v25 = swift_unknownObjectWeakLoadStrong();
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = a1 & 1;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364F8, &qword_18A650CA0);
    swift_allocObject();

    v10 = sub_188A926A0(&v45, v25, sub_188F0E03C, v27);

    *(v10 + 752) = 1;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v40[0] = *(v4 + 48);
    *(v4 + 48) = 0x8000000000000000;
    sub_188A5E4B4(v10, a1 & 1, a2, a3, isUniquelyReferenced_nonNull_native, v40, &qword_1ED48C930, &qword_1EA9364F8, &qword_18A650CA0);

    *(v4 + 48) = *&v40[0];
    swift_endAccess();
    sub_188A34360(&qword_1ED48C930, &qword_1EA9364F8, &qword_18A650CA0, &unk_18A662940);
  }

  os_unfair_lock_unlock(v8 + 4);
  return v10;
}

uint64_t sub_188A926A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v65 = a2;
  v9 = sub_18A4A7A58();
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18A4A6E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_18A4A7A38();
  MEMORY[0x1EEE9AC00](v12 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940E50, &qword_18A676C70);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  *(v5 + 32) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B7E0, &unk_18A662960);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  *(v5 + 40) = v14;
  sub_188AA24A8(&v67);
  v15 = v72;
  v17 = v73;
  v16 = v74;
  *(v5 + 144) = v73;
  *(v5 + 160) = v16;
  v18 = v68;
  v20 = v69;
  v19 = v70;
  *(v5 + 80) = v69;
  *(v5 + 96) = v19;
  v21 = v70;
  v23 = v71;
  v22 = v72;
  *(v5 + 112) = v71;
  *(v5 + 128) = v22;
  v24 = v68;
  v25 = v67;
  *(v5 + 48) = v67;
  *(v5 + 64) = v24;
  *(v5 + 264) = v15;
  *(v5 + 280) = v17;
  *(v5 + 296) = v74;
  *(v5 + 200) = v18;
  *(v5 + 216) = v20;
  *(v5 + 232) = v21;
  *(v5 + 248) = v23;
  *(v5 + 176) = v75;
  *(v5 + 312) = v75;
  *(v5 + 184) = v25;
  swift_unknownObjectWeakInit();
  v26 = v72;
  v28 = v73;
  v27 = v74;
  *(v5 + 432) = v73;
  *(v5 + 448) = v27;
  v29 = v68;
  v31 = v69;
  v30 = v70;
  *(v5 + 368) = v69;
  *(v5 + 384) = v30;
  v32 = v70;
  v34 = v71;
  v33 = v72;
  *(v5 + 400) = v71;
  *(v5 + 416) = v33;
  v35 = v68;
  *(v5 + 336) = v67;
  *(v5 + 352) = v35;
  v36 = v72;
  v37 = v74;
  *(v5 + 568) = v73;
  *(v5 + 584) = v37;
  v39 = v67;
  v38 = v68;
  v40 = v70;
  *(v5 + 504) = v69;
  *(v5 + 520) = v40;
  *(v5 + 536) = v71;
  *(v5 + 552) = v36;
  *(v5 + 472) = v67;
  *(v5 + 488) = v38;
  v41 = v74;
  *(v5 + 704) = v28;
  *(v5 + 720) = v41;
  *(v5 + 640) = v31;
  *(v5 + 656) = v32;
  *(v5 + 672) = v34;
  *(v5 + 688) = v26;
  *(v5 + 328) = 0;
  *(v5 + 464) = v75;
  *(v5 + 600) = v75;
  *(v5 + 601) = 0;
  *(v5 + 736) = v75;
  *(v5 + 608) = v39;
  *(v5 + 624) = v29;
  swift_unknownObjectWeakInit();
  *(v5 + 768) = 0;
  *(v5 + 776) = a3;
  *(v5 + 784) = a4;
  sub_188A5E418();

  sub_18A4A7A28();
  sub_18A4A6E38();
  (*(v63 + 104))(v62, *MEMORY[0x1E69E8090], v64);
  v42 = sub_18A4A7A98();
  v43 = *(a1 + 80);
  v44 = *(a1 + 112);
  v66[6] = *(a1 + 96);
  v66[7] = v44;
  v45 = *(a1 + 16);
  v46 = *(a1 + 48);
  v66[2] = *(a1 + 32);
  v66[3] = v46;
  v47 = *(a1 + 48);
  v48 = *(a1 + 80);
  v66[4] = *(a1 + 64);
  v66[5] = v48;
  v49 = *(a1 + 16);
  v66[0] = *a1;
  v50 = v66[0];
  v66[1] = v49;
  *(&v66[13] + 8) = v43;
  *(&v66[14] + 8) = v66[6];
  *(&v66[15] + 8) = *(a1 + 112);
  *(&v66[9] + 8) = v45;
  *(&v66[10] + 8) = v66[2];
  *(&v66[11] + 8) = v47;
  *(&v66[12] + 8) = v66[4];
  *(v5 + 16) = v42;
  LOBYTE(v66[8]) = *(a1 + 128);
  BYTE8(v66[16]) = *(a1 + 128);
  *(&v66[8] + 8) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940E58, &qword_18A676C78);
  v51 = swift_allocObject();
  *(v51 + 284) = 0;
  memcpy((v51 + 16), v66, 0x109uLL);
  *(v5 + 24) = v51;
  swift_beginAccess();
  v52 = v73;
  v53 = v74;
  v54 = v71;
  *(v5 + 264) = v72;
  *(v5 + 280) = v52;
  *(v5 + 296) = v53;
  v55 = v67;
  *(v5 + 200) = v68;
  v56 = v70;
  *(v5 + 216) = v69;
  *(v5 + 232) = v56;
  *(v5 + 248) = v54;
  *(v5 + 312) = v75;
  *(v5 + 184) = v55;
  swift_beginAccess();
  v57 = v74;
  *(v5 + 144) = v73;
  *(v5 + 160) = v57;
  *(v5 + 176) = v75;
  v58 = v70;
  *(v5 + 80) = v69;
  *(v5 + 96) = v58;
  v59 = v72;
  *(v5 + 112) = v71;
  *(v5 + 128) = v59;
  v60 = v68;
  *(v5 + 48) = v67;
  *(v5 + 64) = v60;
  *(v5 + 752) = 0;
  *(v5 + 760) = 0;
  swift_unknownObjectWeakAssign();
  return v5;
}

void sub_188A92B38(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_188D7B65C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_188E79D58();
      goto LABEL_18;
    }

    sub_188A92CF4(v11 + 1);
  }

  v13 = *v5;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v10 & 1);
  sub_18A4A7348();
  v14 = sub_18A4A88E8();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = v14 & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    while (1)
    {
      v19 = v18 + 24 * a4;
      if (*v19 == (v10 & 1))
      {
        v20 = *(v19 + 8) == a2 && *(v19 + 16) == a3;
        if (v20 || (sub_18A4A86C8() & 1) != 0)
        {
          break;
        }
      }

      a4 = (a4 + 1) & v17;
      if (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    sub_18A4A8798();
    __break(1u);
  }

LABEL_18:
  v21 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = *(v21 + 48) + 24 * a4;
  *v22 = v10 & 1;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }
}

void sub_188A92CF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A40, &qword_18A64D588);
  v4 = sub_18A4A8068();
  v5 = v4;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 24 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = *(v18 + 1);
      v21 = *(v18 + 2);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v19);

      sub_18A4A7348();
      v22 = sub_18A4A88E8();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

id _eventComponentPhaseMapping()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v0 = _eventComponentPhaseMapping_mapping;
  if (!_eventComponentPhaseMapping_mapping)
  {
    v4[0] = &unk_1EFE2FEA8;
    v4[1] = &unk_1EFE2FED8;
    v5[0] = &unk_1EFE2FEC0;
    v5[1] = &unk_1EFE2FEF0;
    v4[2] = &unk_1EFE2FF08;
    v4[3] = &unk_1EFE2FF38;
    v5[2] = &unk_1EFE2FF20;
    v5[3] = &unk_1EFE2FF50;
    v4[4] = &unk_1EFE2FF68;
    v5[4] = &unk_1EFE2FF80;
    v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:5];
    v2 = _eventComponentPhaseMapping_mapping;
    _eventComponentPhaseMapping_mapping = v1;

    v0 = _eventComponentPhaseMapping_mapping;
  }

  return v0;
}

id _eventComponentPhaseMapping_0()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v0 = _eventComponentPhaseMapping_mapping_0;
  if (!_eventComponentPhaseMapping_mapping_0)
  {
    v4[0] = &unk_1EFE31A08;
    v4[1] = &unk_1EFE31A20;
    v5[0] = &unk_1EFE31A08;
    v5[1] = &unk_1EFE31A20;
    v4[2] = &unk_1EFE319D8;
    v4[3] = &unk_1EFE319F0;
    v5[2] = &unk_1EFE319D8;
    v5[3] = &unk_1EFE319F0;
    v4[4] = &unk_1EFE31A38;
    v5[4] = &unk_1EFE31A38;
    v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:5];
    v2 = _eventComponentPhaseMapping_mapping_0;
    _eventComponentPhaseMapping_mapping_0 = v1;

    v0 = _eventComponentPhaseMapping_mapping_0;
  }

  return v0;
}

id _eventComponentPhaseMapping_1()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v0 = _eventComponentPhaseMapping_mapping_1;
  if (!_eventComponentPhaseMapping_mapping_1)
  {
    v4[0] = &unk_1EFE33CA0;
    v4[1] = &unk_1EFE33CB8;
    v5[0] = &unk_1EFE33CA0;
    v5[1] = &unk_1EFE33CB8;
    v4[2] = &unk_1EFE33CD0;
    v4[3] = &unk_1EFE33CE8;
    v5[2] = &unk_1EFE33CD0;
    v5[3] = &unk_1EFE33CE8;
    v4[4] = &unk_1EFE33D00;
    v5[4] = &unk_1EFE33D00;
    v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:5];
    v2 = _eventComponentPhaseMapping_mapping_1;
    _eventComponentPhaseMapping_mapping_1 = v1;

    v0 = _eventComponentPhaseMapping_mapping_1;
  }

  return v0;
}

void forwardTouchMethod(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = [UIApp _responderBasedEventDeliverer];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v12 forward:v10 phase:a5 withEvent:v11 fromResponder:v9];
  }

  else
  {
    v13 = [v9 nextResponder];
    v14 = v13;
    if (v13 && v13 != v9)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __forwardTouchMethod_block_invoke;
      v22 = &unk_1E711E270;
      v23 = v9;
      v16 = v14;
      v24 = v16;
      v17 = v11;
      v25 = v17;
      v18 = v15;
      v26 = v18;
      [v10 enumerateObjectsUsingBlock:&v19];
      if ([v18 count])
      {
        ([v16 methodForSelector:a2])(v16, a2, v18, v17);
      }
    }
  }
}

void __forwardTouchMethod_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _wantsForwardingFromResponder:*(a1 + 32) toNextResponder:*(a1 + 40) withEvent:*(a1 + 48)])
  {
    [*(a1 + 56) addObject:v3];
  }
}

BOOL _UIResponderForwarderWantsForwardingFromResponder(void *a1, const char *a2, void *a3, void *a4, void *a5)
{
  v62 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v9 _eventComponentPhase];
  v14 = [v13 value];

  if (v14 > 4 || v14 == 2)
  {
    if (!os_variant_has_internal_diagnostics())
    {
      v21 = *(__UILogGetCategoryCachedImpl("Assert", &_UIResponderForwarderWantsForwardingFromResponder___s_category) + 8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0].receiver) = 0;
        _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Unexpected touch phase during forwarding", buf, 2u);
      }

      goto LABEL_12;
    }

    IsDeallocating = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(IsDeallocating, OS_LOG_TYPE_FAULT))
    {
LABEL_34:

LABEL_12:
      v15 = 0;
      goto LABEL_32;
    }

LABEL_39:
    LOWORD(buf[0].receiver) = 0;
    _os_log_fault_impl(&dword_188A29000, IsDeallocating, OS_LOG_TYPE_FAULT, "Unexpected touch phase during forwarding", buf, 2u);
    goto LABEL_34;
  }

  os_variant_has_internal_diagnostics();
  if (([v9 _isAbandoningForwardingRecord] & 1) == 0)
  {
    v16 = [v9 _mutableForwardingRecord];
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__212;
    v46 = __Block_byref_object_dispose__212;
    v47 = 0;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = ___UIResponderForwarderWantsForwardingFromResponder_block_invoke;
    v39[3] = &unk_1E7108FF0;
    v17 = v11;
    v40 = v17;
    v41 = &v42;
    [v16 enumerateObjectsUsingBlock:v39];
    v18 = v43[5];
    if (v14)
    {
      if (v18)
      {
        WeakRetained = objc_loadWeakRetained((v18 + 8));
        v20 = WeakRetained == v10;

        if (!v20)
        {
          [v9 _abandonForwardingRecord];
          v15 = 1;
LABEL_31:

          _Block_object_dispose(&v42, 8);
          goto LABEL_32;
        }
      }

LABEL_29:
      v29 = v43;
      v30 = v43[5];
      if (v30)
      {
        *(v30 + 24) = v14;
        v15 = v29[5] != 0;
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_31;
    }

    if (v18)
    {
      goto LABEL_29;
    }

    if (![v9 _eventComponentType] && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v17, "_shouldApplyExclusiveTouch"))
    {
      v22 = [v9 window];
      v23 = [v12 touchesForWindow:v22];
      if ([v23 count] > 1)
      {

        goto LABEL_29;
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && [v17 _isInExclusiveTouchSubviewTree])
      {
        [v22 _setExclusiveTouchView:v17];
        v37 = [v12 _exclusiveTouchWindows];
        [v37 addObject:v22];
      }
    }

    if ((_objc_rootIsDeallocating() & 1) == 0 && !_objc_rootIsDeallocating())
    {
      v24 = [_UIEventComponentForwardingRecipient alloc];
      v25 = v17;
      v26 = v10;
      if (v24)
      {
        buf[0].receiver = v24;
        buf[0].super_class = _UIEventComponentForwardingRecipient;
        v27 = [(objc_super *)buf init];
        v24 = v27;
        if (v27)
        {
          objc_storeWeak(v27 + 2, v25);
          objc_storeWeak(&v24->fromResponder, v26);
        }
      }

      v28 = v43[5];
      v43[5] = v24;

      [v16 addObject:v43[5]];
      goto LABEL_29;
    }

    v38 = 0;
    memset(buf, 0, sizeof(buf));
    v33 = MEMORY[0x1E69E9C10];
    v34 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    IsDeallocating = _objc_rootIsDeallocating();
    v35 = _objc_rootIsDeallocating();
    Name = sel_getName(a2);
    v48[0] = 67110658;
    v48[1] = IsDeallocating;
    v49 = 1024;
    v50 = v35;
    v51 = 2112;
    v52 = v10;
    v53 = 2112;
    v54 = v17;
    v55 = 2112;
    v56 = v9;
    v57 = 2112;
    v58 = v12;
    v59 = 2080;
    v60 = Name;
    v10 = MEMORY[0x1E69E9C10];
    v9 = _os_log_send_and_compose_impl(v11, &v38, buf, 80, &dword_188A29000, MEMORY[0x1E69E9C10], 16, "current deallocating: %i, next deallocationg: %i, current: %@, next: %@, self: %@, event: %@, cmd: %s", v48, 64);

    _os_crash_msg();
    __break(1u);
    goto LABEL_39;
  }

  v15 = 1;
LABEL_32:

  return v15;
}

void sub_188A94248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_UIEventComponentPhaseValue *_eventComponentPhaseForUnderlyingValue(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v5 = [a2 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 5;
  }

  v7 = [[_UIEventComponentPhaseValue alloc] initWithValue:v6 underlyingValue:a1];

  return v7;
}

uint64_t _UIApplicationProcessIsSpringBoard()
{
  if (qword_1EA992F00 != -1)
  {
    dispatch_once(&qword_1EA992F00, &__block_literal_global_1292);
  }

  return byte_1EA992DB9;
}

uint64_t _UILiveSceneResizeEnabled()
{
  if (qword_1ED49E140 != -1)
  {
    dispatch_once(&qword_1ED49E140, &__block_literal_global_13_0);
  }

  return byte_1ED49E114;
}

void __dispatchPreprocessedEventFromEventQueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v261 = *MEMORY[0x1E69E9840];
  IOHIDEventGetType();
  IOHIDEventGetTimeStamp();
  ++_MergedGlobals_1216;
  kdebug_trace();
  alm_stop_tracking_responsive_launch();
  TimeStamp = IOHIDEventGetTimeStamp();
  v7 = _UIMediaTimeForMachTime(TimeStamp);
  if ((_UIUpdateCycleEnabled() & 1) == 0)
  {
    [MEMORY[0x1E6979518] setFrameInputTime:a2 withToken:v7];
  }

  v8 = *(a3 + 8);
  Type = IOHIDEventGetType();
  v171 = v8;
  if (![(UIApplication *)v8 _internalHandleHIDEventBypassingUIEvent:a1])
  {
    v11 = [(UIEventEnvironment *)a3 UIKitEventForHIDEvent:a1];
    v12 = v11;
    if (v11)
    {
      [v11 _setHIDEvent:a1];
      v166 = [v171 isIgnoringInteractionEvents];
      v13 = _UIEventHIDUIWindowForHIDEvent(a1);
      v165 = [v13 windowScene];

      if (v165)
      {
        v14 = [v165 _isUserInteractionEnabled] ^ 1;
      }

      else
      {
        v14 = 0;
      }

      [v171 systemIsAnimatingApplicationLifecycleEvent];
      v17 = BKSHIDEventGetDigitizerAttributes();
      v18 = [v17 systemGestureStateChange];

      v170 = v166 | v14;
      v163 = v18;
      v164 = _UIEventHIDShouldAllowHoverEventGeneration(a1);
      if (Type == 11 && v18)
      {
        v19 = _UIEventHIDUIWindowForHIDEvent(a1);
        if (!v19)
        {
          v20 = *(__UILogGetCategoryCachedImpl("Touch", &qword_1ED49F8E8) + 8);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v249 = v12;
            _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "unexpected nil window in __dispatchSystemChangeDigitizerEvent, touchesEvent:%@", buf, 0xCu);
          }
        }

        v21 = BKSHIDEventGetDigitizerAttributes();
        v22 = [v21 systemGesturesPossible];

        IOHIDEventGetType();
        IOHIDEventGetTimeStamp();
        kdebug_trace();
        __sendSystemGestureLatentClientUpdate(v12, v19, v22, 0);

        goto LABEL_21;
      }

      if (Type == 11)
      {
        if ((_UIEventHIDIgnoresDragEvents() & 1) == 0)
        {
          Children = IOHIDEventGetChildren();
          if (Children)
          {
            v30 = Children;
            if (CFArrayGetCount(Children) >= 1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v30, 0);
              v32 = BKSHIDEventGetDigitizerAttributes();
              v33 = _UIEventHIDPathAttributesForChild(v32, ValueAtIndex);
              v34 = [v33 locus];

              if (v34)
              {
                v176 = 0;
                __dispatchDragEvent(v12, &v176, a3);
                v25 = v176;
LABEL_40:
                v23 = 0;
                v24 = 0;
LABEL_127:
                v167 = 1;
                goto LABEL_22;
              }
            }
          }
        }

        if (v164)
        {
          v38 = _UIEventHIDUIWindowForHIDEvent(a1);
          v161 = [(UIEventEnvironment *)a3 _hoverEventForWindow:v38];
        }

        else
        {
          v161 = 0;
        }

        v45 = _UIEventHIDUIWindowForHIDEvent(a1);
        v46 = [v45 _contextId];
        v157 = [v45 screen];
        v240[0] = 0;
        v240[1] = v240;
        v240[2] = 0x3032000000;
        v240[3] = __Block_byref_object_copy__143;
        v240[4] = __Block_byref_object_dispose__143;
        v241 = 0;
        v47 = [(UIEventEnvironment *)a3 _touchMapForWindow:v45];
        Mutable = v47;
        if (v47)
        {
          CFRetain(v47);
        }

        else
        {
          Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
        }

        v155 = CFDictionaryGetCount(Mutable) != 0;
        v153 = *(a3 + 8);
        if ([v153 _isSpringBoard])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v49 = [v153 _gestureEnvironment];
            [(UIGestureEnvironment *)v49 _forceUpdateForSpringBoardOnly];
          }
        }

        [v12 _clearTouches];
        v50 = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
        CFAutorelease(v50);
        IntegerValue = IOHIDEventGetIntegerValue();
        v238[0] = 0;
        v238[1] = v238;
        v238[2] = 0x2020000000;
        v239 = 0;
        v234 = 0;
        v235 = &v234;
        v236 = 0x2020000000;
        v237 = 0;
        v233[0] = MEMORY[0x1E69E9820];
        v233[1] = 3221225472;
        v233[2] = ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke;
        v233[3] = &unk_1E7115F48;
        v233[4] = &v234;
        v233[5] = v238;
        _UIEventHIDEnumerateChildren(a1, 11, v233);
        v168 = IntegerValue & 0x83;
        v52 = BKSHIDEventGetDigitizerAttributes();
        v158 = [v52 systemGesturesPossible];

        v231[0] = 0;
        v231[1] = v231;
        v231[2] = 0x2020000000;
        v232 = 0;
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F708);
        if (*CategoryCachedImpl)
        {
          v137 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
          {
            v138 = v235[3];
            *buf = 67109376;
            *v249 = v168 >> 7;
            *&v249[4] = 1024;
            *&v249[6] = v138;
            _os_log_impl(&dword_188A29000, v137, OS_LOG_TYPE_ERROR, "Updating touches: isCancelling: %d; digitizerChildCount: %d", buf, 0xEu);
          }
        }

        if (v168 <= 0x7F && v235[3])
        {
          v54 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F710);
          if (*v54)
          {
            v151 = *(v54 + 8);
            if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
            {
              v152 = v235[3];
              *buf = 67109120;
              *v249 = v152;
              _os_log_impl(&dword_188A29000, v151, OS_LOG_TYPE_ERROR, "\tEvent has %d digitizer child events", buf, 8u);
            }
          }

          v215 = MEMORY[0x1E69E9820];
          v216 = 3221225472;
          v217 = ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_30;
          v218 = &unk_1E7119270;
          v223 = a1;
          v224 = Mutable;
          v225 = a3;
          v226 = v161;
          v230 = v46;
          v219 = v45;
          v221 = v231;
          v227 = v7;
          v228 = v12;
          v229 = v50;
          v220 = v157;
          v222 = v240;
          _UIEventHIDEnumerateChildren(a1, 11, &v215);
        }

        SenderID = IOHIDEventGetSenderID();
        v56 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F728);
        if (*v56)
        {
          v139 = *(v56 + 8);
          if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
          {
            Count = CFDictionaryGetCount(Mutable);
            *buf = 67109120;
            *v249 = Count;
            _os_log_impl(&dword_188A29000, v139, OS_LOG_TYPE_ERROR, "\tPrevious touch map count prior to senderID migration: %d", buf, 8u);
          }
        }

        v57 = [(__CFDictionary *)Mutable objectEnumerator];
        v58 = [v57 allObjects];
        v214[0] = MEMORY[0x1E69E9820];
        v214[1] = 3221225472;
        v214[2] = ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_37;
        v214[3] = &__block_descriptor_56_e24_v32__0__UITouch_8Q16_B24l;
        v214[4] = SenderID;
        v214[5] = v50;
        v214[6] = Mutable;
        [v58 enumerateObjectsUsingBlock:v214];

        if ((_UIEventHIDShouldIgnoreEventsExpectedToBecomeDragEvent() & 1) == 0)
        {
          v59 = _UIEventHIDExpectedToBecomeDragEvent(a1);
          v60 = [(__CFDictionary *)Mutable objectEnumerator];
          v61 = [v60 allObjects];
          v212[0] = MEMORY[0x1E69E9820];
          v212[1] = 3221225472;
          v212[2] = ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_2;
          v212[3] = &__block_descriptor_49_e24_v32__0__UITouch_8Q16_B24l;
          v213 = v59;
          v212[4] = v50;
          v212[5] = Mutable;
          [v61 enumerateObjectsUsingBlock:v212];
        }

        v206 = 0;
        v207 = &v206;
        v208 = 0x3032000000;
        v209 = __Block_byref_object_copy__41;
        v210 = __Block_byref_object_dispose__42;
        v211 = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_43;
        aBlock[3] = &unk_1E71192D8;
        aBlock[4] = &v206;
        v62 = _Block_copy(aBlock);
        v63 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F730);
        v64 = v158;
        if (*v63)
        {
          v141 = *(v63 + 8);
          if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
          {
            v142 = CFDictionaryGetCount(Mutable);
            *buf = 67109120;
            *v249 = v142;
            _os_log_impl(&dword_188A29000, v141, OS_LOG_TYPE_ERROR, "\tPrevious touch map count prior to terminal phase evaluation: %d", buf, 8u);
          }

          v64 = v158;
        }

        v199[0] = MEMORY[0x1E69E9820];
        v199[1] = 3221225472;
        v199[2] = ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_47;
        v199[3] = &unk_1E7119300;
        v203 = v168 > 0x7F;
        v201 = v7;
        v204 = v170 & 1;
        v202 = v12;
        v65 = v62;
        v200 = v65;
        [(__CFDictionary *)Mutable enumerateKeysAndObjectsUsingBlock:v199];
        v66 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F748);
        if (*v66)
        {
          v143 = *(v66 + 8);
          if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
          {
            v144 = CFDictionaryGetCount(v50);
            *buf = 67109120;
            *v249 = v144;
            _os_log_impl(&dword_188A29000, v143, OS_LOG_TYPE_ERROR, "\tNew touch map count: %d", buf, 8u);
          }

          v64 = v158;
        }

        v195[0] = MEMORY[0x1E69E9820];
        v195[1] = 3221225472;
        v195[2] = ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_52;
        v195[3] = &unk_1E7119328;
        v198 = v170 & 1;
        v197 = v12;
        v156 = v65;
        v196 = v156;
        [(__CFDictionary *)v50 enumerateKeysAndObjectsUsingBlock:v195];
        v67 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F750);
        if (*v67)
        {
          v145 = *(v67 + 8);
          if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
          {
            v146 = [v207[5] count];
            *buf = 134217984;
            *v249 = v146;
            _os_log_impl(&dword_188A29000, v145, OS_LOG_TYPE_ERROR, "\tTouches to cancel: %lu", buf, 0xCu);
          }

          v64 = v158;
        }

        if ([v207[5] count])
        {
          [v153 _cancelTouchesOrPresses:v207[5] withEvent:v12];
          __updateSystemGestureRecognitionIsPossible(v207[5], v45, v64, 1);
        }

        else if (v168 >= 0x80)
        {
          v68 = [v12 allTouches];
          __updateSystemGestureRecognitionIsPossible(v68, v45, v64, 1);

          v64 = v158;
        }

        v69 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F758);
        if (*v69)
        {
          v147 = *(v69 + 8);
          if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
          {
            v148 = CFDictionaryGetCount(v50);
            *buf = 67109120;
            *v249 = v148;
            _os_log_impl(&dword_188A29000, v147, OS_LOG_TYPE_ERROR, "+++++++++++   Number of touches in new touch map: %d", buf, 8u);
          }

          v64 = v158;
        }

        [(UIEventEnvironment *)a3 _setTouchMap:v50 forWindow:v45];
        if (v168 <= 0x7F)
        {
          v70 = [v12 allTouches];
          __updateSystemGestureRecognitionIsPossible(v70, v45, v64, 0);
        }

        else if (!v235[3])
        {
          __sendSystemGestureLatentClientUpdate(v12, v45, v64, 1);
        }

        v185[0] = MEMORY[0x1E69E9820];
        v185[1] = 3221225472;
        v185[2] = ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_56;
        v185[3] = &unk_1E7119350;
        v187 = v240;
        v188 = v231;
        v189 = v12;
        v154 = v45;
        v186 = v154;
        v190 = v161;
        v191 = Mutable;
        v192 = v50;
        v193 = a3;
        v194 = v155;
        v159 = _Block_copy(v185);
        v71 = v159;
        v183 = 0u;
        v184 = 0u;
        v181 = 0u;
        v182 = 0u;
        v72 = [v12 allTouches];
        v73 = [v72 countByEnumeratingWithState:&v181 objects:buf count:16];
        v167 = v73 != 0;
        if (v73)
        {
          v74 = 0;
          v75 = *v182;
          do
          {
            v76 = 0;
            do
            {
              if (*v182 != v75)
              {
                objc_enumerationMutation(v72);
              }

              v77 = *(*(&v181 + 1) + 8 * v76);
              v78 = [v77 phase];
              if (v78 != 2)
              {
                if (v78 == 3)
                {
                  [(UITouch *)v77 _willBeDispatchedAsEnded];
                }

                v79 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F760);
                if (*v79)
                {
                  v80 = *(v79 + 8);
                  if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                  {
                    v81 = [v77 _phaseDescription];
                    LODWORD(v244) = 138412290;
                    *(&v244 + 4) = v81;
                    _os_log_impl(&dword_188A29000, v80, OS_LOG_TYPE_ERROR, "Setting shouldSend to YES for touch phase %@", &v244, 0xCu);
                  }
                }

                v74 = 1;
              }

              ++v76;
            }

            while (v73 != v76);
            v82 = [v72 countByEnumeratingWithState:&v181 objects:buf count:16];
            v73 = v82;
          }

          while (v82);

          if ((v74 & 1) == 0)
          {
            v167 = 0;
            goto LABEL_102;
          }

          v72 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
          [v72 peekApplicationEvent:v12];
        }

LABEL_102:
        v180 = 0u;
        v178 = 0u;
        v179 = 0u;
        v177 = 0u;
        v83 = [v12 allTouches];
        v84 = [v83 countByEnumeratingWithState:&v177 objects:&v244 count:16];
        if (v84)
        {
          v85 = *v178;
          do
          {
            for (i = 0; i != v84; ++i)
            {
              if (*v178 != v85)
              {
                objc_enumerationMutation(v83);
              }

              [(UITouch *)*(*(&v177 + 1) + 8 * i) _updatePredictionsWithEvent:v12];
            }

            v84 = [v83 countByEnumeratingWithState:&v177 objects:&v244 count:16];
          }

          while (v84);
        }

        v87 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F768);
        if (*v87)
        {
          v149 = *(v87 + 8);
          if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
          {
            v150 = @"NO";
            if (v167)
            {
              v150 = @"YES";
            }

            *v242 = 138412290;
            v243 = v150;
            _os_log_impl(&dword_188A29000, v149, OS_LOG_TYPE_ERROR, "Returning %@ for shouldSend from update touches", v242, 0xCu);
          }
        }

        _Block_object_dispose(&v206, 8);
        _Block_object_dispose(v231, 8);
        _Block_object_dispose(&v234, 8);
        _Block_object_dispose(v238, 8);
        _Block_object_dispose(v240, 8);

        v25 = v159;
        v24 = v161;
        v23 = v161 != 0;
        if (v161)
        {
          v88 = v167;
        }

        else
        {
          v88 = 1;
        }

        if ((v88 & 1) == 0)
        {
          v23 = [v161 hasOutstandingUpdates];
          v167 = 0;
        }

        goto LABEL_22;
      }

      v35 = IOHIDEventGetType();
      switch(v35)
      {
        case 3:
          if (_UIEventHIDPressTypeForKeyboardHIDEvent(a1) != -1)
          {
            goto LABEL_129;
          }

          break;
        case 29:
          v89 = IOHIDEventGetIntegerValue();
          if (v89 && v89 != 3)
          {
LABEL_129:
            v162 = *(a3 + 8);
            v160 = *(a3 + 56);
            if (IOHIDEventGetType() != 17)
            {
              v97 = IOHIDEventGetType();
              if (v97 == 3)
              {
                v169 = _UIEventHIDPressTypeForKeyboardHIDEvent(a1);
                v95 = IOHIDEventGetIntegerValue() != 0;
LABEL_153:
                v94 = 1;
                goto LABEL_165;
              }

              if (IOHIDEventGetType() != 29)
              {
                v95 = 0;
                v169 = -1;
                goto LABEL_153;
              }

              IOHIDEventGetFloatValue();
              v95 = v103 != 0.0;
              v94 = 1;
              v96 = 105;
LABEL_148:
              v169 = v96;
              goto LABEL_165;
            }

            Event = IOHIDEventGetEvent();
            v93 = IOHIDEventGetEvent();
            if (Event && IOHIDEventIsRepeat())
            {
              v94 = 0;
              v95 = 0;
              v96 = -1;
              goto LABEL_148;
            }

            v98 = _UIEventHIDUIWindowForHIDEvent(a1);
            v99 = [(UIEventEnvironment *)a3 _currentNudgePressTypeForWindow:v98];
            v100 = v99;
            if (v93)
            {
              v101 = 4;
              if (IOHIDEventGetIntegerValue())
              {
                v102 = 4;
LABEL_141:
                v169 = v102;
                if (v100 != -1)
                {
                  [v162 _cancelPressesWithType:v100 forPressesEvent:v12];
                }

                v95 = 1;
                v101 = v169;
                goto LABEL_163;
              }

              v95 = 0;
              v169 = -1;
            }

            else
            {
              v95 = 0;
              v169 = -1;
              v101 = -1;
              if (Event && v99 != 4)
              {
                IOHIDEventGetFloatValue();
                v105 = v104;
                IOHIDEventGetFloatValue();
                if (v105 == 0.0 && v106 == 0.0)
                {
                  v95 = 0;
                  v94 = 0;
                  v169 = -1;
                  v101 = v100;
                  if (v100 >= 4)
                  {
                    goto LABEL_164;
                  }

                  goto LABEL_163;
                }

                if (v105 > 0.0 && v106 == 0.0)
                {
                  v102 = 3;
                }

                else if (v105 < 0.0 && v106 == 0.0)
                {
                  v102 = 2;
                }

                else if (v105 == 0.0 && v106 > 0.0)
                {
                  v102 = 1;
                }

                else
                {
                  v130 = v106 >= 0.0 || v105 != 0.0;
                  v102 = v130 << 63 >> 63;
                }

                goto LABEL_141;
              }
            }

LABEL_163:
            [(UIEventEnvironment *)a3 _setCurrentNudgePressType:v169 forWindow:v98];
            v94 = 1;
            v169 = v101;
LABEL_164:

LABEL_165:
            v107 = BKSHIDEventGetBaseAttributes();
            v108 = [v107 options];

            if (v108)
            {
              [v162 _cancelPressesWithType:v169 forPressesEvent:v12];
              v94 = 0;
            }

            if (v95)
            {
              v109 = 0;
            }

            else
            {
              v109 = 3;
            }

            if ((IOHIDEventGetPhase() & 4) != 0)
            {
              v110 = v12;
              v244 = 0u;
              v245 = 0u;
              v246 = 0u;
              v247 = 0u;
              v111 = [v110 _terminalRegistrantsForPressType:v169];
              v112 = [v111 countByEnumeratingWithState:&v244 objects:buf count:16];
              if (v112)
              {
                v113 = *v245;
                do
                {
                  for (j = 0; j != v112; ++j)
                  {
                    if (*v245 != v113)
                    {
                      objc_enumerationMutation(v111);
                    }

                    [*(*(&v244 + 1) + 8 * j) pressesEventDidReceiveTerminal:v110];
                  }

                  v112 = [v111 countByEnumeratingWithState:&v244 objects:buf count:16];
                }

                while (v112);
              }

              v94 = 0;
            }

            v170 &= v160 ^ 1;
            if (v170)
            {
              v115 = _UIEventHIDUIWindowForHIDEvent([v12 _hidEvent]);
              v116 = [(UIEventEnvironment *)a3 _pressForType:v169 window:v115];

              if (v95)
              {
                [v116 setPhase:4];
                v109 = 0;
                v94 = 0;
              }

              else if (v116 && [v116 phase] != 4)
              {
                v117 = [MEMORY[0x1E695DFD8] setWithObject:v116];
                [v162 _cancelTouchesOrPresses:v117 withEvent:v12];

                v109 = 4;
              }

              else
              {
                v109 = 3;
              }
            }

            v215 = MEMORY[0x1E69E9820];
            v216 = 3221225472;
            v217 = ____dispatchPressesEvent_block_invoke;
            v218 = &unk_1E71194A0;
            v220 = v162;
            v219 = v12;
            v118 = _Block_copy(&v215);
            v119 = v118;
            if (!v94)
            {
              v121 = 0;
LABEL_199:
              v167 = v121 & (v170 ^ 1);
              v25 = v118;
              v23 = 0;
              v24 = 0;
              goto LABEL_22;
            }

            if (IOHIDEventGetType() == 29)
            {
              v120 = IOHIDEventGetIntegerValue();
            }

            else
            {
              if (IOHIDEventGetType() == 3)
              {
                v120 = IOHIDEventGetIntegerValue();
                v122 = IOHIDEventGetIntegerValue() != 0;
LABEL_195:
                if (v109 >= 3)
                {
                  v123 = 0.0;
                }

                else
                {
                  v123 = 1.0;
                }

                [v12 _hidEvent];
                v124 = BKSHIDEventGetBaseAttributes();
                v121 = [v162 _prepareButtonEvent:v12 type:v169 phase:v109 timestamp:v120 force:v122 clickCount:objc_msgSend(v124 longClick:"contextID") contextID:{v7, v123}];

                goto LABEL_199;
              }

              v120 = 0;
            }

            v122 = 0;
            goto LABEL_195;
          }

          break;
        case 17:
          v36 = _UIEventHIDUIScreenForHIDEvent(a1);
          v37 = [v36 _userInterfaceIdiom];

          if (v37 == 3)
          {
            goto LABEL_129;
          }

          break;
      }

      if (IOHIDEventGetType() == 3 && ((v90 = IOHIDEventGetIntegerValue(), v90 == 7) || v90 == 255 || v90 == 12 && ((v91 = IOHIDEventGetIntegerValue(), v91 == 184) || v91 == 669 || v91 == 430)))
      {
        [v171 handleKeyHIDEvent:a1];
      }

      else
      {
        if (_UIEventHIDIsDynamicButtonEvent(a1))
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          LOBYTE(v170) = (*(a3 + 56) ^ 1) & v170;
          goto LABEL_127;
        }

        if (IOHIDEventGetType() == 30)
        {
          [v171 _handleUnicodeEvent:a1];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(_UIPencilEvent *)v12 sendToInteractions];
          }

          else
          {
            if ([v12 type] != 10)
            {
              if ([v12 type] != 14)
              {
                v23 = 0;
                v24 = 0;
                v25 = 0;
                goto LABEL_127;
              }

              v172[0] = MEMORY[0x1E69E9820];
              v172[1] = 3221225472;
              v172[2] = ____dispatchPreprocessedEventFromEventQueue_block_invoke_2;
              v172[3] = &unk_1E70F3590;
              v173 = v12;
              v25 = _Block_copy(v172);

              goto LABEL_40;
            }

            if ([v12 _shouldSendEvent])
            {
              v174[0] = MEMORY[0x1E69E9820];
              v174[1] = 3221225472;
              v174[2] = ____dispatchPreprocessedEventFromEventQueue_block_invoke;
              v174[3] = &unk_1E70F3590;
              v175 = v12;
              v25 = _Block_copy(v174);

              goto LABEL_40;
            }
          }
        }
      }

LABEL_21:
      v23 = 0;
      v24 = 0;
      v167 = 0;
      v25 = 0;
LABEL_22:
      if (v164)
      {
        v26 = __UILogGetCategoryCachedImpl("EventDispatch", &qword_1ED49F780);
        if (*v26)
        {
          v131 = *(v26 + 8);
          if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
          {
            v132 = v131;
            v133 = [v24 type];
            v134 = [v24 subtype];
            v135 = IOHIDEventGetType();
            *buf = 134219264;
            *v249 = v24;
            *&v249[8] = 2048;
            v250 = v133;
            v251 = 2048;
            v252 = v134;
            v253 = 1024;
            v254 = v135;
            v255 = 1024;
            v256 = v23;
            v257 = 1024;
            v258 = v170 & 1;
            _os_log_impl(&dword_188A29000, v132, OS_LOG_TYPE_DEFAULT, "Evaluating dispatch of UIEvent: %p; type: %li; subtype: %li; backing type: %i; shouldSend: %d; ignoreInteractionEvents: %d", buf, 0x32u);
          }
        }

        if (((v24 != 0) & v23) == 1)
        {
          [v24 _setHIDEvent:a1];
          [v171 sendEvent:v24];
          [v24 _resetHasOutstandingUpdateTouches];
        }
      }

      v27 = __UILogGetCategoryCachedImpl("EventDispatch", &qword_1ED49F788);
      if (*v27)
      {
        v125 = *(v27 + 8);
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          v126 = v125;
          v127 = [v12 type];
          v128 = [v12 subtype];
          v129 = IOHIDEventGetType();
          *buf = 134219520;
          *v249 = v12;
          *&v249[8] = 2048;
          v250 = v127;
          v251 = 2048;
          v252 = v128;
          v253 = 1024;
          v254 = v129;
          v255 = 1024;
          v256 = v167;
          v257 = 1024;
          v258 = v170 & 1;
          v259 = 1024;
          v260 = v163;
          _os_log_impl(&dword_188A29000, v126, OS_LOG_TYPE_DEFAULT, "Evaluating dispatch of UIEvent: %p; type: %li; subtype: %li; backing type: %i; shouldSend: %d; ignoreInteractionEvents: %d, systemGestureStateChange: %d", buf, 0x38u);
        }
      }

      if (v167 && ([v12 _shouldSkipEventDeliveryWithIgnoreInteractionEvents:v170 & 1] & 1) == 0)
      {
        v28 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F790);
        if (*v28)
        {
          v136 = *(v28 + 8);
          if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v249 = v12;
            _os_log_impl(&dword_188A29000, v136, OS_LOG_TYPE_ERROR, "Delivering event %@", buf, 0xCu);
          }
        }

        [v171 sendEvent:v12];
        [v12 _didSendEvent];
      }

      if (v25)
      {
        v25[2](v25);
      }

      [v12 _cleanupAfterDispatch];
      IOHIDEventGetType();
      IOHIDEventGetTimeStamp();
      --_MergedGlobals_1216;
      kdebug_trace();

      goto LABEL_54;
    }

    if (Type == 29)
    {
      IOHIDEventGetFloatValue();
      v40 = v39;
      if (IOHIDEventGetIntegerValue() != 3)
      {
LABEL_50:
        v42 = BKSHIDEventGetBaseAttributes();
        v43 = [v42 contextID];

        v44 = *(__UILogGetCategoryCachedImpl("EventDispatch", &qword_1ED49F778) + 8);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v249 = Type;
          *&v249[4] = 1026;
          *&v249[6] = v43;
          _os_log_impl(&dword_188A29000, v44, OS_LOG_TYPE_DEFAULT, "Found no UIEvent, so dispatching backing event of type directly to application: %i; contextId: 0x%{public}X", buf, 0xEu);
        }

        [v171 _handleHIDEvent:a1];
        goto LABEL_53;
      }

      v41 = +[UIScreen _carScreen];
      [v41 _setCarPlayHumanPresenceInRange:v40 > 0.0];
    }

    else
    {
      if (Type != 14)
      {
        goto LABEL_50;
      }

      v15 = (IOHIDEventGetIntegerValue() >> 6) & 1;
      [v171 proximityStateChanged:v15];
      v16 = +[UIDevice currentDevice];
      [v16 _setProximityState:v15];

      if ([v171 isFrontBoard])
      {
        goto LABEL_50;
      }
    }

LABEL_53:
    IOHIDEventGetType();
    IOHIDEventGetTimeStamp();
    --_MergedGlobals_1216;
    kdebug_trace();
LABEL_54:

    return;
  }

  v10 = *(__UILogGetCategoryCachedImpl("EventDispatch", &qword_1ED49F770) + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v249 = Type;
    _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "Backing event handled directly by system shell without UIEvent: %i", buf, 8u);
  }

  IOHIDEventGetType();
  IOHIDEventGetTimeStamp();
  --_MergedGlobals_1216;
  kdebug_trace();
}

void sub_188A98334(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x380], 8);
  _Block_object_dispose(&STACK[0x3D0], 8);
  _Block_object_dispose(&STACK[0x3F0], 8);
  _Block_object_dispose(&STACK[0x410], 8);
  _Unwind_Resume(a1);
}

void ____finishDigitizerEventDispatch_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a3 + 360);
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  v6 = [*(a1 + 32) hoverTouchForContextId:objc_msgSend(v7 pathIndex:{"_contextId"), objc_msgSend(a3, "_pathIndex")}];
  if (v6 && ([a3 phase] == 3 || objc_msgSend(a3, "phase") == 4))
  {
    [a3 _clearForReenteringHoverInWindow:v7];
  }

  if (a3)
  {
    *(a3 + 236) &= ~0x2000u;
  }

  [*(a1 + 40) _removeTouch:a3];
}

id UIApplicationSceneDeactivationReasonMaskDescriptionComponents(int a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 20; ++i)
  {
    if (((1 << i) & a1) != 0)
    {
      v4 = UIApplicationSceneDeactivationReasonDescription(i);
      if (v4)
      {
        [v2 addObject:v4];
      }
    }
  }

  return v2;
}

void updateCycleEntry(void *a1)
{
  v2 = a1;
  v1 = +[(_UIEventBus *)0x1ED47D000];
  [(_UIEventBus *)v1 drainEvents:?];

  if ([*(v2[1] + 16) count])
  {
    [*(v2[1] + 16) count];
    ++updateCycleEntry_nestingLevel;
    kdebug_trace();
    __processEventQueue(v2[1], -1);
    [*(v2[1] + 16) count];
    --updateCycleEntry_nestingLevel;
    kdebug_trace();
  }
}

double sub_188A988BC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);

  return result;
}

uint64_t sub_188A98930()
{
  v0 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (qword_1ED48FC18 != -1)
    {
      swift_once();
    }

    result = swift_beginAccess();
    v2 = off_1ED48FC58;
    if (!*(off_1ED48FC58 + 2))
    {
      break;
    }

    off_1ED48FC58 = v0;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    MEMORY[0x1EEE9AC00](v3);
    sub_18A4A54D8();
  }

  return result;
}

uint64_t sub_188A98A6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t __setupUpdateSequence_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E6979518] currentState])
  {
    if (*(a2 + 584) >= 1)
    {
      UCTimeToSeconds();
      [MEMORY[0x1E6979518] setUpdateDeadline:?];
    }

    if (*(a2 + 632) >= 1)
    {
      UCTimeToSeconds();
      [MEMORY[0x1E6979518] setCommitTime:?];
    }

    if (*(a2 + 689) == 1 && (*(a2 + 688) & 1) == 0 && (*(a2 + 690) & 1) == 0)
    {
      [MEMORY[0x1E6979518] setLowLatency:1];
    }

    _UIQOSMarkIntervalRelevant();
  }

  if (xmmword_1ED4A37C8 >= 1)
  {
    v3 = *(a2 + 512);
    UCTimeToSeconds();
    [MEMORY[0x1E6979518] setFrameInputTime:v3 withToken:?];
  }

  if (*(&xmmword_1ED4A37C8 + 1) >= 1)
  {
    v4 = *(__UILogGetCategoryCachedImpl("RemoteTimestamp", &performCATransactionCommitAction___s_category) + 8);
    if (os_signpost_enabled(v4))
    {
      v6 = 134217984;
      v7 = *(&xmmword_1ED4A37C8 + 1);
      _os_signpost_emit_with_name_impl(&dword_188A29000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SetRemoteTimestamp", "remoteTime=%lli", &v6, 0xCu);
    }

    [MEMORY[0x1E6979518] setRemoteInputMachTime:*(&xmmword_1ED4A37C8 + 1)];
  }

  *(a2 + 280) = 0;
  _UIUpdateInputSetInputChanged(*(a2 + 328), a2 + 280);
  return _UIApplicationFlushCATransaction(1);
}

void _UIQOSMarkIntervalRelevant()
{
  if (qword_1ED4A28F8 != -1)
  {
    dispatch_once(&qword_1ED4A28F8, &__block_literal_global_7_4);
  }

  if (dword_1ED4A2908 || word_1ED4A2938 == 1)
  {
    HIBYTE(word_1ED4A2938) = 1;
  }
}

uint64_t _UIApplicationFlushCATransaction(int a1)
{
  if (!UIApp)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIApplicationFlushCATransaction(const BOOL)"];
    [v4 handleFailureInFunction:v5 file:@"UIApplication.m" lineNumber:3335 description:@"Requires UIApplication instance"];
  }

  if (a1)
  {
    [MEMORY[0x1E6979518] flushAsRunLoopObserver];
  }

  else
  {
    [MEMORY[0x1E6979518] flush];
  }

  result = _cleanUpAfterCAFlushAndRunDeferredBlocks(UIApp, 1);
  if (result)
  {
    [MEMORY[0x1E6979518] flush];
    v3 = UIApp;

    return _cleanUpAfterCAFlushAndRunDeferredBlocks(v3, 0);
  }

  return result;
}

double _UITouchForceFromTouches(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      v6 = 0.0;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v11 + 1) + 8 * i) force];
          v6 = v6 + v8;
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }

    else
    {
      v6 = 0.0;
    }

    v9 = v6 / [v2 count];
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

uint64_t __UIAPPLICATION_IS_LOADING_INITIALIZATION_INFO_FROM_THE_SYSTEM__(uint64_t result)
{
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void UIGraphicsPushContext(CGContextRef context)
{
  ContextStack = GetContextStack(1);
  v3 = CGContextRetain(context);
  v4 = *ContextStack;
  v5 = &ContextStack[6 * *ContextStack];
  *(v5 + 1) = v3;
  v5[4] = 0;
  *(v5 + 3) = 0;
  *ContextStack = v4 + 1;
}

void *GetContextStack(int a1)
{
  pthread_once(&GetContextStack___contextThreadKeyOnce, CreateContextKey);
  v2 = pthread_getspecific(__contextThreadKey);
  if (!v2)
  {
    v3 = malloc_type_malloc(0x68uLL, 0x100004000313F17uLL);
    *v3 = 0x400000000;
    goto LABEL_6;
  }

  v3 = v2;
  if (a1)
  {
    v4 = *v2;
    if (*v2 == v2[1])
    {
      v2[1] = v4 + 4;
      v3 = malloc_type_realloc(v2, 24 * v4 + 104, 0x100004000313F17uLL);
LABEL_6:
      pthread_setspecific(__contextThreadKey, v3);
    }
  }

  return v3;
}

void PopContextFromStack(int *a1)
{
  v2 = *a1 - 1;
  if (*a1 >= 1)
  {
    *a1 = v2;
    v4 = a1 + 2;
    v5 = *&a1[6 * v2 + 2];
    if (v5)
    {
      CGContextRelease(v5);
      v2 = *a1;
    }

    v6 = *&v4[6 * v2 + 4];
    if (v6)
    {

      free(v6);
    }
  }
}

id _UIKitBundle()
{
  v0 = _UIKitBundle_kitBundle;
  if (!_UIKitBundle_kitBundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v2 = _UIKitBundle_kitBundle;
    _UIKitBundle_kitBundle = v1;

    v0 = _UIKitBundle_kitBundle;
  }

  return v0;
}

id _queue_compatibilityRecords()
{
  v0 = _eventDeferringCompatibilityQueue();
  dispatch_assert_queue_V2(v0);

  v1 = _compatibilityDeferringRecords;
  if (!_compatibilityDeferringRecords)
  {
    v2 = objc_opt_new();
    v3 = _compatibilityDeferringRecords;
    _compatibilityDeferringRecords = v2;

    v1 = _compatibilityDeferringRecords;
  }

  return v1;
}

uint64_t UIApplicationInitialize()
{
  v23 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (os_variant_has_internal_content())
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = [&unk_1EFE2D378 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v19;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(&unk_1EFE2D378);
          }

          v7 = *(*(&v18 + 1) + 8 * i);
          v8 = getenv([v7 UTF8String]);
          if (v8)
          {
            v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
            [v2 setObject:v9 forKey:v7];
          }
        }

        v4 = [&unk_1EFE2D378 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v4);
    }

    v10 = [v2 objectForKey:@"__PPT_ForTesting"];

    if (v10)
    {
      __IsRunningTests = [v2 bs_BOOLForKey:@"__PPT_ForTesting"];
    }

    v11 = [v2 objectForKey:@"__PPT_SignpostID"];

    if (v11)
    {
      v12 = [v2 bs_safeStringForKey:@"__PPT_SignpostID"];
      __ActivationSignpostID = [v12 longLongValue];
    }

    v13 = [v2 objectForKey:@"__PPT_LaunchTime"];

    if (v13)
    {
      v14 = [v2 bs_safeStringForKey:@"__PPT_LaunchTime"];
      [v14 doubleValue];
      __LaunchTime = v15;
      __ExecOrResumeTime = v15;
    }

    v16 = [v2 objectForKey:@"__PPT_BackgroundLaunch"];

    if (v16)
    {
      if ([v2 bs_BOOLForKey:@"__PPT_BackgroundLaunch"])
      {
        v17 = @"launch suspended";
      }

      else
      {
        v17 = @"launch";
      }

      objc_storeStrong(&qword_1EA992DE8, v17);
    }
  }

  if (!qword_1EA992DE8)
  {
    qword_1EA992DE8 = @"launch";
  }

  if (qword_1EA9932D8 != -1)
  {
    dispatch_once(&qword_1EA9932D8, &__block_literal_global_3910);
  }

  if (byte_1EA992DE2 == 1)
  {
    CTFontSetAltTextStyleSpec();
  }

  Main = CFRunLoopGetMain();
  CFRunLoopAddCommonMode(Main, @"UITrackingRunLoopMode");
  GSInitialize();
  _UIKitApplyPlatformVisualStyles();
  return kdebug_trace();
}

void _UIKitApplyPlatformVisualStyles()
{
  if (_UIKitApplyPlatformVisualStyles_onceToken[0] != -1)
  {
    dispatch_once(_UIKitApplyPlatformVisualStyles_onceToken, &__block_literal_global_596);
  }
}

void _UIInternalPreferenceSync(int a1, _DWORD *a2, uint64_t a3, uint64_t (*a4)(_DWORD *))
{
  v7 = [_revisionDefaults objectForKey:a3];
  if (v7)
  {
    v9 = v7;
    v8 = a4(a2);
    v7 = v9;
    a1 += v8;
  }

  *a2 = a1;
}

void __defaultConfiguration_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  makeProfilePath("Default", v6);
  if (access(v6, 0))
  {
    if ((MGGetBoolAnswer() & 1) == 0)
    {
      v0 = dispatch_time(0, 30000000000);
      v1 = dispatch_get_global_queue(17, 0);
      dispatch_after(v0, v1, &__block_literal_global_18_4);
    }
  }

  if (!_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UpdateCycleCompatibility, @"UpdateCycleCompatibility", _UIInternalPreferenceUpdateBool))
  {
    if ((byte_1ED48B3EC & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v2 = _UIMainBundleIdentifier();
    v3 = [&unk_1EFE2D168 containsObject:v2];

    byte_1ED49FC8A = v3 ^ 1;
    if (v3)
    {
      return;
    }

    goto LABEL_9;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  byte_1ED49FC8A = 1;
LABEL_9:
  v4 = [MEMORY[0x1E6979328] mainDisplay];
  v5 = [v4 supportsVariableFrameDuration];

  byte_1ED49FC8B = v5;
}

void __UISceneAccessClassComponentArray(int a1, void *a2)
{
  v3 = a2;
  if (qword_1ED49C390 != -1)
  {
    dispatch_once(&qword_1ED49C390, &__block_literal_global_702);
  }

  v4 = qword_1ED49C388;
  if (a1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ____UISceneAccessClassComponentArray_block_invoke_2;
    block[3] = &unk_1E70F0F78;
    v5 = &v11;
    v11 = v3;
    v6 = v3;
    dispatch_barrier_sync(v4, block);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ____UISceneAccessClassComponentArray_block_invoke_3;
    v8[3] = &unk_1E70F0F78;
    v5 = &v9;
    v9 = v3;
    v7 = v3;
    dispatch_sync(v4, v8);
  }
}

id _UIKitUserDefaults()
{
  if (qword_1ED4A25F0 != -1)
  {
    dispatch_once(&qword_1ED4A25F0, &__block_literal_global_651);
  }

  v1 = _MergedGlobals_1352;

  return v1;
}

char *makeProfilePath(const char *a1, char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  v5 = 32;
  if (sysctlbyname("hw.targettype", v6, &v5, 0, 0) || snprintf(a2, 0x400uLL, "%s/%s.%s.plist", "/System/Library/EventTimingProfiles", v6, a1) >= 0x400)
  {
    abort();
  }

  return a2;
}

unint64_t __UILogCategoryGetNode(_BYTE *__s2, uint64_t a2, uint64_t (*a3)(_BYTE *))
{
  v4 = a2;
  v6 = *__s2;
  if (*__s2)
  {
    v7 = 0;
    v8 = 0;
    LOBYTE(v9) = *__s2;
    do
    {
      v8 = 257 * v8 + v9;
      v9 = __s2[++v7];
    }

    while (v9);
    v10 = 257 * v8;
  }

  else
  {
    LODWORD(v7) = 0;
    v10 = 0;
  }

  v11 = v10 + v7;
  v12 = *(a2 + 8 * (v11 & 0x1F));
  if (v12)
  {
    v13 = 0;
    v14 = v11;
    do
    {
      if (*v12 == v11)
      {
        if (!memcmp(*(v12 + 264), __s2, v7))
        {
          return v12;
        }

        ++v13;
        if (v6)
        {
          v7 = 0;
          LOBYTE(v15) = v6;
          v16 = v13;
          do
          {
            v16 = 257 * v16 + v15;
            v15 = __s2[++v7];
          }

          while (v15);
        }

        else
        {
          LODWORD(v7) = 0;
          v16 = v13;
        }

        v11 = 257 * v16 + v7;
        v14 = v11;
      }

      else
      {
        v14 >>= 5;
      }

      v12 = *(v12 + 8 * (v14 & 0x1F) + 8);
    }

    while (v12);
  }

  os_unfair_lock_lock(&_MergedGlobals_1345);
  v17 = *__s2;
  if (*__s2)
  {
    v18 = 0;
    v19 = 0;
    LOBYTE(v20) = *__s2;
    do
    {
      v19 = 257 * v19 + v20;
      v20 = __s2[++v18];
    }

    while (v20);
    v21 = 257 * v19;
  }

  else
  {
    v18 = 0;
    v21 = 0;
  }

  v22 = (v21 + v18);
  v23 = v22 | (v18 << 32);
  v24 = v22 & 0x1F;
  v25 = *(v4 + 8 * v24);
  if (v25)
  {
    v26 = 0;
    LODWORD(v27) = v22;
    do
    {
      if (*v25 == v27)
      {
        if (!memcmp(*(v25 + 264), __s2, v18))
        {
          v30 = (v4 + 8 * v24);
          goto LABEL_46;
        }

        ++v26;
        if (v17)
        {
          v18 = 0;
          LOBYTE(v28) = v17;
          v29 = v26;
          do
          {
            v29 = 257 * v29 + v28;
            v28 = __s2[++v18];
          }

          while (v28);
        }

        else
        {
          v18 = 0;
          v29 = v26;
        }

        v27 = (257 * v29 + v18);
        v23 = v27 | (v18 << 32);
        LODWORD(v22) = 257 * v29 + v18;
      }

      else
      {
        LODWORD(v22) = v22 >> 5;
      }

      v4 = v25 + 8;
      v24 = v22 & 0x1F;
      v25 = *(v25 + 8 + 8 * v24);
    }

    while (v25);
  }

  v30 = (v4 + 8 * v24);
  v31 = strlen(__s2);
  v32 = v31;
  if (v31 < 0x2801)
  {
    v34 = (g_UILogCategoriesAllocator_1 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (v34 < g_UILogCategoriesAllocator_1 || v34 > 10240 - v31)
    {
      v36 = malloc_type_malloc(0x2800uLL, 0x100004077774924uLL);
      v34 = 0;
      qword_1ED4A2560 = v36;
    }

    else
    {
      v36 = qword_1ED4A2560;
    }

    g_UILogCategoriesAllocator_1 = v34 + v32;
    v33 = &v36[v34];
  }

  else
  {
    v33 = malloc_type_malloc(v31, 0xF92C82F2uLL);
  }

  memcpy(v33, __s2, v32);
  v37 = a3(__s2);
  *v37 = v23;
  *(v37 + 264) = v33;
  *(v37 + 8) = 0u;
  *(v37 + 24) = 0u;
  *(v37 + 40) = 0u;
  *(v37 + 56) = 0u;
  *(v37 + 72) = 0u;
  *(v37 + 88) = 0u;
  *(v37 + 104) = 0u;
  *(v37 + 120) = 0u;
  *(v37 + 136) = 0u;
  *(v37 + 152) = 0u;
  *(v37 + 168) = 0u;
  *(v37 + 184) = 0u;
  *(v37 + 200) = 0u;
  *(v37 + 216) = 0u;
  *(v37 + 232) = 0u;
  *(v37 + 248) = 0u;
  atomic_store(v37, v30);
LABEL_46:
  os_unfair_lock_unlock(&_MergedGlobals_1345);
  return *v30;
}

void ____associateFlagWithPreferencesKeyLocked_block_invoke()
{
  v0 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v0, &__block_literal_global_12_10);
}

char *__UILogCategoryNewNode(const char *a1)
{
  v2 = (g_UILogCategoriesAllocator_1 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v2 < g_UILogCategoriesAllocator_1 || v2 > 0x26E0)
  {
    v4 = malloc_type_malloc(0x2800uLL, 0x100004077774924uLL);
    v2 = 0;
    qword_1ED4A2560 = v4;
  }

  else
  {
    v4 = qword_1ED4A2560;
  }

  g_UILogCategoriesAllocator_1 = v2 + 288;
  v5 = v4 + v2;
  *v5 = 0;
  *(v5 + 4) = 0;
  *(v5 + 8) = 0;
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v7 = _UIKitUserDefaults();
  v8 = [@"Log" stringByAppendingString:v6];
  v9 = 1;
  __associateFlagWithPreferencesKeyLocked(v5, 1, v7, v8);
  v10 = 0;
  while (1)
  {
    v11 = v9;
    v12 = &(&g_UILogCategoriesOverrides)[4 * v10];
    if (objc_msgSend_isEqualToString_(v6))
    {
      break;
    }

    v9 = 0;
    v10 = 1;
    if ((v11 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v13 = v12[1];
  if (v13)
  {
    __associateFlagWithPreferencesKeyLocked(v5, 2, v7, v13);
  }

  v14 = v12[2];
  if (v14)
  {
    v15 = [MEMORY[0x1E695E000] standardUserDefaults];
    __associateFlagWithPreferencesKeyLocked(v5, 4, v15, v14);
  }

  v16 = v12[3];
  if (v16 && (v16->data)())
  {
    *(v5 + 4) |= 8u;
    *v5 = 1;
  }

LABEL_18:
  *(v5 + 8) = os_log_create("com.apple.UIKit", a1);

  return (v5 + 16);
}

void _UIUpdateSchedulerStart(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14[0] = 0;
  v12 = 0;
  v15 = v14;
  v16 = 752;
  v2 = *MEMORY[0x1E69DEFD8];
  v17 = &v13;
  v18 = v2;
  v3 = *MEMORY[0x1E69DEFD0];
  v19 = &v12;
  v20 = v3;
  UCCoallocNVars();
  CFRunLoopGetCurrent();
  v13 = UCLoopTapCFRunLoopInit();
  *(v14[0] + 696) = v13;
  UCLoopTapCFRunLoopAddToMode();
  v12 = UCDriverInit();
  *(v14[0] + 704) = v12;
  UCLoopTapCFRunLoopGetLoopTapImpl();
  UCDriverSetLoopTap();
  MEMORY[0x18CFE7DB0](*(v14[0] + 704), v14[0], schedulerModeSchedulingEnter);
  UCDriverSignal();
  UCDriverActivate();
  v4 = v14[0];
  *a1 = v14[0];
  *v4 = a1;
  *(v4 + 664) = UCTimeFromSeconds();
  *(v4 + 648) = 0x7FFFFFFFFFFFFFFFLL;
  *(v4 + 672) = UCTimeFromSeconds();
  *(v4 + 680) = UCTimeFromSeconds();
  v5 = *v4;
  unk_1ED4A3798 = requestRegistrySignaledCallback;
  unk_1ED4A37A0 = v5;
  *(v4 + 8) = &mainGroup;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 2;
  *(v4 + 65) = 0;
  *(v4 + 52) = 0;
  *(v4 + 60) = 0;
  *(v4 + 100) = 0;
  *(v4 + 84) = 0;
  *(v4 + 92) = 0;
  *(v4 + 76) = 0;
  _UIUpdateInputGroupAddInputSet(&mainGroup, &commonSet);
  _UIUpdateInputGroupAddInputSet(&mainGroup, v4 + 8);
  *(v4 + 104) = 0;
  *(v4 + 112) = &mainGroup;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 2;
  *(v4 + 160) = 2;
  *(v4 + 168) = &commonSet;
  *(v4 + 176) = v4 + 8;
  *(v4 + 280) = 2 * ([MEMORY[0x1E6979518] currentState] != 0);
  *(v4 + 288) = xmmword_18A680B00;
  *(v4 + 304) = 0;
  *(v4 + 312) = 0u;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  *(v4 + 360) = 0;
  *(v4 + 368) = "ImplicitTransaction";
  *(v4 + 376) = 0;
  *(v4 + 400) = 0;
  *(v4 + 408) = 0u;
  *(v4 + 424) = 0u;
  *(v4 + 384) = 0x8000000000000000;
  *(v4 + 392) = 0x8000000000000000;
  *(v4 + 456) = v4;
  *(v4 + 464) = "DisplayLinks";
  *(v4 + 440) = 0;
  *(v4 + 448) = inputDisplayLinksReadyForModelTimeCallback;
  *(v4 + 184) = 2 * (dword_1ED4A3784 != 0);
  *(v4 + 192) = xmmword_18A680B00;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0u;
  *(v4 + 248) = 0u;
  *(v4 + 264) = 0;
  *(v4 + 272) = "ForceUpdates";
  _UIUpdateInputSetAddInput(v4 + 8, (v4 + 280));
  _UIUpdateInputSetAddInput(v4 + 8, (v4 + 376));
  _UIUpdateInputSetAddInput(v4 + 8, (v4 + 184));
  v6 = *v4;
  v7 = dword_1ED491790;
  if (qword_1ED4917A0)
  {
    v7 = dword_1ED491790 + 1;
  }

  dword_1ED491790 = v7 - 1;
  qword_1ED4917A0 = inputGroupSignaledCallback;
  unk_1ED4917A8 = v6;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x1E6979330] setEarlyWakeupOffset:1.79769313e308];
  }

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __setupCA_block_invoke;
  v18 = &__block_descriptor_40_e16_B16__0r____QQI_8l;
  v19 = v4;
  [MEMORY[0x1E6979330] setWillFireHandler:&v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __setupCA_block_invoke_2;
  v14[3] = &__block_descriptor_40_e5_v8__0l;
  v14[4] = v4;
  [MEMORY[0x1E6979518] setImplicitTransactionDidBeginHandler:v14];
  [MEMORY[0x1E6979518] setDisableRunLoopObserverCommits:1];
  [MEMORY[0x1E6979518] setDefaultDisableRunLoopObserverCommits:1];
  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x1E6979518] enableUpdateCycleSupport];
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, *v4, targetListChangeNotificationCallback, @"UISceneWillEnterForegroundNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, *v4, targetListChangeNotificationCallback, @"UISceneDidEnterBackgroundNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, *v4, targetListChangeNotificationCallback, @"UISceneDidDisconnectNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, *v4, targetListChangeNotificationCallback, @"UIWindowDidBecomeVisibleNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, *v4, targetListChangeNotificationCallback, @"UIWindowDidBecomeHiddenNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, *v4, targetListChangeNotificationCallback, _UIWindowDidDetachContextNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, *v4, targetListChangeNotificationCallback, @"_UIWindowDidMoveToSceneNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, *v4, targetListChangeNotificationCallback, @"_UIWindowHostingSceneDidMoveToScreenNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  *(v4 + 472) = 0;
  v9 = qword_1ED4918D8;
  qword_1ED4918D0 = v4;
  qword_1ED4918D8 = &__block_literal_global_436;

  v10 = qword_1ED4918A8;
  qword_1ED4918A0 = v4;
  qword_1ED4918A8 = &__block_literal_global_27_3;

  v11 = qword_1ED4916E8;
  qword_1ED4916E0 = v4;
  qword_1ED4916E8 = &__block_literal_global_29_5;
}

uint64_t _UIUpdateInputGroupAddInputSet(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  *(a2 + 80) = v2;
  if (v2)
  {
    *(v2 + 88) = a2 + 80;
  }

  *(result + 40) = a2;
  *(a2 + 88) = result + 40;
  ++*(result + 16);
  v3 = *result | 1;
  if (*result != v3)
  {
    *result = v3;
    if (!*(result + 8))
    {
      return (*(result + 24))(result, *(result + 32));
    }
  }

  return result;
}

uint64_t _UIUpdateInputSetAddInput(uint64_t a1, void *a2)
{
  v2 = *(a1 + 72);
  ++*(a1 + 68);
  *(a1 + 64) = 1;
  *(a1 + 40) = 2;
  a2[7] = v2;
  if (v2)
  {
    *(v2 + 64) = a2 + 7;
  }

  *(a1 + 72) = a2;
  a2[8] = a1 + 72;
  a2[6] = a1;
  result = *a1;
  ++*(result + 16);
  v4 = *result | 1;
  if (*result != v4)
  {
    *result = v4;
    if (!*(result + 8))
    {
      return (*(result + 24))(result, *(result + 32));
    }
  }

  return result;
}

id ___dragEventExtractionFilter_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___dragEventExtractionFilter_block_invoke_2;
  v7[3] = &unk_1E7115FE8;
  v9 = v3;
  v8 = *(a1 + 32);
  v4 = v3;
  v5 = _Block_copy(v7);

  return v5;
}

id ___globalEdgeSwipeEventDiscardFilterGenerator_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___globalEdgeSwipeEventDiscardFilterGenerator_block_invoke_2;
  aBlock[3] = &unk_1E7116010;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(aBlock);

  return v4;
}

void UIApplicationInstantiateSingleton(objc_class *a1)
{
  kdebug_trace();
  if (UIApp)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void UIApplicationInstantiateSingleton(__unsafe_unretained Class)"];
    [v5 handleFailureInFunction:v6 file:@"UIApplication.m" lineNumber:5285 description:@"There can only be one UIApplication instance."];
  }

  v2 = [a1 alloc];
  v3 = UIApp;
  UIApp = v2;

  v4 = [UIApp init];
  v9 = v4;
  if (!UIApp || UIApp != v4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void UIApplicationInstantiateSingleton(__unsafe_unretained Class)"];
    [v7 handleFailureInFunction:v8 file:@"UIApplication.m" lineNumber:5289 description:@"Unable to instantiate the UIApplication singleton."];
  }

  kdebug_trace();
}

void ____associateFlagWithPreferencesKeyLocked_block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, __preferencesNotificationCallback, @"com.apple.UIKit.LoggingPreferences", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void _UIApplicationStartLaunchBackgroundTask()
{
  os_unfair_lock_lock(&_launchBackgroundTaskLock);
  if ((_launchBackgroundTaskPeriodOver & 1) == 0)
  {
    v0 = _doAddBackgroundTask(@"Launch Background Task for Coalescing", 0, 0);
    if (v0)
    {
      _launchBackgroundTaskIdentifier = v0[1];
      if (_launchBackgroundTaskIdentifier)
      {
        v1 = dispatch_time(0, 1000000000);
        v2 = dispatch_get_current_queue();
        dispatch_after(v1, v2, &__block_literal_global_86_0);

        goto LABEL_9;
      }
    }

    else
    {
      _launchBackgroundTaskIdentifier = 0;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "Unexpectedly failed to create Launch Background Task.", buf, 2u);
      }
    }

    else
    {
      v3 = *(__UILogGetCategoryCachedImpl("Assert", &_UIApplicationStartLaunchBackgroundTask___s_category) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Unexpectedly failed to create Launch Background Task.", v5, 2u);
      }
    }
  }

LABEL_9:
  os_unfair_lock_unlock(&_launchBackgroundTaskLock);
}

const void **_doAddBackgroundTask(void *a1, void *a2, int a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (a3)
  {
    entr_act_modify();
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__98;
  v33 = __Block_byref_object_dispose__98;
  v34 = 0;
  v7 = +[_UIBackgroundTaskInfo backgroundTaskAssertionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___doAddBackgroundTask_block_invoke;
  block[3] = &unk_1E70FCDA0;
  v28 = &v29;
  v8 = v5;
  v27 = v8;
  dispatch_sync(v7, block);

  if (v30[5] || (dyld_program_sdk_at_least() & 1) == 0)
  {
    v10 = [_UIBackgroundTaskInfo alloc];
    v9 = [(_UIBackgroundTaskInfo *)v10 initWithProcessAssertion:v30[5] taskName:v8 expirationHandler:v6];
    os_unfair_lock_lock(&stru_1ED49E204);
    if (!qword_1ED49E250)
    {
      v11 = *(MEMORY[0x1E696A4A8] + 16);
      *&keyCallBacks.hash = *MEMORY[0x1E696A4A8];
      *&keyCallBacks.retain = v11;
      *&keyCallBacks.describe = *(MEMORY[0x1E696A4A8] + 32);
      valueCallBacks = **&MEMORY[0x1E696A788];
      v12 = NSCreateMapTable(&keyCallBacks, &valueCallBacks, 0);
      v13 = qword_1ED49E250;
      qword_1ED49E250 = v12;
    }

    do
    {
      v14 = _nextTaskId;
      v9[1] = _nextTaskId;
      _nextTaskId = v14 + 1;
      if (v14 == -1)
      {
        _nextTaskId = 1;
      }
    }

    while (NSMapGet(qword_1ED49E250, v14));
    NSMapInsert(qword_1ED49E250, v9[1], v9);
    if (!qword_1ED49E2C8)
    {
      _backgroundTaskExpirationWarningTimerSchedule_Locked(35);
    }

    os_unfair_lock_unlock(&stru_1ED49E204);
    v15 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E310) + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v9 description];
      LODWORD(keyCallBacks.hash) = 138477827;
      *(&keyCallBacks.hash + 4) = v16;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "Created background task %{private}@.", &keyCallBacks, 0xCu);
    }

    if ((dyld_program_sdk_at_least() & 1) == 0 && !v30[5])
    {
      v17 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E318) + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v9[1];
        LODWORD(keyCallBacks.hash) = 134217984;
        *(&keyCallBacks.hash + 4) = v18;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "Enqueuing error for background assertion acquire failure: task ID = %lu", &keyCallBacks, 0xCu);
      }

      v19 = dispatch_get_global_queue(9, 0);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = ___doAddBackgroundTask_block_invoke_111;
      v23[3] = &unk_1E70F3590;
      v9 = v9;
      v24 = v9;
      dispatch_async(v19, v23);
    }
  }

  else
  {
    v9 = 0;
  }

  v20 = v27;
  v21 = v9;

  _Block_object_dispose(&v29, 8);

  return v21;
}

void sub_188A9CA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___shouldCoalesceBackgroundTaskAssertions_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    _MergedGlobals_1121 = 1;
  }

  return result;
}

void ___doAddBackgroundTask_block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (qword_1ED49E328 != -1)
  {
    dispatch_once(&qword_1ED49E328, &__block_literal_global_114_0);
  }

  v2 = _MergedGlobals_1121;
  if ((_MergedGlobals_1121 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), qword_1ED49E260);
    v3 = *(*(*(a1 + 40) + 8) + 40);
    if (v3)
    {
      if ([v3 valid])
      {
        v4 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E2D0) + 8);
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v5 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138412290;
        v34 = v5;
        v6 = "Reusing background assertion %@";
      }

      else
      {
        v10 = *(*(a1 + 40) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = 0;

        v4 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E2D8) + 8);
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v12 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138412290;
        v34 = v12;
        v6 = "Creating new assertion because existing background assertion is invalid %@";
      }

      v8 = v4;
      v9 = 12;
    }

    else
    {
      v7 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E2E0) + 8);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v6 = "Creating new assertion because there is no existing background assertion.";
      v8 = v7;
      v9 = 2;
    }

    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, v6, buf, v9);
  }

LABEL_14:
  v13 = *(*(*(a1 + 40) + 8) + 40);
  if (!v13)
  {
    v14 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E2E8) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "Creating new background assertion", buf, 2u);
    }

    if (v2)
    {
      v15 = *(a1 + 32);
    }

    else
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = qword_1ED49E2F0++;
      v18 = _UIMainBundleIdentifier();
      v15 = [v16 stringWithFormat:@"Shared Background Assertion %lu for %@", v17, v18];
    }

    v19 = [objc_alloc(MEMORY[0x1E698D038]) initWithPID:getpid() flags:1 reason:4 name:v15];
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v22 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E2F8) + 8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138412290;
        v34 = v23;
        _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_DEFAULT, "Created new background assertion %@", buf, 0xCu);
      }

      if (([*(*(*(a1 + 40) + 8) + 40) acquire] & 1) == 0)
      {
        v24 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E300) + 8);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(*(*(a1 + 40) + 8) + 40);
          *buf = 138412290;
          v34 = v25;
          _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "Failed to acquire background assertion %@", buf, 0xCu);
        }

        v26 = *(*(a1 + 40) + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = 0;
      }
    }

    v13 = *(*(*(a1 + 40) + 8) + 40);
  }

  if (v13)
  {
    v28 = v2;
  }

  else
  {
    v28 = 1;
  }

  if ((v28 & 1) == 0)
  {
    objc_storeStrong(&qword_1ED49E260, v13);
    if (!qword_1ED49E268)
    {
      v29 = objc_alloc_init(_UIObjectReferenceCounter);
      v30 = qword_1ED49E268;
      qword_1ED49E268 = v29;
    }

    v31 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E308) + 8);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138477827;
      v34 = v32;
      _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_DEFAULT, "Incrementing reference count for background assertion %{private}@", buf, 0xCu);
    }

    [qword_1ED49E268 incrementReferenceForObject:*(*(*(a1 + 40) + 8) + 40)];
  }
}

id ___hoverEventMemoryFilter_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___hoverEventMemoryFilter_block_invoke_2;
  v7[3] = &unk_1E7115FE8;
  v8 = *(a1 + 32);
  v9 = v3;
  v4 = v3;
  v5 = _Block_copy(v7);

  return v5;
}

id ___grapeFingerOneStrokeMisinterpretationWorkaround_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___grapeFingerOneStrokeMisinterpretationWorkaround_block_invoke_2;
  aBlock[3] = &unk_1E7116010;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(aBlock);

  return v4;
}

id ___wakeOnTouchSynchronizationFilter_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___wakeOnTouchSynchronizationFilter_block_invoke_2;
  v7[3] = &unk_1E7115FE8;
  v9 = v3;
  v8 = *(a1 + 32);
  v4 = v3;
  v5 = _Block_copy(v7);

  return v5;
}

id ___iosMacEventExtractionFilter_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___iosMacEventExtractionFilter_block_invoke_2;
  v7[3] = &unk_1E7115FE8;
  v8 = *(a1 + 32);
  v9 = v3;
  v4 = v3;
  v5 = _Block_copy(v7);

  return v5;
}

id ___pencilRangeAndTouchingSeparationFilter_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___pencilRangeAndTouchingSeparationFilter_block_invoke_2;
  aBlock[3] = &unk_1E7116010;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(aBlock);

  return v4;
}

void __initializeActiveUserInterfaceIdiom_block_invoke()
{
  if (qword_1ED49E788 != -1)
  {
    dispatch_once(&qword_1ED49E788, &__block_literal_global_55_2);
  }

  sActiveUserInterfaceIdiom = qword_1ED49E780;
}

void _backgroundTaskExpirationWarningTimerSchedule_Locked(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Current = CFAbsoluteTimeGetCurrent();
  qword_1ED49E2C8 = CFRunLoopTimerCreate(v2, Current + a1, 0.0, 0, 0, _backgroundTaskExpirationWarningTimerFired, 0);
  Main = CFRunLoopGetMain();
  v5 = qword_1ED49E2C8;
  v6 = *MEMORY[0x1E695E8D0];

  CFRunLoopAddTimer(Main, v5, v6);
}

uint64_t _UIDeviceNativeUserInterfaceIdiomIgnoringClassic()
{
  v0 = MGCopyAnswer();
  v1 = [v0 intValue];
  if (v0)
  {
    CFRelease(v0);
  }

  v2 = v1 - 1;
  if (v1 - 1) < 7 && ((0x6Fu >> v2))
  {
    return qword_18A67CDE0[v2];
  }

  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIUserInterfaceIdiom _UIDeviceNativeUserInterfaceIdiomIgnoringClassic(void)"];
  [v4 handleFailureInFunction:v5 file:@"UIDevice.m" lineNumber:858 description:@"Device type is not associated with user interface idiom."];

  return -1;
}

uint64_t _UIApplicationSupportsIndirectInputEventsGivenInfo(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = _UIMainBundleIdentifier();
  if (!dyld_program_sdk_at_least())
  {
    v5 = 0;
    goto LABEL_39;
  }

  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    v5 = 1;
    goto LABEL_39;
  }

  v6 = dyld_program_sdk_at_least();
  v7 = _UIMainBundleIdentifier();
  if ((objc_msgSend_isEqualToString_(v7) & 1) != 0 || objc_msgSend_isEqualToString_(v7))
  {
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v7);

    if (!isEqualToString)
    {
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:
  v8 = [a1 hasSupportsIndirectInputEventsKey];
  v9 = [a1 supportsIndirectInputEvents];
  if (v8)
  {
    v5 = v9;
  }

  else
  {
    v5 = v6;
  }

  v10 = _UIInternalPreferenceUsesDefault(&unk_1ED48AA70, @"BundleIdentifiersWantingOverriddenIndirectEventSupport", _UIInternalPreferenceUpdateId);
  v11 = qword_1ED48AA78;
  if (v10)
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v14 = [v12 stringByTrimmingCharactersInSet:v13];

  if (v14 && [v14 length])
  {
    v33 = v12;
    v34 = v2;
    v15 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@", "}];
    v32 = v14;
    v16 = [v14 componentsSeparatedByCharactersInSet:v15];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v36;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v35 + 1) + 8 * i);
          if (!v20)
          {
            v20 = objc_opt_new();
          }

          v24 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v25 = [v23 stringByTrimmingCharactersInSet:v24];

          if (v25)
          {
            [v20 addObject:v25];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v19);
    }

    else
    {
      v20 = 0;
    }

    v12 = v33;
    v2 = v34;
    v14 = v32;
  }

  else
  {
    v20 = 0;
  }

  v27 = [v20 copy];

  if (v27 && [v27 containsObject:v2])
  {
    v28 = _UIInternalPreferenceUsesDefault(&_MergedGlobals_925, @"OverrideValueForBundleIdentifiersWantingOverriddenIndirectEventSupport", _UIInternalPreferenceUpdateBool);
    if (byte_1ED48AA64)
    {
      v5 = 1;
    }

    else
    {
      v5 = v28;
    }
  }

LABEL_39:
  v29 = _UIInternalPreferenceUsesDefault(&dword_1ED48AA68, @"ForceEnableIndirectEventSupportForAllApps", _UIInternalPreferenceUpdateBool);
  v30 = byte_1ED48AA6C != 0;

  return (v30 & ~v29 | v5) & 1;
}

void __associateFlagWithPreferencesKeyLocked(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKey:v8];
  __updateCategoryFlagValueLocked(a1, v5, v9);

  v10 = malloc_type_malloc(0x28uLL, 0x10A0040D8596764uLL);
  *v10 = a1;
  v10[2] = v5;
  *(v10 + 2) = v7;
  *(v10 + 3) = v8;
  *(v10 + 4) = qword_1ED4A2548;
  qword_1ED4A2548 = v10;
  if (qword_1ED4A2568 != -1)
  {

    dispatch_once(&qword_1ED4A2568, &__block_literal_global_10_13);
  }
}

void __updateCategoryFlagValueLocked(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = [v7 BOOLValue];

    if (v5)
    {
      v6 = *(a1 + 4) | a2;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v6 = *(a1 + 4) & ~a2;
LABEL_7:
  atomic_store((v6 & 0xF) != 0, a1);
  *(a1 + 4) = v6;
}

id _UIApplicationDeactivationReasonLoggableDescription(uint64_t a1)
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v3 = MEMORY[0x1E696AEC0];
  if (has_internal_diagnostics)
  {
    v6 = _UIApplicationDeactivationReasonDescription(a1);
    v4 = [v3 stringWithFormat:@"%@ (%i)", v6, a1];
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", a1];
  }

  return v4;
}

id _UIApplicationDeactivationReasonMaskLoggableDescription(uint64_t a1)
{
  if (os_variant_has_internal_diagnostics())
  {
    v4 = [MEMORY[0x1E695DF70] array];
    for (i = 0; i != 30; ++i)
    {
      if ((a1 >> i))
      {
        v6 = _UIApplicationDeactivationReasonDescription(i);
        [v4 addObject:v6];
      }
    }

    v7 = MEMORY[0x1E696AEC0];
    v8 = [v4 componentsJoinedByString:{@", "}];
    v2 = [v7 stringWithFormat:@"[%@] (%i)", v8, a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", a1];
  }

  return v2;
}

uint64_t UISelfHasEntitlement(void *a1)
{
  v1 = MEMORY[0x1E698E620];
  v2 = a1;
  v3 = [v1 tokenForCurrentProcess];
  HasEntitlement = UIAuditTokenHasEntitlement(v3, v2);

  return HasEntitlement;
}

uint64_t UIAuditTokenHasEntitlement(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v12 = MEMORY[0x1E69E9820];
  v13 = v3;
  v14 = v4;
  v5 = v4;
  v6 = v3;
  v7 = [v6 valueForEntitlement:{v5, v12, 3221225472, __UIAuditTokenHasEntitlement_block_invoke, &unk_1E70FB4F0}];
  v8 = v7;
  if (v7 && (v9 = CFGetTypeID(v7), v9 == CFBooleanGetTypeID()))
  {
    v10 = [v8 BOOLValue];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id _UIApplicationMainSceneForDisplayIdentity(void *a1)
{
  v1 = a1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__166;
  v21 = __Block_byref_object_dispose__166;
  v22 = 0;
  if (![qword_1EA992E50 count])
  {
    goto LABEL_6;
  }

  v2 = [UIScreen _screenWithFBSDisplayIdentity:v1];
  v3 = [v2 _isMainScreen];

  v4 = v3 ^ 1;
  if (!v1)
  {
    v4 = 0;
  }

  if (v4)
  {
LABEL_6:
    v7 = 0;
  }

  else
  {
    v5 = +[_UIApplicationConfigurationLoader sharedLoader];
    v6 = [v5 applicationInitializationContext];
    v7 = [v6 defaultSceneToken];
  }

  v8 = qword_1EA992E50;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___UIApplicationMainSceneForDisplayIdentity_block_invoke;
  v13[3] = &unk_1E711D9D0;
  v9 = v1;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v16 = &v17;
  [v8 enumerateObjectsUsingBlock:v13];
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void sub_188A9F424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _UIEventProfileCollectionInit()
{
  if (os_variant_has_internal_diagnostics())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, eventProfileCollectionCallback, @"com.apple.EventTimingProfileCollection", 0, CFNotificationSuspensionBehaviorCoalesce);
    eventProfileCollectionCheckEnabled();
    _MergedGlobals_1044 = v1;
  }
}

uint64_t stateMachineSpec_block_invoke_23(uint64_t a1, id **a2, uint64_t a3, uint64_t a4)
{
  v129 = *MEMORY[0x1E69E9840];
  v7 = a2[2];
  v8 = _NSStringFromUIDeferringAction[a4];
  v9 = [(_UIEventDeferringManager *)*a2 _currentLocalOrCompatibilityRecordForEnvironment:v7 forcePreviousHardwareIdentifier:0];
  v10 = [(_UIEventDeferringManager *)*a2 _topRemoteRecordInStackForEnvironment:v7];
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    goto LABEL_52;
  }

  v13 = *(v9 + 16);
  v14 = *(v11 + 16);
  if (v13)
  {
    v15 = v13[9];
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_72:
    v16 = 0;
    if (v13)
    {
      goto LABEL_8;
    }

    goto LABEL_73;
  }

  v15 = 0;
  if (!v14)
  {
    goto LABEL_72;
  }

LABEL_7:
  v16 = v14[7];
  if (v13)
  {
LABEL_8:
    v17 = *(v13 + 5);
    goto LABEL_9;
  }

LABEL_73:
  v17 = 0;
LABEL_9:
  v107 = v8;
  if (v14)
  {
    v18 = *(v14 + 3);
  }

  else
  {
    v18 = 0;
  }

  v20 = v15 != v16 || v17 != v18;
  log = v20;

  v21 = *(v9 + 16);
  v22 = v21;
  if (v21)
  {
    v23 = *(v21 + 5);
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  v25 = *(v11 + 16);
  v26 = v25;
  if (v25)
  {
    v27 = *(v25 + 5);
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;

  v101 = v28;
  if (v24 == v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = objc_msgSend_isEqualToString_(v24) ^ 1;
  }

  v108 = [(_UIEventDeferringManager *)*a2 internalBehavior];
  WeakRetained = objc_loadWeakRetained((v11 + 32));
  v31 = WeakRetained;
  if (WeakRetained)
  {
    v32 = *(WeakRetained + 6);
  }

  else
  {
    v32 = 0;
  }

  v109 = v32;

  v33 = *(v11 + 16);
  v34 = v33;
  v102 = v24;
  if (v33)
  {
    v35 = *(v33 + 4);
  }

  else
  {
    v35 = 0;
  }

  v36 = v35;
  v106 = [v108 shouldSuppressRemoteRuleForOwningElement:v109 inEnvironment:v36];

  v37 = *(v9 + 16);
  v38 = v37;
  if (v37)
  {
    v39 = *(v37 + 9);
  }

  else
  {
    v39 = 0;
  }

  v40 = v39;

  v100 = v40;
  v41 = [(_UIEventDeferringManager *)*a2 _isRemoteRuleOwningElement:v109 visibleForLocalTargetWindow:v40];
  v42 = [(_UIEventDeferringRecord *)v9 needsRecreation];
  v97 = v42;
  v98 = v41;
  v99 = log | v29;
  if (v106)
  {
    goto LABEL_31;
  }

  v44 = v41 ^ 1 | v42;
  if ((v44 | log | v29))
  {
    if ((v44 & 1) == 0)
    {
LABEL_36:
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE08);
      v89 = a4;
      if (*CategoryCachedImpl)
      {
        v78 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          v79 = *a2;
          v80 = v78;
          *buf = 134350338;
          v111 = v79;
          v112 = 2114;
          v113 = v7;
          v114 = 2114;
          v115 = v8;
          v116 = 1026;
          *v117 = log;
          *&v117[4] = 1026;
          *&v117[6] = v29;
          LOWORD(v118) = 1026;
          *(&v118 + 2) = [(_UIEventDeferringRecord *)v11 needsRecreation];
          _os_log_impl(&dword_188A29000, v80, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Top remote record needs recreation: windowMismatch: %{public}d; hardwareIdMismatch: %{public}d; needsRecreation: %{public}d", buf, 0x32u);
        }
      }

      v46 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE10);
      if (*v46)
      {
        v81 = *(v46 + 8);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          v82 = *a2;
          *buf = 134349826;
          v111 = v82;
          v112 = 2114;
          v113 = v7;
          v114 = 2114;
          v115 = v8;
          v116 = 2114;
          *v117 = v11;
          _os_log_impl(&dword_188A29000, v81, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Recreating top remote record: %{public}@", buf, 0x2Au);
        }
      }

      v47 = *a2;
      v48 = *(v11 + 16);
      v49 = v48;
      v90 = a3;
      if (v48)
      {
        v50 = *(v48 + 8);
      }

      else
      {
        v50 = 0;
      }

      v51 = *(v11 + 16);
      v52 = v51;
      if (v51)
      {
        v53 = *(v51 + 4);
      }

      else
      {
        v53 = 0;
      }

      v54 = v53;
      v55 = objc_loadWeakRetained((v11 + 32));
      v56 = [(_UIEventDeferringManager *)v47 _descriptorForCompatibility:v54 environment:v55 deferringToken:?];

      loga = [(_UIEventDeferringManager *)*a2 _predicateForDescriptor:v56];
      v92 = v56;
      v94 = [(_UIEventDeferringManager *)*a2 _targetForDescriptor:v56];
      v57 = [MEMORY[0x1E698E3B0] sharedInstance];
      v58 = objc_loadWeakRetained((v11 + 32));
      v59 = v58;
      if (v58)
      {
        v60 = *(v58 + 10);
      }

      else
      {
        v60 = 0;
      }

      a4 = v89;
      a3 = v90;
      v61 = v60;
      v62 = [v57 deferEventsMatchingPredicate:loga toTarget:v94 withReason:v61];

      v63 = v62;
      v64 = [_UIEventDeferringRecord alloc];
      v65 = objc_loadWeakRetained((v11 + 32));
      v66 = [(_UIEventDeferringRecord *)v64 _initWithDescriptor:v92 invalidationToken:v62 deferringToken:v65 recordingManagerPointer:*a2 recreationReasons:0];

      if (v99)
      {
        v67 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE18);
        if (*v67)
        {
          v87 = *(v67 + 8);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            v88 = *a2;
            *buf = 134349826;
            v111 = v88;
            v112 = 2114;
            v113 = v7;
            v114 = 2114;
            v115 = v107;
            v116 = 2114;
            *v117 = v11;
            _os_log_impl(&dword_188A29000, v87, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Invalidating remote record: %{public}@", buf, 0x2Au);
          }
        }

        v68 = *(v11 + 24);
        [v68 invalidate];
      }

      v69 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE20);
      if (*v69)
      {
        v83 = *(v69 + 8);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          v84 = *a2;
          *buf = 134349826;
          v111 = v84;
          v112 = 2114;
          v113 = v7;
          v114 = 2114;
          v115 = v107;
          v116 = 2114;
          *v117 = v11;
          _os_log_impl(&dword_188A29000, v83, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Removing remote record: %{public}@", buf, 0x2Au);
        }
      }

      [(_UIEventDeferringManager *)*a2 _removeRemoteRecord:v11 forEnvironment:v7];
      v70 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE28);
      if (*v70)
      {
        v85 = *(v70 + 8);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          v86 = *a2;
          *buf = 134349826;
          v111 = v86;
          v112 = 2114;
          v113 = v7;
          v114 = 2114;
          v115 = v107;
          v116 = 2114;
          *v117 = v66;
          _os_log_impl(&dword_188A29000, v85, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Pushing recreated remote record onto stack: %{public}@", buf, 0x2Au);
        }
      }

      [(_UIEventDeferringManager *)*a2 _pushRemoteRecordOnStack:v66 forEnvironment:v7];

      v43 = 1;
      goto LABEL_50;
    }
  }

  else if ([(_UIEventDeferringRecord *)v11 needsRecreation])
  {
    goto LABEL_36;
  }

LABEL_31:
  v43 = 0;
LABEL_50:
  v71 = [v7 description];
  v72 = [v71 UTF8String];

  v8 = v107;
  v73 = [(__CFString *)v107 UTF8String];
  if (os_variant_has_internal_diagnostics())
  {
    logb = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE30) + 8);
    if (os_log_type_enabled(logb, OS_LOG_TYPE_DEFAULT))
    {
      v91 = a3;
      v93 = *a2;
      v75 = v109;
      if (v75)
      {
        v95 = MEMORY[0x1E696AEC0];
        v76 = objc_opt_class();
        v77 = NSStringFromClass(v76);
        v96 = [v95 stringWithFormat:@"<%@: %p>", v77, v75];
      }

      else
      {
        v96 = @"(nil)";
      }

      *buf = 134351362;
      v111 = v93;
      v112 = 2082;
      v113 = v72;
      v114 = 2082;
      v115 = v73;
      v116 = 2050;
      *v117 = v11;
      *&v117[8] = 2114;
      v118 = v96;
      v119 = 1026;
      v120 = v99 & 1;
      v121 = 1024;
      v122 = v106;
      v123 = 1024;
      v124 = v98;
      v125 = 1024;
      v126 = v97;
      v127 = 1026;
      v128 = v43;
      _os_log_impl(&dword_188A29000, logb, OS_LOG_TYPE_DEFAULT, "[%{public}p] [%{public}s] %{public}s: Top remote record: %{public}p; remote element: %{public}@; needed invalidation: %{public}d; shouldBeSuppressed: %d; remote element visible: %d; local record needs recreation: %d; remote record needed recreation: %{public}d;", buf, 0x52u);

      a3 = v91;
      v8 = v107;
    }
  }

LABEL_52:
  if (*__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE38))
  {
    _emitDebugLogForTransition(a3, a4, &stru_1EFB14550, a2);
  }

  return 10;
}

void sub_188AA0394(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v61 = *MEMORY[0x1E69E9840];
  v10 = sub_18A4A2BD8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18A4A2BA8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E090, &qword_18A669D10);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v51 - v25;
  if ([(UIView *)v5 _isDeallocInitiated])
  {

    [v5 drawRect_];
  }

  else
  {
    v53 = v20;
    v54 = v17;
    v55 = v13;
    v56 = v11;
    v57 = v10;
    v27 = [(UIView *)v5 _typedStorage];
    v28 = sub_188A4CEC4();

    if (v28)
    {
      sub_18913E3AC(3);
    }

    v58 = v28;
    v52 = *(v15 + 56);
    v52(v26, 1, 1, v14);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v59 = v26;
    v30 = *(StatusReg + 848);
    *(StatusReg + 848) = v26;
    v31 = v15;
    v32 = byte_1ED4A3680;
    byte_1ED4A3680 = 1;
    [v5 drawRect_];
    *(StatusReg + 848) = v30;
    v33 = v14;
    v34 = v59;
    byte_1ED4A3680 = v32;
    v35 = v31;
    sub_188A3F29C(v59, v23, &qword_1EA93E090, &qword_18A669D10);
    if ((*(v31 + 48))(v23, 1, v14) == 1)
    {
      sub_188A3F5FC(v34, &qword_1EA93E090, &qword_18A669D10);
      sub_188A3F5FC(v23, &qword_1EA93E090, &qword_18A669D10);
    }

    else
    {
      v36 = v54;
      (*(v31 + 32))(v54, v23, v14);
      v37 = sub_188ACEB88(v5, 3, &block_descriptor_149_4);
      v38 = v58;
      if (!v58)
      {
        v39 = v37;
        v40 = [(UIView *)v5 _typedStorage];
        v38 = sub_188A4CEC4();

        v37 = v39;
      }

      v41 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v42 = swift_allocObject();
      *(v42 + 16) = v41;
      *(v42 + 24) = 3;
      *(v42 + 25) = v37;
      *(v42 + 32) = sub_189071040;
      *(v42 + 40) = 0;
      v43 = v53;
      (*(v31 + 16))(v53, v36, v33);
      v52(v43, 0, 1, v33);

      v44 = v55;
      sub_18A4A2BE8();
      if (!v38)
      {
        type metadata accessor for TrackingDictionary();
        v45 = swift_allocObject();
        *(v45 + 16) = MEMORY[0x1E69E7CC8];
        swift_retain_n();
        v46 = [(UIView *)v5 _typedStorage];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E098, &qword_18A669D18);
        v47 = swift_allocObject();
        *(v47 + 16) = v45;
        v58 = v41;
        v48 = OBJC_IVAR____UITypedStorage_storage;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = *(&v46->super.isa + v48);
        *(&v46->super.isa + v48) = 0x8000000000000000;
        sub_188A40430(v47, &type metadata for ObservationTrackingDictionaryKey, isUniquelyReferenced_nonNull_native);
        *(&v46->super.isa + v48) = v60;
        swift_endAccess();
      }

      swift_retain_n();
      sub_188ACEFD4(v44, 3);

      v50 = swift_allocObject();
      *(v50 + 16) = sub_188B57AD4;
      *(v50 + 24) = v42;

      MEMORY[0x18CFDDAE0](v44, 0, 0, sub_188B57248, v50);

      (*(v56 + 8))(v44, v57);
      (*(v35 + 8))(v36, v33);
      sub_188A3F5FC(v59, &qword_1EA93E090, &qword_18A669D10);
    }
  }
}

double sub_188AA24A8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 3;
  return result;
}

uint64_t _UIApplicationSupportsHomeAffordanceObservation()
{
  if (qword_1EA993150 != -1)
  {
    dispatch_once(&qword_1EA993150, &__block_literal_global_2340);
  }

  return byte_1EA992DD0;
}

uint64_t _UIKeyboardGetDeviceIdiomFromInputUIScene(uint64_t result)
{
  if (result == 1)
  {
    if (+[UIKeyboard isInputSystemUI])
    {
      v1 = +[UIKeyboardImpl keyboardScreen];
      v2 = +[UIKeyboard activeKeyboard];
      v3 = +[UIKBScreenTraits traitsWithScreen:orientation:](UIKBScreenTraits, "traitsWithScreen:orientation:", v1, [v2 interfaceOrientation]);

      v4 = [v3 idiom];
      return v4;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

NSString *__cdecl NSStringFromCGRect(CGRect rect)
{
  v1 = CFStringCreateWithFormat(0, 0, @"{{%.*g, %.*g}, {%.*g, %.*g}}", 17, *&rect.origin.x, 17, *&rect.origin.y, 17, *&rect.size.width, 17, *&rect.size.height);

  return v1;
}

_UIEventComponentPhaseValue *_eventComponentPhaseForValue(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v5 = [a2 allKeysForObject:v4];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = -[_UIEventComponentPhaseValue initWithValue:underlyingValue:]([_UIEventComponentPhaseValue alloc], "initWithValue:underlyingValue:", a1, [v6 integerValue]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id touchesFromDictionaryWithKey(const __CFDictionary *a1, void *a2)
{
  v3 = a2;
  v4 = CFDictionaryGetValue(a1, v3);
  v5 = v4;
  if (v3 && !v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    CFDictionarySetValue(a1, v3, v5);
  }

  return v5;
}

uint64_t stateMachineSpec_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 delegate];
  [v3 clickDriver:v2 didPerformEvent:3];

  v4 = [v2 gestureRecognizer];

  [v4 setCancelsTouchesInView:0];
  return 1;
}

uint64_t stateMachineSpec_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 delegate];
  [v3 clickDriver:v2 didPerformEvent:3];

  v4 = [v2 gestureRecognizer];

  [v4 setCancelsTouchesInView:0];
  return 1;
}

uint64_t stateMachineSpec_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 delegate];
  [v3 clickDriver:v2 didPerformEvent:3];

  v4 = [v2 gestureRecognizer];

  [v4 setCancelsTouchesInView:0];
  return 1;
}

void ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_56(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v3 = [*(a1 + 56) _dispatchWindows];
    v4 = [v3 countByEnumeratingWithState:&v51 objects:v66 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v52;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v52 != v6)
          {
            objc_enumerationMutation(v3);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            goto LABEL_14;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v51 objects:v66 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    _UIPencilEventRequestBarrelFocusIfAbleForWindow(*(a1 + 32), 0);
  }

LABEL_14:
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v11 = *(a1 + 72);
  v10 = *(a1 + 80);
  v47 = *(a1 + 96);
  v48 = *(a1 + 88);
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F8D0);
  if (*CategoryCachedImpl)
  {
    v38 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_ERROR, "Finishing digitizer dispatch", buf, 2u);
    }
  }

  v13 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F8D8);
  if (*v13)
  {
    v39 = *(v13 + 8);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = v39;
      Count = CFDictionaryGetCount(v11);
      v42 = CFDictionaryGetCount(v10);
      *buf = 67109376;
      v75 = Count;
      v76 = 1024;
      v77 = v42;
      _os_log_impl(&dword_188A29000, v40, OS_LOG_TYPE_ERROR, "\tpreviousTouchMap.count: %d; newTouchMap.count: %d", buf, 0xEu);
    }
  }

  v49 = v11;
  v50 = v10;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v14 = [v8 allTouches];
  v15 = [v14 countByEnumeratingWithState:&v62 objects:buf count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v63;
    do
    {
      v18 = 0;
      do
      {
        if (*v63 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v62 + 1) + 8 * v18);
        if (![v19 phase] || objc_msgSend(v19, "phase") == 1)
        {
          [v19 setPhase:2];
        }

        if (v19)
        {
          v20 = *(v19 + 360);
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;
        v22 = [v9 hoverTouchForContextId:objc_msgSend(v21 pathIndex:{"_contextId"), objc_msgSend(v19, "_pathIndex")}];
        if (v22 && ([v19 phase] == 3 || objc_msgSend(v19, "phase") == 4))
        {
          [v19 _clearForReenteringHoverInWindow:v21];
        }

        if (v19)
        {
          *(v19 + 236) &= ~0x2000u;
        }

        ++v18;
      }

      while (v16 != v18);
      v23 = [v14 countByEnumeratingWithState:&v62 objects:buf count:16];
      v16 = v23;
    }

    while (v23);
  }

  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = ____finishDigitizerEventDispatch_block_invoke;
  v61[3] = &__block_descriptor_48_e24_v32__0_8__UITouch_16_B24lu32l8u40l8;
  v61[4] = v9;
  v61[5] = v8;
  [(__CFDictionary *)v49 enumerateKeysAndObjectsUsingBlock:v61];
  v24 = *(v48 + 8);
  v25 = [v8 _exclusiveTouchWindows];
  v26 = [v25 mutableCopy];

  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = ____finishDigitizerEventDispatch_block_invoke_2;
  v59[3] = &unk_1E7119478;
  v27 = v26;
  v60 = v27;
  [(__CFDictionary *)v50 enumerateKeysAndObjectsUsingBlock:v59];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v28 = v27;
  v29 = [v28 countByEnumeratingWithState:&v55 objects:v73 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v56;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v56 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [*(*(&v55 + 1) + 8 * j) _setExclusiveTouchView:0];
      }

      v30 = [v28 countByEnumeratingWithState:&v55 objects:v73 count:16];
    }

    while (v30);
  }

  v33 = [v8 _exclusiveTouchWindows];
  [v33 minusSet:v28];

  if ([v28 count])
  {
    v34 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F8E0);
    if (*v34)
    {
      v43 = *(v34 + 8);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = v43;
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        *v67 = 138412802;
        v68 = v46;
        v69 = 2048;
        v70 = v8;
        v71 = 2112;
        v72 = v28;
        _os_log_impl(&dword_188A29000, v44, OS_LOG_TYPE_ERROR, "%@<%p> - Windows are no longer exclusive touch (%@)", v67, 0x20u);
      }
    }
  }

  if ([v24 _rotationDisabledDuringTouch])
  {
    v35 = CFDictionaryGetCount(v50);
    if ((v47 & 1) == 0 && v35)
    {
      v36 = &selRef_beginDisablingInterfaceAutorotation;
LABEL_52:
      v37 = [UIWindow allWindowsIncludingInternalWindows:0 onlyVisibleWindows:0];
      [v37 makeObjectsPerformSelector:*v36];

      goto LABEL_53;
    }

    if (v47 && !v35)
    {
      v36 = &selRef_endDisablingInterfaceAutorotation;
      goto LABEL_52;
    }
  }

LABEL_53:

  CFRelease(*(a1 + 72));
}

uint64_t __processEventQueue(uint64_t a1, int a2)
{
  v176[16] = *MEMORY[0x1E69E9840];
  v138 = *(a1 + 8);
  v145 = *(a1 + 16);
  if (_UIUpdateCycleEnabled())
  {
    v140 = 0;
  }

  else
  {
    v4 = *(a1 + 72);
    if (v4 == 0.0)
    {
      v4 = CACurrentMediaTime();
    }

    v5 = *(a1 + 80);
    if (v5 == 0.0)
    {
      v5 = v4 + _UIQOSMaxFrameDurationSeconds();
    }

    v140 = [MEMORY[0x1E6979518] startFrameWithReason:32 beginTime:v4 commitDeadline:v5];
  }

  v152 = a2;
  if (!a2 || ![v145 count])
  {
    goto LABEL_267;
  }

  do
  {
    v147 = objc_autoreleasePoolPush();
    v6 = *(a1 + 16);
    context = [v6 lastObject];
    if (!context)
    {
      v154 = 0;
      v10 = 0;
      goto LABEL_213;
    }

    v148 = [v6 count];
    Type = IOHIDEventGetType();
    v146 = BKSHIDEventGetBaseAttributes();
    v137 = [v146 contextID];
    if (BKSHIDEventContainsUpdates())
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v7 addObject:context];
      v8 = 0;
      v139 = -1;
      v9 = 255;
    }

    else
    {
      if (Type == 11)
      {
        v11 = IOHIDEventGetChildren();
        if ([v11 count])
        {
          v12 = [v11 objectAtIndexedSubscript:0];

          if (IOHIDEventGetIntegerValue())
          {
            if ([UIApp _supportsIndirectInputEvents] && (v13 = _UIEventHIDGetDescendantPointerEvent(context)) != 0)
            {
              v14 = _UIEventHIDGetPointerEventSource(v13);
              v15 = 3;
              if (v14 == 4)
              {
                v15 = 0;
              }
            }

            else
            {
              v15 = IOHIDEventGetIntegerValue() == 0;
            }
          }

          else
          {
            v15 = 2;
          }

          v139 = v15;
          v16 = _UIEventHIDPathAttributesForChild(v146, v12);
          v9 = [v16 locus];
        }

        else
        {
          v139 = -1;
          v9 = 255;
        }

        v7 = 0;
      }

      else
      {
        v7 = 0;
        v139 = -1;
        v9 = 255;
      }

      v8 = context;
    }

    v17 = v148 - 2;
    v154 = v7;
    if (v148 < 2)
    {
LABEL_200:
      v149 = 0;
      goto LABEL_201;
    }

    if (Type == 6 || Type == 17)
    {
      v17 = v148 - 2;
      if ((v148 - 2) < 0)
      {
        goto LABEL_200;
      }
    }

    else
    {
      if (Type != 11)
      {
        goto LABEL_200;
      }

      if (*(a1 + 184) > 0 || v17 < 0)
      {
        v149 = 0;
LABEL_201:
        v153 = 1;
        v10 = v8;
        goto LABEL_202;
      }
    }

    v136 = v9;
    v149 = 0;
    v153 = 1;
    while (1)
    {
      cf = v8;
      v150 = v17;
      v10 = [v6 objectAtIndex:?];
      if (IOHIDEventGetType() != Type)
      {
        break;
      }

      if (Type == 6)
      {
        Phase = IOHIDEventGetPhase();
        v20 = IOHIDEventGetPhase();
        v21 = _UIEventHIDGetChildScrollEvent(cf) != 0;
        v22 = _UIEventHIDGetChildScrollEvent(v10) != 0;
        if (Phase != v20)
        {
          break;
        }

        if ((v21 ^ v22))
        {
          v10 = cf;
          goto LABEL_202;
        }

        TimeStamp = IOHIDEventGetTimeStamp();
        if (TimeStamp <= IOHIDEventGetTimeStamp())
        {
          v24 = v10;
        }

        else
        {
          v24 = cf;
        }

        IOHIDEventGetFloatValue();
        IOHIDEventGetFloatValue();
        IOHIDEventGetFloatValue();
        IOHIDEventGetFloatValue();
        IOHIDEventGetFloatValue();
        IOHIDEventGetFloatValue();
        Copy = IOHIDEventCreateCopy();
        IOHIDEventSetFloatValue();
        IOHIDEventSetFloatValue();
        IOHIDEventSetFloatValue();
        if (_UIEventHIDGetChildPointerEvent(v24))
        {
          v26 = BKSHIDEventGetPointerAttributes();
          if (v26)
          {
            _UIEventHIDGetChildPointerEvent(Copy);
            BKSHIDEventSetAttributes();
          }
        }

        v27 = _UIEventHIDGetChildScrollEvent(Copy);
        v28 = _UIEventHIDGetChildScrollEvent(cf);
        v29 = _UIEventHIDGetChildScrollEvent(v10);
        if (v27 && v28 && v29)
        {
          IOHIDEventGetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventSetFloatValue();
          IOHIDEventSetFloatValue();
          IOHIDEventSetFloatValue();
        }

        v30 = CFAutorelease(Copy);
        goto LABEL_139;
      }

      if (Type == 17)
      {
        v176[0] = 0;
        *&v172 = 0;
        *&v163 = 0;
        _UIEventHIDGetTransformEventComponents(cf, v176, &v172, &v163);
        if (!v176[0] && !v172 && !v163)
        {
          break;
        }

        if (v176[0])
        {
          obj = IOHIDEventGetPhase();
          if (v172)
          {
            goto LABEL_52;
          }

LABEL_101:
          v141 = 0;
        }

        else
        {
          obj = 0;
          if (!v172)
          {
            goto LABEL_101;
          }

LABEL_52:
          v141 = IOHIDEventGetPhase();
        }

        if (v163)
        {
          v57 = IOHIDEventGetPhase();
        }

        else
        {
          v57 = 0;
        }

        v58 = v57;
        v59 = _UIEventHIDTransformPhaseForComponentPhases(obj, v141, v57);
        *&v159 = 0;
        v170 = 0;
        v171 = 0;
        _UIEventHIDGetTransformEventComponents(v10, &v159, &v171, &v170);
        if (!v159 && !v171 && !v170)
        {
          break;
        }

        if (v159)
        {
          v60 = IOHIDEventGetPhase();
          if (v171)
          {
            goto LABEL_110;
          }

LABEL_112:
          v61 = 0;
        }

        else
        {
          v60 = 0;
          if (!v171)
          {
            goto LABEL_112;
          }

LABEL_110:
          v61 = IOHIDEventGetPhase();
        }

        if (v170)
        {
          v62 = IOHIDEventGetPhase();
          v63 = v170;
        }

        else
        {
          v63 = 0;
          v62 = 0;
        }

        if (v59 != _UIEventHIDTransformPhaseForComponentPhases(v60, v171, v63) || obj != v60 || v61 != v141 || v62 != v58)
        {
          break;
        }

        v64 = IOHIDEventGetTimeStamp();
        v65 = IOHIDEventGetTimeStamp();
        v176[0] = 0;
        if (v64 <= v65)
        {
          v66 = cf;
        }

        else
        {
          v66 = v10;
        }

        if (v64 <= v65)
        {
          v67 = v10;
        }

        else
        {
          v67 = cf;
        }

        *&v172 = 0;
        *&v163 = 0;
        _UIEventHIDGetTransformEventComponents(v67, v176, &v172, &v163);
        *&v159 = 0;
        v170 = 0;
        v171 = 0;
        _UIEventHIDGetTransformEventComponents(v66, &v159, &v171, &v170);
        v68 = IOHIDEventCreateCopy();
        v168 = 0;
        v169 = 0;
        v167 = 0;
        _UIEventHIDGetTransformEventComponents(v68, &v169, &v168, &v167);
        if (v176[0] && v159 && v169)
        {
          IOHIDEventGetDoubleValue();
          IOHIDEventGetDoubleValue();
          IOHIDEventSetDoubleValue();
        }

        if (v172 && v171 && v168)
        {
          IOHIDEventGetDoubleValue();
          IOHIDEventGetDoubleValue();
          IOHIDEventSetDoubleValue();
        }

        if (v163 && v170 && v167)
        {
          IOHIDEventGetDoubleValue();
          IOHIDEventGetDoubleValue();
          IOHIDEventGetDoubleValue();
          IOHIDEventGetDoubleValue();
          IOHIDEventSetDoubleValue();
          IOHIDEventSetDoubleValue();
        }

        v30 = CFAutorelease(v68);
LABEL_139:
        v10 = v30;
        goto LABEL_140;
      }

      if (BKSHIDEventContainsUpdates())
      {
        if (!cf || v139 == 2)
        {
          v69 = v154;
          if (!v154)
          {
            v69 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v154 = v69;
          [v69 addObject:v10];
        }

        else
        {
          v18 = v149;
          if (!v149)
          {
            v18 = [MEMORY[0x1E695DF70] array];
          }

          v149 = v18;
          [v18 addObject:v10];
        }

        goto LABEL_173;
      }

      if (cf)
      {
        v31 = (IOHIDEventGetIntegerValue() & 2) == 0;
        v32 = (IOHIDEventGetIntegerValue() & 0x83) == 0 && v31;
        if (!v32 || IOHIDEventGetSenderID() == 0x8000000800A15175 || (BKSHIDEventGetDigitizerAttributes(), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v33 systemGestureStateChange], v33, (v34 & 1) != 0) || ((v35 = (IOHIDEventGetIntegerValue() & 2) == 0, (IOHIDEventGetIntegerValue() & 0x83) == 0) ? (v36 = v35) : (v36 = 0), !v36 || IOHIDEventGetSenderID() == 0x8000000800A15175 || (BKSHIDEventGetDigitizerAttributes(), v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "systemGestureStateChange"), v37, (v38 & 1) != 0)))
        {
          v97 = cf;
          goto LABEL_204;
        }

        v142 = BKSHIDEventGetDigitizerAttributes();
        v135 = BKSHIDEventGetDigitizerAttributes();
        IntegerValue = IOHIDEventGetIntegerValue();
        if ((IOHIDEventGetIntegerValue() ^ IntegerValue) & 0x83) != 0 || (v40 = IOHIDEventGetIntegerValue() != 0, ((v40 ^ (IOHIDEventGetIntegerValue() != 0))) || (v41 = [v142 systemGesturesPossible], v41 != objc_msgSend(v135, "systemGesturesPossible")) || (v42 = objc_msgSend(v142, "contextID"), v42 != objc_msgSend(v135, "contextID")))
        {

          goto LABEL_145;
        }

        v43 = IOHIDEventGetChildren();
        v133 = IOHIDEventGetChildren();
        v44 = [v43 count];
        if (v44 != [v133 count] || v44 >= 1 && (objc_msgSend(v43, "objectAtIndexedSubscript:", 0), v45 = objc_claimAutoreleasedReturnValue(), _UIEventHIDPathAttributesForChild(v142, v45), v46 = objc_claimAutoreleasedReturnValue(), v45, objc_msgSend(v133, "objectAtIndexedSubscript:", 0), v47 = objc_claimAutoreleasedReturnValue(), _UIEventHIDPathAttributesForChild(v135, v47), v48 = objc_claimAutoreleasedReturnValue(), v47, LODWORD(v47) = objc_msgSend(v46, "locus"), LODWORD(v47) = v47 == objc_msgSend(v48, "locus"), v48, v46, !v47))
        {

LABEL_145:
          v70 = BKSHIDEventGetDigitizerAttributes();
          if (v137 == [v70 contextID])
          {
            v71 = IOHIDEventGetChildren();
            if (![v71 count])
            {

LABEL_265:
              break;
            }

            v72 = [v71 objectAtIndexedSubscript:0];

            if (IOHIDEventGetIntegerValue())
            {
              if ([UIApp _supportsIndirectInputEvents] && (v73 = _UIEventHIDGetDescendantPointerEvent(v10)) != 0)
              {
                if (_UIEventHIDGetPointerEventSource(v73) == 4)
                {
                  v74 = 0;
                }

                else
                {
                  v74 = 3;
                }
              }

              else
              {
                v74 = IOHIDEventGetIntegerValue() == 0;
              }
            }

            else
            {
              v74 = 2;
            }

            v80 = _UIEventHIDPathAttributesForChild(v70, v72);
            v81 = [v80 locus];

            v83 = v74 != v139 || v81 != v136;
            if (!v83)
            {
              goto LABEL_265;
            }
          }

          v84 = v149;
          if (!v149)
          {
            v84 = [MEMORY[0x1E695DF70] array];
          }

          v149 = v84;
          [v84 addObject:v10];

LABEL_173:
          ++v153;
          v10 = cf;
          goto LABEL_174;
        }

        Mutable = __areDigitizerEventsCoalescable_children1EventMap;
        if (!__areDigitizerEventsCoalescable_children1EventMap)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
        }

        __areDigitizerEventsCoalescable_children1EventMap = Mutable;
        v163 = 0u;
        v164 = 0u;
        v165 = 0u;
        v166 = 0u;
        obja = v43;
        v50 = [obja countByEnumeratingWithState:&v163 objects:v176 count:16];
        if (v50)
        {
          v51 = *v164;
          v52 = 0.0;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v164 != v51)
              {
                objc_enumerationMutation(obja);
              }

              v54 = *(*(&v163 + 1) + 8 * i);
              if (IOHIDEventGetType() == 32)
              {
                IOHIDEventGetFloatValue();
                v52 = v55;
              }

              else
              {
                v56 = _UIEventHIDPathIndexForDigitizerEvent(cf, v54);
                CFDictionaryAddValue(__areDigitizerEventsCoalescable_children1EventMap, v56, v54);
              }
            }

            v50 = [obja countByEnumeratingWithState:&v163 objects:v176 count:16];
          }

          while (v50);
        }

        else
        {
          v52 = 0.0;
        }

        v161 = 0u;
        v162 = 0u;
        v159 = 0u;
        v160 = 0u;
        v131 = v133;
        v134 = [v131 countByEnumeratingWithState:&v159 objects:&v172 count:16];
        if (v134)
        {
          v132 = *v160;
          while (2)
          {
            for (j = 0; j != v134; ++j)
            {
              if (*v160 != v132)
              {
                objc_enumerationMutation(v131);
              }

              v88 = *(*(&v159 + 1) + 8 * j);
              if (IOHIDEventGetType() == 32)
              {
                IOHIDEventGetFloatValue();
                if (v52 != v89)
                {
                  goto LABEL_195;
                }
              }

              else
              {
                v90 = _UIEventHIDPathIndexForDigitizerEvent(v10, v88);
                Value = CFDictionaryGetValue(__areDigitizerEventsCoalescable_children1EventMap, v90);
                if (!Value || (v92 = _UIEventHIDTouchEdgeTypeForHIDEvent(Value), v92 != _UIEventHIDTouchEdgeTypeForHIDEvent(v88)) || (v93 = IOHIDEventGetIntegerValue() != 0, ((v93 ^ (IOHIDEventGetIntegerValue() != 0)) & 1) != 0))
                {
LABEL_195:
                  v94 = 0;
                  goto LABEL_197;
                }
              }
            }

            v134 = [v131 countByEnumeratingWithState:&v159 objects:&v172 count:16];
            v94 = 1;
            if (v134)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v94 = 1;
        }

LABEL_197:

        CFDictionaryRemoveAllValues(__areDigitizerEventsCoalescable_children1EventMap);
        if ((v94 & 1) == 0)
        {
          goto LABEL_145;
        }

        if (!v136)
        {
          v95 = _UIEventHIDUIWindowForHIDEvent(cf);
          v96 = [(UIEventEnvironment *)a1 _touchesEventForWindow:v95];
          __coalesceDigitizerEventFromQueueEvent(cf, v10, v96, a1);
        }
      }

      else
      {
        v75 = IOHIDEventGetChildren();
        if ([v75 count])
        {
          v76 = [v75 objectAtIndexedSubscript:0];

          if (IOHIDEventGetIntegerValue())
          {
            if ([UIApp _supportsIndirectInputEvents] && (v77 = _UIEventHIDGetDescendantPointerEvent(v10)) != 0)
            {
              v78 = _UIEventHIDGetPointerEventSource(v77);
              v79 = 3;
              if (v78 == 4)
              {
                v79 = 0;
              }
            }

            else
            {
              v79 = IOHIDEventGetIntegerValue() == 0;
            }
          }

          else
          {
            v79 = 2;
          }

          v139 = v79;
          v85 = BKSHIDEventGetDigitizerAttributes();
          v86 = _UIEventHIDPathAttributesForChild(v85, v76);
          v136 = [v86 locus];
        }
      }

LABEL_140:
      ++v153;
LABEL_174:
      v17 = v150 - 1;
      v8 = v10;
      if (v150 <= 0)
      {
        goto LABEL_202;
      }
    }

    v10 = cf;
LABEL_202:
    if (v10)
    {
      v97 = v10;
LABEL_204:
      v10 = v97;
      CFRetain(v97);
    }

    [v6 removeObjectsInRange:v148 - v153];
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v98 = [v149 reverseObjectEnumerator];
    v99 = [v98 countByEnumeratingWithState:&v172 objects:v176 count:16];
    if (v99)
    {
      v100 = *v173;
      do
      {
        for (k = 0; k != v99; ++k)
        {
          if (*v173 != v100)
          {
            objc_enumerationMutation(v98);
          }

          [v6 addObject:*(*(&v172 + 1) + 8 * k)];
        }

        v99 = [v98 countByEnumeratingWithState:&v172 objects:v176 count:16];
      }

      while (v99);
    }

    v102 = v154;
    __applySynthesizedTouchTranslationAndModifyIfNeeded(v10);

LABEL_213:
    cfa = v154;
    if (v10)
    {
      v103 = objc_autoreleasePoolPush();
      v104 = IOHIDEventGetType();
      v105 = IOHIDEventGetTimeStamp();
      v106 = _UIMediaTimeForMachTime(v105);
      v107 = _UIUpdateCycleEnabled();
      if (v104 == 11)
      {
        v108 = v107;
      }

      else
      {
        v108 = 1;
      }

      if ((v108 & 1) == 0 && *(a1 + 64) > 0.0)
      {
        v109 = IOHIDEventGetChildren();
        if (![v109 count])
        {
          goto LABEL_230;
        }

        v110 = [v109 objectAtIndexedSubscript:0];
        if (!IOHIDEventGetIntegerValue())
        {
          goto LABEL_226;
        }

        if (![UIApp _supportsIndirectInputEvents] || (v111 = _UIEventHIDGetDescendantPointerEvent(v10)) == 0)
        {
          v112 = IOHIDEventGetIntegerValue() == 0;

          if (!v112)
          {
            goto LABEL_228;
          }

          goto LABEL_230;
        }

        if (_UIEventHIDGetPointerEventSource(v111) != 4)
        {
LABEL_226:

          goto LABEL_230;
        }

LABEL_228:
        if (([MEMORY[0x1E6979518] lowLatency] & 1) == 0)
        {
          [MEMORY[0x1E6979518] setEarliestAutomaticCommitTime:CACurrentMediaTime() + *(a1 + 64)];
        }

LABEL_230:
      }

      __dispatchPreprocessedEventFromEventQueue(v10, v140, a1);
      if ((_UIUpdateCycleEnabled() & 1) == 0 && [MEMORY[0x1E6979518] currentState] && objc_msgSend(MEMORY[0x1E6979518], "lowLatency"))
      {
        [MEMORY[0x1E6979518] commitTime];
        if (v113 > 0.0)
        {
          [MEMORY[0x1E6979518] setCommitTime:0.0];
        }

        [MEMORY[0x1E6979518] earliestAutomaticCommitTime];
        if (v114 > 0.0)
        {
          [MEMORY[0x1E6979518] setEarliestAutomaticCommitTime:0.0];
        }
      }

      CFRelease(v10);
      objc_autoreleasePoolPop(v103);
    }

    else
    {
      v106 = 0.0;
    }

    if (cfa)
    {
      contexta = objc_autoreleasePoolPush();
      [cfa count];
      kdebug_trace();
      *&v159 = 0;
      *(&v159 + 1) = &v159;
      *&v160 = 0x3032000000;
      *(&v160 + 1) = __Block_byref_object_copy__41;
      *&v161 = __Block_byref_object_dispose__42;
      *(&v161 + 1) = 0;
      v172 = 0u;
      v173 = 0u;
      v174 = 0u;
      v175 = 0u;
      v115 = cfa;
      v116 = [v115 countByEnumeratingWithState:&v172 objects:v176 count:16];
      if (v116)
      {
        v117 = *v173;
        do
        {
          for (m = 0; m != v116; ++m)
          {
            if (*v173 != v117)
            {
              objc_enumerationMutation(v115);
            }

            v119 = MEMORY[0x1E696AD98];
            v120 = BKSHIDEventGetBaseAttributes();
            v121 = [v119 numberWithUnsignedInt:{objc_msgSend(v120, "contextID")}];

            *&v163 = MEMORY[0x1E69E9820];
            *(&v163 + 1) = 3221225472;
            *&v164 = ____dispatchEstimationUpdateEvents_block_invoke;
            *(&v164 + 1) = &unk_1E7119398;
            *&v166 = a1;
            v122 = v121;
            *&v165 = v122;
            *(&v165 + 1) = &v159;
            BKSHIDEventEnumerateUpdatesWithBlock();
          }

          v116 = [v115 countByEnumeratingWithState:&v172 objects:v176 count:16];
        }

        while (v116);
      }

      v123 = *(*(&v159 + 1) + 40);
      if (v123)
      {
        if (v106 < 0.0)
        {
          v124 = IOHIDEventGetTimeStamp();
          v106 = _UIMediaTimeForMachTime(v124);
          v123 = *(*(&v159 + 1) + 40);
        }

        [(UIEventEnvironment *)a1 _dispatchAndRemoveStaleEstimationUpdateRecordsWithEventTime:v123 upToRecord:v106];
        if (([*(*(&v159 + 1) + 40) hasRemainingUpdates] & 1) == 0)
        {
          [(UIEventEnvironment *)a1 _removeEstimatedTouchRecord:?];
        }
      }

      _Block_object_dispose(&v159, 8);

      kdebug_trace();
      objc_autoreleasePoolPop(contexta);
    }

    objc_autoreleasePoolPop(v147);
    v125 = _UIUpdateCycleEnabled();
    v126 = --v152;
    if ((v125 & 1) == 0)
    {
      v127 = _UIApplicationFlushRunLoopCATransactionIfTooLate(v138);
      if (v152)
      {
        v128 = v127;
      }

      else
      {
        v128 = 1;
      }

      if ((v128 & 1) == 0)
      {
        continue;
      }

      break;
    }

    if (!v126)
    {
      break;
    }
  }

  while ([v145 count]);
LABEL_267:
  result = _UIUpdateCycleEnabled();
  if ((result & 1) == 0)
  {
    if ([v145 count])
    {
      v130 = v138[20];
      if (v130)
      {
        CFRunLoopSourceSignal(*(v130 + 24));
      }
    }

    return [MEMORY[0x1E6979518] finishFrameWithToken:v140];
  }

  return result;
}

void sub_188AA5DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t schedulerStepScheduledMainSectionContinue(uint64_t a1)
{
  UCDriverReset();
  if (!_UIUpdateSequenceRunNext(a1 + 712))
  {
    UCDriverUpdateMask();
    v3 = *(a1 + 592);
    if (v3 >= mach_absolute_time())
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UpdateCycle", &qword_1ED49FB68);
      if (os_signpost_enabled(*(CategoryCachedImpl + 8)))
      {
LABEL_9:
        _os_signpost_emit_unreliably_with_name_impl();
      }
    }

    else
    {
      v4 = __UILogGetCategoryCachedImpl("UpdateCycle.Stalls", &qword_1ED49FB60);
      if (os_signpost_enabled(*(v4 + 8)))
      {
        goto LABEL_9;
      }
    }

    kdebug_trace();
    _UIQOSProcessingEnd();
    return MEMORY[0x18CFE7DB0](*(a1 + 704), a1, schedulerModeScheduledWaitingLowLatencyInputsEnter);
  }

  return UCDriverNextStep();
}

void *_UIGestureDelayedTouchForUITouch(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        if (v8)
        {
          v9 = v8[3];
        }

        else
        {
          v9 = 0;
        }

        if (v9 == v3)
        {
          v5 = v8;
          goto LABEL_15;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v10 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v5 = v10;
    }

    while (v10);
  }

LABEL_15:

  return v5;
}

uint64_t _UISceneLiveResizeTransparentTearingEnabled()
{
  result = _UILiveSceneResizeEnabled();
  if (result)
  {
    v1 = +[_UISceneLiveResizePrototypeSettingsDomain rootSettings];
    v2 = [v1 transparentTearingEnabled];

    return v2;
  }

  return result;
}

uint64_t sub_188AA66C4()
{
  sub_188AA5E18();

  return swift_deallocClassInstance();
}

uint64_t __setupUpdateSequence_block_invoke(uint64_t a1, uint64_t a2)
{
  *(a2 + 376) = 0;
  _UIUpdateInputSetInputChanged(*(a2 + 424), a2 + 376);
  *(a2 + 384) = 0x7FFFFFFFFFFFFFFFLL;
  v3 = MEMORY[0x1E6979330];

  return [v3 dispatchDeferredDisplayLinks];
}

uint64_t _UIUpdateSequenceRunNext(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(v2 + 6);
    *(v2 + 6) = v3 & 0xFFFFFFFE;
    v4 = *v2;
    if ((v3 & 2) != 0)
    {
      _removeItem(v2);
    }
  }

  else
  {
    v4 = *(a1 + 16);
  }

  while (1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = v4[5];
    if (v5)
    {
      break;
    }

    v4 = *v4;
  }

  *(a1 + 24) = v4;
  *(v4 + 6) |= 1u;
  (*(v5 + 16))(v5, v4[4], *(a1 + 8), *a1);
  return 1;
}

CGContextRef UIGraphicsGetCurrentContext(void)
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    return 0;
  }

  else
  {
    return ContextStack[3 * (*ContextStack - 1) + 1];
  }
}

uint64_t sub_188AA6CD0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_18A4A7F88();

    if (v8)
    {

      type metadata accessor for InProcessAnimationManager();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_18A4A7F68();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_188E7375C(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_188E76D64(v17 + 1);
    }

    sub_188E770F0(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a2);
  v10 = sub_18A4A88E8();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_188AA7650(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(v6 + 48) + 8 * v12) != a2)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_188AA6EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = type metadata accessor for UIAnimatableProperty.ProtectedState(0, v6, *(v3 + 24), a2);
  return (*(*(v6 - 8) + 16))(a3, a1 + *(v7 + 36), v6);
}

void sub_188AA6FF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349C8, &qword_18A64D510);
  v4 = sub_18A4A8068();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v16);
      v17 = sub_18A4A88E8();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

uint64_t get_enum_tag_for_layout_string_So6UIViewC5UIKitE18InProcessAnimationV7StorageO(uint64_t a1)
{
  if ((*(a1 + 88) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 88) & 3;
  }
}

void sub_188AA733C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  MEMORY[0x18CFE2450](v4);
  if (*((*(a1 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18A4A7588();
  }

  sub_18A4A75F8();
  swift_endAccess();
  v5 = *(a2 + 16);
  v6 = *(a2 + 20);
  if (sub_18A4A79C8())
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  sub_188AB0F24(v5);
  swift_endAccess();
  swift_beginAccess();
  sub_188AB0F24(v6);
  swift_endAccess();
  v7 = sub_18A4A79E8();
  if ((v7 & 0x100000000) == 0)
  {
    v8 = *&v7;
    swift_beginAccess();
    sub_188AB0F24(v8);
    swift_endAccess();
  }

  v9 = *(a2 + 28);
  swift_beginAccess();
  sub_188AB10F4(v9);
  swift_endAccess();
  if ((*(a2 + 32) & 1) == 0)
  {
    v10 = sub_18A4A79E8();
    v11 = sub_18A4A79E8();
    if ((v10 & 0x100000000) != 0)
    {
      if ((v11 & 0x100000000) == 0)
      {
LABEL_12:
        v12 = *(a1 + 176);
        v13 = __OFADD__(v12, 1);
        v14 = v12 + 1;
        if (v13)
        {
          goto LABEL_20;
        }

        *(a1 + 176) = v14;
      }
    }

    else if ((v11 & 0x100000000) != 0 || *&v10 != *&v11)
    {
      goto LABEL_12;
    }
  }

  *(a1 + 392) = 0;
LABEL_15:
  if (*(a2 + 33) != 1)
  {
LABEL_18:
    sub_188AA7584();
    return;
  }

  v15 = *(a1 + 184);
  v13 = __OFADD__(v15, 1);
  v16 = v15 + 1;
  if (!v13)
  {
    *(a1 + 184) = v16;
    goto LABEL_18;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_188AA7584()
{
  if (swift_unknownObjectWeakLoadStrong())
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EA9951C0)
    {
      v2 = qword_1EA9951C8;
    }

    else
    {
      swift_unknownObjectRetain();
      v2 = &off_1EFAF6C08;
    }

    *(v0 + 232) = v2;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    *(v0 + 314) = 1;
  }

  return result;
}

void sub_188AA7650(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_188E76D64(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_188E7A69C(&qword_1EA9349C8, &qword_18A64D510);
      a2 = v7;
      goto LABEL_12;
    }

    sub_188AA6FF4(v5 + 1);
  }

  v8 = *v3;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](result);
  v9 = sub_18A4A88E8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for InProcessAnimationManager();
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_18A4A8798();
  __break(1u);
}

void *sub_188AA785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v11 = (v5 + *(*v5 + 112));
  *v11 = 0;
  v11[1] = 0;
  swift_unknownObjectWeakInit();
  sub_188A3F29C(a1, v5 + *(*v5 + 104), a4, a5);
  *(v5 + *(*v5 + 128)) = 0;
  *(v5 + *(*v5 + 120)) = 0;
  v12 = *v11;
  v13 = v11[1];
  *v11 = a2;
  v11[1] = a3;
  sub_188A52E38(a2, a3);
  sub_188A55B8C(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C9D0, &qword_18A650D00);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  sub_188A3F5FC(a1, a4, a5);
  v5[2] = v14;
  return v5;
}

double sub_188AA79A0(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (v3 < 0)
  {
    v6 = *(a1 + 56);
    v5 = *(a1 + 64);
    v4 = *(a1 + 48);
    if (*(a1 + 24) & a2)
    {
      v4 = 0.0;
    }

    if (v3 & a2)
    {
      v6 = 0.0;
    }
  }

  v7 = 6.28318531 / v4 * (6.28318531 / v4);
  v8 = sqrt(v7);
  *(v2 + 56) = v7;
  *(v2 + 64) = v8 + v8;
  *(v2 + 137) = v4 == 0.0;
  v9 = 6.28318531 / v6 * (6.28318531 / v6);
  v10 = sqrt(v9);
  *(v2 + 88) = v9;
  *(v2 + 96) = v10 + v10;
  *(v2 + 138) = v6 == 0.0;
  v11 = 6.28318531 / v5 * (6.28318531 / v5);
  v12 = sqrt(v11);
  *(v2 + 120) = v11;
  *(v2 + 128) = v12 + v12;
  *(v2 + 139) = v5 == 0.0;
  v13 = *a1;
  v14 = *(a1 + 8);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v15 = *a1;
    *(v2 + 32) = v13;
    v16 = 40;
    v17 = v14;
    goto LABEL_17;
  }

  v18 = *(a1 + 16);
  v19 = *(a1 + 32);
  v20 = *(a1 + 24);
  v15 = 6.28318531 / v13 * (6.28318531 / v13);
  v21 = sqrt(v15);
  v17 = (v21 + v21) * v14;
  *(v2 + 32) = v15;
  *(v2 + 40) = v17;
  *(v2 + 48) = v14;
  *(v2 + 80) = v13;
  if (v20)
  {
    if (v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *v2 = v18;
    if (v3)
    {
LABEL_10:
      if (v4 != 0.0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v16 = 16;
  v14 = v19;
LABEL_17:
  *(v2 + v16) = v14;
  if (v4 == 0.0)
  {
LABEL_11:
    *v2 = *(v2 + 48);
    *(v2 + 8) = 0;
  }

LABEL_12:
  if (v6 == 0.0)
  {
    *(v2 + 16) = *(v2 + 80);
    *(v2 + 24) = 0;
  }

  result = v17 / v15;
  *(v2 + 144) = v17 / v15;
  return result;
}

uint64_t sub_188AA7AF0(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(a2 + 144))(a1, a2, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 80))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

void sub_188AA7C54(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    sub_188CB1E44(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      sub_188E79AAC();
      a3 = v9;
      goto LABEL_12;
    }

    sub_188AA9978(v7 + 1);
  }

  v10 = *v4;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](result);
  v11 = sub_18A4A88E8();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    while (*(*(v10 + 48) + 16 * a3) != result)
    {
      a3 = (a3 + 1) & v13;
      if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v15 = (*(v14 + 48) + 16 * a3);
  *v15 = result;
  v15[1] = a2;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v14 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_18A4A8798();
  __break(1u);
}

uint64_t objectdestroy_29Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_29Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188AA7E64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_188A3F5FC(a1, &qword_1EA937048, &unk_18A6522C0);
    v5 = sub_188A403F4(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_188FA8C1C();
        v10 = v13;
      }

      sub_188A3F704(*(v10 + 56) + 8 * v8, &v15, &unk_1EA935760, &unk_18A64E700);
      sub_188FA036C(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return sub_188A3F5FC(&v15, &qword_1EA937048, &unk_18A6522C0);
  }

  else
  {
    sub_188A3F704(a1, &v15, &unk_1EA935760, &unk_18A64E700);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_188AA7F94(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

uint64_t sub_188AA7F94(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188A403F4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA8C1C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_188AA9D00(v14, a3 & 1);
    v9 = sub_188A403F4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    return sub_188A4B4F4(a1, v19[7] + 8 * v9, &unk_1EA935760, &unk_18A64E700);
  }

  return sub_188AAE548(v9, a2, a1, v19);
}

uint64_t objectdestroy_49Tm()
{
  v1 = *(v0 + 104);
  if (v1 == 2)
  {
  }

  else if (v1 == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  }

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  if (v1 >= 0xA)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 32))
  {
  }

  v5 = (v3 + 48) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

uint64_t objectdestroyTm_2()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939040, &qword_18A657938);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_3()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 112);
  if (v1 != 255)
  {
    sub_188B1F3A0(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), v1);
  }

  MEMORY[0x18CFEA6E0](v0 + 120);

  return MEMORY[0x1EEE6BDD0](v0, 129, 7);
}

uint64_t objectdestroyTm_4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroyTm_5(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 64));

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroy_54Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188AA8490(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x18CFE37B0](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_188ABC70C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_188AA8578(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349C0, &qword_18A64D508);
  v4 = sub_18A4A8068();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      v18 = MEMORY[0x18CFE37B0](*(v5 + 40), v17, 4);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

uint64_t sub_188AA87A0()
{

  return swift_deallocClassInstance();
}

_DWORD *sub_188AA87D8(_DWORD *result, int a2, uint64_t a3, id a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_10:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    result[v4] = *(*(a3 + 48) + ((v10 << 8) | (4 * v11)));
    if (__OFADD__(v4++, 1))
    {
      __break(1u);
      return [a4 setHighFrameRateReasons:result count:*(a3 + 16)];
    }
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      return [a4 setHighFrameRateReasons:result count:*(a3 + 16)];
    }

    v8 = *(a3 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_188AA88B4(unint64_t result, uint64_t a2, void *a3, float a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 4 * result) = a4;
  *(a3[7] + 8 * result) = a2;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

void UICeilToScale(double a1, double a2)
{
  if (a2 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }
}

uint64_t sub_188AA8CD8()
{
  if (*(v0 + 392))
  {
    return swift_beginAccess();
  }

  if (*(v0 + 176) < 1)
  {
    result = swift_beginAccess();
    v35 = 0;
    v36 = *(v0 + 144);
    v37 = 1 << *(v36 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v36 + 64);
    v40 = (v37 + 63) >> 6;
    v41 = 0.0;
    while (v39)
    {
      v42 = v35;
LABEL_48:
      v43 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v44 = *(v36 + 48);
      v45 = (v42 << 8) | (4 * v43);
      if (v41 <= *(v44 + v45))
      {
        v41 = *(v44 + v45);
      }
    }

    while (1)
    {
      v42 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v42 >= v40)
      {
        v46 = fminf(v41, 48.0);
        swift_beginAccess();
        *(v0 + 64) = v46;
        result = swift_beginAccess();
        v47 = 0;
        v48 = *(v0 + 152);
        v49 = 1 << *(v48 + 32);
        v50 = -1;
        if (v49 < 64)
        {
          v50 = ~(-1 << v49);
        }

        v51 = v50 & *(v48 + 64);
        v52 = (v49 + 63) >> 6;
        v53 = 0.0;
        while (v51)
        {
          v54 = v47;
LABEL_60:
          v55 = __clz(__rbit64(v51));
          v51 &= v51 - 1;
          v56 = *(v48 + 48);
          v57 = (v54 << 8) | (4 * v55);
          if (v53 <= *(v56 + v57))
          {
            v53 = *(v56 + v57);
          }
        }

        while (1)
        {
          v54 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_71;
          }

          if (v54 >= v52)
          {
            swift_beginAccess();
            *(v0 + 68) = v53;
LABEL_65:
            sub_18A4A79F8();
            swift_endAccess();
            *(v0 + 392) = 1;
            return swift_beginAccess();
          }

          v51 = *(v48 + 64 + 8 * v54);
          ++v47;
          if (v51)
          {
            v47 = v54;
            goto LABEL_60;
          }
        }
      }

      v39 = *(v36 + 64 + 8 * v42);
      ++v35;
      if (v39)
      {
        v35 = v42;
        goto LABEL_48;
      }
    }
  }

  else
  {
    result = swift_beginAccess();
    v2 = 0;
    v3 = *(v0 + 144);
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = (v4 + 63) >> 6;
    v8 = 0.0;
    if (v6)
    {
      while (1)
      {
        v9 = v2;
LABEL_11:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(v3 + 48);
        v12 = (v9 << 8) | (4 * v10);
        if (v8 <= *(v11 + v12))
        {
          v8 = *(v11 + v12);
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v9 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        goto LABEL_68;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 64 + 8 * v9);
      ++v2;
      if (v6)
      {
        v2 = v9;
        goto LABEL_11;
      }
    }

    swift_beginAccess();
    *(v0 + 64) = v8;
    result = swift_beginAccess();
    v13 = 0;
    v14 = *(v0 + 152);
    v15 = 1 << *(v14 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v14 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = 0.0;
    while (v17)
    {
      v20 = v13;
LABEL_23:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v22 = *(v14 + 48);
      v23 = (v20 << 8) | (4 * v21);
      if (v19 <= *(v22 + v23))
      {
        v19 = *(v22 + v23);
      }
    }

    while (1)
    {
      v20 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
        *(v0 + 68) = v19;
        result = swift_beginAccess();
        v24 = 0;
        v25 = *(v0 + 160);
        v26 = 1 << *(v25 + 32);
        v27 = -1;
        if (v26 < 64)
        {
          v27 = ~(-1 << v26);
        }

        v28 = v27 & *(v25 + 64);
        v29 = (v26 + 63) >> 6;
        v30 = 0.0;
        while (v28)
        {
          v31 = v24;
LABEL_35:
          v32 = __clz(__rbit64(v28));
          v28 &= v28 - 1;
          v33 = *(v25 + 48);
          v34 = (v31 << 8) | (4 * v32);
          if (v30 <= *(v33 + v34))
          {
            v30 = *(v33 + v34);
          }
        }

        while (1)
        {
          v31 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_69;
          }

          if (v31 >= v29)
          {
            swift_beginAccess();
            goto LABEL_65;
          }

          v28 = *(v25 + 64 + 8 * v31);
          ++v24;
          if (v28)
          {
            v24 = v31;
            goto LABEL_35;
          }
        }
      }

      v17 = *(v14 + 64 + 8 * v20);
      ++v13;
      if (v17)
      {
        v13 = v20;
        goto LABEL_23;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_188AA91F4()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  *(v0 + 88) = MEMORY[0x1E69E7CC0];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    v4 = *(v1 + 16);
    while (1)
    {
      v5 = *(v3 - 8);
      v9 = v0;

      v5(&v9);

      if (*(*(v0 + 88) + 16))
      {
        v6 = sub_188AA91F4();
        v7 = __OFADD__(v4, v6);
        v4 += v6;
        if (v7)
        {
          break;
        }
      }

      v3 += 16;
      if (!--v2)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  v4 = 0;
LABEL_9:

  return v4;
}

void sub_188AA9344(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = v2[3];
  type metadata accessor for UIAnimatableProperty.ProtectedState(0, *(*v2 + 80), *(*v2 + 88), a1);
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_188AA6EF4(v4 + v5, v7, a2);
  os_unfair_lock_unlock((v4 + v6));
}

void *sub_188AA9424(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_188AA9558@<X0>(BOOL *a1@<X8>)
{
  if (*(v1 + 184) <= 0)
  {
    result = swift_beginAccess();
    v3 = *(*(v1 + 120) + 16) != 0;
  }

  else
  {
    v3 = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_188AA95C4(uint64_t a1)
{
  *(a1 + 313) = 1;
  signpost_c2_tick_pre_start();
  v2 = sub_188AA91F4();
  result = signpost_c2_tick_pre_end(v2);
  *(a1 + 313) = 0;
  return result;
}

double sub_188AA95FC@<D0>(id a1@<X4>, char a2@<W0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v8 = a5;
  v11 = 1;
  if ((a2 & 1) == 0)
  {
    v13 = type metadata accessor for RunningInProcessAnimation(0, a6, a7, a4);
    v11 = 2 * ((*(*(v13 - 8) + 48))(a3, 1, v13) != 1);
  }

  if (v8)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  [a1 parametersForTransitionFromState:v11 toState:{v14, a1, a5, a6, a7}];
  sub_188AA96FC(v30, &v22);
  v15 = v23;
  v16 = v25;
  v17 = v29;
  v18 = v24 & 1;
  v19 = v26 & 1 | 0x8000000000000000;
  *a8 = v22;
  *(a8 + 16) = v15;
  *(a8 + 24) = v18;
  *(a8 + 32) = v16;
  *(a8 + 40) = v19;
  result = *&v27;
  v21 = v28;
  *(a8 + 48) = v27;
  *(a8 + 64) = v21;
  *(a8 + 80) = v17;
  *(a8 + 88) = 0;
  return result;
}

__n128 sub_188AA96FC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = 1;
  v7 = 1;
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    v8 = 0;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 17))
  {
    v3 = *(a1 + 32);
    v7 = 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 72);
  *a2 = vextq_s8(*a1, *a1, 8uLL);
  *(a2 + 16) = v2;
  *(a2 + 24) = v8;
  *(a2 + 32) = v3;
  *(a2 + 40) = v7;
  result = *(a1 + 40);
  v6 = *(a1 + 56);
  *(a2 + 48) = result;
  *(a2 + 64) = v6;
  *(a2 + 80) = v4;
  return result;
}

id sub_188AA977C(uint64_t a1)
{
  sub_188A55538(a1, &v7);
  v2 = sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);
  swift_dynamicCast();
  [v6 doubleValue];
  v4 = v3;

  if (v4 <= 0.0)
  {
    v4 = 0.0;
  }

  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(a1 + 24) = v2;
  *a1 = result;
  return result;
}

double sub_188AA9844@<D0>(_OWORD *a1@<X8>)
{
  v7 = *(MEMORY[0x1E69792E8] + 64);
  v8 = *(MEMORY[0x1E69792E8] + 80);
  v9 = *(MEMORY[0x1E69792E8] + 96);
  v10 = *(MEMORY[0x1E69792E8] + 112);
  v3 = *MEMORY[0x1E69792E8];
  v4 = *(MEMORY[0x1E69792E8] + 16);
  v5 = *(MEMORY[0x1E69792E8] + 32);
  v6 = *(MEMORY[0x1E69792E8] + 48);
  CATransform3DSetDecomposition_();
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

void sub_188AA9978(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349D0, &qword_18A64D518);
  v4 = sub_18A4A8068();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v24 = *(*(v3 + 48) + 16 * (v13 | (v6 << 6)));
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v24);
      v16 = sub_18A4A88E8();
      v17 = -1 << *(v5 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 16 * v12) = v24;
      ++*(v5 + 16);
      swift_unknownObjectRetain();
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

uint64_t sub_188AA9BB0()
{
  v0 = [objc_opt_self() currentThread];
  v1 = [v0 threadDictionary];

  *&v7[0] = 0xD000000000000022;
  *(&v7[0] + 1) = 0x800000018A68D0A0;
  v2 = [v1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v2)
  {
    sub_18A4A7DE8();
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
    _s29AnimatablePropertyTransformerCMa();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_188A3F5FC(v7, &qword_1EA934050, qword_18A64CA10);
    return 0;
  }
}

void sub_188AA9D24(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_188A5E664(a2 & 1, a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_188FA1DBC();
      v13 = v21;
      goto LABEL_8;
    }

    sub_188AAEB6C(v18, a5 & 1);
    v13 = sub_188A5E664(a2 & 1, a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v13);
    *(v24 + 8 * v13) = a1;
  }

  else
  {
    sub_188AAD8E8(v13, a2 & 1, a3, a4, a1, v23);
  }
}

double sub_188AA9E78()
{
  swift_beginAccess();
  if (!*(v0[6] + 16))
  {
    swift_beginAccess();
    if (!*(v0[8] + 16))
    {
      swift_beginAccess();
      if (!*(v0[7] + 16))
      {
        v2 = swift_beginAccess();
        if (!*(v0[9] + 16))
        {
          v3 = v0 + 4;
          v4 = v0[4];
          if (v4)
          {
            v5 = v0[5];
            *v3 = 0;
            v3[1] = 0;
            v4(v2);
            return sub_188A55B8C(v4, v5);
          }
        }
      }
    }
  }

  return result;
}

char *sub_188AA9F60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934928, &qword_18A64D3C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_188AAA064(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_18A4A8878();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_188AAA148(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_188AAA148(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_188E76B40(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_188E7A418(&qword_1EA9349B8, &qword_18A64D500);
      a2 = v7;
      goto LABEL_12;
    }

    sub_188E7DAA4(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_18A4A8878();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_18A4A8798();
  __break(1u);
}

_DWORD *sub_188AAA27C(id isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4 >> 61)
    {
      __break(1u);
    }

    if ((4 * v4) > 1024)
    {
      v8 = v4;
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if (!isStackAllocationSafe)
      {
        v9 = v8;
        v10 = swift_slowAlloc();
        sub_188AA87D8(v10, v9, a2, v3);

        JUMPOUT(0x18CFEA5B0);
      }
    }

    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    return sub_188AA87D8((v11 - v5), v6, a2, v3);
  }

  else
  {

    return [isStackAllocationSafe setHighFrameRateReasons:0 count:0];
  }
}

uint64_t sub_188AAA46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *(a1 + 16);
  v23 = *a1;
  v20 = *(a2 + 16);
  v21 = *a2;
  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  v14 = *(a2 + 48);
  v15 = *(a2 + 32);
  v13 = *(a1 + 80);
  v19 = *(a1 + 64);
  v12 = *(a2 + 80);
  v18 = *(a2 + 64);
  v10 = *(a1 + 112);
  v11 = *(a1 + 96);
  v8 = *(a2 + 112);
  v9 = *(a2 + 96);
  v4 = *(a1 + 128);
  v5 = *(a2 + 128);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EB60, &qword_18A66C4C8);
  v7 = 2;
  if (v4 == 2)
  {
    goto LABEL_7;
  }

  if (v5 == 2)
  {
    goto LABEL_7;
  }

  v7 = 1;
  if (v4 == 1 || v5 == 1)
  {
    goto LABEL_7;
  }

  if (!v4)
  {
    v7 = 0;
LABEL_7:
    *a3 = vsubq_f64(v23, v21);
    *(a3 + 16) = vsubq_f64(v22, v20);
    *(a3 + 32) = vsubq_f64(v17, v15);
    *(a3 + 48) = vsubq_f64(v16, v14);
    *(a3 + 64) = vsubq_f64(v19, v18);
    *(a3 + 80) = vsubq_f64(v13, v12);
    *(a3 + 96) = vsubq_f64(v11, v9);
    *(a3 + 112) = vsubq_f64(v10, v8);
    *(a3 + 128) = v7;
    return result;
  }

  result = sub_18A4A86B8();
  __break(1u);
  return result;
}

uint64_t sub_188AAA5C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936718, &qword_18A650E80);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936720, &qword_18A650E88);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v10, v9, &qword_1EA936720, &qword_18A650E88);
  sub_188A3F29C(v9, v6, &qword_1EA936720, &qword_18A650E88);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_188A3F5FC(v9, &qword_1EA936720, &qword_18A650E88);
      v12 = 1;
      return v12 & 1;
    }

    sub_188A3F5FC(v9, &qword_1EA936720, &qword_18A650E88);
    sub_188A3F704(v6, v3, &qword_1EA936718, &qword_18A650E80);
    v12 = v3[112];
    v13 = v3;
    v14 = &qword_1EA936718;
    v15 = &qword_18A650E80;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v17 = v6[8];
      v16 = v6[9];
      v19 = v6[10];
      v18 = v6[11];
      v21 = v6[14];
      v20 = v6[15];
      v23 = v6[16];
      v22 = v6[17];
      if (qword_1ED48C638 != -1)
      {
        v32 = v6[17];
        v33 = v18;
        v28 = v16;
        v29 = v19;
        v30 = v20;
        v31 = v23;
        v26 = v21;
        v27 = v17;
        swift_once();
        v21 = v26;
        v17 = v27;
        v20 = v30;
        v23 = v31;
        v16 = v28;
        v19 = v29;
        v22 = v32;
        v18 = v33;
      }

      v12 = vabdd_f64(v21, v17) <= *&xmmword_1ED4A3470 && vabdd_f64(v20, v16) <= *&xmmword_1ED4A3470 && vabdd_f64(v23, v19) <= *(&xmmword_1ED4A3470 + 1) && vabdd_f64(v22, v18) <= *(&xmmword_1ED4A3470 + 1);
    }

    else
    {
      memcpy(v34, v6, sizeof(v34));
      v12 = sub_188AB4454();
    }

    v14 = &qword_1EA936720;
    v15 = &qword_18A650E88;
    v13 = v9;
  }

  sub_188A3F5FC(v13, v14, v15);
  return v12 & 1;
}

uint64_t sub_188AAA888()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367A8, &qword_18A650EF8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v27 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367B0, &qword_18A650F00);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v10, v9, &qword_1EA9367B0, &qword_18A650F00);
  sub_188A3F29C(v9, v6, &qword_1EA9367B0, &qword_18A650F00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F5FC(v9, &qword_1EA9367B0, &qword_18A650F00);
      sub_188A3F704(v6, v3, &qword_1EA9367A8, &qword_18A650EF8);
      v22 = v3[64];
      sub_188A3F5FC(v3, &qword_1EA9367A8, &qword_18A650EF8);
    }

    else
    {
      sub_188A3F5FC(v9, &qword_1EA9367B0, &qword_18A650F00);
      v22 = 1;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v23 = v6[2];
      v24 = v6[4];
      if (qword_1ED48D080 != -1)
      {
        v27 = v6[4];
        v28 = v23;
        swift_once();
        v24 = v27;
        v23 = v28;
      }

      v25 = vmovn_s64(vcgeq_f64(vdupq_lane_s64(qword_1ED4A3498, 0), vabdq_f64(v24, v23)));
      v22 = v25.i8[0] & v25.i8[4];
    }

    else
    {
      v12 = v6[12];
      v13 = v6[13];
      v14 = v6[10];
      v40 = v6[11];
      v41 = v12;
      v15 = v6[14];
      v42 = v13;
      v43 = v15;
      v16 = v6[8];
      v17 = v6[9];
      v18 = v6[6];
      v36 = v6[7];
      v37 = v16;
      v38 = v17;
      v39 = v14;
      v19 = v6[5];
      v33 = v6[4];
      v34 = v19;
      v35 = v18;
      v20 = v6[1];
      v29 = *v6;
      v30 = v20;
      v21 = v6[3];
      v31 = v6[2];
      v32 = v21;
      v22 = sub_188AAAB44();
    }

    sub_188A3F5FC(v9, &qword_1EA9367B0, &qword_18A650F00);
  }

  return v22 & 1;
}

BOOL sub_188AAAB44()
{
  v1 = v0[12];
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  v3 = vnegq_f64(v2);
  v4 = vdupq_n_s64(0x7FF0000000000000uLL);
  *&v2.f64[0] = vmovn_s64(vcgeq_s64(vandq_s8(v1, v3), v4));
  if ((LODWORD(v2.f64[0]) | HIDWORD(v2.f64[0])))
  {
    return 1;
  }

  v5 = v0[11];
  v6 = vmovn_s64(vcgeq_s64(vandq_s8(v5, v3), v4));
  if ((v6.i32[0] | v6.i32[1]))
  {
    return 1;
  }

  v7 = vsubq_f64(v0[10], v1);
  v8 = vmulq_n_f64(v5, v0[9].f64[1]);
  v9 = vaddq_f64(vmulq_f64(v7, v7), vmulq_f64(v8, v8));
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  *&v7.f64[0] = vmovn_s64(vcgeq_s64(vandq_s8(v9, vnegq_f64(v7)), vdupq_n_s64(0x7FF0000000000000uLL)));
  if ((LODWORD(v7.f64[0]) | HIDWORD(v7.f64[0])))
  {
    return 1;
  }

  if (qword_1ED48D088[0] != -1)
  {
    v11 = v9;
    swift_once();
    v9 = v11;
  }

  return *v9.i64 <= *&qword_1ED4A34A0 && *&v9.i64[1] <= *&qword_1ED4A34A0;
}

BOOL sub_188AAAC5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366E8, &qword_18A650E58);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366F0, &qword_18A650E60);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v10, v9, &qword_1EA9366F0, &qword_18A650E60);
  sub_188A3F29C(v9, v6, &qword_1EA9366F0, &qword_18A650E60);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F5FC(v9, &qword_1EA9366F0, &qword_18A650E60);
      sub_188A3F704(v6, v3, &qword_1EA9366E8, &qword_18A650E58);
      v12 = v3[40];
      sub_188A3F5FC(v3, &qword_1EA9366E8, &qword_18A650E58);
    }

    else
    {
      sub_188A3F5FC(v9, &qword_1EA9366F0, &qword_18A650E60);
      return 1;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v14 = v6[2];
    v15 = v6[5];
    if (qword_1EA931200 != -1)
    {
      v20 = v6[5];
      v21 = v14;
      swift_once();
      v15 = v20;
      v14 = v21;
    }

    v16 = *&qword_1EA994F30;
    v17 = vabdd_f64(v15, v14);
    sub_188A3F5FC(v9, &qword_1EA9366F0, &qword_18A650E60);
    return v17 <= v16;
  }

  else
  {
    v12 = 1;
    if ((v6[21] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v6[20] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v13 = (v6[19] - v6[21]) * (v6[19] - v6[21]) + v6[20] * v6[18] * (v6[20] * v6[18]);
      if (COERCE_UNSIGNED_INT64(fabs(v13)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (qword_1EA931208 != -1)
        {
          v21 = (v6[19] - v6[21]) * (v6[19] - v6[21]) + v6[20] * v6[18] * (v6[20] * v6[18]);
          swift_once();
          v13 = v21;
        }

        v12 = v13 <= *&qword_1EA994F38;
      }
    }

    sub_188A3F5FC(v9, &qword_1EA9366F0, &qword_18A650E60);
  }

  return v12;
}

double sub_188AAAF70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366E8, &qword_18A650E58);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366F0, &qword_18A650E60);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v11 - v5);
  v7 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v7, v6, &qword_1EA9366F0, &qword_18A650E60);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v6, v3, &qword_1EA9366E8, &qword_18A650E58);
      v9 = sub_188EF5F6C();
      sub_188A3F5FC(v3, &qword_1EA9366E8, &qword_18A650E58);
    }

    else
    {
      v9 = v6[1];
    }
  }

  else
  {
    v9 = 0.0;
    if (!EnumCaseMultiPayload)
    {
      v9 = v6[20];
    }
  }

  swift_endAccess();
  return v9;
}

float64_t sub_188AAB118(double a1)
{
  if (a1 <= 0.0)
  {
    v11 = *(v1 + 240);
    return v11.f64[0];
  }

  v3 = *(v1 + 176);
  v2 = *(v1 + 192);
  v4 = *(v1 + 163);
  if (v4)
  {
    *(v1 + 272) = v3;
    *(v1 + 288) = v2;
    *(v1 + 304) = 0u;
    *(v1 + 320) = 0u;
  }

  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  v9 = *(v1 + 161);
  v10 = *(v1 + 162);
  v135 = v3;
  v139 = v2;
  if ((v9 & 1) == 0)
  {
    v13 = *(v1 + 48);
    v12 = *(v1 + 56);
    v14 = *(v1 + 64);
    v15 = *(v1 + 72);
    if (*v1 == v13 && *(v1 + 8) == 0.0)
    {
      if (*(v1 + 162))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v18 = *v1 - v13;
      v169 = *(v1 + 88);
      if ((v15 - 1) <= 2)
      {
        v19 = __sincos_stret(*v1 - v13);
        v20 = atan2(v19.__sinval, v19.__cosval);
        if (v20 > 0.0 && v15 == 2)
        {
          v20 = v20 + -6.28318531;
        }

        if (v20 < 0.0 && v15 == 3)
        {
          v18 = v20 + 6.28318531;
        }

        else
        {
          v18 = v20;
        }
      }

      v23 = *(v1 + 8);
      v24 = sqrt(v12);
      v25 = v14 * 0.5;
      if (v14 * 0.5 >= v24)
      {
        if (v24 >= v25)
        {
          v44 = v25 * v18 + v23;
          v45 = v18 + v44 * a1;
          v30 = exp(-(v25 * a1));
          v31 = v30 * v45;
          v34 = v30 * v44;
          v35 = v45 * v25;
        }

        else
        {
          v163 = v5;
          v36 = sqrt(v25 * v25 - v24 * v24);
          v37 = cosh(v36 * a1);
          v157 = v7;
          v38 = 1.0 / v36 * (v25 * v18 + v23);
          v39 = sinh(v36 * a1);
          v40 = v18 * v37 + v38 * v39;
          v30 = exp(-(v25 * a1));
          v31 = v30 * v40;
          v41 = v36 * (v18 * v39);
          v42 = v36 * (v38 * v37);
          v5 = v163;
          v34 = v30 * (v42 + v41);
          v35 = v40 * v25;
          v7 = v157;
        }
      }

      else
      {
        v156 = v7;
        v26 = sqrt(v24 * v24 - v25 * v25);
        v27 = __sincos_stret(v26 * a1);
        v28 = 1.0 / v26 * (v25 * v18 + v23);
        v162 = v5;
        v29 = v27.__cosval * v18 + v27.__sinval * v28;
        v30 = exp(-(v25 * a1));
        v31 = v30 * v29;
        v32 = v26 * (v18 * v27.__sinval);
        v33 = v26 * (v27.__cosval * v28);
        v7 = v156;
        v34 = v30 * (v33 - v32);
        v35 = v29 * v25;
        v5 = v162;
      }

      *v1 = v13 + v31;
      *(v1 + 8) = v34 - v30 * v35;
      v3 = v135;
      v2 = v139;
      v6 = v169;
      if (v10)
      {
LABEL_11:
        if (!v9)
        {
          v43 = *(v1 + 16);
LABEL_53:
          v16 = 6.28318531 / v43 * (6.28318531 / v43);
          v70 = sqrt(v16);
          v17 = *v1 * (v70 + v70);
          *(v1 + 32) = v16;
          *(v1 + 40) = v17;
          goto LABEL_54;
        }

        goto LABEL_12;
      }
    }

LABEL_32:
    v43 = *(v1 + 16);
    if (v43 == v5 && *(v1 + 24) == 0.0)
    {
      goto LABEL_53;
    }

    v46 = v43 - v5;
    if ((v8 - 1) <= 2)
    {
      v47 = __sincos_stret(v43 - v5);
      v48 = atan2(v47.__sinval, v47.__cosval);
      if (v48 > 0.0 && v8 == 2)
      {
        v48 = v48 + -6.28318531;
      }

      if (v48 < 0.0 && v8 == 3)
      {
        v46 = v48 + 6.28318531;
      }

      else
      {
        v46 = v48;
      }
    }

    v51 = *(v1 + 24);
    v52 = sqrt(v6);
    v53 = v7 * 0.5;
    if (v7 * 0.5 >= v52)
    {
      if (v52 >= v53)
      {
        v67 = v53 * v46 + v51;
        v68 = v46 + v67 * a1;
        v58 = exp(-(v53 * a1));
        v59 = v58 * v68;
        v65 = v58 * v67;
        v66 = v68 * v53;
        goto LABEL_52;
      }

      v61 = sqrt(v53 * v53 - v52 * v52);
      v62 = cosh(v61 * a1);
      v63 = 1.0 / v61 * (v53 * v46 + v51);
      v64 = sinh(v61 * a1);
      v57 = v46 * v62 + v63 * v64;
      v58 = exp(-(v53 * a1));
      v59 = v58 * v57;
      v60 = v61 * (v63 * v62) + v61 * (v46 * v64);
    }

    else
    {
      v54 = sqrt(v52 * v52 - v53 * v53);
      v55 = __sincos_stret(v54 * a1);
      v56 = 1.0 / v54 * (v53 * v46 + v51);
      v57 = v55.__cosval * v46 + v55.__sinval * v56;
      v58 = exp(-(v53 * a1));
      v59 = v58 * v57;
      v60 = v54 * (v55.__cosval * v56) - v54 * (v46 * v55.__sinval);
    }

    v65 = v58 * v60;
    v66 = v57 * v53;
LABEL_52:
    v69 = v65 - v58 * v66;
    v43 = v5 + v59;
    *(v1 + 16) = v5 + v59;
    *(v1 + 24) = v69;
    v3 = v135;
    v2 = v139;
    goto LABEL_53;
  }

  if ((*(v1 + 162) & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_12:
  v16 = *(v1 + 32);
  v17 = *(v1 + 40);
LABEL_54:
  *(v1 + 112) = v3;
  *(v1 + 128) = v2;
  v71 = *(v1 + 272);
  v72 = *(v1 + 288);
  rect1 = *(v1 + 320);
  v158 = *(v1 + 304);
  v74 = *(v1 + 240);
  v73 = *(v1 + 256);
  v148 = *(v1 + 224);
  v150 = *(v1 + 208);
  v140 = v74;
  v144 = v73;
  if ((v4 & 1) == 0)
  {
    v76 = *(v1 + 144);
    v75 = *(v1 + 152);
    v178.origin.y = v3.f64[1];
    v178.size.height = v2.f64[1];
    v164 = *(v1 + 272);
    v170 = *(v1 + 288);
    v178.origin.x = v3.f64[0];
    v178.size.width = v2.f64[0];
    if (CGRectEqualToRect(*(v1 + 272), v178) && (v176.origin = v158, v176.size = rect1, v179.origin.x = 0.0, v179.origin.y = 0.0, v179.size.width = 0.0, v179.size.height = 0.0, CGRectEqualToRect(v176, v179)))
    {
      v74 = v140;
      v73 = v144;
      v71 = v164;
      v72 = v170;
    }

    else
    {
      v77 = vsubq_f64(v164, v135);
      v78 = vsubq_f64(v170, v139);
      v79 = sqrt(v76);
      v80 = v75 * 0.5;
      if (v75 * 0.5 >= v79)
      {
        if (v79 >= v80)
        {
          v131 = vaddq_f64(v158, vmulq_n_f64(v77, v80));
          v161 = vaddq_f64(rect1, vmulq_n_f64(v78, v80));
          v167 = vaddq_f64(v77, vmulq_n_f64(v131, a1));
          rect1a = vaddq_f64(v78, vmulq_n_f64(v161, a1));
          v173 = -v80;
          v87 = exp(-(v80 * a1));
          v83 = vmulq_n_f64(rect1a, v87);
          v84 = vmulq_n_f64(v167, v87);
          v88 = vmulq_n_f64(v131, v87);
          v89 = vmulq_n_f64(vmulq_n_f64(v167, v173), v87);
          v90 = vmulq_n_f64(v161, v87);
          v91 = vmulq_n_f64(rect1a, v173);
        }

        else
        {
          v130 = sqrt(v80 * v80 - v79 * v79);
          v166 = v77;
          v172 = v78;
          v127 = cosh(v130 * a1);
          v120 = sinh(v130 * a1);
          v124 = vmulq_n_f64(vaddq_f64(v158, vmulq_n_f64(v166, v75 * 0.5)), 1.0 / v130);
          v160 = vmulq_n_f64(vaddq_f64(rect1, vmulq_n_f64(v172, v75 * 0.5)), 1.0 / v130);
          v117 = vaddq_f64(vmulq_n_f64(v172, v127), vmulq_n_f64(v160, v120));
          v119 = vaddq_f64(vmulq_n_f64(v166, v127), vmulq_n_f64(v124, v120));
          v87 = exp(-(v75 * 0.5 * a1));
          v83 = vmulq_n_f64(v117, v87);
          v84 = vmulq_n_f64(v119, v87);
          v88 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v124, v127), v130), vmulq_n_f64(vmulq_n_f64(v166, v120), v130)), v87);
          v89 = vmulq_n_f64(vmulq_n_f64(v119, -(v75 * 0.5)), v87);
          v90 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v160, v127), v130), vmulq_n_f64(vmulq_n_f64(v172, v120), v130)), v87);
          v91 = vmulq_n_f64(v117, -(v75 * 0.5));
        }

        v158 = vaddq_f64(v88, v89);
        v86 = vaddq_f64(v90, vmulq_n_f64(v91, v87));
      }

      else
      {
        v129 = sqrt(v79 * v79 - v80 * v80);
        v165 = v77;
        v171 = v78;
        v81 = __sincos_stret(v129 * a1);
        v123 = vmulq_n_f64(vaddq_f64(v158, vmulq_n_f64(v165, v75 * 0.5)), 1.0 / v129);
        v159 = vmulq_n_f64(vaddq_f64(rect1, vmulq_n_f64(v171, v75 * 0.5)), 1.0 / v129);
        v116 = vaddq_f64(vmulq_n_f64(v171, v81.__cosval), vmulq_n_f64(v159, v81.__sinval));
        v118 = vaddq_f64(vmulq_n_f64(v165, v81.__cosval), vmulq_n_f64(v123, v81.__sinval));
        v82 = exp(-(v75 * 0.5 * a1));
        v83 = vmulq_n_f64(v116, v82);
        v84 = vmulq_n_f64(v118, v82);
        v85 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v171, -v81.__sinval), v129), vmulq_n_f64(vmulq_n_f64(v159, v81.__cosval), v129)), v82);
        v158 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v165, -v81.__sinval), v129), vmulq_n_f64(vmulq_n_f64(v123, v81.__cosval), v129)), v82), vmulq_n_f64(vmulq_n_f64(v118, -(v75 * 0.5)), v82));
        v86 = vaddq_f64(v85, vmulq_n_f64(vmulq_n_f64(v116, -(v75 * 0.5)), v82));
      }

      rect1 = v86;
      v71 = vaddq_f64(v135, v84);
      v72 = vaddq_f64(v139, v83);
      v74 = v140;
      v73 = v144;
    }
  }

  v92 = v74.f64[1];
  v93 = v73.f64[1];
  v94 = v71.f64[1];
  v95 = v72.f64[1];
  v96 = v74.f64[0];
  v168 = v71;
  v174 = v72;
  if (CGRectEqualToRect(*(&v73 - 1), *v71.f64) && (v177.size.width = v148.f64[0], v177.origin = v150, v177.size.height = v148.f64[1], v180.origin.x = 0.0, v180.origin.y = 0.0, v180.size.width = 0.0, v180.size.height = 0.0, CGRectEqualToRect(v177, v180)))
  {
    v97 = v148;
    v98 = v150;
    v11 = v140;
    v99 = v144;
    v101 = v168;
    v100 = v174;
  }

  else
  {
    v102 = vsubq_f64(v140, v168);
    v103 = vsubq_f64(v144, v174);
    v104 = sqrt(v16);
    v105 = v17 * 0.5;
    if (v17 * 0.5 >= v104)
    {
      if (v104 >= v105)
      {
        v138 = vaddq_f64(v150, vmulq_n_f64(v102, v105));
        v153 = vaddq_f64(v148, vmulq_n_f64(v103, v105));
        v143 = vaddq_f64(v102, vmulq_n_f64(v138, a1));
        v147 = vaddq_f64(v103, vmulq_n_f64(v153, a1));
        v149 = -v105;
        v110 = exp(-(v105 * a1));
        v108 = vmulq_n_f64(v147, v110);
        v109 = vmulq_n_f64(v143, v110);
        v111 = vmulq_n_f64(v138, v110);
        v112 = vmulq_n_f64(vmulq_n_f64(v143, v149), v110);
        v113 = vmulq_n_f64(v153, v110);
        v114 = vmulq_n_f64(v147, v149);
      }

      else
      {
        v137 = sqrt(v105 * v105 - v104 * v104);
        v142 = v102;
        v146 = v103;
        v134 = cosh(v137 * a1);
        v128 = sinh(v137 * a1);
        v133 = vmulq_n_f64(vaddq_f64(v150, vmulq_n_f64(v142, v17 * 0.5)), 1.0 / v137);
        v152 = vmulq_n_f64(vaddq_f64(v148, vmulq_n_f64(v146, v17 * 0.5)), 1.0 / v137);
        v122 = vaddq_f64(vmulq_n_f64(v146, v134), vmulq_n_f64(v152, v128));
        v126 = vaddq_f64(vmulq_n_f64(v142, v134), vmulq_n_f64(v133, v128));
        v110 = exp(-(v17 * 0.5 * a1));
        v108 = vmulq_n_f64(v122, v110);
        v109 = vmulq_n_f64(v126, v110);
        v111 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v133, v134), v137), vmulq_n_f64(vmulq_n_f64(v142, v128), v137)), v110);
        v112 = vmulq_n_f64(vmulq_n_f64(v126, -(v17 * 0.5)), v110);
        v113 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v152, v134), v137), vmulq_n_f64(vmulq_n_f64(v146, v128), v137)), v110);
        v114 = vmulq_n_f64(v122, -(v17 * 0.5));
      }

      v98 = vaddq_f64(v111, v112);
      v97 = vaddq_f64(v113, vmulq_n_f64(v114, v110));
    }

    else
    {
      v136 = sqrt(v104 * v104 - v105 * v105);
      v141 = v102;
      v145 = v103;
      v106 = __sincos_stret(v136 * a1);
      v132 = vmulq_n_f64(vaddq_f64(v150, vmulq_n_f64(v141, v17 * 0.5)), 1.0 / v136);
      v151 = vmulq_n_f64(vaddq_f64(v148, vmulq_n_f64(v145, v17 * 0.5)), 1.0 / v136);
      v121 = vaddq_f64(vmulq_n_f64(v145, v106.__cosval), vmulq_n_f64(v151, v106.__sinval));
      v125 = vaddq_f64(vmulq_n_f64(v141, v106.__cosval), vmulq_n_f64(v132, v106.__sinval));
      v107 = exp(-(v17 * 0.5 * a1));
      v108 = vmulq_n_f64(v121, v107);
      v109 = vmulq_n_f64(v125, v107);
      v98 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v141, -v106.__sinval), v136), vmulq_n_f64(vmulq_n_f64(v132, v106.__cosval), v136)), v107), vmulq_n_f64(vmulq_n_f64(v125, -(v17 * 0.5)), v107));
      v97 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v145, -v106.__sinval), v136), vmulq_n_f64(vmulq_n_f64(v151, v106.__cosval), v136)), v107), vmulq_n_f64(vmulq_n_f64(v121, -(v17 * 0.5)), v107));
    }

    v101 = v168;
    v100 = v174;
    v11 = vaddq_f64(v168, v109);
    v99 = vaddq_f64(v174, v108);
  }

  *(v1 + 240) = v11;
  *(v1 + 256) = v99;
  *(v1 + 208) = v98;
  *(v1 + 224) = v97;
  *(v1 + 272) = v101;
  *(v1 + 288) = v100;
  *(v1 + 304) = v158;
  *(v1 + 320) = rect1;
  return v11.f64[0];
}

BOOL sub_188AABCA0(double a1, double a2, double a3, double a4)
{
  v4 = (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  return (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v4;
}

uint64_t sub_188AABCFC@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936778, &qword_18A650ED0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v49[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936780, &qword_18A650ED8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49[-v10];
  sub_188A3F704(v3, &v49[-v10], &qword_1EA936780, &qword_18A650ED8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v37 = *(v11 + 7);
      *(a1 + 96) = *(v11 + 6);
      *(a1 + 112) = v37;
      *(a1 + 128) = v11[128];
      v38 = *(v11 + 3);
      *(a1 + 32) = *(v11 + 2);
      *(a1 + 48) = v38;
      v39 = *(v11 + 5);
      *(a1 + 64) = *(v11 + 4);
      *(a1 + 80) = v39;
      v40 = *(v11 + 1);
      *a1 = *v11;
      *(a1 + 16) = v40;
      v15 = v3;
      v14 = v11;
      v16 = 265;
      goto LABEL_9;
    }

    sub_188A3F704(v11, v8, &qword_1EA936778, &qword_18A650ED0);
    sub_188EF3F04(a1, a2);
    sub_188A3F704(v8, v3, &qword_1EA936778, &qword_18A650ED0);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v13 = memcpy(v49, v11, 0x3B9uLL);
      sub_188AB45D8(v13);
      v14 = v49;
      v15 = v3;
      v16 = 953;
LABEL_9:
      memcpy(v15, v14, v16);
      return swift_storeEnumTagMultiPayload();
    }

    memcpy(v60, v11, sizeof(v60));
    v17 = *(v11 + 51);
    v18 = *(v11 + 33);
    v58 = *(v11 + 32);
    v59[0] = v18;
    *(v59 + 9) = *(v11 + 537);
    v19 = *(v11 + 29);
    v54 = *(v11 + 28);
    v55 = v19;
    v20 = *(v11 + 30);
    v57 = *(v11 + 31);
    v56 = v20;
    v21 = *(v11 + 26);
    v53 = *(v11 + 27);
    v52 = v21;
    if (a2 <= 0.0)
    {
      v41 = *(v11 + 24);
      *(a1 + 96) = *(v11 + 23);
      *(a1 + 112) = v41;
      *(a1 + 128) = v11[400];
      v42 = *(v11 + 20);
      *(a1 + 32) = *(v11 + 19);
      *(a1 + 48) = v42;
      v43 = *(v11 + 22);
      *(a1 + 64) = *(v11 + 21);
      *(a1 + 80) = v43;
      v36 = *(v11 + 17);
      v35 = *(v11 + 18);
    }

    else
    {
      v22 = pow(v17, a2 * 1000.0);
      v23 = *(v11 + 536);
      v24 = 1.0 - v22;
      v69[6] = *(v11 + 520);
      v69[7] = v23;
      v70 = v11[552];
      v25 = *(v11 + 472);
      v69[2] = *(v11 + 456);
      v69[3] = v25;
      v26 = *(v11 + 488);
      v69[5] = *(v11 + 504);
      v69[4] = v26;
      v27 = *(v11 + 424);
      v69[1] = *(v11 + 440);
      v69[0] = v27;
      v28 = *(v11 + 216);
      v29 = *(v11 + 248);
      v71[6] = *(v11 + 232);
      v71[7] = v29;
      v72 = v11[264];
      v30 = *(v11 + 152);
      v31 = *(v11 + 184);
      v71[2] = *(v11 + 168);
      v71[3] = v31;
      v71[4] = *(v11 + 200);
      v71[5] = v28;
      v71[0] = *(v11 + 136);
      v71[1] = v30;
      sub_188AAA46C(v69, v71, v51);
      sub_188AB3714(v24);
      v67[6] = *&v60[232];
      v67[7] = *&v60[248];
      v68 = v60[264];
      v67[2] = *&v60[168];
      v67[3] = *&v60[184];
      v67[5] = *&v60[216];
      v67[4] = *&v60[200];
      v67[1] = *&v60[152];
      v67[0] = *&v60[136];
      sub_188AB35D4(v67, v51, &v60[136]);
      v63[6] = *&v60[232];
      v63[7] = *&v60[248];
      v64 = v60[264];
      v63[2] = *&v60[168];
      v63[3] = *&v60[184];
      v63[5] = *&v60[216];
      v63[4] = *&v60[200];
      v63[1] = *&v60[152];
      v63[0] = *&v60[136];
      v65[6] = *&v60[368];
      v65[7] = *&v60[384];
      v66 = v60[400];
      v65[2] = *&v60[304];
      v65[3] = *&v60[320];
      v65[5] = *&v60[352];
      v65[4] = *&v60[336];
      v65[1] = *&v60[288];
      v65[0] = *&v60[272];
      sub_188AAA46C(v63, v65, v50);
      sub_188AB3714(v24);
      v61[6] = *&v60[368];
      v61[7] = *&v60[384];
      v62 = v60[400];
      v61[2] = *&v60[304];
      v61[3] = *&v60[320];
      v61[5] = *&v60[352];
      v61[4] = *&v60[336];
      v61[1] = *&v60[288];
      v61[0] = *&v60[272];
      sub_188AB35D4(v61, v50, &v60[272]);
      v32 = *&v60[384];
      *(a1 + 96) = *&v60[368];
      *(a1 + 112) = v32;
      *(a1 + 128) = v60[400];
      v33 = *&v60[320];
      *(a1 + 32) = *&v60[304];
      *(a1 + 48) = v33;
      v34 = *&v60[352];
      *(a1 + 64) = *&v60[336];
      *(a1 + 80) = v34;
      v36 = *&v60[272];
      v35 = *&v60[288];
    }

    *a1 = v36;
    *(a1 + 16) = v35;
    memcpy(v3, v60, 0x198uLL);
    *(v3 + 408) = v17;
    v44 = v59[0];
    *(v3 + 512) = v58;
    *(v3 + 528) = v44;
    *(v3 + 537) = *(v59 + 9);
    v45 = v55;
    *(v3 + 448) = v54;
    *(v3 + 464) = v45;
    v46 = v57;
    *(v3 + 480) = v56;
    *(v3 + 496) = v46;
    v47 = v53;
    *(v3 + 416) = v52;
    *(v3 + 432) = v47;
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_188AAC20C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(MEMORY[0x1E69792B8] + 8);
  v43 = *MEMORY[0x1E69792B8];
  v44 = v3;
  v4 = sub_188ABB4E0(MEMORY[0x1E69E7CC0]);
  v42 = sub_188ABC430(v4);
  v5 = a1[35];
  v6 = swift_allocObject();
  v6[2] = &v43;
  v6[3] = a1;
  v6[4] = &v42;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_188ABB4CC;
  *(v7 + 24) = v6;
  v40 = sub_188E3FE50;
  v41 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_188A4A968;
  v39 = &block_descriptor_204_1;
  v8 = _Block_copy(&aBlock);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = a1[2];
  os_unfair_lock_lock((v9 + 20));
  v10 = *(v9 + 19);
  os_unfair_lock_unlock((v9 + 20));
  if (v10 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v12 = dispatch_semaphore_create(0);
      v13 = swift_allocObject();
      swift_weakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = v12;
      v15 = objc_allocWithZone(MEMORY[0x1E696AF00]);
      v40 = sub_1892156FC;
      v41 = v14;
      aBlock = MEMORY[0x1E69E9820];
      v37 = 1107296256;
      v38 = sub_188A4A8F0;
      v39 = &block_descriptor_221;
      v16 = _Block_copy(&aBlock);

      v17 = v12;
      v18 = [v15 initWithBlock_];
      _Block_release(v16);

      swift_unknownObjectWeakAssign();
      v19 = [objc_opt_self() mainThread];
      [v19 threadPriority];
      v21 = v20;

      [v18 setThreadPriority_];
      v22 = sub_18A4A7258();
      [v18 setName_];

      [v18 start];
      v23 = v17;
      sub_188AAC82C(v23);

      Strong = v18;
    }

    v24 = a1[36];
    v25 = swift_allocObject();
    v25[2] = a1;
    v25[3] = &v43;
    v25[4] = &v42;
    v25[5] = v2;
    v26 = swift_allocObject();
    v27 = sub_189215704;
    *(v26 + 16) = sub_189215704;
    *(v26 + 24) = v25;
    v40 = sub_188E3FE50;
    v41 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_188A4A968;
    v39 = &block_descriptor_231;
    v28 = _Block_copy(&aBlock);

    dispatch_sync(v24, v28);
    _Block_release(v28);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v30 = 0;
      v31 = 0;
LABEL_9:

      sub_188A55B8C(v27, v25);
      sub_188A55B8C(v30, v31);
      return;
    }

    goto LABEL_11;
  }

  v32 = a1[36];
  v31 = swift_allocObject();
  v31[2] = a1;
  v31[3] = &v43;
  v31[4] = &v42;
  v31[5] = v2;
  v33 = swift_allocObject();
  v30 = sub_1892156F0;
  *(v33 + 16) = sub_1892156F0;
  *(v33 + 24) = v31;
  v40 = sub_188E3FE50;
  v41 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_188A4A968;
  v39 = &block_descriptor_214_1;
  v34 = _Block_copy(&aBlock);

  dispatch_sync(v32, v34);
  _Block_release(v34);
  v35 = swift_isEscapingClosureAtFileLocation();

  if ((v35 & 1) == 0)
  {
    v27 = 0;
    v25 = 0;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
}

void sub_188AAC82C(void *a1)
{
  sub_18A4A7B88();
}

uint64_t sub_188AAC870()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188AAC8A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188AAC8E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_188AAC950(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, id *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  LODWORD(v13) = a5;
  v93 = a4;
  v91 = a3;
  v92 = a2;
  v15 = [(UIView *)v8 __swiftAnimationInfo];
  if (!v15)
  {
    v16 = a6;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s13AnimationInfoCMa();
    swift_allocObject();
    v18 = a7;
    v19 = v8;
    v20 = a8;
    v21 = v13;
    v13 = v8;
    v22 = sub_188A5DF40(v13, sub_188ABE000, v17);

    a6 = v16;

    v23 = v13;
    LODWORD(v13) = v21;
    a8 = v20;
    v9 = v19;
    a7 = v18;
    v15 = v22;
    [(UIView *)v23 set__swiftAnimationInfo:v22];
  }

  sub_188A3F29C(a1, &v102, &qword_1EA934050, qword_18A64CA10);
  if (*(&v103 + 1))
  {
    sub_188A55538(&v102, &v105);
    goto LABEL_10;
  }

  v24 = sub_188A5548C(a6, a7);
  if (v24 != 13)
  {
    v88 = v13;
    v13 = sub_188A59768(v24);
    v89 = a8;
    v90 = a6;
    v26 = v25;
    v27 = *(v13 - 8);
    MEMORY[0x1EEE9AC00](v13);
    v29 = &v87[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
    sub_18A4A8408();
    v30 = *(v26 + 80);
    v31 = v26;
    a6 = v90;
    v30(&v105, v13, v31);
    v32 = v13;
    LOBYTE(v13) = v88;
    (*(v27 + 8))(v29, v32);
    a8 = v89;
    if (!*(&v103 + 1))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v105 = 0u;
  v106 = 0u;
  if (*(&v103 + 1))
  {
LABEL_9:
    sub_188A3F5FC(&v102, &qword_1EA934050, qword_18A64CA10);
  }

LABEL_10:
  if (!*(&v106 + 1))
  {

    sub_188A3F5FC(&v105, &qword_1EA934050, qword_18A64CA10);
    return;
  }

  sub_188A55538(&v105, &v109);
  signpost_c2_entryLock_start();
  os_unfair_lock_lock(v15[2] + 4);
  signpost_c2_entryLock_start();
  swift_beginAccess();
  v33 = v15[7];
  if (v33[2] && (v34 = sub_188A5E664(v13 & 1, a6, a7), (v35 & 1) != 0))
  {
    v90 = a6;
    v36 = *(v33[7] + 8 * v34);
    swift_endAccess();
    if (v93)
    {
      v37 = v36;
    }

    else
    {
      __swift_project_boxed_opaque_existential_0(&v109, v110);
      v70 = v36;
      v71 = sub_18A4A86A8();
      v72 = [(CAPresentationModifier *)v70 supportsNewValue:v71];
      swift_unknownObjectRelease();
      if (v72)
      {

        signpost_c2_entryLock_start();
        __swift_project_boxed_opaque_existential_0(&v109, v110);
        v73 = sub_18A4A86A8();
        sub_188A3F29C(v92, &v105, &qword_1EA934050, qword_18A64CA10);
        v75 = *(&v106 + 1);
        if (*(&v106 + 1))
        {
          v76 = __swift_project_boxed_opaque_existential_0(&v105, *(&v106 + 1));
          v77 = *(v75 - 8);
          v78 = MEMORY[0x1EEE9AC00](v76);
          v80 = &v87[-((v79 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v77 + 16))(v80, v78);
          v81 = sub_18A4A86A8();
          (*(v77 + 8))(v80, v75);
          v74 = __swift_destroy_boxed_opaque_existential_0Tm(&v105);
        }

        else
        {
          v81 = 0;
        }

        [v70 setValue:v73 velocity:{v81, v74}];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        signpost_c2_entryLock_start();

        os_unfair_lock_unlock(v15[2] + 4);
        goto LABEL_58;
      }
    }

    swift_beginAccess();

    a6 = v90;
    sub_188B5D644(0, v13 & 1, v90, a7);
    swift_endAccess();
    if (sub_188AAD93C())
    {
      v82 = v13;
      v83 = v36;
      v84 = v15[4];
      if (v84)
      {
        v85 = v15[5];
        v15[4] = 0;
        v15[5] = 0;
        v84();

        v86 = v84;
        v36 = v83;
        sub_188A55B8C(v86, v85);
      }

      else
      {
        v36 = v83;
      }

      LOBYTE(v13) = v82;
    }

    else
    {
    }
  }

  else
  {
    swift_endAccess();
    v36 = 0;
  }

  swift_beginAccess();
  v38 = v15[8];
  v39 = v38[2];
  v90 = v36;
  if (!v39)
  {
    swift_endAccess();
    LOBYTE(v40) = v13 & 1;
    goto LABEL_26;
  }

  v40 = (v13 & 1);
  v41 = sub_188A5E664(v13 & 1, a6, a7);
  if ((v42 & 1) == 0)
  {
    swift_endAccess();
    goto LABEL_26;
  }

  v43 = *(v38[7] + 8 * v41);
  swift_endAccess();
  v44 = *(a8 + 352);
  v45 = __OFSUB__(v44, 1);
  v46 = v44 - 1;
  if (v45)
  {
    __break(1u);
    goto LABEL_61;
  }

  *(a8 + 352) = v46;
  swift_beginAccess();
  v47 = *(a8 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 136) = v47;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v43 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v47 = sub_189212B24(v47);
  *(a8 + 136) = v47;
  if ((v43 & 0x8000000000000000) != 0)
  {
    goto LABEL_63;
  }

LABEL_21:
  if (v43 >= v47[2])
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v49 = &v47[2 * v43];
  v49[4] = signpost_c2_entryLock_start;
  v49[5] = 0;
  *(a8 + 136) = v47;
  swift_endAccess();

LABEL_26:
  sub_188A55598(&v109, &v105);
  sub_188A3F29C(v92, &v102, &qword_1EA934050, qword_18A64CA10);
  v50 = swift_allocObject();
  *(v50 + 16) = v9;
  sub_188A55538(&v105, (v50 + 24));
  v51 = v103;
  *(v50 + 56) = v102;
  *(v50 + 72) = v51;
  *(v50 + 88) = v91;
  *(v50 + 96) = v93 & 1;
  *(v50 + 104) = v40;
  *(v50 + 112) = a6;
  *(v50 + 120) = a7;
  *(v50 + 128) = v15;
  *(v50 + 136) = a8;
  v36 = v9;

  v52 = a6;
  v53 = sub_188AB7304(sub_188AA88F8, v50);

  swift_beginAccess();
  v54 = swift_isUniquelyReferenced_nonNull_native();
  *&v102 = v15[8];
  v15[8] = 0x8000000000000000;
  sub_188AB7478(v53, v40, v52, a7, v54);
  v15[8] = v102;
  swift_endAccess();
  if (sub_188AAD93C())
  {
    v55 = v15[4];
    if (v55)
    {
      v56 = v15[5];
      v15[4] = 0;
      v15[5] = 0;
      v55();
      sub_188A55B8C(v55, v56);
    }
  }

  v57 = sub_188AAD9E4();
  if (!v57)
  {
    a6 = v90;
    goto LABEL_39;
  }

  v58 = v57;
  v89 = a8;
  v108 = v57;
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  *&v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v105 = 0u;
  v106 = 0u;
  memset(v107, 0, 48);
  sub_188A4B4F4(&v102, &v105, &qword_1EA935C98, &unk_18A64F950);
  sub_188A4B4F4(&v97, &v107[8], &qword_1EA935C98, &unk_18A64F950);
  sub_188A83170(&v105, &v102);
  sub_188A3F29C(&v102, &v97, &qword_1EA935CA0, qword_18A651C10);
  if (*(&v98 + 1) == 1)
  {
    v59 = v36;

    sub_188A3F5FC(&v97, &qword_1EA935CA0, qword_18A651C10);
    sub_1891E97B0(v59, v52, a7, v96);

    sub_188A3F5FC(v96, &qword_1EA935CA0, qword_18A651C10);
    sub_188A3F5FC(&v102, &qword_1EA935CA0, qword_18A651C10);
    v60 = v108;
  }

  else
  {
    v96[2] = v99;
    v96[3] = v100;
    v96[4] = v101;
    v96[0] = v97;
    v96[1] = v98;
    v61 = v36;

    v62 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v58;
    sub_188A82100(v96, v61, v52, a7, v62);

    sub_188A3F5FC(&v102, &qword_1EA935CA0, qword_18A651C10);
    v60 = v94;
    v108 = v94;
  }

  if (pthread_main_np() != 1)
  {
    v63 = [objc_opt_self() currentThread];
    v38 = [v63 threadDictionary];

    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934CB0, &unk_18A64F940);
    v65 = objc_allocWithZone(v64);
    *&v65[*((*MEMORY[0x1E69E7D40] & *v65) + 0x58)] = v60;
    v95.receiver = v65;
    v95.super_class = v64;
    v40 = objc_msgSendSuper2(&v95, sel_init);
    a6 = v90;
    if (qword_1ED48F7A8 == -1)
    {
LABEL_37:
      [v38 setObject:v40 forKey:qword_1ED48F7B0];

      goto LABEL_38;
    }

LABEL_61:
    swift_once();
    goto LABEL_37;
  }

  qword_1EA935C88 = v60;

  a6 = v90;
LABEL_38:
  sub_188A8F7CC(&v105);
LABEL_39:
  os_unfair_lock_unlock(v15[2] + 4);
  if (!a6)
  {
LABEL_58:

    goto LABEL_59;
  }

  if (pthread_main_np() != 1)
  {
    v69 = swift_allocObject();
    *(v69 + 16) = v15;
    *(v69 + 24) = a6;

    v68 = a6;
    sub_188A32084(sub_188EB2CA8, v69);

LABEL_46:

LABEL_59:
    __swift_destroy_boxed_opaque_existential_0Tm(&v109);
    return;
  }

  signpost_c2_entryLock_start();
  v66 = [v36 _outermostLayer];
  if (v66)
  {
    v67 = v66;
    v68 = [v36 layer];
    [v68 removePresentationModifier_];
    sub_188A34624(0, &qword_1ED48E970, 0x1E6979398);
    if ((sub_18A4A7C88() & 1) == 0)
    {
      [v67 removePresentationModifier_];
    }

    signpost_c2_entryLock_start();

    goto LABEL_46;
  }

LABEL_65:
  __break(1u);
}