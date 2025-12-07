uint64_t sub_1D5518964(char *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D55189C4(a1);
  }

  return result;
}

void sub_1D55189C4(char *a1)
{
  v96 = sub_1D560C368();
  v92 = *(v96 - 1);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C88, &qword_1D566F3E0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v99 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v100 = &v82 - v6;
  v7 = sub_1D560C7C8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1D560C9E8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDD591E0 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v15 = qword_1EDD591E8;
    *v14 = qword_1EDD591E8;
    (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
    v16 = v15;
    LOBYTE(v15) = sub_1D560C9F8();
    (*(v12 + 8))(v14, v11);
    if (v15)
    {
      if (qword_1EDD544D0 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_4:
    v17 = sub_1D560C758();
    v18 = __swift_project_value_buffer(v17, qword_1EDD76B38);
    v19 = *(v8 + 16);
    v19(v10, a1, v7);
    v87 = v18;
    v20 = sub_1D560C738();
    v21 = sub_1D56156E8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      sub_1D551AED8(&unk_1EDD54450, MEMORY[0x1E69E84C0], MEMORY[0x1E69E84C8]);
      swift_allocError();
      v19(v24, v10, v7);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      (*(v8 + 8))(v10, v7);
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1D4E3F000, v20, v21, "XPC canceled with error: %{public}@", v22, 0xCu);
      sub_1D4E50004(v23, &unk_1EC7F2C00, &qword_1D5623260);
      MEMORY[0x1DA6ED200](v23, -1, -1);
      MEMORY[0x1DA6ED200](v22, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    v14 = v96;
    v26 = v99;
    v11 = v100;
    v27 = v90;
    v28 = *(v90 + 16);

    os_unfair_lock_lock((v28 + 48));
    *(v28 + 16) = 0;

    os_unfair_lock_unlock((v28 + 48));

    v29 = *(v27 + 16);

    os_unfair_lock_lock((v29 + 48));
    v30 = *(v29 + 40);
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return;
    }

    *(v29 + 40) = v31;
    os_unfair_lock_unlock((v29 + 48));

    if (v31 > 3)
    {
      break;
    }

    v7 = *(v27 + 16);

    os_unfair_lock_lock((v7 + 48));
    v35 = *(v7 + 24);

    os_unfair_lock_unlock((v7 + 48));

    v12 = 0;
    v38 = v35 + 64;
    v37 = *(v35 + 64);
    v91 = v35;
    v39 = 1 << *(v35 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v8 = v40 & v37;
    v41 = (v39 + 63) >> 6;
    v93 = (v92 + 16);
    v89 = v92 + 32;
    v97 = (v92 + 8);
    v98 = 0;
    v10 = &qword_1EC7F7C90;
    *&v36 = 136446466;
    v82 = v36;
    *&v36 = 138543362;
    v83 = v36;
    v95 = v35 + 64;
    a1 = v14;
    v88 = v41;
    if ((v40 & v37) != 0)
    {
      while (1)
      {
        v42 = a1;
        v43 = v12;
LABEL_20:
        v44 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v45 = v44 | (v43 << 6);
        v46 = v91;
        v47 = v92;
        v48 = v94;
        (*(v92 + 16))(v94, *(v91 + 48) + *(v92 + 72) * v45, v42);
        v49 = *(*(v46 + 56) + 8 * v45);
        v10 = &qword_1EC7F7C90;
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C90, &qword_1D566F3E8);
        v51 = *(v50 + 48);
        v52 = *(v47 + 32);
        v26 = v99;
        v52(v99, v48, v42);
        *(v26 + v51) = v49;
        __swift_storeEnumTagSinglePayload(v26, 0, 1, v50);

        v11 = v100;
        v41 = v88;
LABEL_21:
        sub_1D4FD23EC(v26, v11, &qword_1EC7F7C88, &qword_1D566F3E0);
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C90, &qword_1D566F3E8);
        if (__swift_getEnumTagSinglePayload(v11, 1, v7) == 1)
        {

          return;
        }

        v14 = v26;
        v53 = *(v11 + *(v7 + 48));
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          break;
        }

        a1 = v96;
        (*v97)(v11, v96);

LABEL_34:
        v38 = v95;
        v26 = v14;
        if (!v8)
        {
          goto LABEL_16;
        }
      }

      v7 = Strong;
      v55 = v98;
      sub_1D551977C(Strong, *(v53 + 24), 1, "Session %{public}s send(.beginObserving(item: %{public}s).");
      if (v55)
      {
        v56 = v55;
        v57 = sub_1D560C738();
        v58 = sub_1D56156C8();

        if (!os_log_type_enabled(v57, v58))
        {

          swift_unknownObjectRelease();
          v98 = 0;
          v11 = v100;
          v10 = &qword_1EC7F7C90;
          a1 = v96;
LABEL_33:
          (*v97)(v11, a1);
          goto LABEL_34;
        }

        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = v83;
        v61 = v55;
        v62 = _swift_stdlib_bridgeErrorToNSError();
        *(v59 + 4) = v62;
        *v60 = v62;
        _os_log_impl(&dword_1D4E3F000, v57, v58, "Error restarting observation: %{public}@.", v59, 0xCu);
        sub_1D4E50004(v60, &unk_1EC7F2C00, &qword_1D5623260);
        v63 = v96;
        MEMORY[0x1DA6ED200](v60, -1, -1);
        v64 = v59;
        v14 = v99;
        MEMORY[0x1DA6ED200](v64, -1, -1);
        swift_unknownObjectRelease();

        a1 = v63;
        v98 = 0;
        v11 = v100;
      }

      else
      {
        v98 = 0;

        swift_unknownObjectRetain();
        v65 = sub_1D560C738();
        v66 = sub_1D56156E8();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v102[0] = v86;
          *v67 = v82;
          v85 = v66;
          v101 = sub_1D55171AC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C80, &qword_1D566F3D8);
          v68 = sub_1D5614DB8();
          v70 = sub_1D4E6835C(v68, v69, v102);

          *(v67 + 4) = v70;
          *(v67 + 12) = 2082;
          v71 = v94;
          v72 = *v93;
          v84 = v65;
          v73 = v96;
          v72(v94, v7 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_id);
          sub_1D551AED8(&qword_1EDD5CF40, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v74 = sub_1D56160F8();
          v76 = v75;
          (*v97)(v71, v73);
          v77 = sub_1D4E6835C(v74, v76, v102);
          v11 = v100;

          *(v67 + 14) = v77;
          v78 = v84;
          _os_log_impl(&dword_1D4E3F000, v84, v85, "⚠ Session %{public}s restarting observation for observer with ID %{public}s.", v67, 0x16u);
          v79 = v86;
          swift_arrayDestroy();
          MEMORY[0x1DA6ED200](v79, -1, -1);
          v80 = v67;
          v14 = v99;
          MEMORY[0x1DA6ED200](v80, -1, -1);

          a1 = v73;
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          a1 = v96;
        }
      }

      v10 = &qword_1EC7F7C90;
      goto LABEL_33;
    }

LABEL_16:
    while (1)
    {
      v43 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v43 >= v41)
      {
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C90, &qword_1D566F3E8);
        __swift_storeEnumTagSinglePayload(v26, 1, 1, v81);
        v8 = 0;
        goto LABEL_21;
      }

      v8 = *(v38 + 8 * v43);
      ++v12;
      if (v8)
      {
        v42 = a1;
        v12 = v43;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
  }

  v32 = sub_1D560C738();
  v33 = sub_1D56156E8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1D4E3F000, v32, v33, "XPC retry count exceeded max retry count. Not attempting to restart observation.", v34, 2u);
    MEMORY[0x1DA6ED200](v34, -1, -1);
  }
}

void sub_1D5519578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s12WeakObserverCMa();
  swift_allocObject();
  v5 = swift_unknownObjectRetain();
  sub_1D53A476C(v5, a3);
  swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a1 + 8);
  sub_1D4F155A4();
  *(a1 + 8) = v6;
}

void sub_1D5519628(uint64_t a1)
{
  sub_1D4F0E020();
  if (v3)
  {
    v4 = v2;
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *(a1 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB448, &qword_1D561E240);
    sub_1D5615D78();
    v5 = *(v7 + 48);
    v6 = sub_1D560C368();
    (*(*(v6 - 8) + 8))(v5 + *(*(v6 - 8) + 72) * v4, v6);
    _s12WeakObserverCMa();
    sub_1D551AED8(&qword_1EDD5F560, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D5615D98();

    *(a1 + 8) = v7;
  }
}

uint64_t sub_1D551977C(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  v66 = a4;
  LODWORD(v71) = a3;
  v69 = type metadata accessor for MusicDaemon.Request(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v7 = OUTLINED_FUNCTION_18_92(v6);
  v8 = OUTLINED_FUNCTION_12_104(v7);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = type metadata accessor for MusicDaemon.Request.Context(0);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = type metadata accessor for MusicDaemon.Item(0);
  v20 = OUTLINED_FUNCTION_22(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v68 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  v67 = &v66 - v23;
  OUTLINED_FUNCTION_23();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v66 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v66 - v28;
  sub_1D550231C(&v66 - v28);
  OUTLINED_FUNCTION_0_260();
  sub_1D551ADD4(v29, v27, v30);
  v32 = *(a1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account + 8);
  v33 = *(a1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account + 16);
  v76 = *(a1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account);
  v31 = v76;
  v77 = v32;
  v78 = v33;
  (*(v10 + 16))(v13, a1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_id, v73);
  sub_1D4E58128(v31, v32, v33);
  v34 = v79;
  _s16MusicKitInternal0A6DaemonV7RequestO7ContextV4item7account10observerIDAgC4ItemV_AA7AccountV10Foundation4UUIDVtAC5ErrorOYKcfC(v27, &v76, v13, &v74, v18);
  if (v34)
  {
    v35 = v74;
    v36 = v75;
    sub_1D53476CC();
    swift_allocError();
    *v37 = v35;
    *(v37 + 16) = v36;
    v44 = type metadata accessor for MusicDaemon.Item;
    v45 = v29;
  }

  else
  {
    v38 = v67;
    v39 = v68;
    OUTLINED_FUNCTION_5_149();
    v40 = v70;
    sub_1D551ADD4(v18, v70, v41);
    swift_storeEnumTagMultiPayload();
    v42 = v72;
    sub_1D5519C8C(v40);
    OUTLINED_FUNCTION_8_133();
    sub_1D551AD28(v40, v43);
    v47 = v42;
    if (qword_1EDD544D0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v48 = sub_1D560C758();
    __swift_project_value_buffer(v48, qword_1EDD76B38);
    OUTLINED_FUNCTION_0_260();
    sub_1D551ADD4(v29, v38, v49);

    v50 = v29;
    v51 = sub_1D560C738();
    v52 = sub_1D56156E8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v79 = v18;
      v54 = v53;
      v55 = swift_slowAlloc();
      v71 = v55;
      *v54 = 136446466;
      v73 = v50;
      *&v74 = v55;
      v76 = sub_1D55171AC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C80, &qword_1D566F3D8);
      v56 = sub_1D5614DB8();
      v58 = sub_1D4E6835C(v56, v57, &v74);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2082;
      OUTLINED_FUNCTION_0_260();
      sub_1D551ADD4(v38, v39, v59);
      v60 = OUTLINED_FUNCTION_9_128();
      MEMORY[0x1DA6EAC70](v60);

      OUTLINED_FUNCTION_6_153();
      sub_1D551AD28(v39, v61);
      sub_1D551AD28(v38, &v76);
      v62 = sub_1D4E6835C(v76, v77, &v74);

      *(v54 + 14) = v62;
      _os_log_impl(&dword_1D4E3F000, v51, v52, v66, v54, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();

      OUTLINED_FUNCTION_1_195();
      sub_1D551AD28(v79, v63);
      v45 = v73;
      v44 = &v76;
    }

    else
    {

      OUTLINED_FUNCTION_7_141();
      sub_1D551AD28(v38, v64);
      OUTLINED_FUNCTION_1_195();
      sub_1D551AD28(v18, v65);
      v45 = v50;
      v44 = v47;
    }
  }

  return sub_1D551AD28(v45, v44);
}

uint64_t sub_1D5519C8C(uint64_t a1)
{
  if (sub_1D55171AC())
  {
    if (qword_1EDD544D0 != -1)
    {
      swift_once();
    }

    v2 = sub_1D560C758();
    __swift_project_value_buffer(v2, qword_1EDD76B38);
    v3 = sub_1D560C738();
    v4 = sub_1D56156E8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D4E3F000, v3, v4, "Sending XPC request.", v5, 2u);
      MEMORY[0x1DA6ED200](v5, -1, -1);
    }

    swift_allocObject();
    swift_weakInit();
    type metadata accessor for MusicDaemon.Request(0);
    sub_1D551AED8(&qword_1EDD59120, type metadata accessor for MusicDaemon.Request, &protocol conformance descriptor for MusicDaemon.Request);

    sub_1D560C798();
    if (v1)
    {

      v6 = v1;
      v7 = sub_1D560C738();
      v8 = sub_1D56156C8();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138543362;
        v11 = v1;
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v9 + 4) = v12;
        *v10 = v12;
        _os_log_impl(&dword_1D4E3F000, v7, v8, "XPC request error: %{public}@.", v9, 0xCu);
        sub_1D4E50004(v10, &unk_1EC7F2C00, &qword_1D5623260);
        MEMORY[0x1DA6ED200](v10, -1, -1);
        MEMORY[0x1DA6ED200](v9, -1, -1);
      }

      swift_willThrow();
    }

    else
    {
    }
  }

  else
  {
    sub_1D53476CC();
    swift_allocError();
    *v14 = xmmword_1D566F380;
    *(v14 + 16) = 2;
    return swift_willThrow();
  }
}

void sub_1D5519F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D560C368();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_id, v6);
  if (*(*(a1 + 8) + 16) && (sub_1D4F0E020(), (v10 & 1) != 0))
  {
    v11 = *(v7 + 8);

    v11(v9, v6);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    _s12WeakObserverCMa();
    swift_allocObject();
    v12 = swift_unknownObjectRetain();
    sub_1D53A476C(v12, a3);
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a1 + 16);
    sub_1D4F155A4();
    *(a1 + 16) = v14;
  }
}

uint64_t sub_1D551A13C()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 48));
  if (*(v1 + 40) >= 1)
  {
    *(v1 + 40) = 0;
  }

  os_unfair_lock_unlock((v1 + 48));
}

void sub_1D551A198(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for MusicDaemon.Response.Context(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v31 - v10;
  v12 = sub_1D5516014();
  if (v12 || (v12 = sub_1D4ED0B58(a2 + *(v6 + 36), *(a1 + 8))) != 0)
  {
    v13 = v12;
    Strong = swift_unknownObjectWeakLoadStrong();
    v15 = *(v13 + 24);

    *a3 = Strong;
    a3[1] = v15;
  }

  else
  {
    if (qword_1EDD544D0 != -1)
    {
      swift_once();
    }

    v16 = sub_1D560C758();
    __swift_project_value_buffer(v16, qword_1EDD76B38);
    sub_1D551ADD4(a2, v11, type metadata accessor for MusicDaemon.Response.Context);
    sub_1D551ADD4(a2, v9, type metadata accessor for MusicDaemon.Response.Context);
    v17 = sub_1D560C738();
    v18 = sub_1D56156E8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v32 = v19;
      v35 = swift_slowAlloc();
      v36 = v35;
      *v19 = 136315394;
      v31[1] = sub_1D560C368();
      sub_1D551AED8(&qword_1EDD5CF40, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v34 = v18;
      v33 = v17;
      v20 = sub_1D56160F8();
      v22 = v21;
      sub_1D551AD28(v11, type metadata accessor for MusicDaemon.Response.Context);
      v23 = sub_1D4E6835C(v20, v22, &v36);

      v24 = v32;
      *(v32 + 1) = v23;
      *(v24 + 6) = 2080;
      v25 = sub_1D56160F8();
      v27 = v26;
      sub_1D551AD28(v9, type metadata accessor for MusicDaemon.Response.Context);
      v28 = sub_1D4E6835C(v25, v27, &v36);

      *(v24 + 14) = v28;
      v29 = v33;
      _os_log_impl(&dword_1D4E3F000, v33, v34, "Couldn't find an observer to route the response to for request ID: %s and observer ID: %s.", v24, 0x16u);
      v30 = v35;
      swift_arrayDestroy();
      MEMORY[0x1DA6ED200](v30, -1, -1);
      MEMORY[0x1DA6ED200](v24, -1, -1);
    }

    else
    {

      sub_1D551AD28(v9, type metadata accessor for MusicDaemon.Response.Context);
      sub_1D551AD28(v11, type metadata accessor for MusicDaemon.Response.Context);
    }

    *a3 = 0;
    a3[1] = 0;
  }
}

uint64_t sub_1D551A510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MusicDaemon.Response.Context(0);
  result = sub_1D5516014();
  if (result)
  {
    v5 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    v7 = *(v5 + 24);
  }

  else
  {
    Strong = 0;
    v7 = 0;
  }

  *a2 = Strong;
  *(a2 + 8) = v7;
  *(a2 + 16) = *(*(a1 + 8) + 16) == 0;
  return result;
}

uint64_t sub_1D551A5AC()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 48));
  sub_1D551AE34((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 48));
}

void sub_1D551A614(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(result + 8);
  if (*(v3 + 16) && (type metadata accessor for MusicDaemon.Response.Context(0), sub_1D4F0E020(), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = *(v6 + 24);
    *a2 = Strong;
    a2[1] = v8;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

uint64_t *sub_1D551A68C@<X0>(uint64_t *result@<X0>, BOOL *a4@<X8>)
{
  v5 = *result;
  if (*result)
  {
    result = sub_1D560C7A8();
  }

  *a4 = v5 == 0;
  return result;
}

uint64_t sub_1D551A6DC(uint64_t a1, char *a2)
{
  v38 = a2;
  v3 = sub_1D560C7C8();
  v37 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - v6;
  v8 = sub_1D560C7E8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7CA0, &qword_1D566F3F8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  sub_1D4F1C460(a1, &v37 - v13, &qword_1EC7F7CA0, &qword_1D566F3F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v37;
    (*(v37 + 32))(v7, v14, v3);
    v16 = v7;
    if (qword_1EDD544D0 != -1)
    {
      swift_once();
    }

    v17 = sub_1D560C758();
    __swift_project_value_buffer(v17, qword_1EDD76B38);
    v18 = *(v15 + 16);
    v19 = v39;
    v18(v39, v7, v3);
    v20 = sub_1D560C738();
    v21 = sub_1D56156C8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v38 = v16;
      v23 = v19;
      v24 = v22;
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      sub_1D551AED8(&unk_1EDD54450, MEMORY[0x1E69E84C0], MEMORY[0x1E69E84C8]);
      swift_allocError();
      v18(v26, v23, v3);
      v27 = _swift_stdlib_bridgeErrorToNSError();
      v28 = *(v15 + 8);
      v28(v23, v3);
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_1D4E3F000, v20, v21, "XPC failure received: %{public}@.", v24, 0xCu);
      sub_1D4E50004(v25, &unk_1EC7F2C00, &qword_1D5623260);
      MEMORY[0x1DA6ED200](v25, -1, -1);
      MEMORY[0x1DA6ED200](v24, -1, -1);

      return (v28)(v38, v3);
    }

    else
    {

      v36 = *(v15 + 8);
      v36(v19, v3);
      return (v36)(v16, v3);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    v30 = v8;
    v31 = v9;
    if (qword_1EDD544D0 != -1)
    {
      swift_once();
    }

    v32 = sub_1D560C758();
    __swift_project_value_buffer(v32, qword_1EDD76B38);
    v33 = sub_1D560C738();
    v34 = sub_1D56156E8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D4E3F000, v33, v34, "XPC response received.", v35, 2u);
      MEMORY[0x1DA6ED200](v35, -1, -1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1D55176C8(v11);
    }

    return (*(v31 + 8))(v11, v30);
  }
}

uint64_t sub_1D551AC10()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1D551ACC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicDaemon.Response.Context(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D551AD28(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D551ADD4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1D551AE50()
{
  result = qword_1EDD52748;
  if (!qword_1EDD52748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F7C98, &qword_1D566F3F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52748);
  }

  return result;
}

uint64_t sub_1D551AED8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t MusicLibraryPlaylistViewModel.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D551B00C()
{
  result = qword_1EC7F7CB0;
  if (!qword_1EC7F7CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F7CB8, &qword_1D566F448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7CB0);
  }

  return result;
}

unint64_t sub_1D551B074()
{
  result = qword_1EC7F7CC0;
  if (!qword_1EC7F7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7CC0);
  }

  return result;
}

_BYTE *_s5ErrorOwst_3(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Playlist.Entry.InternalItem.id.getter(uint64_t a1)
{
  Playlist.Entry.InternalItem.innerItem.getter(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_128();
  sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return OUTLINED_FUNCTION_71();
}

uint64_t sub_1D551B208@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Playlist.Entry.InternalItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1D551B62C(v1, v5 - v4);
  OUTLINED_FUNCTION_46_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D560EEA8();
      goto LABEL_7;
    case 2u:
      sub_1D5613838();
LABEL_7:
      OUTLINED_FUNCTION_14();
      v8 = OUTLINED_FUNCTION_128();
      v9(v8);
      goto LABEL_10;
    case 3u:
      v7 = type metadata accessor for TVEpisode;
      goto LABEL_9;
    case 4u:
      v7 = type metadata accessor for UploadedAudio;
      goto LABEL_9;
    case 5u:
      v7 = type metadata accessor for UploadedVideo;
      goto LABEL_9;
    default:
      v7 = type metadata accessor for MusicMovie;
LABEL_9:
      sub_1D551C50C(v6, a1, v7);
LABEL_10:
      _s12InternalItemOMa(0);
      return swift_storeEnumTagMultiPayload();
  }
}

uint64_t Playlist.Entry.InternalItem.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  type metadata accessor for Playlist.Entry.InternalItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  sub_1D551B62C(v3, v1);
  OUTLINED_FUNCTION_24();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v10 = sub_1D560EEA8();
      v11 = MEMORY[0x1E69754B0];
      goto LABEL_7;
    case 2u:
      v10 = sub_1D5613838();
      v11 = MEMORY[0x1E6976BB0];
LABEL_7:
      a1[3] = v10;
      a1[4] = v11;
      __swift_allocate_boxed_opaque_existential_0(a1);
      OUTLINED_FUNCTION_24_0();
      return (*(v13 + 32))();
    case 3u:
      a1[3] = type metadata accessor for TVEpisode(0);
      v12 = sub_1D4E74E24(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
      v7 = OUTLINED_FUNCTION_104_0(v12);
      v8 = type metadata accessor for TVEpisode;
      return sub_1D551C50C(v1, v7, v8);
    case 4u:
      a1[3] = type metadata accessor for UploadedAudio(0);
      v9 = sub_1D4E74E24(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
      v7 = OUTLINED_FUNCTION_104_0(v9);
      v8 = type metadata accessor for UploadedAudio;
      return sub_1D551C50C(v1, v7, v8);
    case 5u:
      a1[3] = type metadata accessor for UploadedVideo(0);
      v15 = sub_1D4E74E24(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
      v7 = OUTLINED_FUNCTION_104_0(v15);
      v8 = type metadata accessor for UploadedVideo;
      return sub_1D551C50C(v1, v7, v8);
    default:
      a1[3] = type metadata accessor for MusicMovie(0);
      v6 = sub_1D4E74E24(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
      v7 = OUTLINED_FUNCTION_104_0(v6);
      v8 = type metadata accessor for MusicMovie;
      return sub_1D551C50C(v1, v7, v8);
  }
}

uint64_t type metadata accessor for Playlist.Entry.InternalItem(uint64_t a1)
{
  result = qword_1EDD5D0F0;
  if (!qword_1EDD5D0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D551B62C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Entry.InternalItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void Playlist.Entry.InternalItem.siriRepresentation.getter()
{
  OUTLINED_FUNCTION_47();
  v5 = OUTLINED_FUNCTION_83_25(v4);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v33 = v7;
  v8 = OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for UploadedAudio(v8);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v11 = OUTLINED_FUNCTION_28_3();
  v12 = type metadata accessor for TVEpisode(v11);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_9_129();
  v15 = type metadata accessor for MusicMovie(v14);
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_98();
  v19 = type metadata accessor for Playlist.Entry.InternalItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  sub_1D551B62C(v35, v0);
  OUTLINED_FUNCTION_128();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v28 = OUTLINED_FUNCTION_41_54();
      v29(v28);
      MusicVideo.siriRepresentation.getter(v34);
      v30 = OUTLINED_FUNCTION_113_0();
      v31(v30);
      goto LABEL_10;
    case 2u:
      v23 = OUTLINED_FUNCTION_58_38();
      v24(v23);
      OUTLINED_FUNCTION_80_15();
      Song.siriRepresentation.getter();
      v25 = OUTLINED_FUNCTION_161();
      v26(v25);
      goto LABEL_10;
    case 3u:
      OUTLINED_FUNCTION_52_38();
      sub_1D551C50C(v0, v2, v27);
      TVEpisode.siriRepresentation.getter(v34);
      v22 = v2;
      break;
    case 4u:
      v19 = type metadata accessor for UploadedAudio;
      sub_1D551C50C(v0, v1, type metadata accessor for UploadedAudio);
      UploadedAudio.siriRepresentation.getter(v34);
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_21_80();
      v1 = v33;
      sub_1D551C50C(v0, v33, v32);
      UploadedVideo.siriRepresentation.getter(v34);
LABEL_8:
      v22 = v1;
      break;
    default:
      OUTLINED_FUNCTION_53_36();
      sub_1D551C50C(v0, v3, v21);
      MusicMovie.siriRepresentation.getter(v34);
      v22 = v3;
      break;
  }

  sub_1D4ED1490(v22, v19);
LABEL_10:
  OUTLINED_FUNCTION_46();
}

void sub_1D551B9BC()
{
  OUTLINED_FUNCTION_47();
  v4 = type metadata accessor for TVEpisode(0);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v6 = OUTLINED_FUNCTION_28_3();
  v7 = type metadata accessor for MusicMovie(v6);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  v9 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v36 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_129();
  v12 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v16 = OUTLINED_FUNCTION_30_8();
  type metadata accessor for Playlist.Entry.InternalItem(v16);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  sub_1D551B62C(v1, v19 - v18);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_33_1();
      v35(v2, v20, v9);
      sub_1D560ED58();
      (*(v36 + 8))(v2, v9);
      break;
    case 2u:
      (*(v14 + 32))(v3, v20, v12);
      sub_1D5613668();
      v21 = OUTLINED_FUNCTION_45_3();
      v22(v21);
      break;
    case 3u:
      OUTLINED_FUNCTION_3_197();
      sub_1D551C50C(v20, v1, v23);
      if (qword_1EC7E91C8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_27_73();
      sub_1D4E74E24(v24, v1, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_88_0();
      sub_1D4E74E24(v25, v1, v26);
      sub_1D560EC28();
      OUTLINED_FUNCTION_0_261();
      sub_1D4ED1490(v1, v27);
      break;
    case 4u:
    case 5u:
      sub_1D4ED1490(v20, type metadata accessor for Playlist.Entry.InternalItem);
      break;
    default:
      OUTLINED_FUNCTION_5_150();
      sub_1D551C50C(v20, v0, v28);
      if (qword_1EDD542C0 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_28_69();
      sub_1D4E74E24(v29, v1, &protocol conformance descriptor for MusicMovie);
      OUTLINED_FUNCTION_85_1();
      v32 = sub_1D4E74E24(v30, v1, v31);
      OUTLINED_FUNCTION_72_30(v32, MEMORY[0x1E69E6370], v33, v32);
      OUTLINED_FUNCTION_6_154();
      sub_1D4ED1490(v0, v34);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void Playlist.Entry.InternalItem.init(propertyProvider:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v64 = v4;
  v59[2] = type metadata accessor for UploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v59[3] = v6;
  v7 = OUTLINED_FUNCTION_70_0();
  v59[0] = type metadata accessor for UploadedAudio(v7);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v59[1] = v9;
  v10 = OUTLINED_FUNCTION_70_0();
  v59[4] = type metadata accessor for TVEpisode(v10);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v59[5] = v12;
  OUTLINED_FUNCTION_70_0();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v59[7] = v14;
  v59[8] = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v59[6] = v15;
  OUTLINED_FUNCTION_70_0();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v59[10] = v17;
  v59[11] = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v59[9] = v18;
  OUTLINED_FUNCTION_70_0();
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v61 = v20;
  v62 = v19;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v21 = OUTLINED_FUNCTION_15_3();
  v59[12] = type metadata accessor for MusicMovie(v21);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_0();
  v60 = v23;
  OUTLINED_FUNCTION_70_0();
  v24 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v26 = v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v63 = type metadata accessor for Playlist.Entry.InternalItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  v32 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D5610CF8();
  sub_1D560FE28();
  sub_1D4E74E24(&qword_1EDD53350, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BE0]);
  LOBYTE(v3) = OUTLINED_FUNCTION_32_62();
  v33 = *(v26 + 8);
  v33(v30, v24);
  if (v3)
  {
    v34 = OUTLINED_FUNCTION_122_1();
    (v33)(v34);
    OUTLINED_FUNCTION_74_1();
    __swift_project_boxed_opaque_existential_1(v65, v66);
    OUTLINED_FUNCTION_46_1();
    sub_1D5610CD8();
    v35 = sub_1D560D708();
    v37 = v36;
    (*(v61 + 8))(v1, v62);
    v38 = v60;
    *v60 = v35;
    *(v38 + 8) = v37;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    sub_1D5610D28();
    __swift_destroy_boxed_opaque_existential_1(v65);
    OUTLINED_FUNCTION_5_150();
    sub_1D551C50C(v38, v0, v39);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    sub_1D551C50C(v0, v64, type metadata accessor for Playlist.Entry.InternalItem);
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_46();
    return;
  }

  v60 = v0;
  sub_1D560FE38();
  OUTLINED_FUNCTION_32_62();
  v40 = OUTLINED_FUNCTION_34_64();
  (v33)(v40);
  if (v0)
  {
    v42 = OUTLINED_FUNCTION_122_1();
    (v33)(v42);
    OUTLINED_FUNCTION_74_1();
    sub_1D560EDD8();
    v0 = v60;
    v43 = OUTLINED_FUNCTION_71();
    v44(v43);
    goto LABEL_6;
  }

  sub_1D560FDF8();
  OUTLINED_FUNCTION_32_62();
  v41 = OUTLINED_FUNCTION_34_64();
  (v33)(v41);
  sub_1D560FFA8();
  OUTLINED_FUNCTION_32_62();
  v45 = OUTLINED_FUNCTION_34_64();
  (v33)(v45);
  if (v0)
  {
    v47 = OUTLINED_FUNCTION_122_1();
    (v33)(v47);
    OUTLINED_FUNCTION_74_1();
    sub_1D56136E8();
    v0 = v60;
    v48 = OUTLINED_FUNCTION_71();
    v49(v48);
    goto LABEL_6;
  }

  sub_1D560FE48();
  OUTLINED_FUNCTION_32_62();
  v46 = OUTLINED_FUNCTION_34_64();
  (v33)(v46);
  sub_1D5610078();
  OUTLINED_FUNCTION_32_62();
  v50 = OUTLINED_FUNCTION_34_64();
  (v33)(v50);
  if (v0)
  {
    v51 = OUTLINED_FUNCTION_122_1();
    (v33)(v51);
    OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_46_42();
    sub_1D560D708();
    v52 = OUTLINED_FUNCTION_42_50();
    v53(v52);
    OUTLINED_FUNCTION_41_2();
    OUTLINED_FUNCTION_71();
    sub_1D5610D28();
    __swift_destroy_boxed_opaque_existential_1(v65);
    OUTLINED_FUNCTION_3_197();
    OUTLINED_FUNCTION_71_26(v54, v55, v56);
    goto LABEL_6;
  }

  sub_1D560FF28();
  OUTLINED_FUNCTION_32_62();
  v57 = OUTLINED_FUNCTION_34_64();
  (v33)(v57);
  sub_1D560FF38();
  OUTLINED_FUNCTION_32_62();
  v58 = OUTLINED_FUNCTION_34_64();
  (v33)(v58);
  sub_1D5615E08();
  __break(1u);
}

uint64_t sub_1D551C50C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

void Playlist.Entry.InternalItem.propertyProvider.getter()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_83_25(v4);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v41 = v6;
  v7 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for UploadedAudio(v7);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v40 = v9;
  v10 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for TVEpisode(v10);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v12 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v39 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_98();
  v15 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v19 = OUTLINED_FUNCTION_28_3();
  v20 = type metadata accessor for MusicMovie(v19);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_9_129();
  type metadata accessor for Playlist.Entry.InternalItem(v22);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  sub_1D551B62C(v43, v25 - v24);
  OUTLINED_FUNCTION_122_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v17 + 32))(v0, v26, v15);
      sub_1D560EDC8();
      (*(v17 + 8))(v0, v15);
      goto LABEL_10;
    case 2u:
      (*(v39 + 32))(v3, v26, v12);
      OUTLINED_FUNCTION_80_15();
      sub_1D56136D8();
      v33 = OUTLINED_FUNCTION_161();
      v34(v33);
      goto LABEL_10;
    case 3u:
      OUTLINED_FUNCTION_11_123();
      sub_1D551C50C(v26, v2, v35);
      OUTLINED_FUNCTION_139_0();
      OUTLINED_FUNCTION_14();
      (*(v36 + 16))(v42, v2 + v0);
      v30 = v2;
      break;
    case 4u:
      OUTLINED_FUNCTION_22_76();
      v31 = v40;
      sub_1D551C50C(v26, v40, v32);
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_51_36();
      v31 = v41;
      sub_1D551C50C(v26, v41, v37);
LABEL_8:
      OUTLINED_FUNCTION_139_0();
      OUTLINED_FUNCTION_14();
      (*(v38 + 16))(v42, v31 + v0);
      v30 = v31;
      break;
    default:
      OUTLINED_FUNCTION_12_105();
      sub_1D551C50C(v26, v1, v27);
      v28 = *(v20 + 20);
      sub_1D5611AB8();
      OUTLINED_FUNCTION_14();
      (*(v29 + 16))(v42, v1 + v28);
      v30 = v1;
      break;
  }

  sub_1D4ED1490(v30, v15);
LABEL_10:
  OUTLINED_FUNCTION_46();
}

void Playlist.Entry.InternalItem.artwork.getter()
{
  OUTLINED_FUNCTION_47();
  v4 = OUTLINED_FUNCTION_83_25(v3);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v60 = v6;
  v7 = OUTLINED_FUNCTION_70_0();
  v8 = type metadata accessor for UploadedAudio(v7);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v59 = v10;
  v11 = OUTLINED_FUNCTION_70_0();
  v12 = type metadata accessor for TVEpisode(v11);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_1_12();
  v15 = type metadata accessor for MusicMovie(v14);
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_129();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_98();
  type metadata accessor for Playlist.Entry.InternalItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  sub_1D551B62C(v61, v0);
  OUTLINED_FUNCTION_71();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v47 = OUTLINED_FUNCTION_41_54();
      v48(v47);
      sub_1D560EE78();
      v49 = OUTLINED_FUNCTION_113_0();
      v50(v49);
      goto LABEL_18;
    case 2u:
      v37 = OUTLINED_FUNCTION_58_38();
      v38(v37);
      OUTLINED_FUNCTION_80_15();
      sub_1D56137F8();
      v39 = OUTLINED_FUNCTION_161();
      v40(v39);
      goto LABEL_18;
    case 3u:
      OUTLINED_FUNCTION_3_197();
      v41 = OUTLINED_FUNCTION_24();
      sub_1D551C50C(v41, v42, v43);
      if (qword_1EC7E9170 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      OUTLINED_FUNCTION_27_73();
      sub_1D4E74E24(v44, v18, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_88_0();
      sub_1D4E74E24(v45, v18, v46);
      OUTLINED_FUNCTION_25_67();
      sub_1D560EC28();
      OUTLINED_FUNCTION_0_261();
      v36 = v1;
      goto LABEL_17;
    case 4u:
      OUTLINED_FUNCTION_4_152();
      sub_1D551C50C(v0, v59, v31);
      if (qword_1EC7E8E40 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      OUTLINED_FUNCTION_50_39();
      sub_1D4E74E24(v32, v1, &protocol conformance descriptor for UploadedAudio);
      OUTLINED_FUNCTION_24_5();
      sub_1D4E74E24(v33, v1, v34);
      OUTLINED_FUNCTION_25_67();
      sub_1D560EC28();
      OUTLINED_FUNCTION_1_196();
      v36 = v59;
      goto LABEL_17;
    case 5u:
      OUTLINED_FUNCTION_2_192();
      v2 = v60;
      sub_1D551C50C(v0, v60, v51);
      if (qword_1EDD53E58 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      OUTLINED_FUNCTION_48_42();
      sub_1D4E74E24(v52, v18, &protocol conformance descriptor for UploadedVideo);
      OUTLINED_FUNCTION_23_2();
      sub_1D4E74E24(v53, v18, v54);
      v55 = OUTLINED_FUNCTION_25_67();
      OUTLINED_FUNCTION_86_24(v55, v56, v57, v58);
      v30 = type metadata accessor for UploadedVideo;
      goto LABEL_16;
    default:
      OUTLINED_FUNCTION_5_150();
      sub_1D551C50C(v0, v2, v22);
      if (qword_1EDD541B8 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      OUTLINED_FUNCTION_28_69();
      sub_1D4E74E24(v23, v18, &protocol conformance descriptor for MusicMovie);
      OUTLINED_FUNCTION_85_1();
      sub_1D4E74E24(v24, v18, v25);
      v26 = OUTLINED_FUNCTION_25_67();
      OUTLINED_FUNCTION_86_24(v26, v27, v28, v29);
      v30 = type metadata accessor for MusicMovie;
LABEL_16:
      v35 = v30;
      v36 = v2;
LABEL_17:
      sub_1D4ED1490(v36, v35);
LABEL_18:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void Playlist.Entry.InternalItem.duration.getter()
{
  OUTLINED_FUNCTION_47();
  v57 = v1;
  v6 = type metadata accessor for UploadedVideo(0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v56 = v8;
  v9 = OUTLINED_FUNCTION_70_0();
  v10 = type metadata accessor for UploadedAudio(v9);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v55 = v12;
  v13 = OUTLINED_FUNCTION_70_0();
  v14 = type metadata accessor for TVEpisode(v13);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  v16 = type metadata accessor for MusicMovie(0);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_12();
  v18 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v22 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  v26 = type metadata accessor for Playlist.Entry.InternalItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_98();
  sub_1D551B62C(v57, v5);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v20 + 32))(v3, v5, v18);
      sub_1D560EE88();
      v47 = OUTLINED_FUNCTION_45_3();
      v48(v47);
      goto LABEL_19;
    case 2u:
      OUTLINED_FUNCTION_33_1();
      v41(v4, v5, v22);
      sub_1D5613818();
      (*(v24 + 8))(v4, v22);
      goto LABEL_19;
    case 3u:
      OUTLINED_FUNCTION_3_197();
      sub_1D551C50C(v5, v0, v42);
      if (qword_1EC7E91A0 != -1)
      {
        swift_once();
      }

      sub_1D4E74E24(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_88_0();
      sub_1D4E74E24(v43, type metadata accessor for TVEpisode, v44);
      sub_1D560EC28();
      v40 = type metadata accessor for TVEpisode;
      goto LABEL_12;
    case 4u:
      OUTLINED_FUNCTION_4_152();
      v0 = v55;
      sub_1D551C50C(v5, v55, v34);
      if (qword_1EC7E8E60 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_49_36();
      sub_1D4E74E24(v35, v24, &protocol conformance descriptor for UploadedAudio);
      OUTLINED_FUNCTION_24_5();
      v38 = sub_1D4E74E24(v36, v24, v37);
      OUTLINED_FUNCTION_72_30(v38, MEMORY[0x1E69E63B0], v39, v38);
      v40 = type metadata accessor for UploadedAudio;
LABEL_12:
      v45 = v40;
      v46 = v0;
      goto LABEL_18;
    case 5u:
      OUTLINED_FUNCTION_2_192();
      v2 = v56;
      sub_1D551C50C(v5, v56, v49);
      if (qword_1EDD53E28 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_47_47();
      sub_1D4E74E24(v50, v26, &protocol conformance descriptor for UploadedVideo);
      OUTLINED_FUNCTION_23_2();
      v53 = sub_1D4E74E24(v51, v26, v52);
      OUTLINED_FUNCTION_101_1(v53, MEMORY[0x1E69E63B0], v54, v53);
      v33 = type metadata accessor for UploadedVideo;
      goto LABEL_17;
    default:
      OUTLINED_FUNCTION_5_150();
      sub_1D551C50C(v5, v2, v28);
      if (qword_1EDD541A8 != -1)
      {
        swift_once();
      }

      sub_1D4E74E24(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
      OUTLINED_FUNCTION_85_1();
      v31 = sub_1D4E74E24(v29, type metadata accessor for MusicMovie, v30);
      OUTLINED_FUNCTION_101_1(v31, MEMORY[0x1E69E63B0], v32, v31);
      v33 = type metadata accessor for MusicMovie;
LABEL_17:
      v45 = v33;
      v46 = v2;
LABEL_18:
      sub_1D4ED1490(v46, v45);
LABEL_19:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void Playlist.Entry.InternalItem.playParameters.getter()
{
  OUTLINED_FUNCTION_47();
  v4 = OUTLINED_FUNCTION_83_25(v3);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v60 = v6;
  v7 = OUTLINED_FUNCTION_70_0();
  v8 = type metadata accessor for UploadedAudio(v7);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v59 = v10;
  v11 = OUTLINED_FUNCTION_70_0();
  v12 = type metadata accessor for TVEpisode(v11);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_1_12();
  v15 = type metadata accessor for MusicMovie(v14);
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_129();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_98();
  type metadata accessor for Playlist.Entry.InternalItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  sub_1D551B62C(v61, v0);
  OUTLINED_FUNCTION_71();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v47 = OUTLINED_FUNCTION_41_54();
      v48(v47);
      sub_1D560ED68();
      v49 = OUTLINED_FUNCTION_113_0();
      v50(v49);
      goto LABEL_18;
    case 2u:
      v37 = OUTLINED_FUNCTION_58_38();
      v38(v37);
      OUTLINED_FUNCTION_80_15();
      sub_1D5613688();
      v39 = OUTLINED_FUNCTION_161();
      v40(v39);
      goto LABEL_18;
    case 3u:
      OUTLINED_FUNCTION_3_197();
      v41 = OUTLINED_FUNCTION_24();
      sub_1D551C50C(v41, v42, v43);
      if (qword_1EC7E9230 != -1)
      {
        swift_once();
      }

      sub_1D56109F8();
      OUTLINED_FUNCTION_27_73();
      sub_1D4E74E24(v44, v18, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_88_0();
      sub_1D4E74E24(v45, v18, v46);
      OUTLINED_FUNCTION_25_67();
      sub_1D560EC28();
      OUTLINED_FUNCTION_0_261();
      v36 = v1;
      goto LABEL_17;
    case 4u:
      OUTLINED_FUNCTION_4_152();
      sub_1D551C50C(v0, v59, v31);
      if (qword_1EC7E8EB0 != -1)
      {
        swift_once();
      }

      sub_1D56109F8();
      OUTLINED_FUNCTION_50_39();
      sub_1D4E74E24(v32, v1, &protocol conformance descriptor for UploadedAudio);
      OUTLINED_FUNCTION_24_5();
      sub_1D4E74E24(v33, v1, v34);
      OUTLINED_FUNCTION_25_67();
      sub_1D560EC28();
      OUTLINED_FUNCTION_1_196();
      v36 = v59;
      goto LABEL_17;
    case 5u:
      OUTLINED_FUNCTION_2_192();
      v2 = v60;
      sub_1D551C50C(v0, v60, v51);
      if (qword_1EDD53EF8 != -1)
      {
        swift_once();
      }

      sub_1D56109F8();
      OUTLINED_FUNCTION_48_42();
      sub_1D4E74E24(v52, v18, &protocol conformance descriptor for UploadedVideo);
      OUTLINED_FUNCTION_23_2();
      sub_1D4E74E24(v53, v18, v54);
      v55 = OUTLINED_FUNCTION_25_67();
      OUTLINED_FUNCTION_86_24(v55, v56, v57, v58);
      v30 = type metadata accessor for UploadedVideo;
      goto LABEL_16;
    default:
      OUTLINED_FUNCTION_5_150();
      sub_1D551C50C(v0, v2, v22);
      if (qword_1EDD542A0 != -1)
      {
        swift_once();
      }

      sub_1D56109F8();
      OUTLINED_FUNCTION_28_69();
      sub_1D4E74E24(v23, v18, &protocol conformance descriptor for MusicMovie);
      OUTLINED_FUNCTION_85_1();
      sub_1D4E74E24(v24, v18, v25);
      v26 = OUTLINED_FUNCTION_25_67();
      OUTLINED_FUNCTION_86_24(v26, v27, v28, v29);
      v30 = type metadata accessor for MusicMovie;
LABEL_16:
      v35 = v30;
      v36 = v2;
LABEL_17:
      sub_1D4ED1490(v36, v35);
LABEL_18:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void Playlist.Entry.InternalItem.subtitle.getter()
{
  OUTLINED_FUNCTION_47();
  v6 = type metadata accessor for UploadedVideo(0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v36 = v8;
  v9 = OUTLINED_FUNCTION_70_0();
  v10 = type metadata accessor for UploadedAudio(v9);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v12 = OUTLINED_FUNCTION_28_3();
  v13 = type metadata accessor for TVEpisode(v12);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_1_12();
  v16 = type metadata accessor for MusicMovie(v15);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_129();
  v18 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v20 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_98();
  type metadata accessor for Playlist.Entry.InternalItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  sub_1D551B62C(v0, v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_33_1();
      v31(v3, v4, v18);
      sub_1D560ECC8();
      OUTLINED_FUNCTION_74_7();
      v32 = OUTLINED_FUNCTION_45_3();
      v34(v32, v33);
      goto LABEL_11;
    case 2u:
      OUTLINED_FUNCTION_33_1();
      v28 = OUTLINED_FUNCTION_161();
      v29(v28);
      sub_1D56135B8();
      OUTLINED_FUNCTION_74_7();
      (*(v22 + 8))(v5, v20);
      goto LABEL_11;
    case 3u:
      OUTLINED_FUNCTION_52_38();
      sub_1D551C50C(v4, v1, v30);
      TVEpisode.showName.getter();
      OUTLINED_FUNCTION_74_7();
      v26 = v1;
      goto LABEL_9;
    case 4u:
      sub_1D551C50C(v4, v0, type metadata accessor for UploadedAudio);
      UploadedAudio.artistName.getter();
      OUTLINED_FUNCTION_74_7();
      v26 = v0;
      v27 = type metadata accessor for UploadedAudio;
      goto LABEL_10;
    case 5u:
      OUTLINED_FUNCTION_21_80();
      sub_1D551C50C(v4, v36, v35);
      UploadedVideo.artistName.getter();
      OUTLINED_FUNCTION_74_7();
      v26 = v36;
      goto LABEL_9;
    default:
      OUTLINED_FUNCTION_53_36();
      sub_1D551C50C(v4, v2, v25);
      MusicMovie.artistName.getter();
      OUTLINED_FUNCTION_74_7();
      v26 = v2;
LABEL_9:
      v27 = v22;
LABEL_10:
      sub_1D4ED1490(v26, v27);
LABEL_11:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void Playlist.Entry.InternalItem.title.getter()
{
  OUTLINED_FUNCTION_47();
  v53 = v0;
  v6 = type metadata accessor for UploadedVideo(0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v52 = v8;
  v9 = OUTLINED_FUNCTION_70_0();
  v10 = type metadata accessor for UploadedAudio(v9);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v51 = v12;
  v13 = OUTLINED_FUNCTION_70_0();
  v14 = type metadata accessor for TVEpisode(v13);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_1_12();
  v17 = type metadata accessor for MusicMovie(v16);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9_129();
  v19 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v23 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_98();
  v27 = type metadata accessor for Playlist.Entry.InternalItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  sub_1D551B62C(v53, v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_33_1();
      v41(v3, v4, v19);
      sub_1D560EE68();
      OUTLINED_FUNCTION_86_2();
      v42 = OUTLINED_FUNCTION_45_3();
      v44(v42, v43);
      goto LABEL_15;
    case 2u:
      v38 = OUTLINED_FUNCTION_161();
      v39(v38);
      sub_1D56137E8();
      OUTLINED_FUNCTION_86_2();
      (*(v25 + 8))(v5, v23);
      goto LABEL_15;
    case 3u:
      OUTLINED_FUNCTION_11_123();
      sub_1D551C50C(v4, v1, v40);
      TVEpisode.title.getter();
      OUTLINED_FUNCTION_86_2();
      v30 = v1;
      goto LABEL_8;
    case 4u:
      OUTLINED_FUNCTION_4_152();
      sub_1D551C50C(v4, v51, v31);
      if (qword_1EC7E8EC8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_49_36();
      sub_1D4E74E24(v32, v21, &protocol conformance descriptor for UploadedAudio);
      OUTLINED_FUNCTION_24_5();
      v35 = sub_1D4E74E24(v33, v21, v34);
      OUTLINED_FUNCTION_72_30(v35, MEMORY[0x1E69E6158], v36, v35);
      v37 = type metadata accessor for UploadedAudio;
      v30 = v51;
      goto LABEL_14;
    case 5u:
      OUTLINED_FUNCTION_2_192();
      sub_1D551C50C(v4, v52, v45);
      if (qword_1EDD53E78 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_47_47();
      sub_1D4E74E24(v46, v27, &protocol conformance descriptor for UploadedVideo);
      OUTLINED_FUNCTION_23_2();
      v49 = sub_1D4E74E24(v47, v27, v48);
      OUTLINED_FUNCTION_101_1(v49, MEMORY[0x1E69E6158], v50, v49);
      v37 = type metadata accessor for UploadedVideo;
      v30 = v52;
      goto LABEL_14;
    default:
      OUTLINED_FUNCTION_12_105();
      sub_1D551C50C(v4, v2, v29);
      MusicMovie.title.getter();
      OUTLINED_FUNCTION_86_2();
      v30 = v2;
LABEL_8:
      v37 = v25;
LABEL_14:
      sub_1D4ED1490(v30, v37);
LABEL_15:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void static Playlist.Entry.InternalItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v94 = v2;
  v95 = v3;
  v85 = type metadata accessor for UploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v89 = v5;
  v6 = OUTLINED_FUNCTION_70_0();
  v84 = type metadata accessor for UploadedAudio(v6);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v88 = v8;
  v9 = OUTLINED_FUNCTION_70_0();
  v83 = type metadata accessor for TVEpisode(v9);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v87 = v11;
  OUTLINED_FUNCTION_70_0();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v92 = v13;
  v93 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v86 = v14;
  OUTLINED_FUNCTION_70_0();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v90 = v16;
  v91 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v17 = OUTLINED_FUNCTION_18_3();
  v81[1] = type metadata accessor for MusicMovie(v17);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_0();
  v82 = v19;
  v20 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for Playlist.Entry.InternalItem(v20);
  OUTLINED_FUNCTION_14();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = (v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = (v81 - v26);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = (v81 - v29);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = v81 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = v81 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = (v81 - v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7D10, &qword_1D566F510);
  v40 = OUTLINED_FUNCTION_22(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_40_2();
  v42 = *(v41 + 56);
  sub_1D551B62C(v94, v0);
  sub_1D551B62C(v95, v0 + v42);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v62 = OUTLINED_FUNCTION_128();
      sub_1D551B62C(v62, v63);
      if (OUTLINED_FUNCTION_70_28() == 1)
      {
        v65 = v90;
        v64 = v91;
        (*(v90 + 32))(v1, v0 + v42, v91);
        sub_1D560EE28();
        v66 = *(v65 + 8);
        v66(v1, v64);
        v66(v36, v64);
        goto LABEL_24;
      }

      (*(v90 + 8))(v36, v91);
      goto LABEL_39;
    case 2u:
      sub_1D551B62C(v0, v33);
      if (OUTLINED_FUNCTION_70_28() != 2)
      {
        (*(v92 + 8))(v33, v93);
        goto LABEL_39;
      }

      v52 = v92;
      v51 = v93;
      v53 = v0 + v42;
      v54 = v86;
      (*(v92 + 32))(v86, v53, v93);
      sub_1D56137A8();
      v55 = *(v52 + 8);
      v55(v54, v51);
      v55(v33, v51);
LABEL_24:
      OUTLINED_FUNCTION_33_58();
      goto LABEL_52;
    case 3u:
      v56 = OUTLINED_FUNCTION_24();
      sub_1D551B62C(v56, v57);
      if (OUTLINED_FUNCTION_70_28() != 3)
      {
        OUTLINED_FUNCTION_0_261();
        v44 = v30;
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_3_197();
      v58 = v87;
      sub_1D551C50C(v0 + v42, v87, v59);
      v60 = *v30 == *v58 && v30[1] == v58[1];
      if (v60 || (sub_1D5616168() & 1) != 0)
      {
        sub_1D5611A78();
        OUTLINED_FUNCTION_0_261();
        sub_1D4ED1490(v58, v61);
      }

      else
      {
        OUTLINED_FUNCTION_0_261();
        sub_1D4ED1490(v58, v78);
      }

      OUTLINED_FUNCTION_0_261();
      v50 = v30;
      goto LABEL_51;
    case 4u:
      sub_1D551B62C(v0, v27);
      if (OUTLINED_FUNCTION_70_28() != 4)
      {
        OUTLINED_FUNCTION_1_196();
        v44 = v27;
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_4_152();
      v45 = v88;
      sub_1D551C50C(v0 + v42, v88, v46);
      v47 = *v27 == *v45 && v27[1] == v45[1];
      if (v47 || (sub_1D5616168() & 1) != 0)
      {
        sub_1D5611A78();
        OUTLINED_FUNCTION_1_196();
        sub_1D4ED1490(v45, v48);
      }

      else
      {
        OUTLINED_FUNCTION_1_196();
        sub_1D4ED1490(v45, v77);
      }

      OUTLINED_FUNCTION_1_196();
      v50 = v27;
      goto LABEL_51;
    case 5u:
      v67 = OUTLINED_FUNCTION_71();
      sub_1D551B62C(v67, v68);
      if (OUTLINED_FUNCTION_70_28() != 5)
      {
        OUTLINED_FUNCTION_10_127();
        v44 = v24;
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_2_192();
      v69 = v89;
      sub_1D551C50C(v0 + v42, v89, v70);
      v71 = *v24 == *v69 && v24[1] == v69[1];
      if (v71 || (sub_1D5616168() & 1) != 0)
      {
        sub_1D5611A78();
        OUTLINED_FUNCTION_10_127();
        sub_1D4ED1490(v69, v72);
      }

      else
      {
        OUTLINED_FUNCTION_10_127();
        sub_1D4ED1490(v69, v79);
      }

      OUTLINED_FUNCTION_10_127();
      v50 = v24;
      goto LABEL_51;
    default:
      sub_1D551B62C(v0, v38);
      if (OUTLINED_FUNCTION_70_28())
      {
        OUTLINED_FUNCTION_6_154();
        v44 = v38;
LABEL_38:
        sub_1D4ED1490(v44, v43);
LABEL_39:
        sub_1D5520B24(v0);
      }

      else
      {
        OUTLINED_FUNCTION_5_150();
        v73 = v82;
        sub_1D551C50C(v0 + v42, v82, v74);
        v75 = *v38 == *v73 && v38[1] == v73[1];
        if (v75 || (sub_1D5616168() & 1) != 0)
        {
          sub_1D5611A78();
          OUTLINED_FUNCTION_6_154();
          sub_1D4ED1490(v73, v76);
        }

        else
        {
          OUTLINED_FUNCTION_6_154();
          sub_1D4ED1490(v73, v80);
        }

        OUTLINED_FUNCTION_6_154();
        v50 = v38;
LABEL_51:
        sub_1D4ED1490(v50, v49);
        OUTLINED_FUNCTION_33_58();
      }

LABEL_52:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void Playlist.Entry.InternalItem.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v46 = v0;
  type metadata accessor for UploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v45 = v7;
  v8 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for UploadedAudio(v8);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_9_129();
  type metadata accessor for TVEpisode(v10);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v12 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v44 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_98();
  v15 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v43 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_1_12();
  type metadata accessor for MusicMovie(v18);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v20 = OUTLINED_FUNCTION_18_3();
  type metadata accessor for Playlist.Entry.InternalItem(v20);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  sub_1D551B62C(v46, v23 - v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_33_1();
      v37(v1, v24, v15);
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_54_39();
      sub_1D4E74E24(v38, v39, MEMORY[0x1E69754F8]);
      sub_1D5614CB8();
      (*(v43 + 8))(v1, v15);
      goto LABEL_10;
    case 2u:
      (*(v44 + 32))(v5, v24, v12);
      MEMORY[0x1DA6EC0D0](2);
      OUTLINED_FUNCTION_55_36();
      sub_1D4E74E24(v30, v31, MEMORY[0x1E6976BF8]);
      sub_1D5614CB8();
      v32 = OUTLINED_FUNCTION_161();
      v33(v32);
      goto LABEL_10;
    case 3u:
      OUTLINED_FUNCTION_11_123();
      sub_1D551C50C(v24, v4, v34);
      OUTLINED_FUNCTION_65_28();
      sub_1D5614E28();
      OUTLINED_FUNCTION_139_0();
      OUTLINED_FUNCTION_29_62();
      sub_1D4E74E24(v35, v36, MEMORY[0x1E6976328]);
      OUTLINED_FUNCTION_61();
      sub_1D5614CB8();
      v28 = v4;
      break;
    case 4u:
      OUTLINED_FUNCTION_22_76();
      sub_1D551C50C(v24, v2, v29);
      OUTLINED_FUNCTION_65_28();
      sub_1D5614E28();
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_51_36();
      v2 = v45;
      sub_1D551C50C(v24, v45, v40);
      OUTLINED_FUNCTION_65_28();
      sub_1D5614E28();
LABEL_8:
      OUTLINED_FUNCTION_139_0();
      OUTLINED_FUNCTION_29_62();
      sub_1D4E74E24(v41, v42, MEMORY[0x1E6976328]);
      OUTLINED_FUNCTION_61();
      sub_1D5614CB8();
      v28 = v2;
      break;
    default:
      OUTLINED_FUNCTION_12_105();
      sub_1D551C50C(v24, v3, v25);
      OUTLINED_FUNCTION_65_28();
      sub_1D5614E28();
      sub_1D5611AB8();
      OUTLINED_FUNCTION_29_62();
      sub_1D4E74E24(v26, v27, MEMORY[0x1E6976328]);
      OUTLINED_FUNCTION_61();
      sub_1D5614CB8();
      v28 = v3;
      break;
  }

  sub_1D4ED1490(v28, v15);
LABEL_10:
  OUTLINED_FUNCTION_46();
}

uint64_t Playlist.Entry.InternalItem.hashValue.getter()
{
  sub_1D56162D8();
  Playlist.Entry.InternalItem.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D551EDA0(uint64_t a1)
{
  sub_1D56162D8();
  Playlist.Entry.InternalItem.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D551EDDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Playlist.Entry.InternalItem.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D551EE08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1468](a1, a2, v4);
}

uint64_t sub_1D551EE84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1460](a1, a2, v4);
}

uint64_t sub_1D551EF00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1478](a1, a2, v4);
}

uint64_t sub_1D551EF7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1430](a1, a2, v4);
}

uint64_t sub_1D551EFF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1438](a1, a2, v4);
}

uint64_t sub_1D551F074(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1448](a1, a2, v4);
}

uint64_t sub_1D551F0F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1480](a1, a2, v4);
}

uint64_t sub_1D551F16C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1458](a1, a2, v4);
}

uint64_t sub_1D551F1E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1450](a1, a2, v4);
}

uint64_t sub_1D551F264(uint64_t a1, uint64_t a2)
{
  sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);

  return sub_1D5613028();
}

uint64_t sub_1D551F2E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1428](a1, a2, v4);
}

uint64_t sub_1D551F364(uint64_t a1, uint64_t a2)
{
  sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);

  return sub_1D5612FD8();
}

uint64_t sub_1D551F3E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1470](a1, a2, v4);
}

uint64_t sub_1D551F464(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1420](a1, a2, v4);
}

uint64_t sub_1D551F4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1D4E74E24(&qword_1EDD52B40, type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
  *v9 = v4;
  v9[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF270](a1, a2, a3, a4, v10);
}

uint64_t Playlist.Entry.InternalItem.init(from:)(void *a1)
{
  v2 = sub_1D5615C08();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5616348();
  sub_1D5615BF8();
  sub_1D5615C18();
  swift_allocError();
  v10 = v9;
  (*(v4 + 16))(v9, v8, v2);
  OUTLINED_FUNCTION_24_0();
  (*(v11 + 104))(v10);
  swift_willThrow();
  (*(v4 + 8))(v8, v2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Playlist.Entry.InternalItem.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D5615C38();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D56163A8();
  sub_1D5615BF8();
  sub_1D5615C48();
  swift_allocError();
  v12 = v11;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7D18, &qword_1D566F518) + 48);
  v12[3] = type metadata accessor for Playlist.Entry.InternalItem(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  sub_1D551B62C(v2, boxed_opaque_existential_0);
  (*(v6 + 16))(v12 + v13, v10, v4);
  OUTLINED_FUNCTION_24_0();
  (*(v15 + 104))(v12);
  swift_willThrow();
  return (*(v6 + 8))(v10, v4);
}

void Playlist.Entry.InternalItem.description.getter()
{
  OUTLINED_FUNCTION_47();
  v5 = type metadata accessor for UploadedVideo(0);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v49 = v7;
  v8 = OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for UploadedAudio(v8);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v48 = v11;
  v12 = OUTLINED_FUNCTION_70_0();
  v13 = type metadata accessor for TVEpisode(v12);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_129();
  v15 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v17 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v19 = OUTLINED_FUNCTION_15_3();
  v20 = type metadata accessor for MusicMovie(v19);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  v22 = type metadata accessor for Playlist.Entry.InternalItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_98();
  v24 = OUTLINED_FUNCTION_42_3();
  sub_1D551B62C(v24, v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_33_1();
      v41(v2, v4, v17);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_30_69();
      OUTLINED_FUNCTION_54_39();
      sub_1D4E74E24(v42, v43, MEMORY[0x1E6975508]);
      v44 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v44);

      OUTLINED_FUNCTION_56_2();
      v36 = OUTLINED_FUNCTION_113_0();
      goto LABEL_8;
    case 2u:
      OUTLINED_FUNCTION_33_1();
      v32(v1, v4, v15);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_30_69();
      OUTLINED_FUNCTION_55_36();
      sub_1D4E74E24(v33, v34, MEMORY[0x1E6976C10]);
      v35 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v35);

      OUTLINED_FUNCTION_56_2();
      v36 = OUTLINED_FUNCTION_122_1();
LABEL_8:
      v37(v36);
      goto LABEL_11;
    case 3u:
      OUTLINED_FUNCTION_11_123();
      sub_1D551C50C(v4, v0, v38);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_30_69();
      v39 = TVEpisode.description.getter();
      MEMORY[0x1DA6EAC70](v39);

      OUTLINED_FUNCTION_56_2();
      v28 = v0;
      goto LABEL_6;
    case 4u:
      OUTLINED_FUNCTION_22_76();
      sub_1D551C50C(v4, v48, v29);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_30_69();
      OUTLINED_FUNCTION_81_28(v30);
      v31 = UploadedAudio.description.getter();
      MEMORY[0x1DA6EAC70](v31);

      OUTLINED_FUNCTION_56_2();
      v28 = v48;
      goto LABEL_6;
    case 5u:
      OUTLINED_FUNCTION_21_80();
      sub_1D551C50C(v4, v49, v45);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_30_69();
      OUTLINED_FUNCTION_81_28(v46);
      v47 = UploadedVideo.description.getter();
      MEMORY[0x1DA6EAC70](v47);

      OUTLINED_FUNCTION_56_2();
      v28 = OUTLINED_FUNCTION_61();
      goto LABEL_10;
    default:
      OUTLINED_FUNCTION_12_105();
      sub_1D551C50C(v4, v3, v26);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_30_69();
      v27 = MusicMovie.description.getter();
      MEMORY[0x1DA6EAC70](v27);

      OUTLINED_FUNCTION_56_2();
      v28 = v3;
LABEL_6:
      v40 = v22;
LABEL_10:
      sub_1D4ED1490(v28, v40);
LABEL_11:
      OUTLINED_FUNCTION_42_3();
      OUTLINED_FUNCTION_46();
      return;
  }
}

void Playlist.Entry.InternalItem.debugDescription.getter()
{
  OUTLINED_FUNCTION_47();
  v5 = type metadata accessor for UploadedVideo(0);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v102 = v7;
  v8 = OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for UploadedAudio(v8);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v101 = v11;
  v12 = OUTLINED_FUNCTION_70_0();
  v13 = type metadata accessor for TVEpisode(v12);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_12();
  v100 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v18 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v22 = OUTLINED_FUNCTION_15_3();
  v23 = type metadata accessor for MusicMovie(v22);
  v24 = OUTLINED_FUNCTION_22(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  v25 = type metadata accessor for Playlist.Entry.InternalItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_98();
  v27 = OUTLINED_FUNCTION_42_3();
  sub_1D551B62C(v27, v28);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v20 + 32))(v2, v4, v18);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_45();
      v78 = sub_1D560EDB8();
      v80 = OUTLINED_FUNCTION_7_4(v78, v79);
      OUTLINED_FUNCTION_4_2(v80, v81, v82, v83, v84, v85, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_26_0();
      v86 = OUTLINED_FUNCTION_46_1();
      MEMORY[0x1DA6EAC70](v86);

      OUTLINED_FUNCTION_53();
      (*(v20 + 8))(v2, v18);
      goto LABEL_10;
    case 2u:
      OUTLINED_FUNCTION_33_1();
      v55(v1, v4, v100);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_45();
      v56 = sub_1D56136C8();
      v58 = OUTLINED_FUNCTION_7_4(v56, v57);
      OUTLINED_FUNCTION_4_2(v58, v59, v60, v61, v62, v63, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_26_0();
      v64 = OUTLINED_FUNCTION_46_1();
      MEMORY[0x1DA6EAC70](v64);

      OUTLINED_FUNCTION_53();
      (*(v16 + 8))(v1, v100);
      goto LABEL_10;
    case 3u:
      OUTLINED_FUNCTION_11_123();
      sub_1D551C50C(v4, v0, v65);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_45();
      v66 = TVEpisode.debugDescription.getter();
      v68 = OUTLINED_FUNCTION_7_4(v66, v67);
      v74 = OUTLINED_FUNCTION_4_2(v68, v69, v70, v71, v72, v73, MEMORY[0x1E69E6158]);
      v76 = v75;

      MEMORY[0x1DA6EAC70](v74, v76);

      OUTLINED_FUNCTION_53();
      v41 = v0;
      goto LABEL_6;
    case 4u:
      OUTLINED_FUNCTION_22_76();
      sub_1D551C50C(v4, v101, v42);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_45();
      OUTLINED_FUNCTION_81_28(v43);
      v44 = UploadedAudio.debugDescription.getter();
      v46 = OUTLINED_FUNCTION_7_4(v44, v45);
      v52 = OUTLINED_FUNCTION_4_2(v46, v47, v48, v49, v50, v51, MEMORY[0x1E69E6158]);
      v54 = v53;

      MEMORY[0x1DA6EAC70](v52, v54);

      OUTLINED_FUNCTION_53();
      v41 = v101;
      goto LABEL_6;
    case 5u:
      OUTLINED_FUNCTION_21_80();
      sub_1D551C50C(v4, v102, v87);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_45();
      OUTLINED_FUNCTION_81_28(v88);
      v89 = UploadedVideo.debugDescription.getter();
      v91 = OUTLINED_FUNCTION_7_4(v89, v90);
      v97 = OUTLINED_FUNCTION_4_2(v91, v92, v93, v94, v95, v96, MEMORY[0x1E69E6158]);
      v99 = v98;

      MEMORY[0x1DA6EAC70](v97, v99);

      OUTLINED_FUNCTION_53();
      v41 = v102;
      v77 = v16;
      goto LABEL_9;
    default:
      OUTLINED_FUNCTION_12_105();
      sub_1D551C50C(v4, v3, v29);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_45();
      v30 = MusicMovie.debugDescription.getter();
      v32 = OUTLINED_FUNCTION_7_4(v30, v31);
      v38 = OUTLINED_FUNCTION_4_2(v32, v33, v34, v35, v36, v37, MEMORY[0x1E69E6158]);
      v40 = v39;

      MEMORY[0x1DA6EAC70](v38, v40);

      OUTLINED_FUNCTION_53();
      v41 = v3;
LABEL_6:
      v77 = v25;
LABEL_9:
      sub_1D4ED1490(v41, v77);
LABEL_10:
      OUTLINED_FUNCTION_42_3();
      OUTLINED_FUNCTION_46();
      return;
  }
}

uint64_t sub_1D552044C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6974FD8], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FC8], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD0], v0);
  qword_1EC7F7CC8 = v4;
  return result;
}

uint64_t sub_1D55205A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5621D90;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6975208], v0);
  result = (v6)(v5 + v2, *MEMORY[0x1E6975218], v0);
  qword_1EC7F7CD0 = v4;
  return result;
}

uint64_t sub_1D55206E8()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F7CD8);
  __swift_project_value_buffer(v0, qword_1EC7F7CD8);
  type metadata accessor for Playlist.Entry.InternalItem(0);
  sub_1D4E74E24(&qword_1EDD52B40, type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
  return sub_1D560D978();
}

uint64_t sub_1D55207C0()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F7CF0);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EC7E9738 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EC7F7CD8);
  OUTLINED_FUNCTION_24_0();
  v5 = *(v4 + 16);

  return v5(v3);
}

uint64_t sub_1D55208A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE38, &unk_1D5620430);
  v0 = sub_1D560D9A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D562D010;
  v5 = v4 + v3;
  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EDD53D50);
  v7 = *(v1 + 16);
  v7(v5, v6, v0);
  sub_1D560D878();
  sub_1D560D8E8();
  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EDD53C40);
  v7(v5 + 3 * v2, v8, v0);
  if (qword_1EC7E8F18 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1EC7F08A0);
  v7(v5 + 4 * v2, v9, v0);
  if (qword_1EDD53CE8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_1EDD53CF0);
  result = (v7)(v5 + 5 * v2, v10, v0);
  qword_1EC7F7D08 = v4;
  return result;
}

uint64_t sub_1D5520B24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7D10, &qword_1D566F510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5520BD4(uint64_t a1)
{
  result = sub_1D4E74E24(&qword_1EDD52B40, type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_58()
{

  return sub_1D4ED1490(v0, type metadata accessor for Playlist.Entry.InternalItem);
}

uint64_t OUTLINED_FUNCTION_46_42()
{
  __swift_project_boxed_opaque_existential_1((v0 - 128), *(v0 - 104));

  return sub_1D5610CD8();
}

uint64_t OUTLINED_FUNCTION_70_28()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_71_26(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = *(v4 - 168);

  return sub_1D551C50C(v3, v6, a3);
}

uint64_t OUTLINED_FUNCTION_72_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D560EC28();
}

uint64_t AudioAnalysis.debugDescription.getter()
{
  strcpy(v9, "AudioAnalysis(");
  HIBYTE(v9[1]) = -18;
  v0 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v0);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x22203A646920200ALL, 0xE800000000000000);

  if (qword_1EC7E9758 != -1)
  {
    OUTLINED_FUNCTION_26_78(&qword_1EC7E9758);
  }

  v1 = qword_1EC87C6F8;
  OUTLINED_FUNCTION_1_197();
  sub_1D552808C(v2);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v3);
  OUTLINED_FUNCTION_11_34(v1, &type metadata for AudioAnalysis.EventTimes);
  OUTLINED_FUNCTION_57_3();
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D5690550);
  sub_1D5615D48();
  sub_1D4F50E20(0x22203A646920200ALL);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x22203A646920200ALL, 0xE800000000000000);

  if (qword_1EC7E9760 != -1)
  {
    OUTLINED_FUNCTION_25_68(&qword_1EC7E9760);
  }

  OUTLINED_FUNCTION_11_34(qword_1EC87C700, &type metadata for AudioAnalysis.BeatsPerMinute);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_57_3();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000014, 0x80000001D5690530);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0x22203A646920200ALL, 0xE800000000000000);
  }

  if (qword_1EC7E9770 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC87C710;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC1A0, &qword_1D561FEF0);
  OUTLINED_FUNCTION_11_34(v4, v5);
  if ((v7 & 1) == 0)
  {
    MEMORY[0x1DA6EAC70](0x72656E6520200A2CLL, 0xEC000000203A7967);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0, 0xE000000000000000);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v9[0];
}

uint64_t AudioAnalysis.init(propertyProvider:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_201();
  sub_1D5610CD8();
  v10 = sub_1D560D708();
  v12 = v11;
  (*(v6 + 8))(v9, v4);
  *a2 = v10;
  a2[1] = v12;
  v13 = OUTLINED_FUNCTION_71();
  __swift_project_boxed_opaque_existential_1(v13, v14);
  type metadata accessor for AudioAnalysis(0);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AudioAnalysis.loudness.getter()
{
  if (qword_1EC7E9778 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC1C8, &qword_1D561FEF8);
  OUTLINED_FUNCTION_3_198();
  sub_1D552808C(v0);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v1);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t AudioAnalysis.eventTimes.getter()
{
  if (qword_1EC7E9758 != -1)
  {
    OUTLINED_FUNCTION_26_78(&qword_1EC7E9758);
  }

  OUTLINED_FUNCTION_1_197();
  sub_1D552808C(v0);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v1);
  OUTLINED_FUNCTION_57_0();

  return sub_1D560EC28();
}

uint64_t AudioAnalysis.tonality.getter()
{
  if (qword_1EC7E9788 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC1D8, &qword_1D561FF00);
  OUTLINED_FUNCTION_3_198();
  sub_1D552808C(v0);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v1);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t AudioAnalysis.beatsPerMinute.getter()
{
  if (qword_1EC7E9760 != -1)
  {
    OUTLINED_FUNCTION_25_68(&qword_1EC7E9760);
  }

  OUTLINED_FUNCTION_1_197();
  sub_1D552808C(v0);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v1);
  OUTLINED_FUNCTION_57_0();

  return sub_1D560EC28();
}

uint64_t sub_1D55216A0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC1A0, &qword_1D561FEF0);
  OUTLINED_FUNCTION_3_198();
  sub_1D552808C(v3);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v4);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t AudioAnalysis.fades.getter()
{
  if (qword_1EC7E9798 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_197();
  sub_1D552808C(v0);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v1);
  OUTLINED_FUNCTION_57_0();

  return sub_1D560EC28();
}

uint64_t AudioAnalysis.loudnessCurve.getter()
{
  if (qword_1EC7E97A0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_197();
  sub_1D552808C(v0);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v1);
  OUTLINED_FUNCTION_57_0();

  return sub_1D560EC28();
}

uint64_t AudioAnalysis.phrases.getter()
{
  if (qword_1EC7E97B0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC1F0, &qword_1D561FF08);
  OUTLINED_FUNCTION_1_197();
  sub_1D552808C(v0);
  OUTLINED_FUNCTION_0_262();
  v2 = sub_1D552808C(v1);
  OUTLINED_FUNCTION_36_1(v2);
  if (v4)
  {
    return v4;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t AudioAnalysis.vocalActivities.getter()
{
  if (qword_1EC7E97A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC200, &qword_1D561FF10);
  OUTLINED_FUNCTION_1_197();
  sub_1D552808C(v0);
  OUTLINED_FUNCTION_0_262();
  v2 = sub_1D552808C(v1);
  OUTLINED_FUNCTION_36_1(v2);
  if (v4)
  {
    return v4;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t AudioAnalysis.propertyProvider.getter()
{
  type metadata accessor for AudioAnalysis(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_14();
  v0 = OUTLINED_FUNCTION_42_51();

  return v1(v0);
}

uint64_t static AudioAnalysis.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AudioAnalysis(0);

  return sub_1D5611A78();
}

uint64_t AudioAnalysis.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for AudioAnalysis(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_18_93();
  sub_1D552808C(v1);
  return sub_1D5614CB8();
}

uint64_t AudioAnalysis.hashValue.getter()
{
  OUTLINED_FUNCTION_164();
  sub_1D5614E28();
  type metadata accessor for AudioAnalysis(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_18_93();
  sub_1D552808C(v0);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5521D48(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5611AB8();
  sub_1D552808C(&qword_1EC7ECF08);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5521DEC@<X0>(uint64_t *a1@<X8>)
{
  result = AudioAnalysis.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AudioAnalysis.subscript.getter(uint64_t a1)
{
  return sub_1D5521E54();
}

{
  return sub_1D5521E54();
}

uint64_t sub_1D5521E54()
{
  OUTLINED_FUNCTION_17_92();
  sub_1D552808C(v0);
  OUTLINED_FUNCTION_20_96(&qword_1EC7F26A0);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v1);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t AudioAnalysis.subscript.getter(void *a1)
{
  sub_1D560DAB8();
  OUTLINED_FUNCTION_17_92();
  sub_1D552808C(v1);
  OUTLINED_FUNCTION_20_96(&qword_1EC7F26A0);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v2);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D5522044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1D552808C(&qword_1EC7F26A0);
  v11 = sub_1D552808C(&qword_1EC7F2670);
  *v9 = v4;
  v9[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v10, a4, v11);
}

uint64_t sub_1D5522178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D552808C(&qword_1EC7F26A0);
  v13 = sub_1D552808C(&qword_1EC7F2670);
  *v11 = v5;
  v11[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D55222BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D552808C(&qword_1EC7F26A0);
  v13 = sub_1D552808C(&qword_1EC7F2670);
  *v11 = v5;
  v11[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D552242C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
  swift_getKeyPath();
  sub_1D55282E8();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C6F8 = v0;
  return result;
}

uint64_t type metadata accessor for AudioAnalysis(uint64_t a1)
{
  result = qword_1EDD57AA8;
  if (!qword_1EDD57AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1D55224E8@<D0>(_OWORD *a1@<X8>)
{
  AudioAnalysis.eventTimes.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1D5522524()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
  swift_getKeyPath();
  sub_1D5528294();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C700 = v0;
  return result;
}

uint64_t sub_1D55225BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
  swift_getKeyPath();
  sub_1D5528244(&unk_1EC7F8018);
  v6 = sub_1D560D188();

  *a5 = v6;
  return result;
}

uint64_t sub_1D5522684()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
  swift_getKeyPath();
  sub_1D5528244(&unk_1EC7F8030);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C718 = v0;
  return result;
}

uint64_t sub_1D5522740()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
  swift_getKeyPath();
  sub_1D5528244(&unk_1EC7F8028);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C728 = v0;
  return result;
}

uint64_t sub_1D55227C4@<X0>(uint64_t a1@<X8>)
{
  result = AudioAnalysis.tonality.getter();
  *(a1 + 4) = v4;
  *a1 = v3;
  return result;
}

double sub_1D5522830@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(v7);
  v3 = v8;
  v4 = v9;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v3;
  *(a2 + 33) = v4;
  return result;
}

uint64_t sub_1D5522880()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D55281F0();
  v0 = sub_1D560D138();

  qword_1EC7F7D38 = v0;
  return result;
}

double sub_1D5522930@<D0>(uint64_t a1@<X8>)
{
  AudioAnalysis.fades.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1D5522998()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D552819C();
  v0 = sub_1D560D138();

  qword_1EC7F7D40 = v0;
  return result;
}

double sub_1D5522A58@<D0>(uint64_t a1@<X8>)
{
  AudioAnalysis.loudnessCurve.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1D5522AC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
  swift_getKeyPath();
  sub_1D5528124(&unk_1EC7F7FF8);
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C738 = v0;
  return result;
}

uint64_t sub_1D5522B6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D5528124(&unk_1EC7F8008);
  v0 = sub_1D560D128();

  qword_1EC7F7D48 = v0;
  return result;
}

uint64_t static AudioAnalysis.catalogFilterID(for:)(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D56159B8();
  v1 = sub_1D5614D18();

  if (v1)
  {
    return sub_1D5610A08();
  }

  OUTLINED_FUNCTION_57_3();
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000021, 0x80000001D567F020);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D5522DBC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t AudioAnalysis.init(from:)(void *a1)
{
  type metadata accessor for AudioAnalysis(0);
  sub_1D4E628D4(a1, v5);
  OUTLINED_FUNCTION_4_153();
  sub_1D552808C(v2);
  OUTLINED_FUNCTION_16_97();
  sub_1D552808C(v3);
  OUTLINED_FUNCTION_21_81(&unk_1EC7F7D90);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AudioAnalysis.encode(to:)()
{
  type metadata accessor for AudioAnalysis(0);
  OUTLINED_FUNCTION_4_153();
  sub_1D552808C(v0);
  OUTLINED_FUNCTION_16_97();
  sub_1D552808C(v1);
  OUTLINED_FUNCTION_21_81(&unk_1EC7F7D90);
  OUTLINED_FUNCTION_39_52();
  return sub_1D5612688();
}

unint64_t AudioAnalysis.description.getter()
{
  sub_1D5615B68();

  v0 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v0);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return 0xD000000000000013;
}

uint64_t sub_1D5523088()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6974FD8], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FC8], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD0], v0);
  qword_1EC7F7D50 = v4;
  return result;
}

double static AudioAnalysis.preferredIdentifierKinds.getter()
{
  if (qword_1EC7E97B8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1D5523224()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F7D58);
  __swift_project_value_buffer(v0, qword_1EC7F7D58);
  type metadata accessor for AudioAnalysis(0);
  sub_1D552808C(&qword_1EC7F26A0);
  return sub_1D560D988();
}

uint64_t sub_1D55232E4()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F7D70);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EC7E97C0 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EC7F7D58);
  v5 = *(*(v0 - 8) + 16);

  return v5(v3, v4, v0);
}

uint64_t AudioAnalysis.CompositeAttribute.beginning.getter(uint64_t a1)
{
  sub_1D56158D8();
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_42_51();

  return v2(v1);
}

uint64_t AudioAnalysis.CompositeAttribute.ending.getter(uint64_t a1)
{
  sub_1D56158D8();
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_42_51();

  return v2(v1);
}

BOOL static AudioAnalysis.CompositeAttribute.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a4;
  v60 = a5;
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_37_51(v11, v49);
  v12 = sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v54 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v49 - v18);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_4();
  v58 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13();
  v57 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v49 - v25;
  v55 = *(a6 + 8);
  if ((sub_1D5614D18() & 1) == 0)
  {
    return 0;
  }

  v53 = v10;
  v61[0] = a3;
  v61[1] = v59;
  v61[2] = v60;
  v61[3] = a6;
  v52 = type metadata accessor for AudioAnalysis.CompositeAttribute(0, v61);
  v27 = *(v52 + 52);
  v28 = *(TupleTypeMetadata2 + 48);
  v59 = a1;
  v60 = v14;
  v29 = a1 + v27;
  v30 = *(v14 + 16);
  v30(v26, v29, v12);
  v30(&v26[v28], a2 + v27, v12);
  OUTLINED_FUNCTION_10(v26);
  if (v32)
  {
    OUTLINED_FUNCTION_10(&v26[v28]);
    if (v32)
    {
      v51 = TupleTypeMetadata2;
      v31 = OUTLINED_FUNCTION_46_43();
      v19(v31);
      goto LABEL_12;
    }

LABEL_10:
    (*(v58 + 8))(v26, TupleTypeMetadata2);
    return 0;
  }

  v30(v19, v26, v12);
  OUTLINED_FUNCTION_10(&v26[v28]);
  if (v32)
  {
    (*(v53 + 8))(v19, a3);
    goto LABEL_10;
  }

  v51 = TupleTypeMetadata2;
  v33 = v53;
  v34 = v56;
  (*(v53 + 32))(v56, &v26[v28], a3);
  v50 = sub_1D5614D18();
  v35 = *(v33 + 8);
  v35(v34, a3);
  v35(v19, a3);
  v36 = OUTLINED_FUNCTION_46_43();
  v19(v36);
  if ((v50 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v37 = *(v52 + 56);
  v38 = *(v51 + 48);
  v39 = v57;
  v30(v57, v59 + v37, v12);
  v40 = a2 + v37;
  v41 = v39;
  v30((v39 + v38), v40, v12);
  OUTLINED_FUNCTION_10(v39);
  if (v32)
  {
    OUTLINED_FUNCTION_10(v39 + v38);
    if (v32)
    {
      (v19)(v39, v12);
      return 1;
    }

    goto LABEL_20;
  }

  v42 = v54;
  v30(v54, v41, v12);
  OUTLINED_FUNCTION_10(v41 + v38);
  if (v43)
  {
    (*(v53 + 8))(v42, a3);
LABEL_20:
    (*(v58 + 8))(v41, v51);
    return 0;
  }

  v45 = v53;
  v46 = v56;
  (*(v53 + 32))(v56, v41 + v38, a3);
  v47 = sub_1D5614D18();
  v48 = *(v45 + 8);
  v48(v46, a3);
  v48(v42, a3);
  (v19)(v41, v12);
  return (v47 & 1) != 0;
}

uint64_t sub_1D55239BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852399981 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E696E6E69676562 && a2 == 0xE900000000000067;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x676E69646E65 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1D5523AD0(char a1)
{
  if (!a1)
  {
    return 1852399981;
  }

  if (a1 == 1)
  {
    return 0x6E696E6E69676562;
  }

  return 0x676E69646E65;
}

uint64_t sub_1D5523B58(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D4EA72BC(v3, *v1);
  return sub_1D5616328();
}

uint64_t sub_1D5523BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D55239BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5523C10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4F6A7E0();
  *a1 = result;
  return result;
}

uint64_t sub_1D5523C44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D5523C98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void AudioAnalysis.CompositeAttribute.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = *(v3 + 16);
  v12 = *(v3 + 32);
  v13 = v4;
  v11[1] = v3;
  v14[0] = v4;
  v14[1] = v12;
  type metadata accessor for AudioAnalysis.CompositeAttribute.CodingKeys(255, v14);
  OUTLINED_FUNCTION_15_95();
  swift_getWitnessTable();
  v5 = sub_1D56160D8();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v11 - v9;
  OUTLINED_FUNCTION_23_23(v2, v2[3]);
  sub_1D56163D8();
  LOBYTE(v14[0]) = 0;
  OUTLINED_FUNCTION_63_3();
  sub_1D56160C8();
  if (!v0)
  {
    LOBYTE(v14[0]) = 1;
    OUTLINED_FUNCTION_63_3();
    sub_1D5616068();
    LOBYTE(v14[0]) = 2;
    OUTLINED_FUNCTION_63_3();
    sub_1D5616068();
  }

  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_26();
}

uint64_t AudioAnalysis.CompositeAttribute.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_1D5614CB8();
  sub_1D56158D8();
  OUTLINED_FUNCTION_39_52();
  sub_1D56158F8();
  OUTLINED_FUNCTION_39_52();
  return sub_1D56158F8();
}

uint64_t AudioAnalysis.CompositeAttribute.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_164();
  AudioAnalysis.CompositeAttribute.hash(into:)(v3, a1);
  return sub_1D5616328();
}

void AudioAnalysis.CompositeAttribute.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v42 = v11;
  sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v44 = v12;
  v45 = v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v43 = v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v48 = &v40 - v17;
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_37_51(v18, v40);
  v54 = v8;
  v55 = v6;
  v56 = v4;
  v57 = v2;
  type metadata accessor for AudioAnalysis.CompositeAttribute.CodingKeys(255, &v54);
  OUTLINED_FUNCTION_15_95();
  swift_getWitnessTable();
  v52 = sub_1D5616008();
  OUTLINED_FUNCTION_4();
  v47 = v19;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  v50 = v8;
  v53 = v6;
  v54 = v8;
  v55 = v6;
  v56 = v4;
  v57 = v2;
  v23 = type metadata accessor for AudioAnalysis.CompositeAttribute(0, &v54);
  OUTLINED_FUNCTION_4();
  v41 = v24;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v40 - v26;
  OUTLINED_FUNCTION_23_23(v10, v10[3]);
  v51 = v22;
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v29 = v47;
    v28 = v48;
    v40 = v27;
    v58 = v10;
    LOBYTE(v54) = 0;
    v31 = v49;
    v30 = v50;
    sub_1D5615FD8();
    (*(v46 + 32))(v40, v31, v30);
    LOBYTE(v54) = 1;
    sub_1D5615F78();
    v32 = v23;
    v33 = *(v23 + 52);
    v34 = v40;
    v35 = v28;
    v36 = v44;
    v49 = *(v45 + 32);
    v49(&v40[v33], v35, v44);
    LOBYTE(v54) = 2;
    v37 = v51;
    sub_1D5615F78();
    (*(v29 + 8))(v37, v52);
    v49(v34 + *(v32 + 56), v43, v36);
    v38 = v32;
    v39 = v41;
    (*(v41 + 16))(v42, v34, v38);
    __swift_destroy_boxed_opaque_existential_1(v58);
    (*(v39 + 8))(v34, v38);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D552447C(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  AudioAnalysis.CompositeAttribute.hash(into:)(v4, a2);
  return sub_1D5616328();
}

uint64_t static AudioAnalysis.BeatsPerMinute.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return OUTLINED_FUNCTION_29_4();
  }

  v2 = *(a2 + 16);
  v3 = *(a2 + 48);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return OUTLINED_FUNCTION_29_4();
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return OUTLINED_FUNCTION_29_4();
    }
  }

  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return OUTLINED_FUNCTION_29_4();
    }
  }

  else
  {
    if (*(a1 + 24) == *(a2 + 24))
    {
      v4 = *(a2 + 32);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return OUTLINED_FUNCTION_29_4();
    }
  }

  if (*(a1 + 48))
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      return OUTLINED_FUNCTION_29_4();
    }
  }

  else
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      v3 = 1;
    }

    if (v3)
    {
      return OUTLINED_FUNCTION_29_4();
    }
  }

  return 1;
}

uint64_t sub_1D552457C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852399981 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E696E6E69676562 && a2 == 0xE900000000000067;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E69646E65 && a2 == 0xE600000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x80000001D56905A0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1D55246E0(char a1)
{
  result = 1852399981;
  switch(a1)
  {
    case 1:
      result = 0x6E696E6E69676562;
      break;
    case 2:
      result = 0x676E69646E65;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5524780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D552457C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D55247A8(uint64_t a1)
{
  v2 = sub_1D5526C7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D55247E4(uint64_t a1)
{
  v2 = sub_1D5526C7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AudioAnalysis.BeatsPerMinute.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7D98, &qword_1D566F950);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_23(v2, v2[3]);
  sub_1D5526C7C();
  sub_1D56163D8();
  OUTLINED_FUNCTION_22_14();
  sub_1D56160B8();
  if (!v0)
  {
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_22_14();
    sub_1D5616058();
    OUTLINED_FUNCTION_22_14();
    sub_1D5616058();
    OUTLINED_FUNCTION_22_14();
    sub_1D5616048();
  }

  v4 = OUTLINED_FUNCTION_134_0();
  v5(v4);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_26();
}

uint64_t AudioAnalysis.BeatsPerMinute.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  MEMORY[0x1DA6EC0D0](*v0);
  if (v2 == 1)
  {
    sub_1D56162F8();
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_9:
    sub_1D56162F8();
    if (!v6)
    {
      goto LABEL_4;
    }

    return sub_1D56162F8();
  }

  sub_1D56162F8();
  MEMORY[0x1DA6EC0D0](v1);
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_1D56162F8();
  MEMORY[0x1DA6EC0D0](v3);
  if (v6)
  {
    return sub_1D56162F8();
  }

LABEL_4:
  sub_1D56162F8();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return MEMORY[0x1DA6EC100](v7);
}

uint64_t AudioAnalysis.BeatsPerMinute.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = *(v0 + 48);
  OUTLINED_FUNCTION_164();
  MEMORY[0x1DA6EC0D0](v2);
  sub_1D56162F8();
  if (v3 != 1)
  {
    MEMORY[0x1DA6EC0D0](v1);
  }

  sub_1D56162F8();
  if (!v5)
  {
    MEMORY[0x1DA6EC0D0](v4);
  }

  if (v7)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1DA6EC100](v8);
  }

  return sub_1D5616328();
}

void AudioAnalysis.BeatsPerMinute.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7DA8, &qword_1D566F958);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  OUTLINED_FUNCTION_13_4();
  v9 = sub_1D5526C7C();
  OUTLINED_FUNCTION_19_24(&type metadata for AudioAnalysis.BeatsPerMinute.CodingKeys, v10, v9);
  if (!v0)
  {
    OUTLINED_FUNCTION_10_90();
    v11 = sub_1D5615FC8();
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_10_90();
    v12 = sub_1D5615F68();
    v22 = v13;
    OUTLINED_FUNCTION_10_90();
    v14 = sub_1D5615F68();
    HIDWORD(v20) = v15;
    v21 = v14;
    OUTLINED_FUNCTION_10_90();
    v16 = sub_1D5615F58();
    v17 = v8;
    v19 = v18;
    (*(v5 + 8))(v17, v3);
    *v2 = v11;
    *(v2 + 8) = v12;
    *(v2 + 16) = v22 & 1;
    *(v2 + 24) = v21;
    *(v2 + 32) = BYTE4(v20) & 1;
    *(v2 + 40) = v16;
    *(v2 + 48) = v19 & 1;
  }

  OUTLINED_FUNCTION_47_48();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5524D88(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = *(v1 + 32);
  v7 = v1[5];
  v8 = *(v1 + 48);
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v3);
  sub_1D56162F8();
  if (v4 != 1)
  {
    MEMORY[0x1DA6EC0D0](v2);
  }

  sub_1D56162F8();
  if (!v6)
  {
    MEMORY[0x1DA6EC0D0](v5);
  }

  if (v8)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1DA6EC100](v9);
  }

  return sub_1D5616328();
}

uint64_t static AudioAnalysis.Statistics.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return a1[2] == a2[2];
  }

  else
  {
    return OUTLINED_FUNCTION_29_4();
  }
}

uint64_t sub_1D5524EBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1801545072 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1D5524FCC(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x65676E6172;
  }

  return 1801545072;
}

uint64_t sub_1D5525014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D5525068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5524EBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5525090(uint64_t a1)
{
  v2 = sub_1D5526CD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D55250CC(uint64_t a1)
{
  v2 = sub_1D5526CD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudioAnalysis.Statistics.encode(to:)()
{
  OUTLINED_FUNCTION_54_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7DB0, &qword_1D566F960);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_23_23(v2, v3);
  v4 = sub_1D5526CD0();
  OUTLINED_FUNCTION_15_35(&type metadata for AudioAnalysis.Statistics.CodingKeys, v5, v4);
  OUTLINED_FUNCTION_22_14();
  sub_1D56160A8();
  if (!v0)
  {
    OUTLINED_FUNCTION_22_14();
    sub_1D56160A8();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160A8();
  }

  v6 = OUTLINED_FUNCTION_134_0();
  return v7(v6);
}

uint64_t AudioAnalysis.Statistics.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1DA6EC100](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x1DA6EC100](*&v5);
}

uint64_t AudioAnalysis.Statistics.hashValue.getter()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_40_55();
  OUTLINED_FUNCTION_40_55();
  OUTLINED_FUNCTION_40_55();
  return sub_1D5616328();
}

uint64_t AudioAnalysis.Statistics.init(from:)()
{
  OUTLINED_FUNCTION_26_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7DC0, &qword_1D566F968);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_4();
  v3 = sub_1D5526CD0();
  OUTLINED_FUNCTION_19_24(&type metadata for AudioAnalysis.Statistics.CodingKeys, v4, v3);
  if (!v0)
  {
    OUTLINED_FUNCTION_6_33();
    sub_1D5615FB8();
    v6 = v5;
    OUTLINED_FUNCTION_6_33();
    sub_1D5615FB8();
    v9 = v8;
    OUTLINED_FUNCTION_6_33();
    sub_1D5615FB8();
    v11 = v10;
    v12 = OUTLINED_FUNCTION_3_32();
    v13(v12);
    *v1 = v6;
    v1[1] = v9;
    v1[2] = v11;
  }

  return OUTLINED_FUNCTION_47_48();
}

uint64_t sub_1D55254F0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1D56162D8();
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1DA6EC100](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1DA6EC100](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x1DA6EC100](*&v7);
  return sub_1D5616328();
}

uint64_t static AudioAnalysis.EventTimes.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1D4EFA0D0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_71();

  return sub_1D4EFA0D0(v2, v3);
}

uint64_t sub_1D55255E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7563634F74616562 && a2 == 0xEE007365636E6572;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x727563634F726162 && a2 == 0xED00007365636E65)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D55256BC(char a1)
{
  if (a1)
  {
    return 0x727563634F726162;
  }

  else
  {
    return 0x7563634F74616562;
  }
}

uint64_t sub_1D552572C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D55255E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5525754(uint64_t a1)
{
  v2 = sub_1D5526D24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5525790(uint64_t a1)
{
  v2 = sub_1D5526D24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AudioAnalysis.EventTimes.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7DC8, &unk_1D566F970);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_23(v1, v1[3]);
  v3 = sub_1D5526D24();

  OUTLINED_FUNCTION_63_3();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6E0, &qword_1D5625870);
  OUTLINED_FUNCTION_28_70(&unk_1EC7ED6E8);
  OUTLINED_FUNCTION_22_14();
  sub_1D56160C8();

  if (!v3)
  {
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
  }

  v4 = OUTLINED_FUNCTION_134_0();
  v5(v4);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_26();
}

void AudioAnalysis.EventTimes.hash(into:)()
{
  sub_1D4F07ACC();
  OUTLINED_FUNCTION_71();

  sub_1D4F07ACC();
}

uint64_t AudioAnalysis.EventTimes.hashValue.getter()
{
  OUTLINED_FUNCTION_164();
  sub_1D4F07ACC();
  sub_1D4F07ACC();
  return sub_1D5616328();
}

void AudioAnalysis.EventTimes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7DD8, &qword_1D566F980);
  OUTLINED_FUNCTION_4();
  v17 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v22 - v19;
  OUTLINED_FUNCTION_13_4();
  sub_1D5526D24();
  OUTLINED_FUNCTION_63_3();
  sub_1D5616398();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v22 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6E0, &qword_1D5625870);
    v23 = 0;
    OUTLINED_FUNCTION_27_74(&unk_1EC7ED6F8, MEMORY[0x1E69E63E8]);
    OUTLINED_FUNCTION_32_63();
    v23 = 1;
    OUTLINED_FUNCTION_32_63();
    (*(v17 + 8))(v20, v15);
    v21 = v22;
    *v22 = a10;
    v21[1] = a10;

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5525BDC(uint64_t a1)
{
  sub_1D56162D8();
  AudioAnalysis.EventTimes.hash(into:)();
  return sub_1D5616328();
}

__n128 AudioAnalysis.Fades.fadeIn.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 AudioAnalysis.Fades.fadeOut.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t static AudioAnalysis.Fades.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return OUTLINED_FUNCTION_29_4();
  }

  if (a1[3] == a2[3])
  {
    return a1[2] == a2[2];
  }

  return 0;
}

uint64_t static AudioAnalysis.TimeRange.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] == a2[1];
  }

  else
  {
    return OUTLINED_FUNCTION_29_4();
  }
}

uint64_t sub_1D5525C98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E4965646166 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74754F65646166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D5525D5C(char a1)
{
  if (a1)
  {
    return 0x74754F65646166;
  }

  else
  {
    return 0x6E4965646166;
  }
}

uint64_t sub_1D5525D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5525C98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5525DC0(uint64_t a1)
{
  v2 = sub_1D5526D78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5525DFC(uint64_t a1)
{
  v2 = sub_1D5526D78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudioAnalysis.Fades.encode(to:)()
{
  OUTLINED_FUNCTION_54_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7DE0, &qword_1D566F988);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_23_23(v2, v3);
  v4 = sub_1D5526D78();
  OUTLINED_FUNCTION_15_35(&type metadata for AudioAnalysis.Fades.CodingKeys, v5, v4);
  sub_1D5526DCC();
  OUTLINED_FUNCTION_22_14();
  sub_1D56160C8();
  if (!v0)
  {
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
  }

  v6 = OUTLINED_FUNCTION_134_0();
  return v7(v6);
}

uint64_t AudioAnalysis.Fades.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1DA6EC100](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1DA6EC100](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x1DA6EC100](*&v7);
}

uint64_t AudioAnalysis.Fades.hashValue.getter()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_40_55();
  OUTLINED_FUNCTION_40_55();
  OUTLINED_FUNCTION_40_55();
  OUTLINED_FUNCTION_40_55();
  return sub_1D5616328();
}

uint64_t AudioAnalysis.Fades.init(from:)()
{
  OUTLINED_FUNCTION_26_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7DF8, &qword_1D566F990);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_4();
  v3 = sub_1D5526D78();
  OUTLINED_FUNCTION_19_24(&type metadata for AudioAnalysis.Fades.CodingKeys, v4, v3);
  if (!v0)
  {
    sub_1D5526E20();
    OUTLINED_FUNCTION_10_90();
    sub_1D5615FD8();
    OUTLINED_FUNCTION_10_90();
    sub_1D5615FD8();
    v5 = OUTLINED_FUNCTION_3_32();
    v6(v5);
    *v1 = v8;
    v1[1] = v8;
  }

  return OUTLINED_FUNCTION_47_48();
}

uint64_t sub_1D552625C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_1D56162D8();
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x1DA6EC100](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x1DA6EC100](*&v7);
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x1DA6EC100](*&v8);
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  MEMORY[0x1DA6EC100](*&v9);
  return sub_1D5616328();
}

uint64_t sub_1D5526314(uint64_t a1)
{
  v2 = sub_1D5526E74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5526350(uint64_t a1)
{
  v2 = sub_1D5526E74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AudioAnalysis.TimeRange.encode(to:)()
{
  OUTLINED_FUNCTION_54_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7E08, &qword_1D566F998);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_23_23(v2, v3);
  v4 = sub_1D5526E74();
  OUTLINED_FUNCTION_15_35(&type metadata for AudioAnalysis.TimeRange.CodingKeys, v5, v4);
  OUTLINED_FUNCTION_22_14();
  sub_1D56160A8();
  if (!v0)
  {
    OUTLINED_FUNCTION_22_14();
    sub_1D56160A8();
  }

  v6 = OUTLINED_FUNCTION_134_0();
  v7(v6);
  OUTLINED_FUNCTION_64_3();
}

uint64_t AudioAnalysis.TimeRange.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1DA6EC100](*&v3);
}

uint64_t AudioAnalysis.TimeRange.hashValue.getter()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_40_55();
  OUTLINED_FUNCTION_40_55();
  return sub_1D5616328();
}

uint64_t AudioAnalysis.TimeRange.init(from:)()
{
  OUTLINED_FUNCTION_26_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7E18, &qword_1D566F9A0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_4();
  v3 = sub_1D5526E74();
  OUTLINED_FUNCTION_19_24(&type metadata for AudioAnalysis.TimeRange.CodingKeys, v4, v3);
  if (!v0)
  {
    OUTLINED_FUNCTION_6_33();
    sub_1D5615FB8();
    v6 = v5;
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_6_33();
    sub_1D5615FB8();
    v8 = v7;
    v9 = OUTLINED_FUNCTION_3_32();
    v10(v9);
    *v1 = v6;
    v1[1] = v8;
  }

  return OUTLINED_FUNCTION_47_48();
}

uint64_t static AudioAnalysis.LoudnessCurve.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (!v6)
    {
      return OUTLINED_FUNCTION_29_4();
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return OUTLINED_FUNCTION_29_4();
    }
  }

  return sub_1D4EFA0D0(v5, v7);
}

uint64_t sub_1D5526734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D5526780(uint64_t a1)
{
  v2 = sub_1D5526EC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D55267BC(uint64_t a1)
{
  v2 = sub_1D5526EC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AudioAnalysis.LoudnessCurve.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_54_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7E20, &qword_1D566F9A8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_23(v1, v1[3]);
  sub_1D5526EC8();
  sub_1D56163D8();
  OUTLINED_FUNCTION_22_14();
  sub_1D5616048();
  if (!v0)
  {
    OUTLINED_FUNCTION_7_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6E0, &qword_1D5625870);
    OUTLINED_FUNCTION_28_70(&unk_1EC7ED6E8);
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
  }

  v3 = OUTLINED_FUNCTION_134_0();
  v4(v3);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_26();
}

void AudioAnalysis.LoudnessCurve.hash(into:)()
{
  if (*(v0 + 8) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v1 = *v0;
    sub_1D56162F8();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x1DA6EC100](v2);
  }

  sub_1D4F07ACC();
}

uint64_t AudioAnalysis.LoudnessCurve.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  OUTLINED_FUNCTION_164();
  if (v2 == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1DA6EC100](v3);
  }

  sub_1D4F07ACC();
  return sub_1D5616328();
}

void AudioAnalysis.LoudnessCurve.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7E30, &qword_1D566F9B0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_4();
  v3 = sub_1D5526EC8();
  OUTLINED_FUNCTION_19_24(&type metadata for AudioAnalysis.LoudnessCurve.CodingKeys, v4, v3);
  if (!v0)
  {
    OUTLINED_FUNCTION_6_33();
    v5 = sub_1D5615F58();
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6E0, &qword_1D5625870);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_27_74(&unk_1EC7ED6F8, MEMORY[0x1E69E63E8]);
    OUTLINED_FUNCTION_10_90();
    sub_1D5615FD8();
    v8 = OUTLINED_FUNCTION_3_32();
    v9(v8);
    *v1 = v5;
    *(v1 + 8) = v7 & 1;
    *(v1 + 16) = v10;
  }

  OUTLINED_FUNCTION_47_48();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5526C24(uint64_t a1)
{
  sub_1D56162D8();
  AudioAnalysis.LoudnessCurve.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D5526C7C()
{
  result = qword_1EC7F7DA0;
  if (!qword_1EC7F7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7DA0);
  }

  return result;
}

unint64_t sub_1D5526CD0()
{
  result = qword_1EC7F7DB8;
  if (!qword_1EC7F7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7DB8);
  }

  return result;
}

unint64_t sub_1D5526D24()
{
  result = qword_1EC7F7DD0;
  if (!qword_1EC7F7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7DD0);
  }

  return result;
}

unint64_t sub_1D5526D78()
{
  result = qword_1EC7F7DE8;
  if (!qword_1EC7F7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7DE8);
  }

  return result;
}

unint64_t sub_1D5526DCC()
{
  result = qword_1EC7F7DF0;
  if (!qword_1EC7F7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7DF0);
  }

  return result;
}

unint64_t sub_1D5526E20()
{
  result = qword_1EC7F7E00;
  if (!qword_1EC7F7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7E00);
  }

  return result;
}

unint64_t sub_1D5526E74()
{
  result = qword_1EC7F7E10;
  if (!qword_1EC7F7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7E10);
  }

  return result;
}

unint64_t sub_1D5526EC8()
{
  result = qword_1EC7F7E28;
  if (!qword_1EC7F7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7E28);
  }

  return result;
}

unint64_t sub_1D5526FCC()
{
  result = qword_1EC7F7E38;
  if (!qword_1EC7F7E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7E38);
  }

  return result;
}

unint64_t sub_1D5527024()
{
  result = qword_1EC7F7E40;
  if (!qword_1EC7F7E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7E40);
  }

  return result;
}

unint64_t sub_1D552707C()
{
  result = qword_1EC7F7E48;
  if (!qword_1EC7F7E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7E48);
  }

  return result;
}

unint64_t sub_1D55270D4()
{
  result = qword_1EC7F7E50;
  if (!qword_1EC7F7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7E50);
  }

  return result;
}

unint64_t sub_1D552712C()
{
  result = qword_1EC7F7E58;
  if (!qword_1EC7F7E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7E58);
  }

  return result;
}

unint64_t sub_1D5527184()
{
  result = qword_1EC7F7E60[0];
  if (!qword_1EC7F7E60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7F7E60);
  }

  return result;
}

uint64_t sub_1D552721C(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v1 = sub_1D56158D8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1D55272B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 64);
  if (v7)
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = v8 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    return __swift_getEnumTagSinglePayload(a1, v7, v4);
  }

  v11 = ((v9 + *(v6 + 80) + ((v8 + *(v6 + 80)) & ~*(v6 + 80))) & ~*(v6 + 80)) + v9;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v14 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v14 < 2)
    {
LABEL_22:
      if (v7)
      {
        return __swift_getEnumTagSinglePayload(a1, v7, v4);
      }

      return 0;
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_22;
  }

LABEL_14:
  v15 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v15 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    switch(v11)
    {
      case 2:
        LODWORD(v11) = *a1;
        break;
      case 3:
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v11) = *a1;
        break;
      default:
        LODWORD(v11) = *a1;
        break;
    }
  }

  return v7 + (v11 | v15) + 1;
}

void sub_1D5527418(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = *(v7 + 80);
  v11 = (v9 + v10) & ~v10;
  if (!v8)
  {
    ++v9;
  }

  v12 = (v9 + v10 + v11) & ~v10;
  v13 = v12 + v9;
  v14 = 8 * (v12 + v9);
  v15 = a3 >= v8;
  v16 = a3 - v8;
  if (v16 != 0 && v15)
  {
    if (v13 <= 3)
    {
      v20 = ((v16 + ~(-1 << v14)) >> v14) + 1;
      if (HIWORD(v20))
      {
        v17 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v17 = v21;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v8 >= a2)
  {
    switch(v17)
    {
      case 1:
        a1[v13] = 0;
        if (a2)
        {
          goto LABEL_26;
        }

        break;
      case 2:
        *&a1[v13] = 0;
        if (a2)
        {
          goto LABEL_26;
        }

        break;
      case 3:
LABEL_39:
        __break(1u);
        break;
      case 4:
        *&a1[v13] = 0;
        goto LABEL_25;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v18 = ~v8 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> v14) + 1;
      if (v13)
      {
        v22 = v18 & ~(-1 << v14);
        bzero(a1, v13);
        if (v13 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v13 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
    }

    switch(v17)
    {
      case 1:
        a1[v13] = v19;
        break;
      case 2:
        *&a1[v13] = v19;
        break;
      case 3:
        goto LABEL_39;
      case 4:
        *&a1[v13] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D5527644(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5527664(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 49) = v3;
  return result;
}

uint64_t sub_1D55276D0(uint64_t a1, int a2)
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

uint64_t sub_1D55276F0(uint64_t result, int a2, int a3)
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

_BYTE *sub_1D552777C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_35(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioAnalysis.BeatsPerMinute.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D5527940(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          result = OUTLINED_FUNCTION_35(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D5527A28()
{
  result = qword_1EC7F7F68;
  if (!qword_1EC7F7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7F68);
  }

  return result;
}

unint64_t sub_1D5527A80()
{
  result = qword_1EC7F7F70;
  if (!qword_1EC7F7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7F70);
  }

  return result;
}

unint64_t sub_1D5527AD8()
{
  result = qword_1EC7F7F78;
  if (!qword_1EC7F7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7F78);
  }

  return result;
}

unint64_t sub_1D5527B30()
{
  result = qword_1EC7F7F80;
  if (!qword_1EC7F7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7F80);
  }

  return result;
}

unint64_t sub_1D5527B88()
{
  result = qword_1EC7F7F88;
  if (!qword_1EC7F7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7F88);
  }

  return result;
}

unint64_t sub_1D5527BE0()
{
  result = qword_1EC7F7F90;
  if (!qword_1EC7F7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7F90);
  }

  return result;
}

unint64_t sub_1D5527C38()
{
  result = qword_1EC7F7F98;
  if (!qword_1EC7F7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7F98);
  }

  return result;
}

unint64_t sub_1D5527C90()
{
  result = qword_1EC7F7FA0;
  if (!qword_1EC7F7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FA0);
  }

  return result;
}

unint64_t sub_1D5527CE8()
{
  result = qword_1EC7F7FA8;
  if (!qword_1EC7F7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FA8);
  }

  return result;
}

unint64_t sub_1D5527D40()
{
  result = qword_1EC7F7FB0;
  if (!qword_1EC7F7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FB0);
  }

  return result;
}

unint64_t sub_1D5527D98()
{
  result = qword_1EC7F7FB8;
  if (!qword_1EC7F7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FB8);
  }

  return result;
}

unint64_t sub_1D5527DF0()
{
  result = qword_1EC7F7FC0;
  if (!qword_1EC7F7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FC0);
  }

  return result;
}

unint64_t sub_1D5527E48()
{
  result = qword_1EC7F7FC8;
  if (!qword_1EC7F7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FC8);
  }

  return result;
}

unint64_t sub_1D5527EA0()
{
  result = qword_1EC7F7FD0;
  if (!qword_1EC7F7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FD0);
  }

  return result;
}

unint64_t sub_1D5527EF8()
{
  result = qword_1EC7F7FD8;
  if (!qword_1EC7F7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FD8);
  }

  return result;
}

unint64_t sub_1D5527F50()
{
  result = qword_1EC7F7FE0;
  if (!qword_1EC7F7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FE0);
  }

  return result;
}

unint64_t sub_1D5527FA8()
{
  result = qword_1EC7F7FE8;
  if (!qword_1EC7F7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FE8);
  }

  return result;
}

unint64_t sub_1D5528000()
{
  result = qword_1EC7F7FF0;
  if (!qword_1EC7F7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FF0);
  }

  return result;
}

unint64_t sub_1D552808C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D55280D0()
{
  result = qword_1EC7F8000;
  if (!qword_1EC7F8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F8000);
  }

  return result;
}

unint64_t sub_1D5528124(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    v6();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D552819C()
{
  result = qword_1EC7F8010;
  if (!qword_1EC7F8010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F8010);
  }

  return result;
}

unint64_t sub_1D55281F0()
{
  result = qword_1EC7F8020;
  if (!qword_1EC7F8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F8020);
  }

  return result;
}

unint64_t sub_1D5528244(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D5528294()
{
  result = qword_1EC7F8038;
  if (!qword_1EC7F8038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F8038);
  }

  return result;
}

unint64_t sub_1D55282E8()
{
  result = qword_1EC7F8040;
  if (!qword_1EC7F8040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F8040);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_20_96(uint64_t a1)
{

  return sub_1D552808C(a1);
}

uint64_t OUTLINED_FUNCTION_25_68(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_28_70(uint64_t a1)
{

  return sub_1D4FECCC0(a1);
}

uint64_t SpatialTimingInformation.debugDescription.getter()
{
  v1 = v0[8];
  v2 = v0[24];
  v3 = v0[40];
  v14 = v0[72];
  v15 = v0[88];
  v4 = v0[105];
  v5 = v0[106];
  v11 = v0[56];
  v12 = v0[120];
  v13 = v0[136];
  if ((v0[104] & 1) == 0)
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();
    OUTLINED_FUNCTION_4_154();
    OUTLINED_FUNCTION_3_199();
    sub_1D5615568();
    OUTLINED_FUNCTION_1_198();
  }

  if (v4 != 2)
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();

    v16 = 0xD000000000000012;
    v17 = 0x80000001D56906C0;
    if (v4)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (v4)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    MEMORY[0x1DA6EAC70](v6, v7);

    OUTLINED_FUNCTION_1_198();
  }

  if (v5 == 2)
  {
    if (v1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();

    v16 = 0xD000000000000011;
    v17 = 0x80000001D56906A0;
    if (v5)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v5)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    MEMORY[0x1DA6EAC70](v9, v10);

    OUTLINED_FUNCTION_1_198();

    if (v1)
    {
LABEL_13:
      if (v2)
      {
        goto LABEL_14;
      }

      goto LABEL_35;
    }
  }

  OUTLINED_FUNCTION_0_230();
  sub_1D5615B68();
  OUTLINED_FUNCTION_4_154();
  OUTLINED_FUNCTION_3_199();
  sub_1D5615568();
  OUTLINED_FUNCTION_1_198();

  if (v2)
  {
LABEL_14:
    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_35:
  OUTLINED_FUNCTION_0_230();
  sub_1D5615B68();
  OUTLINED_FUNCTION_4_154();
  MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D5690660);
  sub_1D5615568();
  OUTLINED_FUNCTION_1_198();

  if ((v3 & 1) == 0)
  {
LABEL_15:
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();
    OUTLINED_FUNCTION_4_154();
    MEMORY[0x1DA6EAC70](0xD00000000000001ALL, 0x80000001D5690640);
    sub_1D5615568();
    OUTLINED_FUNCTION_1_198();
  }

LABEL_16:
  if ((v11 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();
    OUTLINED_FUNCTION_4_154();
    OUTLINED_FUNCTION_3_199();
    sub_1D5615568();
    OUTLINED_FUNCTION_1_198();
  }

  if ((v12 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();
    OUTLINED_FUNCTION_4_154();
    MEMORY[0x1DA6EAC70](0x656D697420200A2CLL, 0xEF203A7466697244);
    sub_1D5615568();
    MEMORY[0x1DA6EAC70](v16, v17);
  }

  if ((v13 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();
    OUTLINED_FUNCTION_4_154();
    MEMORY[0x1DA6EAC70](0x656D697420200A2CLL, 0xEF203A706D617473);
    sub_1D5615568();
    OUTLINED_FUNCTION_1_198();
  }

  if ((v14 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();
    OUTLINED_FUNCTION_4_154();
    MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D5690600);
    sub_1D5615568();
    OUTLINED_FUNCTION_1_198();
  }

  if ((v15 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();
    OUTLINED_FUNCTION_4_154();
    MEMORY[0x1DA6EAC70](0x4F646E6520200A2CLL, 0xEF203A7465736666);
    sub_1D5615568();
    OUTLINED_FUNCTION_1_198();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2648, &qword_1D5648AB0);
  sub_1D55289A0();
  sub_1D56155F8();

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return 0xD000000000000019;
}

unint64_t sub_1D55289A0()
{
  result = qword_1EC7F8048;
  if (!qword_1EC7F8048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F2648, &qword_1D5648AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F8048);
  }

  return result;
}

void static SpatialTimingInformation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 105);
  v3 = *(a1 + 106);
  v4 = *(a2 + 105);
  v5 = *(a2 + 106);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v7 = *(a2 + 24);
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return;
    }
  }

  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 32) == *(a2 + 32))
    {
      v8 = *(a2 + 40);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return;
    }
  }

  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 48) == *(a2 + 48))
    {
      v9 = *(a2 + 56);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return;
    }
  }

  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 64) == *(a2 + 64))
    {
      v10 = *(a2 + 72);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return;
    }
  }

  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 80) == *(a2 + 80))
    {
      v11 = *(a2 + 88);
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return;
    }
  }

  if (*(a1 + 104))
  {
    if (!*(a2 + 104))
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 96) == *(a2 + 96))
    {
      v12 = *(a2 + 104);
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return;
    }
  }

  if (v2 == 2)
  {
    if (v4 != 2)
    {
      return;
    }
  }

  else if (v4 == 2 || ((v4 ^ v2) & 1) != 0)
  {
    return;
  }

  if (v3 == 2)
  {
    if (v5 != 2)
    {
      return;
    }
  }

  else if (v5 == 2 || ((v5 ^ v3) & 1) != 0)
  {
    return;
  }

  if (*(a1 + 120))
  {
    if (!*(a2 + 120))
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 112) == *(a2 + 112))
    {
      v13 = *(a2 + 120);
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return;
    }
  }

  if (*(a1 + 136))
  {
    if (!*(a2 + 136))
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 128) == *(a2 + 128))
    {
      v14 = *(a2 + 136);
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return;
    }
  }

  if (*(a1 + 152))
  {
    if (!*(a2 + 152))
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 144) == *(a2 + 144))
    {
      v15 = *(a2 + 152);
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return;
    }
  }

  if (sub_1D4F0B2DC())
  {

    sub_1D4F286E0();
  }
}

void SpatialTimingInformation.hash(into:)()
{
  v31 = *(v0 + 24);
  v25 = v0[2];
  v26 = v0[4];
  v27 = v0[6];
  v32 = *(v0 + 40);
  v33 = *(v0 + 56);
  v34 = *(v0 + 72);
  v28 = v0[8];
  v29 = v0[10];
  v1 = v0[12];
  v35 = *(v0 + 88);
  v36 = *(v0 + 104);
  v37 = *(v0 + 105);
  v2 = *(v0 + 106);
  v3 = v0[14];
  v4 = *(v0 + 120);
  v5 = v0[16];
  v6 = *(v0 + 136);
  v30 = v0[18];
  v7 = *(v0 + 152);
  if (*(v0 + 8) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v24 = *(v0 + 106);
    v8 = *(v0 + 120);
    v9 = v0[14];
    v10 = *(v0 + 136);
    v11 = v0[16];
    v12 = *(v0 + 152);
    v13 = v0[12];
    v14 = *v0;
    sub_1D56162F8();
    if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v1 = v13;
    v7 = v12;
    v5 = v11;
    v6 = v10;
    v3 = v9;
    v4 = v8;
    v2 = v24;
    MEMORY[0x1DA6EC100](v15);
  }

  sub_1D56162F8();
  if (!v31)
  {
    v16 = OUTLINED_FUNCTION_7_142(v25);
    MEMORY[0x1DA6EC100](v16);
  }

  sub_1D56162F8();
  if (!v32)
  {
    v17 = OUTLINED_FUNCTION_7_142(v26);
    MEMORY[0x1DA6EC100](v17);
  }

  sub_1D56162F8();
  if (!v33)
  {
    v18 = OUTLINED_FUNCTION_7_142(v27);
    MEMORY[0x1DA6EC100](v18);
  }

  sub_1D56162F8();
  if (!v34)
  {
    v19 = OUTLINED_FUNCTION_7_142(v28);
    MEMORY[0x1DA6EC100](v19);
  }

  sub_1D56162F8();
  if (!v35)
  {
    v20 = OUTLINED_FUNCTION_7_142(v29);
    MEMORY[0x1DA6EC100](v20);
  }

  if (v36)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v21 = v1;
    }

    else
    {
      v21 = 0;
    }

    MEMORY[0x1DA6EC100](v21);
  }

  if (v37 != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (v2 != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (v4)
  {
    sub_1D56162F8();
    if (!v6)
    {
      goto LABEL_29;
    }
  }

  else
  {
    sub_1D56162F8();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v23 = v3;
    }

    else
    {
      v23 = 0;
    }

    MEMORY[0x1DA6EC100](v23);
    if (!v6)
    {
LABEL_29:
      sub_1D56162F8();
      if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v22 = v5;
      }

      else
      {
        v22 = 0;
      }

      MEMORY[0x1DA6EC100](v22);
      if (!v7)
      {
        goto LABEL_33;
      }

      goto LABEL_39;
    }
  }

  sub_1D56162F8();
  if (!v7)
  {
LABEL_33:
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](v30);
    goto LABEL_40;
  }

LABEL_39:
  sub_1D56162F8();
LABEL_40:
  sub_1D4F0B2F4();

  sub_1D4F31AC0();
}

uint64_t SpatialTimingInformation.hashValue.getter()
{
  sub_1D56162D8();
  SpatialTimingInformation.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D5529078(uint64_t a1)
{
  sub_1D56162D8();
  SpatialTimingInformation.hash(into:)();
  return sub_1D5616328();
}

void SpatialTimingInformation.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  v24 = sub_1D5611C78();
  OUTLINED_FUNCTION_4();
  v20 = v4;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2610, &unk_1D5648880);
  OUTLINED_FUNCTION_4();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1D4E628D4(a1, v23);
  sub_1D5612D38();
  OUTLINED_FUNCTION_2_193(&qword_1EC7F8050);
  OUTLINED_FUNCTION_6_155(&qword_1EC7F8058);
  sub_1D5610768();
  if (v2)
  {
    __src[0] = v2;
    v17 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v18 = v24;
    if (swift_dynamicCast())
    {

      v19 = v20;
      (*(v20 + 32))(v10, v8, v18);
      sub_1D5615C18();
      swift_allocError();
      sub_1D5611C68();
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(a1);
      (*(v19 + 8))(v10, v18);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  else
  {
    sub_1D5431B8C(__src);
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v13 + 8))(v16, v11);
    memcpy(v21, __src, 0xB0uLL);
  }
}

uint64_t SpatialTimingInformation.encode(to:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2610, &unk_1D5648880);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &__dst[-v6];
  memcpy(__dst, v1, sizeof(__dst));
  sub_1D54328C8(v7);
  OUTLINED_FUNCTION_2_193(&qword_1EC7F8050);
  OUTLINED_FUNCTION_6_155(&qword_1EC7F8058);
  sub_1D5610778();
  return (*(v4 + 8))(v7, v2);
}

unint64_t SpatialTimingInformation.description.getter()
{
  v1 = *(v0 + 160);
  sub_1D5615B68();

  v2 = MEMORY[0x1DA6EAF70](v1, &type metadata for SpatialOffset);
  MEMORY[0x1DA6EAC70](v2);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD000000000000022;
}

uint64_t sub_1D5529598(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5612D38();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D55295E0()
{
  result = qword_1EC7F8060;
  if (!qword_1EC7F8060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F8060);
  }

  return result;
}

uint64_t sub_1D552963C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 160);
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

uint64_t sub_1D552967C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D5529764(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *(v2 + qword_1EC7F8068);
  swift_getAssociatedTypeWitness();

  v6 = sub_1D560CC48();
  v17 = v5;
  if (v6)
  {
    v16 = v6;
    sub_1D5615C78();
    v7 = sub_1D5614D18();

    if (v7)
    {
      v8 = *(v3 + qword_1EC7F8070);
      if (v8[2] || (v13 = v3 + qword_1EC7F8078, (v14 = *(v3 + qword_1EC7F8078)) == 0))
      {
        v9 = sub_1D560CC38();
        v10 = sub_1D5529940(v8, v9 & 1);
        if (v10)
        {
          v11 = v10;
          if ([v10 sortDescriptor])
          {
            MEMORY[0x1DA6EAF30]();
            sub_1D4E6C078(*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
            sub_1D56151F8();
            v12 = *a2;

            *a2 = v12;
          }

          else
          {
          }
        }
      }

      else
      {
        v15 = *(v13 + 8);

        v14(a2);
        sub_1D4EA7420(v14, v15);
      }
    }
  }

  else
  {
  }
}

id sub_1D5529940(void *a1, char a2)
{
  result = a1[2];
  if (result)
  {
    if (result == 1)
    {
      v6 = a1[4];
      v5 = a1[5];
      sub_1D5529C0C();

      return sub_1D5529A1C(v6, v5, a2 & 1);
    }

    else
    {
      sub_1D5529C0C();

      return sub_1D5529A98(v7, a2 & 1);
    }
  }

  return result;
}

id sub_1D5529A1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1D5614D38();

  v6 = [v4 initWithKey:v5 isAscending:a3 & 1];

  return v6;
}

id sub_1D5529A98(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_1D5615158();

  v5 = [v3 initWithKeyPath:v4 isAscending:a2 & 1];

  return v5;
}

uint64_t sub_1D5529B14()
{

  v1 = *(v0 + qword_1EC7F8078);
  v2 = *(v0 + qword_1EC7F8078 + 8);

  return sub_1D4EA7420(v1, v2);
}

uint64_t sub_1D5529B68()
{
  v0 = sub_1D560CCD8();

  sub_1D4EA7420(*(v0 + qword_1EC7F8078), *(v0 + qword_1EC7F8078 + 8));
  return v0;
}

uint64_t sub_1D5529BC4()
{
  v0 = sub_1D5529B68();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

unint64_t sub_1D5529C0C()
{
  result = qword_1EDD525F0;
  if (!qword_1EDD525F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD525F0);
  }

  return result;
}

uint64_t Artist.PlayableItem.init<A>(_:configuration:sharedRelatedItemStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v133 = a3;
  v134 = a5;
  v135 = a2;
  v136 = a6;
  v115 = sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v114 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v126 = v10;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA58, &unk_1D5634110);
  OUTLINED_FUNCTION_4();
  v112 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v13);
  v111 = &v97 - v14;
  OUTLINED_FUNCTION_70_0();
  v125 = sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v110 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v124 = v17;
  OUTLINED_FUNCTION_70_0();
  v109 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v108 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_0();
  v123 = v20;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  OUTLINED_FUNCTION_4();
  v106 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v23);
  v105 = &v97 - v24;
  OUTLINED_FUNCTION_70_0();
  v121 = sub_1D5610588();
  OUTLINED_FUNCTION_4();
  v104 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_0();
  v120 = v27;
  v137 = a4;
  v131 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v132 = v29;
  OUTLINED_FUNCTION_70_0();
  v119 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v118 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v130 = v32;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB48, &unk_1D5630FE0);
  OUTLINED_FUNCTION_4();
  v117 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v35);
  v128 = &v97 - v36;
  OUTLINED_FUNCTION_70_0();
  v37 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  v42 = v41;
  OUTLINED_FUNCTION_70_0();
  v43 = sub_1D560F688();
  OUTLINED_FUNCTION_4();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_59_0();
  v49 = v47 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v97 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8080, &qword_1D5670E98);
  sub_1D5610648();
  (*(v45 + 16))(v49, v52, v43);
  v54 = (*(v45 + 88))(v49, v43);
  v55 = *MEMORY[0x1E6975798];
  v127 = a1;
  if (v54 == v55)
  {
    v56 = OUTLINED_FUNCTION_13_99();
    v57(v56);
    v101 = v39;
    v58 = *(v39 + 32);
    v100 = v42;
    v99 = v37;
    v58(v42, v49, v37);
    sub_1D552AF60(&qword_1EDD53418, MEMORY[0x1E6975660], MEMORY[0x1E6975658]);
    v59 = v128;
    sub_1D5610598();
    v60 = v117;
    (*(v117 + 16))(v116, v59, v129);
    v61 = v131;
    v62 = v135;
    v63 = v137;
    (*(v131 + 16))(v132, v135, v137);
    sub_1D5613B08();
    (*(v61 + 8))(v62, v63);
    OUTLINED_FUNCTION_24_0();
    (*(v64 + 8))(v127, v53);
    (*(v60 + 8))(v128, v129);
    (*(v101 + 8))(v100, v99);
    (*(v45 + 8))(v52, v43);
    v65 = OUTLINED_FUNCTION_8_134();
    v66(v65, v130, v119);
LABEL_8:
    type metadata accessor for Artist.PlayableItem(0);
    return swift_storeEnumTagMultiPayload();
  }

  v67 = v45;
  v68 = v53;
  v130 = v52;
  v69 = v135;
  v70 = v137;
  v71 = v54 == *MEMORY[0x1E69757A8];
  v102 = v43;
  if (v71)
  {
    v72 = v67;
    v73 = OUTLINED_FUNCTION_13_99();
    v74(v73);
    v75 = v104;
    (*(v104 + 32))(v120, v49, v121);
    sub_1D552AF60(&qword_1EDD53310, MEMORY[0x1E6975CF0], MEMORY[0x1E6975CE8]);
    v76 = v105;
    sub_1D5610598();
    v77 = v106;
    (*(v106 + 16))(v103, v76, v122);
    v78 = v131;
    (*(v131 + 16))(v132, v69, v70);
    sub_1D56148A8();
    (*(v78 + 8))(v69, v70);
    OUTLINED_FUNCTION_24_0();
    (*(v79 + 8))(v127, v68);
    (*(v77 + 8))(v76, v122);
    (*(v75 + 8))(v120, v121);
    (*(v72 + 8))(v130, v102);
    v80 = OUTLINED_FUNCTION_8_134();
    v81(v80, v123, v109);
    goto LABEL_8;
  }

  if (v54 == *MEMORY[0x1E69757A0])
  {
    v82 = v135;
    v98 = v67;
    v83 = OUTLINED_FUNCTION_13_99();
    v84(v83);
    v85 = v110;
    (*(v110 + 32))(v124, v49, v125);
    sub_1D552AF60(&qword_1EDD53368, MEMORY[0x1E6975B30], MEMORY[0x1E6975B28]);
    v86 = v111;
    sub_1D5610598();
    v87 = v112;
    v88 = v113;
    (*(v112 + 16))(v107, v86, v113);
    v89 = v131;
    v90 = v82;
    v91 = v82;
    v92 = v137;
    (*(v131 + 16))(v132, v90, v137);
    sub_1D5614418();
    (*(v89 + 8))(v91, v92);
    OUTLINED_FUNCTION_24_0();
    (*(v93 + 8))(v127, v68);
    (*(v87 + 8))(v86, v88);
    (*(v85 + 8))(v124, v125);
    (*(v98 + 8))(v130, v102);
    v94 = OUTLINED_FUNCTION_8_134();
    v95(v94, v126, v115);
    goto LABEL_8;
  }

  v138 = 0;
  v139 = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD00000000000002CLL, 0x80000001D56907C0);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](0xD000000000000036, 0x80000001D56907F0);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t Artist.PlayableItem.convertToCloudResource<A>(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a1;
  v85 = a2;
  v86 = a3;
  v87 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA58, &unk_1D5634110);
  OUTLINED_FUNCTION_4();
  v81 = v5;
  v82 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v80 = &v70 - v6;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v78 = v8;
  v79 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v77 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  OUTLINED_FUNCTION_4();
  v75 = v11;
  v76 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v70 - v12;
  OUTLINED_FUNCTION_70_0();
  v74 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v72 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  v71 = v15;
  OUTLINED_FUNCTION_70_0();
  sub_1D560F688();
  OUTLINED_FUNCTION_4();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB48, &unk_1D5630FE0);
  OUTLINED_FUNCTION_4();
  v70 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v70 - v22;
  v24 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  type metadata accessor for Artist.PlayableItem(0);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  sub_1D4F51070(v83, v33 - v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v83 = v17 + 8;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v36 = v71;
      v35 = v72;
      v37 = OUTLINED_FUNCTION_6_156();
      v38 = v74;
      v39(v37);
      v40 = v73;
      OUTLINED_FUNCTION_11_124();
      sub_1D5614638();
      v41 = v76;
      sub_1D5610648();
      v42 = OUTLINED_FUNCTION_10_128();
      v43(v42);
      OUTLINED_FUNCTION_3_200();
      sub_1D552AF60(v44, v45, MEMORY[0x1E69757B0]);
      OUTLINED_FUNCTION_9_130();
      sub_1D5610598();
      v46 = OUTLINED_FUNCTION_4_155();
      v47(v46);
      (*(v75 + 8))(v40, v41);
      return (*(v35 + 8))(v36, v38);
    }

    else
    {
      v58 = v77;
      v57 = v78;
      v59 = OUTLINED_FUNCTION_6_156();
      v60 = v79;
      v61(v59);
      v62 = v80;
      OUTLINED_FUNCTION_11_124();
      sub_1D5614328();
      v63 = v82;
      sub_1D5610648();
      v64 = OUTLINED_FUNCTION_10_128();
      v65(v64);
      OUTLINED_FUNCTION_3_200();
      sub_1D552AF60(v66, v67, MEMORY[0x1E69757B0]);
      OUTLINED_FUNCTION_9_130();
      sub_1D5610598();
      v68 = OUTLINED_FUNCTION_4_155();
      v69(v68);
      (*(v81 + 8))(v62, v63);
      return (*(v57 + 8))(v58, v60);
    }
  }

  else
  {
    v49 = OUTLINED_FUNCTION_6_156();
    v50(v49);
    OUTLINED_FUNCTION_11_124();
    sub_1D56139D8();
    sub_1D5610648();
    v51 = OUTLINED_FUNCTION_10_128();
    v52(v51);
    OUTLINED_FUNCTION_3_200();
    sub_1D552AF60(v53, v54, MEMORY[0x1E69757B0]);
    OUTLINED_FUNCTION_9_130();
    sub_1D5610598();
    v55 = OUTLINED_FUNCTION_4_155();
    v56(v55);
    (*(v70 + 8))(v23, v19);
    return (*(v26 + 8))(v30, v24);
  }
}

uint64_t sub_1D552AEF4(uint64_t a1)
{
  sub_1D552AF60(&qword_1EC7EC290, type metadata accessor for Artist.PlayableItem, &protocol conformance descriptor for Artist.PlayableItem);

  return sub_1D5612668();
}

uint64_t sub_1D552AF60(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D552AFA8()
{
  v1 = sub_1D56126B8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x1E6976588])
  {
    return 30;
  }

  if (v5 == *MEMORY[0x1E69765A8])
  {
    return 8;
  }

  if (v5 == *MEMORY[0x1E6976590])
  {
    return 10;
  }

  if (v5 == *MEMORY[0x1E69765A0])
  {
    return 12;
  }

  if (v5 == *MEMORY[0x1E6976598])
  {
    return 23;
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D552B188(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a3;
  v6[1] = a4;
  v6[2] = a4;
  v6[3] = a5;
  type metadata accessor for LRUDictionary.Container(0, v6);
  swift_getWitnessTable();
  return sub_1D560C678() & 1;
}

uint64_t sub_1D552B2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5614CB8();
  v5 = (v3 + *(a2 + 52));
  if (*(v5 + 8) == 1)
  {
    return sub_1D56162F8();
  }

  v7 = *v5;
  sub_1D56162F8();
  return MEMORY[0x1DA6EC0D0](v7);
}

uint64_t sub_1D552B31C()
{
  OUTLINED_FUNCTION_0_263();
  sub_1D552B2AC(v3, v1, v0);
  return sub_1D5616328();
}

uint64_t sub_1D552B374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1D56162D8();
  sub_1D552B2AC(v6, a2, v4);
  return sub_1D5616328();
}

uint64_t sub_1D552B3C8(uint64_t a1, void *a2)
{
  if (*(v2 + 48) == 1)
  {
    sub_1D56162F8();
    sub_1D56162F8();
  }

  else
  {
    v4 = *(v2 + 40);
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](v4);
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](v4);
  }

  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v9[0] = v6;
  v9[1] = v5;
  v9[2] = v5;
  v9[3] = v7;
  type metadata accessor for LRUDictionary.Container(0, v9);
  swift_getWitnessTable();
  return sub_1D560C668();
}

uint64_t sub_1D552B4C8()
{
  OUTLINED_FUNCTION_0_263();
  sub_1D552B3C8(v2, v0);
  return sub_1D5616328();
}

uint64_t sub_1D552B520(uint64_t a1, void *a2)
{
  sub_1D56162D8();
  sub_1D552B3C8(v4, a2);
  return sub_1D5616328();
}

void *sub_1D552B5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = sub_1D552B894;
  v27 = &v28;
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a3;
  __src[3] = a5;
  type metadata accessor for LRUDictionary.Container(255, __src);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __src[0] = sub_1D4FD9450(sub_1D552B994, v20, a4, TupleTypeMetadata2, MEMORY[0x1E69E73E0], a6, MEMORY[0x1E69E7410], v15);
  sub_1D56152D8();
  swift_getWitnessTable();
  v16 = sub_1D560C628();
  sub_1D552CD1C(v16, v17, v18, 0, 1, 0, 1, 0, __src, 0, a2, a3, a5);
  (*(*(a4 - 8) + 8))(a1, a4);
  return memcpy(a7, __src, 0x41uLL);
}

uint64_t sub_1D552B76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a6 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v17 - 8) + 16))(v14, v18, v17);
  (*(v13 + 16))(v16, a4, a6);
  return sub_1D552CE90(v16, 0, 1, a5, a6, a6, a8, a2);
}

uint64_t sub_1D552B8C4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a4;
  v15[3] = a5;
  type metadata accessor for LRUDictionary.Container(255, v15);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a6, a6 + *(TupleTypeMetadata2 + 48), a1, a1 + v12);
}

uint64_t sub_1D552B9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v16 = (*(a2 + 8))(a1);
  }

  else
  {
    v16 = 0;
  }

  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = a3 + 40;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = (*(*v5 + 8))();
      v9 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F00DD8(0, *(v6 + 16) + 1, 1, v6);
        v6 = v13;
      }

      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D4F00DD8(v10 > 1, v11 + 1, 1, v6);
        v6 = v14;
      }

      *(v6 + 16) = v11 + 1;
      v12 = v6 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return v16;
}

uint64_t sub_1D552BB24(uint64_t a1, uint64_t a2, char a3, int64x2_t *a4, uint64_t a5, uint64_t a6, char a7, int64x2_t *a8)
{
  if ((a3 & 1) == 0)
  {
    if (a7)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      return 0;
    }

    return sub_1D4EFA2E4(a4, a8);
  }

  if (a7)
  {
    return sub_1D4EFA2E4(a4, a8);
  }

  return 0;
}

void sub_1D552BB54(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](a2);
    MEMORY[0x1DA6EC0D0](a3);
  }

  sub_1D4F068DC();
}

uint64_t sub_1D552BBC8(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D56162D8();
  sub_1D56162F8();
  if ((a3 & 1) == 0)
  {
    MEMORY[0x1DA6EC0D0](a1);
    MEMORY[0x1DA6EC0D0](a2);
  }

  sub_1D4F068DC();
  return sub_1D5616328();
}

uint64_t sub_1D552BCB8(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  sub_1D56162D8();
  sub_1D56162F8();
  if (v4 != 1)
  {
    MEMORY[0x1DA6EC0D0](v3);
    MEMORY[0x1DA6EC0D0](v2);
  }

  sub_1D4F068DC();
  return sub_1D5616328();
}

uint64_t sub_1D552BD4C()
{
  v1 = *(v0 + 32);
  if (v1 < 0)
  {
    v3 = 0x80000001D5690870;
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0x6F727265204C5153;
    v3 = 0xE900000000000072;
  }

  MEMORY[0x1DA6EAC70](v2, v3);
  v4 = sub_1D552BE98(*v0, *(v0 + 8), *(v0 + 16) & 1, *(v0 + 24));
  MEMORY[0x1DA6EAC70](v4);

  OUTLINED_FUNCTION_0_264();

  if (v1 < 0)
  {
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  }

  else
  {
    MEMORY[0x1DA6EAC70](8250, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    OUTLINED_FUNCTION_0_264();
  }

  return 0;
}

uint64_t sub_1D552BE98(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    sub_1D5615B68();

    v5 = sub_1D5100E20();
    MEMORY[0x1DA6EAC70](v5);

    MEMORY[0x1DA6EAC70](8236, 0xE200000000000000);
    MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D56908B0);
  }

  v6 = *(a4 + 16);
  if (v6)
  {
    sub_1D5615B68();

    v7 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v7);

    MEMORY[0x1DA6EAC70](0x696E69616D657220, 0xEF7065747320676ELL);
    if (v6 == 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = 115;
    }

    if (v6 == 1)
    {
      v9 = 0xE000000000000000;
    }

    else
    {
      v9 = 0xE100000000000000;
    }

    MEMORY[0x1DA6EAC70](v8, v9);

    OUTLINED_FUNCTION_0_264();
  }

  else
  {
    MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5690890);
  }

  return 0;
}

uint64_t sub_1D552C06C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1D552C0B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 2 * -a2;
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D552C118(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32) & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *(result + 16) &= 1uLL;
  *(result + 32) = v2;
  return result;
}

unint64_t sub_1D552C15C()
{
  result = qword_1EC7F8090[0];
  if (!qword_1EC7F8090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7F8090);
  }

  return result;
}

uint64_t sub_1D552C1B0(uint64_t a1)
{
  v2 = *(a1 + 24);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v52 = v7 - v6;
  v9 = *(v8 + 16);
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v50 = sub_1D56158D8();
  OUTLINED_FUNCTION_1_0();
  v47 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v49 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v44 - v21;
  v59 = 0;
  v60 = 0xE000000000000000;
  if (sub_1D552CF44(a1))
  {
    v23 = 6109787;
    v24 = 0xE300000000000000;
  }

  else
  {
    MEMORY[0x1DA6EAC70](91, 0xE100000000000000);
    v25 = sub_1D55331E8(a1);
    v44[1] = v26;
    v44[2] = v25;
    v55 = v25;
    v56 = v26;
    v44[0] = v27;
    v57 = v27;
    v58 = v28;
    v29 = *(a1 + 32);
    v51 = v2;
    v30 = _s8IteratorVMa(0, v9, v2, v29);
    v47 += 4;
    v48 = v30;
    v45 = (v4 + 32);
    v46 = (v11 + 32);
    v31 = (v4 + 8);
    v32 = (v11 + 8);
    for (i = 1; ; i = 0)
    {
      v34 = v49;
      sub_1D55332D8(v48, v49);
      (*v47)(v22, v34, v50);
      if (__swift_getEnumTagSinglePayload(v22, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v35 = TupleTypeMetadata2;
      v36 = *(TupleTypeMetadata2 + 48);
      (*v46)(v15, v22, v9);
      (*v45)(v52, &v22[v36], v51);
      if ((i & 1) == 0)
      {
        OUTLINED_FUNCTION_3_201();
      }

      v53 = 0;
      v54 = 0xE000000000000000;
      sub_1D5616138();
      MEMORY[0x1DA6EAC70](8250, 0xE200000000000000);
      v37 = v15;
      v38 = v52;
      v39 = v9;
      v40 = v51;
      sub_1D5616138();
      MEMORY[0x1DA6EAC70](v53, v54);

      v41 = v38;
      v15 = v37;
      v42 = v40;
      v9 = v39;
      (*v31)(v41, v42);
      (*v32)(v37, v39);
      TupleTypeMetadata2 = v35;
    }

    v23 = 93;
    v24 = 0xE100000000000000;
  }

  MEMORY[0x1DA6EAC70](v23, v24);
  return v59;
}

uint64_t sub_1D552C59C(uint64_t a1)
{
  v2 = *(a1 + 24);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v68 = v7 - v6;
  v65 = v8;
  v9 = v8[2];
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v69 = v14 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = sub_1D56158D8();
  OUTLINED_FUNCTION_1_0();
  *&v67 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v63 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v55 - v20;
  v74[0] = 0;
  v74[1] = 0xE000000000000000;
  sub_1D5615B68();

  strcpy(v74, "LRUDictionary<");
  HIBYTE(v74[1]) = -18;
  v70 = v9;
  v22 = sub_1D5616458();
  MEMORY[0x1DA6EAC70](v22);

  OUTLINED_FUNCTION_3_201();
  v57 = v2;
  v23 = sub_1D5616458();
  MEMORY[0x1DA6EAC70](v23);

  MEMORY[0x1DA6EAC70](10302, 0xE200000000000000);
  v75 = v74[0];
  v76 = v74[1];
  v66 = v1;
  if ((*(v1 + 64) & 1) == 0)
  {
    v24 = *(v66 + 56);
    v74[0] = 0;
    v74[1] = 0xE000000000000000;
    sub_1D5615B68();

    strcpy(v74, "maximumCount: ");
    HIBYTE(v74[1]) = -18;
    v72 = v24;
    v25 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v25);

    OUTLINED_FUNCTION_3_201();
    MEMORY[0x1DA6EAC70](v74[0], v74[1]);
  }

  if ((*(v66 + 48) & 1) == 0)
  {
    v26 = *(v66 + 40);
    v74[0] = 0;
    v74[1] = 0xE000000000000000;
    sub_1D5615B68();

    strcpy(v74, "maximumCost: ");
    HIWORD(v74[1]) = -4864;
    v72 = v26;
    v27 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v27);

    OUTLINED_FUNCTION_3_201();
    MEMORY[0x1DA6EAC70](v74[0], v74[1]);
  }

  v28 = sub_1D552CF44(v65);
  v29 = v57;
  if (v28)
  {
    v30 = 6109787;
    v31 = 0xE300000000000000;
  }

  else
  {
    MEMORY[0x1DA6EAC70](91, 0xE100000000000000);
    v32 = v65;
    v56 = sub_1D55331E8(v65);
    v74[0] = v56;
    v74[1] = v33;
    v55[2] = v33;
    v55[1] = v34;
    v74[2] = v34;
    v74[3] = v35;
    v36 = _s8IteratorVMa(0, v70, v29, v32[4]);
    v37 = (v67 + 32);
    v61 = (v11 + 32);
    v62 = v36;
    v60 = (v4 + 32);
    v59 = (v11 + 16);
    v58 = (v4 + 16);
    v38 = (v4 + 8);
    v39 = (v11 + 8);
    v40 = 1;
    v67 = xmmword_1D561C050;
    while (1)
    {
      v41 = v63;
      sub_1D55332D8(v62, v63);
      (*v37)(v21, v41, v64);
      if (__swift_getEnumTagSinglePayload(v21, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v42 = TupleTypeMetadata2;
      v43 = *(TupleTypeMetadata2 + 48);
      (*v61)(v69, v21, v70);
      (*v60)(v68, &v21[v43], v29);
      if ((v40 & 1) == 0)
      {
        OUTLINED_FUNCTION_3_201();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v44 = swift_allocObject();
      *(v44 + 16) = v67;
      v45 = v70;
      *(v44 + 56) = v70;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v44 + 32));
      v47 = v69;
      (*v59)(boxed_opaque_existential_0, v69, v45);
      OUTLINED_FUNCTION_2_194();
      sub_1D5615AF8();

      MEMORY[0x1DA6EAC70](8250, 0xE200000000000000);
      v48 = sub_1D552CFE8(v47, v65);
      if ((v49 & 1) == 0)
      {
        v71 = v48;
        v72 = 9256;
        v73 = 0xE200000000000000;
        v50 = sub_1D56160F8();
        MEMORY[0x1DA6EAC70](v50);

        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
        MEMORY[0x1DA6EAC70](v72, v73);
        v29 = v57;
      }

      v51 = swift_allocObject();
      *(v51 + 16) = v67;
      *(v51 + 56) = v29;
      v52 = __swift_allocate_boxed_opaque_existential_0((v51 + 32));
      v53 = v68;
      (*v58)(v52, v68, v29);
      OUTLINED_FUNCTION_2_194();
      sub_1D5615AF8();

      (*v38)(v53, v29);
      (*v39)(v69, v70);
      v40 = 0;
      TupleTypeMetadata2 = v42;
    }

    v30 = 93;
    v31 = 0xE100000000000000;
  }

  MEMORY[0x1DA6EAC70](v30, v31);
  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v75;
}

uint64_t sub_1D552CCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_xq_Ri_zRi0_zRi__Ri0__r0_lyxq_Isegnn_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D552CD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v24[0] = a11;
  v24[1] = a12;
  v24[2] = a12;
  v24[3] = a13;
  type metadata accessor for LRUDictionary.Container(255, v24);
  swift_getTupleTypeMetadata2();
  sub_1D56151C8();
  sub_1D560C618();

  __src[2] = a1;
  __src[3] = a2;
  __src[4] = a3;
  __src[5] = a4;
  LOBYTE(__src[6]) = a5 & 1;
  __src[7] = a6;
  LOBYTE(__src[8]) = a7 & 1;
  __src[0] = a8;
  __src[1] = a10;
  v17 = type metadata accessor for LRUDictionary(0, a11, a12, a13);
  sub_1D552D1DC(v17);

  return memcpy(a9, __src, 0x41uLL);
}

uint64_t sub_1D552CE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a6 - 8) + 32))(a8, a1, a6);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  result = type metadata accessor for LRUDictionary.Container(0, v17);
  v16 = a8 + *(result + 52);
  *v16 = a2;
  *(v16 + 8) = a3 & 1;
  return result;
}

uint64_t sub_1D552CF44(uint64_t a1)
{
  v6 = *(v1 + 32);
  v4[0] = *(a1 + 16);
  v2 = *(a1 + 24);
  v4[1] = *(a1 + 24);
  v5 = v2;
  type metadata accessor for LRUDictionary.Container(255, v4);
  sub_1D5615D18();
  swift_getWitnessTable();
  return sub_1D5615678() & 1;
}

uint64_t sub_1D552CFE8(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2[4];
  v15[0] = a2[2];
  v15[1] = v2;
  v15[2] = v2;
  v15[3] = v3;
  v4 = type metadata accessor for LRUDictionary.Container(255, v15);
  v5 = sub_1D56158D8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = v15 - v11;
  sub_1D560C698();
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) == 1)
  {
    (*(v6 + 8))(v9, v5);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v12, v9, v4);
    v13 = *&v12[*(v4 + 52)];
    (*(v10 + 8))(v12, v4);
  }

  return v13;
}

uint64_t sub_1D552D1DC(void *a1)
{
  v2 = a1;
  v4 = a1[3];
  v5 = a1[4];
  v127 = a1[2];
  v3 = v127;
  v128 = v4;
  v129 = v4;
  v130 = v5;
  v6 = type metadata accessor for LRUDictionary.Container(0, &v127);
  v7 = *(v6 - 1);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v91 - v9;
  v115 = v4;
  v11 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v114 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v116 = *(TupleTypeMetadata2 - 8);
  v13 = *(v116 + 64);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v111 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v113 = &v91 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v112 = &v91 - v18;
  result = MEMORY[0x1EEE9AC00](v17);
  v20 = v1;
  v22 = &v91 - v21;
  v23 = v1[7];
  v24 = *(v1 + 64);
  if ((v24 & 1) == 0)
  {
    v25 = v1[4];
    v100 = v20;
    v99 = v24;
    result = sub_1D5615CE8();
    LOBYTE(v24) = v99;
    v20 = v100;
    if (v23 < result)
    {
      result = sub_1D5615CE8();
      v95 = result - v23;
      if (__OFSUB__(result, v23))
      {
        goto LABEL_43;
      }

      v93 = v23;
      v26 = v100;
      v27 = *v100;
      if (*v100)
      {
        v92 = v2;
        v118 = v10;
        v97 = v11;
        v96 = v7;
        v94 = v13;
        v28 = v100[1];
        v29 = v100[3];
        v127 = v100[2];
        v128 = v29;
        v129 = v25;
        v119 = v27;
        v110 = v28;
        sub_1D4EA73A4(v27, v28);
        v98 = v5;
        sub_1D560C688();

        swift_getWitnessTable();
        v30 = sub_1D5615088();
        v31 = TupleTypeMetadata2;
        v32 = sub_1D5615178();
        v127 = v32;
        if (v32 != sub_1D5615208())
        {
          v108 = *(v31 + 48);
          v107 = (v117 - 2);
          v106 = (v96 + 32);
          v105 = (v97 + 16);
          v104 = (v96 + 8);
          v103 = (v97 + 8);
          v102 = (v116 + 8);
          v109 = (v116 + 16);
          v101 = (v116 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          do
          {
            v62 = sub_1D56151E8();
            sub_1D56151A8();
            if (v62)
            {
              v63 = *(v116 + 16);
              v63(v22, (v30 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v32), v31);
            }

            else
            {
              result = sub_1D5615BB8();
              if (v94 != 8)
              {
                goto LABEL_45;
              }

              v122 = result;
              v63 = *v109;
              (*v109)(v22, &v122, v31);
              swift_unknownObjectRelease();
            }

            sub_1D56152C8();
            v64 = *(v31 + 48);
            v65 = v117;
            v66 = *(v117 - 1);
            v67 = v112;
            (*(v66 + 32))(v112, v22, v117);
            (*v106)(v67 + v64, v108 + v22, v6);
            v68 = v113;
            v63(v113, v67, TupleTypeMetadata2);
            v69 = *(TupleTypeMetadata2 + 48);
            v70 = v22;
            v71 = v114;
            v72 = v115;
            (*v105)(v114, &v68[v69], v115);
            (*v104)(&v68[v69], v6);
            (v119)(v67, v71);
            v73 = v71;
            v22 = v70;
            (*v103)(v73, v72);
            (*v102)(v67, TupleTypeMetadata2);
            v74 = v68;
            v31 = TupleTypeMetadata2;
            (*(v66 + 8))(v74, v65);
            v75 = sub_1D5615208();
            v32 = v127;
          }

          while (v127 != v75);
        }

        sub_1D4EA7420(v119, v110);

        v5 = v98;
        v13 = v94;
        v7 = v96;
        v11 = v97;
        v10 = v118;
        v2 = v92;
        v26 = v100;
      }

      sub_1D560C688();
      result = sub_1D560C608();
      v20 = v26;
      v23 = v93;
      LOBYTE(v24) = v99;
    }
  }

  if (v20[6])
  {
    return result;
  }

  v33 = v23;
  v34 = *v20;
  v35 = v20[1];
  v36 = v2;
  v38 = v20 + 2;
  v37 = v20[2];
  v39 = v20[3];
  v42 = v20 + 4;
  v40 = v20[4];
  v41 = v42[1];
  v126 = 0;
  v125 = v24;
  v110 = v34;
  v127 = v34;
  v128 = v35;
  v109 = v35;
  v106 = v37;
  v129 = v37;
  v130 = v39;
  v107 = v39;
  v108 = v40;
  v131 = v40;
  v132 = v41;
  v133 = 0;
  v134 = v33;
  v135 = v24;
  result = sub_1D552DF9C(v36);
  if (v41 >= result)
  {
    return result;
  }

  v43 = __OFSUB__(result, v41);
  v44 = result - v41;
  if (v43)
  {
    goto LABEL_44;
  }

  v100 = v38;
  v118 = v10;
  v97 = v11;
  v94 = v13;
  v121[0] = v106;
  v121[1] = v107;
  v121[2] = v108;
  v45 = sub_1D560C638();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1DA6EAAC0](&v122, v45, WitnessTable);
  v47 = v122;
  v48 = v123;

  v49 = sub_1D5615CE8();

  v119 = v6;
  v98 = v5;
  if (!v49)
  {
LABEL_21:

    v57 = v97;
    v58 = v110;
    if (v110)
    {
      v122 = v106;
      v123 = v107;
      v124 = v108;

      sub_1D4EA73A4(v58, v109);
      sub_1D560C688();
      swift_getWitnessTable();
      v101 = v49;
      v59 = sub_1D5615088();
      v60 = TupleTypeMetadata2;
      v61 = sub_1D5615178();
      v122 = v61;
      if (v61 != sub_1D5615208())
      {
        v118 = *(v60 + 48);
        v108 = v117 - 2;
        v107 = (v7 + 32);
        v106 = (v57 + 16);
        v105 = (v7 + 8);
        v104 = (v57 + 8);
        v103 = (v116 + 8);
        v102 = (v116 + 16);
        v76 = v114;
        do
        {
          v77 = sub_1D56151E8();
          sub_1D56151A8();
          v78 = v111;
          if (v77)
          {
            v79 = *(v116 + 16);
            (v79)(v111, v59 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v61, v60);
          }

          else
          {
            result = sub_1D5615BB8();
            if (v94 != 8)
            {
              goto LABEL_46;
            }

            v121[0] = result;
            v79 = *v102;
            (*v102)(v78, v121, v60);
            swift_unknownObjectRelease();
          }

          sub_1D56152C8();
          v80 = *(v60 + 48);
          v81 = v117;
          v82 = *(v117 - 1);
          v83 = v112;
          (*(v82 + 32))(v112, v78, v117);
          v84 = &v118[v78];
          v85 = v119;
          (*v107)(&v83[v80], v84, v119);
          v86 = v113;
          (v79)(v113, v83, TupleTypeMetadata2);
          v87 = *(TupleTypeMetadata2 + 48);
          v88 = v115;
          (*v106)(v76, &v86[v87], v115);
          (*v105)(&v86[v87], v85);
          (v110)(v83, v76);
          (*v104)(v76, v88);
          v89 = v83;
          v60 = TupleTypeMetadata2;
          (*v103)(v89, TupleTypeMetadata2);
          (*(v82 + 8))(v86, v81);
          v90 = sub_1D5615208();
          v61 = v122;
        }

        while (v122 != v90);
      }

      sub_1D4EA7420(v110, v109);
    }

    sub_1D560C688();
    return sub_1D560C608();
  }

  v104 = v48;
  v105 = v47;
  v50 = 0;
  v51 = &v118[v6[13]];
  v96 = v7;
  v52 = (v7 + 8);
  v101 = v49;
  v53 = v49;
  while (1)
  {
    v43 = __OFSUB__(v53--, 1);
    if (v43)
    {
      break;
    }

    v54 = v118;
    result = sub_1D5615D28();
    if (__OFADD__(v50, 1))
    {
      goto LABEL_41;
    }

    v55 = *v51;
    v56 = v51[8];
    result = (*v52)(v54, v6);
    if ((v56 & 1) == 0)
    {
      v43 = __OFSUB__(v44, v55);
      v44 -= v55;
      if (v43)
      {
        goto LABEL_42;
      }
    }

    if (v44 < 1)
    {
      v49 = v50 + 1;
      v7 = v96;
      goto LABEL_21;
    }

    ++v50;
    v6 = v119;
    if (!v53)
    {
      v7 = v96;
      v49 = v101;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1D552DF9C(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v8[6] = v1[2];
  v8[7] = v2;
  v8[8] = v3;
  v8[5] = 0;
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];

  v8[0] = v4;
  v8[1] = v5;
  v8[2] = v5;
  v8[3] = v6;
  type metadata accessor for LRUDictionary.Container(255, v8);
  sub_1D560C638();
  swift_getWitnessTable();
  sub_1D5615078();

  return v8[0];
}

uint64_t sub_1D552E0AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = *a1;
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a4;
  v14[3] = a5;
  result = type metadata accessor for LRUDictionary.Container(0, v14);
  v10 = (a2 + *(result + 52));
  if (*(v10 + 8))
  {
    v11 = 0;
  }

  else
  {
    v11 = *v10;
  }

  v12 = __OFADD__(v8, v11);
  v13 = v8 + v11;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *a6 = v13;
  }

  return result;
}

void sub_1D552E148(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1D502E814();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unsigned __int8 *sub_1D552E1D0(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v7 = (a2 - v5 + 255) >> 8;
    if (v6 <= 3)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = 2;
    }

    if (v8 >= 0x10000)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (v8 < 0x100)
    {
      v9 = 1;
    }

    if (v8 >= 2)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    switch(v10)
    {
      case 1:
        v11 = result[v6];
        if (result[v6])
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v11 = *&result[v6];
        if (*&result[v6])
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v11 = *&result[v6];
        if (!v11)
        {
          goto LABEL_22;
        }

LABEL_18:
        v12 = (v11 - 1) << (8 * v6);
        if (v6 <= 3)
        {
          v13 = *result;
        }

        else
        {
          v12 = 0;
          v13 = *result;
        }

        return (v5 + (v13 | v12) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return __swift_getEnumTagSinglePayload(result, v5, v4);
        }

        return 0;
    }
  }

  return __swift_getEnumTagSinglePayload(result, v5, v4);
}

void sub_1D552E2EC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_28;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_28;
        }

        break;
      case 3:
LABEL_35:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_27;
      default:
LABEL_27:
        if (a2)
        {
LABEL_28:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    bzero(a1, v8);
    if (v8 <= 3)
    {
      v14 = (v13 >> 8) + 1;
    }

    else
    {
      v14 = 1;
    }

    if (v8 > 3)
    {
      *a1 = v13;
    }

    else
    {
      *a1 = v13;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D552E49C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8140, &qword_1D5671400);
  swift_allocObject();
  result = sub_1D5616428();
  qword_1EDD58C10 = result;
  return result;
}

uint64_t sub_1D552E500()
{
  if (qword_1EDD58C20 != -1)
  {
    swift_once();
  }

  sub_1D5616438();
  return v1;
}

uint64_t sub_1D552E568(char a1)
{
  swift_defaultActor_initialize();
  *(v1 + 120) = xmmword_1D56712C0;
  *(v1 + 136) = xmmword_1D56712D0;
  *(v1 + 152) = 1;
  *(v1 + 160) = *sub_1D560C6A8();
  *(v1 + 112) = a1 & 1;

  return v1;
}

uint64_t sub_1D552E5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D552E5F0, a3, 0);
}

uint64_t sub_1D552E5F0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_1D55319D4();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1D552E6F0;
  v6 = v0[2];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v6, v1, v3, 0x293A5F286E7572, 0xE700000000000000, sub_1D5531A28, v4, v7);
}

uint64_t sub_1D552E6F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D552E804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActorQueue.TaskState(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D56154F8();
  v11 = *(v7 + 32);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8118, &qword_1D5671310);
  (*(*(v12 - 8) + 16))(&v10[v11], a1, v12);
  *v10 = a2;
  swift_beginAccess();
  result = *(a3 + 160);
  v14 = *(result + 24);
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(a3 + 160);
    if (*(v17 + 16) < v15 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D5530DE0(isUniquelyReferenced_nonNull_native, v15, 0);
      v17 = *(a3 + 160);
    }

    sub_1D553100C((v17 + 16), v17 + ((*(v8 + 80) + 40) & ~*(v8 + 80)), v10);
    swift_endAccess();
    sub_1D552E9A0();
    return sub_1D552FA18(v10);
  }

  return result;
}

void sub_1D552E9A0()
{
  if (*(v0 + 112) == 1)
  {
    swift_beginAccess();
    if (*(*(v0 + 160) + 24))
    {
      swift_beginAccess();
      sub_1D552F270((v0 + 160));
      swift_endAccess();
    }
  }
}

uint64_t sub_1D552EA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D5615458();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  result = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v20 - v15;
  if (*(a3 + 112) == 1)
  {
    v17 = *(v9 + 16);
    v17(v16, a2, v7);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v7);
    v17(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
    v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v19 = swift_allocObject();
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    *(v19 + 4) = a3;
    (*(v9 + 32))(&v19[v18], &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    *&v19[(v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8] = a4;

    sub_1D51EC8B4(0, 0, v16, &unk_1D56713D0, v19);
  }

  return result;
}