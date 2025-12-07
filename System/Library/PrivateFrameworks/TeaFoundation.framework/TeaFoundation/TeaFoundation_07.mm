uint64_t sub_1BF07E1D8()
{
  result = sub_1BF0830E8([v0 configuration]);
  if (!v2)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}

void NetworkOperationURLSessionDelegate.urlSession(_:task:didCompleteWithError:)()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_3_3();
  sub_1BF02C548(0, v6, v7, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_59();
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v107 - v11;
  v13 = [v5 originalRequest];
  if (v13)
  {
    v14 = v13;
    sub_1BF178C1C();

    v15 = sub_1BF178C6C();
    v16 = 0;
  }

  else
  {
    v15 = sub_1BF178C6C();
    v16 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v16, 1, v15);
  v17 = [v5 response];
  sub_1BF07EF94(v5, v12, v17, 0, v3);

  OUTLINED_FUNCTION_3_3();
  sub_1BF082FEC(v12, v18, v19);
  v20 = *&v1[OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_taskLock];
  UnfairLock.lock()();
  v21 = sub_1BF083158(v5);
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_runningTasks;
    swift_beginAccess();
    v26 = *&v1[v25];
    if (*(v26 + 16))
    {
      v27 = sub_1BF014CA8();
      if (v28)
      {
        v118 = v25;
        v119 = v1;
        v111 = v24;
        v114 = v23;
        v29 = (*(v26 + 56) + (v27 << 6));
        v31 = v29[1];
        v30 = v29[2];
        v33 = v29[3];
        v32 = v29[4];
        v35 = v29[5];
        v34 = v29[6];
        v36 = v29[7];
        swift_endAccess();
        v109 = *&v20[4]._os_unfair_lock_opaque;
        v110 = v31;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v113 = v30;
        v117 = v33;
        sub_1BF014DC0(v30, v33);
        v112 = v35;
        sub_1BF009984(v32, v35);
        v116 = v34;
        v115 = v36;
        sub_1BF009984(v34, v36);
        os_unfair_lock_unlock(v109);
        if (v3)
        {
          v108 = v32;
          v37 = v3;
          if (qword_1ED8EE9F0 != -1)
          {
            OUTLINED_FUNCTION_0_8(&qword_1ED8EE9F0);
          }

          v38 = sub_1BF1797FC();
          v34 = __swift_project_value_buffer(v38, qword_1ED8F5298);
          v39 = v3;
          v40 = v5;
          v41 = sub_1BF1797DC();
          v42 = sub_1BF17ACBC();

          v43 = os_log_type_enabled(v41, v42);
          v107 = v40;
          if (v43)
          {
            v44 = OUTLINED_FUNCTION_39_3();
            v109 = v20;
            v20 = v44;
            v45 = OUTLINED_FUNCTION_83();
            v46 = OUTLINED_FUNCTION_44_0();
            *&v121[0] = v46;
            v20->_os_unfair_lock_opaque = 136446466;
            v47 = sub_1BF07F6F4();
            OUTLINED_FUNCTION_71(v47, v48);
            OUTLINED_FUNCTION_82();
            *&v20[1]._os_unfair_lock_opaque = v30;
            LOWORD(v20[3]._os_unfair_lock_opaque) = 2114;
            v49 = v3;
            v50 = _swift_stdlib_bridgeErrorToNSError();
            *(&v20[3]._os_unfair_lock_opaque + 2) = v50;
            *v45 = v50;
            _os_log_impl(&dword_1BEFE0000, v41, v42, "Network operation %{public}s failed with error: %{public}@", v20, 0x16u);
            OUTLINED_FUNCTION_2_4();
            sub_1BF02F3CC(v45, v51);
            OUTLINED_FUNCTION_28();
            __swift_destroy_boxed_opaque_existential_1(v46);
            OUTLINED_FUNCTION_28();
            OUTLINED_FUNCTION_15_2();
          }

          OUTLINED_FUNCTION_74();
          OUTLINED_FUNCTION_42_1();
          if (v41)
          {
            v52 = v3;
            v53 = v112;
            sub_1BF009984(v41, v112);
            (v41)(v3, 0, 1);

            v54 = v3;
            v3 = v53;

            sub_1BEFE52DC(v41, v53);
            OUTLINED_FUNCTION_56_0();
LABEL_31:
            OUTLINED_FUNCTION_43_0();
LABEL_46:
            UnfairLock.lock()();
            swift_beginAccess();
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            sub_1BF082600(v120);

            v121[0] = v120[0];
            v121[1] = v120[1];
            v121[2] = v120[2];
            v121[3] = v120[3];
            sub_1BF0831B8(v121, &unk_1EBDCB488, &type metadata for NetworkOperationTask);
            swift_endAccess();
            os_unfair_lock_unlock(*&v20[4]._os_unfair_lock_opaque);

            sub_1BF014E18(v34, v117);
            sub_1BEFE52DC(v41, v3);
            sub_1BEFE52DC(v30, v115);

            goto LABEL_20;
          }

          v82 = v107;
          v30 = v119;
          v34 = sub_1BF1797DC();
          v83 = sub_1BF17ACBC();

          if (os_log_type_enabled(v34, v83))
          {
            v41 = OUTLINED_FUNCTION_39_3();
            v84 = swift_slowAlloc();
            v109 = v20;
            OUTLINED_FUNCTION_78_0(v84);
            *v41 = 136446466;
            v85 = sub_1BF07F6F4();
            OUTLINED_FUNCTION_72(v85, v86);
            OUTLINED_FUNCTION_65();
            *(v41 + 4) = v82;
            *(v41 + 12) = 2082;
            OUTLINED_FUNCTION_23_2();
            sub_1BF179DBC();
            OUTLINED_FUNCTION_66_0();
            OUTLINED_FUNCTION_67();
            OUTLINED_FUNCTION_48_0();

            *(v41 + 14) = v30;
            _os_log_impl(&dword_1BEFE0000, v34, v83, "Network operation %{public}s failed to find completion.  Tasks: %{public}s", v41, 0x16u);
            OUTLINED_FUNCTION_37_0();
            OUTLINED_FUNCTION_15_2();
            OUTLINED_FUNCTION_42_1();
            OUTLINED_FUNCTION_28();

LABEL_34:
            OUTLINED_FUNCTION_43_0();
LABEL_39:
            OUTLINED_FUNCTION_56_0();
            OUTLINED_FUNCTION_79();
            goto LABEL_46;
          }

LABEL_36:
          OUTLINED_FUNCTION_43_0();
          goto LABEL_45;
        }

        v109 = v20;
        v67 = [v5 response];
        v41 = v32;
        if (v67)
        {
          v68 = v67;
          objc_opt_self();
          v69 = swift_dynamicCastObjCClass();
          if (v69)
          {
            v3 = v69;
            if (!sub_1BF081C58())
            {
              v108 = v32;
              if (qword_1ED8EE9F0 != -1)
              {
                OUTLINED_FUNCTION_0_8(&qword_1ED8EE9F0);
              }

              v91 = sub_1BF1797FC();
              __swift_project_value_buffer(v91, qword_1ED8F5298);
              v92 = v68;
              v93 = v5;
              v94 = v92;
              v41 = sub_1BF1797DC();
              v95 = sub_1BF17ACBC();

              if (os_log_type_enabled(v41, v95))
              {
                v96 = OUTLINED_FUNCTION_39_3();
                v97 = OUTLINED_FUNCTION_44_0();
                *&v121[0] = v97;
                *v96 = 136446466;
                v98 = sub_1BF07F6F4();
                OUTLINED_FUNCTION_72(v98, v99);
                OUTLINED_FUNCTION_65();
                *(v96 + 4) = v93;
                *(v96 + 12) = 2050;
                v100 = [v3 statusCode];

                *(v96 + 14) = v100;
                _os_log_impl(&dword_1BEFE0000, v41, v95, "Network operation %{public}s failed with HTTP status code: %{public}ld", v96, 0x16u);
                __swift_destroy_boxed_opaque_existential_1(v97);
                OUTLINED_FUNCTION_28();
                OUTLINED_FUNCTION_28();
              }

              else
              {
              }

              v20 = v109;
              OUTLINED_FUNCTION_74();
              OUTLINED_FUNCTION_42_1();
              if (v41)
              {
                sub_1BF081F08();
                v30 = swift_allocError();
                *v101 = v3;
                v34 = v94;
                OUTLINED_FUNCTION_79();
                sub_1BF009984(v102, v3);
                (v41)(v30, 0, 1);

                sub_1BEFE52DC(v41, v3);
                OUTLINED_FUNCTION_43_0();
                OUTLINED_FUNCTION_56_0();
                goto LABEL_46;
              }

              v103 = v93;
              v30 = v119;
              v34 = sub_1BF1797DC();
              v3 = sub_1BF17ACBC();

              if (os_log_type_enabled(v34, v3))
              {
                OUTLINED_FUNCTION_39_3();
                v104 = OUTLINED_FUNCTION_29_2();
                OUTLINED_FUNCTION_78_0(v104);
                *v93 = 136446466;
                v105 = sub_1BF07F6F4();
                OUTLINED_FUNCTION_72(v105, v106);
                OUTLINED_FUNCTION_65();
                OUTLINED_FUNCTION_46_1();
                OUTLINED_FUNCTION_23_2();
                sub_1BF179DBC();
                OUTLINED_FUNCTION_66_0();
                OUTLINED_FUNCTION_67();
                OUTLINED_FUNCTION_48_0();
                OUTLINED_FUNCTION_42_1();

                *(v93 + 14) = v30;
                OUTLINED_FUNCTION_69_0(&dword_1BEFE0000, v34, v3, "Network operation %{public}s failed to find completion.  Tasks: %{public}s");
                OUTLINED_FUNCTION_37_0();
                OUTLINED_FUNCTION_15_2();
                OUTLINED_FUNCTION_28();

                goto LABEL_34;
              }

              goto LABEL_36;
            }
          }
        }

        if (qword_1ED8EE9F0 != -1)
        {
          OUTLINED_FUNCTION_0_8(&qword_1ED8EE9F0);
        }

        v70 = sub_1BF1797FC();
        __swift_project_value_buffer(v70, qword_1ED8F5298);
        v3 = v5;
        v71 = sub_1BF1797DC();
        v72 = sub_1BF17ACDC();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = OUTLINED_FUNCTION_70();
          v74 = OUTLINED_FUNCTION_44_0();
          *&v121[0] = v74;
          *v73 = 136446210;
          v75 = sub_1BF07F6F4();
          v34 = v32;
          v77 = OUTLINED_FUNCTION_71(v75, v76);

          *(v73 + 4) = v77;
          v41 = v32;
          _os_log_impl(&dword_1BEFE0000, v71, v72, "Network operation %{public}s did succeed", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v74);
          OUTLINED_FUNCTION_28();
          OUTLINED_FUNCTION_28();
        }

        v20 = v109;
        OUTLINED_FUNCTION_74();
        if (v41)
        {
          OUTLINED_FUNCTION_79();
          sub_1BF009984(v78, v3);
          OUTLINED_FUNCTION_56_0();
          v30 = v117;
          sub_1BF014DC0(v34, v117);
          v79 = OUTLINED_FUNCTION_31_3();
          (v41)(v79);
          v80 = OUTLINED_FUNCTION_31_3();
          sub_1BF014E18(v80, v81);
          sub_1BEFE52DC(v41, v3);
          goto LABEL_31;
        }

        v108 = 0;
        v87 = v3;
        v30 = v119;
        v34 = sub_1BF1797DC();
        v3 = sub_1BF17ACBC();

        if (os_log_type_enabled(v34, v3))
        {
          OUTLINED_FUNCTION_39_3();
          v88 = OUTLINED_FUNCTION_29_2();
          OUTLINED_FUNCTION_78_0(v88);
          *v71 = 136446466;
          v89 = sub_1BF07F6F4();
          OUTLINED_FUNCTION_72(v89, v90);
          OUTLINED_FUNCTION_65();
          OUTLINED_FUNCTION_46_1();
          OUTLINED_FUNCTION_23_2();
          sub_1BF179DBC();
          OUTLINED_FUNCTION_66_0();
          OUTLINED_FUNCTION_67();
          OUTLINED_FUNCTION_48_0();

          *(v71 + 14) = v30;
          OUTLINED_FUNCTION_69_0(&dword_1BEFE0000, v34, v3, "Network operation %{public}s failed to find completion.  Tasks: %{public}s");
          OUTLINED_FUNCTION_37_0();
          OUTLINED_FUNCTION_15_2();
          OUTLINED_FUNCTION_28();

          OUTLINED_FUNCTION_43_0();
          OUTLINED_FUNCTION_42_1();
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_42_1();
LABEL_45:
        OUTLINED_FUNCTION_56_0();
        OUTLINED_FUNCTION_79();
        OUTLINED_FUNCTION_74();
        goto LABEL_46;
      }
    }

    swift_endAccess();
  }

  if (qword_1ED8EE9F0 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED8EE9F0);
  }

  v55 = sub_1BF1797FC();
  __swift_project_value_buffer(v55, qword_1ED8F5298);
  v56 = v5;
  v57 = v1;
  v58 = sub_1BF1797DC();
  v59 = sub_1BF17ACBC();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = OUTLINED_FUNCTION_39_3();
    *&v120[0] = swift_slowAlloc();
    *v60 = 136446466;
    v61 = sub_1BF07F6F4();
    sub_1BF01A7AC(v61, v62, v120);
    OUTLINED_FUNCTION_65();
    *(v60 + 4) = v56;
    *(v60 + 12) = 2082;
    swift_beginAccess();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v63 = sub_1BF179DBC();
    v65 = v64;

    v66 = sub_1BF01A7AC(v63, v65, v120);

    *(v60 + 14) = v66;
    _os_log_impl(&dword_1BEFE0000, v58, v59, "Network operation request: %{public}s failed to find existing task.  Tasks: %{public}s", v60, 0x16u);
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  os_unfair_lock_unlock(*&v20[4]._os_unfair_lock_opaque);
LABEL_20:
  OUTLINED_FUNCTION_26_2();
}

void sub_1BF07EF94(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  sub_1BF02C548(0, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v61 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v61 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v61 - v24;
  v26 = sub_1BF083158(a1);
  if (v27)
  {
    sub_1BF07DACC(v26, v27, &v67);

    v28 = v68;
    v29 = v69;
    sub_1BF014DC0(v68, v69);
    v30 = a4;
    v31 = a4;
    v32 = a3;
    v33 = a3;
    v34 = v32;
    v64 = v33;
    v65 = v30;
    v35 = sub_1BF080A30(v28, v29, v33, v30);
    v37 = v36;
    sub_1BF014E18(v28, v29);

    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v38 = sub_1BF1797FC();
    __swift_project_value_buffer(v38, qword_1ED8F5298);
    sub_1BF083F38(a2, v25, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720], sub_1BF02C548);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v39 = sub_1BF1797DC();
    v40 = sub_1BF17ACDC();

    if (os_log_type_enabled(v39, v40))
    {
      v62 = v35;
      v63 = a5;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v66 = v42;
      *v41 = 136446466;
      sub_1BF083F38(v25, v21, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720], sub_1BF02C548);
      v43 = sub_1BF178C6C();
      if (__swift_getEnumTagSinglePayload(v21, 1, v43) == 1)
      {
        v44 = 0x6E776F6E6B6E75;
        sub_1BF082FEC(v21, &qword_1ED8EE440, MEMORY[0x1E6967EC8]);
        v45 = 0xE700000000000000;
      }

      else
      {
        v44 = sub_1BF178BEC();
        v45 = v56;
        (*(*(v43 - 8) + 8))(v21, v43);
      }

      v55 = v64;
      sub_1BF082FEC(v25, &qword_1ED8EE440, MEMORY[0x1E6967EC8]);
      v57 = sub_1BF01A7AC(v44, v45, &v66);

      *(v41 + 4) = v57;
      *(v41 + 12) = 2082;
      v58 = sub_1BF01A7AC(v62, v37, &v66);

      *(v41 + 14) = v58;
      _os_log_impl(&dword_1BEFE0000, v39, v40, "Network operation request %{public}s received response (%{public}s)", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB547B0](v42, -1, -1);
      MEMORY[0x1BFB547B0](v41, -1, -1);

      a5 = v63;
      v54 = v65;
    }

    else
    {

      sub_1BF082FEC(v25, &qword_1ED8EE440, MEMORY[0x1E6967EC8]);
      v55 = v64;
      v54 = v65;
    }

    if (v70)
    {
      v70(v55, v54, a5);
    }

    sub_1BF083258(&v67);
  }

  else
  {
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v46 = sub_1BF1797FC();
    __swift_project_value_buffer(v46, qword_1ED8F5298);
    sub_1BF083F38(a2, v17, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720], sub_1BF02C548);
    v47 = sub_1BF1797DC();
    v48 = sub_1BF17ACBC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v67.n128_u64[0] = v50;
      *v49 = 136446210;
      sub_1BF083F38(v17, v13, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720], sub_1BF02C548);
      v51 = sub_1BF178C6C();
      if (__swift_getEnumTagSinglePayload(v13, 1, v51) == 1)
      {
        v52 = 0x6E776F6E6B6E75;
        sub_1BF082FEC(v13, &qword_1ED8EE440, MEMORY[0x1E6967EC8]);
        v53 = 0xE700000000000000;
      }

      else
      {
        v52 = sub_1BF178BEC();
        v53 = v59;
        (*(*(v51 - 8) + 8))(v13, v51);
      }

      sub_1BF082FEC(v17, &qword_1ED8EE440, MEMORY[0x1E6967EC8]);
      v60 = sub_1BF01A7AC(v52, v53, &v67);

      *(v49 + 4) = v60;
      _os_log_impl(&dword_1BEFE0000, v47, v48, "Network operation request %{public}s missing task description", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1BFB547B0](v50, -1, -1);
      MEMORY[0x1BFB547B0](v49, -1, -1);
    }

    else
    {

      sub_1BF082FEC(v17, &qword_1ED8EE440, MEMORY[0x1E6967EC8]);
    }
  }
}

uint64_t sub_1BF07F6F4()
{
  v1 = v0;
  sub_1BF02C548(0, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v17 - v9;
  v11 = [v1 originalRequest];
  if (v11)
  {
    v12 = v11;
    sub_1BF178C1C();

    v13 = sub_1BF178C6C();
    v14 = 0;
  }

  else
  {
    v13 = sub_1BF178C6C();
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v14, 1, v13);
  sub_1BF083FA0(v5, v10, &qword_1ED8EE440, MEMORY[0x1E6967EC8]);
  sub_1BF178C6C();
  if (__swift_getEnumTagSinglePayload(v10, 1, v13) == 1)
  {
    sub_1BF082FEC(v10, &qword_1ED8EE440, MEMORY[0x1E6967EC8]);
    return 0x6E776F6E6B6E75;
  }

  else
  {
    v15 = sub_1BF178BEC();
    (*(*(v13 - 8) + 8))(v10, v13);
  }

  return v15;
}

Swift::Void __swiftcall NetworkOperationURLSessionDelegate.urlSession(_:task:didFinishCollecting:)(NSURLSession _, NSURLSessionTask task, NSURLSessionTaskMetrics didFinishCollecting)
{
  OUTLINED_FUNCTION_32();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_3_3();
  sub_1BF02C548(0, v10, v11, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v38 - v14;
  if (qword_1ED8EE9F0 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED8EE9F0);
  }

  v16 = sub_1BF1797FC();
  __swift_project_value_buffer(v16, qword_1ED8F5298);
  v17 = v9;
  v18 = v7;
  v19 = sub_1BF1797DC();
  v20 = sub_1BF17ACDC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_39_3();
    v38 = v5;
    v22 = v21;
    v23 = OUTLINED_FUNCTION_83();
    v24 = OUTLINED_FUNCTION_44_0();
    v39 = v24;
    *v22 = 136446466;
    v25 = sub_1BF07F6F4();
    sub_1BF01A7AC(v25, v26, &v39);
    OUTLINED_FUNCTION_82();
    *(v22 + 4) = v3;
    *(v22 + 12) = 2114;
    *(v22 + 14) = v18;
    *v23 = v18;
    v27 = v18;
    _os_log_impl(&dword_1BEFE0000, v19, v20, "Network operation %{public}s did finish collecting metrics: %{public}@", v22, 0x16u);
    OUTLINED_FUNCTION_2_4();
    sub_1BF02F3CC(v23, v28);
    OUTLINED_FUNCTION_28();
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  v29 = [v17 originalRequest];
  if (v29)
  {
    v30 = v29;
    sub_1BF178C1C();

    v31 = sub_1BF178C6C();
    v32 = 0;
  }

  else
  {
    v31 = sub_1BF178C6C();
    v32 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v32, 1, v31);
  v33 = [v17 response];
  v34 = OUTLINED_FUNCTION_41_0();
  sub_1BF07EF94(v34, v35, v33, v18, 0);

  OUTLINED_FUNCTION_3_3();
  sub_1BF082FEC(v15, v36, v37);
  OUTLINED_FUNCTION_26_2();
}

void NetworkOperationURLSessionDelegate.urlSession(_:dataTask:didReceive:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_1BF083158(a2);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    if (qword_1ED8EE9F0 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1ED8EE9F0);
    }

    v9 = sub_1BF1797FC();
    __swift_project_value_buffer(v9, qword_1ED8F5298);
    v10 = a2;
    v11 = OUTLINED_FUNCTION_61();
    sub_1BF014DC0(v11, v12);
    v13 = sub_1BF1797DC();
    v14 = sub_1BF17ACDC();

    v15 = OUTLINED_FUNCTION_61();
    sub_1BF014E18(v15, v16);
    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_39_3();
      v45[0].n128_u64[0] = OUTLINED_FUNCTION_29_2();
      *v42 = 136446466;
      v17 = sub_1BF07F6F4();
      v19 = sub_1BF01A7AC(v17, v18, v45);

      *&v42[4] = v19;
      *&v42[12] = 2082;
      OUTLINED_FUNCTION_61();
      v20 = sub_1BF17929C();
      v22 = sub_1BF01A7AC(v20, v21, v45);

      *&v42[14] = v22;
      OUTLINED_FUNCTION_69_0(&dword_1BEFE0000, v13, v14, "Network operation with request %{public}s received data (%{public}s)");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_28();
    }

    sub_1BF07DACC(v7, v8, &v38);
    v23 = OUTLINED_FUNCTION_61();
    sub_1BF07D844(v23, v24);
    v25 = *(v3 + OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_taskLock);
    UnfairLock.lock()();
    v45[0] = v38;
    v45[1] = v39;
    v45[2] = v40;
    v45[3] = v41;
    v26 = OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_runningTasks;
    OUTLINED_FUNCTION_38(v3 + OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_runningTasks, v27);
    sub_1BF083220(v45, v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v42 = *(v3 + v26);
    sub_1BF082980(v45, v7, v8, isUniquelyReferenced_nonNull_native);
    *(v3 + v26) = *v42;

    swift_endAccess();
    os_unfair_lock_unlock(*(v25 + 16));
    *v42 = v38;
    *&v42[16] = v39;
    v43 = v40;
    v44 = v41;
    sub_1BF083258(v42);
  }

  else
  {
    if (qword_1ED8EE9F0 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1ED8EE9F0);
    }

    v29 = sub_1BF1797FC();
    __swift_project_value_buffer(v29, qword_1ED8F5298);
    v30 = a2;
    oslog = sub_1BF1797DC();
    v31 = sub_1BF17ACBC();

    if (os_log_type_enabled(oslog, v31))
    {
      v32 = OUTLINED_FUNCTION_70();
      v33 = OUTLINED_FUNCTION_44_0();
      v45[0].n128_u64[0] = v33;
      *v32 = 136446210;
      v34 = sub_1BF07F6F4();
      v36 = sub_1BF01A7AC(v34, v35, v45);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1BEFE0000, oslog, v31, "Error: Missing task identifier for request %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_28();
    }

    else
    {
    }
  }
}

void NetworkOperationURLSessionDelegate.urlSession(_:downloadTask:didFinishDownloadingTo:)()
{
  OUTLINED_FUNCTION_32();
  v72 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1BF17923C();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  if (qword_1ED8EE9F0 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED8EE9F0);
  }

  v14 = sub_1BF1797FC();
  __swift_project_value_buffer(v14, qword_1ED8F5298);
  (*(v8 + 16))(v13, v3, v6);
  v15 = v5;
  v16 = sub_1BF1797DC();
  v17 = sub_1BF17ACDC();

  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_39_3();
    *&v78[0] = OUTLINED_FUNCTION_29_2();
    *v1 = 136446466;
    v18 = sub_1BF07F6F4();
    v20 = OUTLINED_FUNCTION_71(v18, v19);

    *(v1 + 4) = v20;
    *(v1 + 12) = 2082;
    v21 = sub_1BF17913C();
    v23 = v22;
    v24 = OUTLINED_FUNCTION_17_2();
    v25(v24);
    v26 = sub_1BF01A7AC(v21, v23, v78);

    *(v1 + 14) = v26;
    OUTLINED_FUNCTION_69_0(&dword_1BEFE0000, v16, v17, "Network operation with request %{public}s finished downloading data to location (%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  else
  {

    v27 = OUTLINED_FUNCTION_17_2();
    v28(v27);
  }

  sub_1BF17927C();
  v29 = sub_1BF083158(v15);
  if (v30)
  {
    v31 = v29;
    v32 = v30;
    v33 = v15;
    v34 = OUTLINED_FUNCTION_17_2();
    sub_1BF014DC0(v34, v35);
    v36 = sub_1BF1797DC();
    v37 = sub_1BF17ACDC();

    v38 = OUTLINED_FUNCTION_17_2();
    sub_1BF014E18(v38, v39);
    if (os_log_type_enabled(v36, v37))
    {
      OUTLINED_FUNCTION_39_3();
      *&v78[0] = OUTLINED_FUNCTION_29_2();
      *v75 = 136446466;
      v40 = sub_1BF07F6F4();
      OUTLINED_FUNCTION_72(v40, v41);
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_46_1();
      v42 = OUTLINED_FUNCTION_17_2();
      sub_1BF014DC0(v42, v43);
      OUTLINED_FUNCTION_17_2();
      v44 = sub_1BF17929C();
      v45 = OUTLINED_FUNCTION_17_2();
      sub_1BF014E18(v45, v46);
      v47 = OUTLINED_FUNCTION_36();
      sub_1BF01A7AC(v47, v48, v49);
      OUTLINED_FUNCTION_82();
      *&v75[14] = v44;
      OUTLINED_FUNCTION_69_0(&dword_1BEFE0000, v36, v37, "Network operation with request %{public}s downloaded data (%{public}s)");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_28();
    }

    v50 = OUTLINED_FUNCTION_40_1();
    sub_1BF07DACC(v50, v51, v52);
    v53 = OUTLINED_FUNCTION_17_2();
    sub_1BF07D844(v53, v54);
    v55 = *(v72 + OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_taskLock);
    UnfairLock.lock()();
    v78[0] = OUTLINED_FUNCTION_73();
    v78[1] = v56;
    v78[2] = v73;
    v78[3] = v74;
    v57 = OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_runningTasks;
    swift_beginAccess();
    sub_1BF083220(v78, v75);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v75 = *(v72 + v57);
    sub_1BF082980(v78, v31, v32, isUniquelyReferenced_nonNull_native);
    *(v72 + v57) = *v75;

    swift_endAccess();
    os_unfair_lock_unlock(*(v55 + 16));
    v59 = OUTLINED_FUNCTION_17_2();
    sub_1BF014E18(v59, v60);
    *v75 = OUTLINED_FUNCTION_73();
    *&v75[16] = v61;
    v76 = v73;
    v77 = v74;
    sub_1BF083258(v75);
  }

  else
  {
    v62 = v15;
    v63 = sub_1BF1797DC();
    v64 = sub_1BF17ACBC();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = OUTLINED_FUNCTION_70();
      v66 = OUTLINED_FUNCTION_44_0();
      *&v78[0] = v66;
      *v65 = 136446210;
      v67 = sub_1BF07F6F4();
      v69 = OUTLINED_FUNCTION_71(v67, v68);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_1BEFE0000, v63, v64, "Error: Missing task identifier for request %{public}s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_28();
    }

    v70 = OUTLINED_FUNCTION_17_2();
    sub_1BF014E18(v70, v71);
  }

  OUTLINED_FUNCTION_26_2();
}

Swift::Void __swiftcall NetworkOperationURLSessionDelegate.urlSessionDidFinishEvents(forBackgroundURLSession:)(NSURLSession forBackgroundURLSession)
{
  v2 = v1;
  if (qword_1ED8EE9F0 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED8EE9F0);
  }

  v4 = sub_1BF1797FC();
  __swift_project_value_buffer(v4, qword_1ED8F5298);
  v5 = forBackgroundURLSession.super.isa;
  v6 = sub_1BF1797DC();
  v7 = sub_1BF17ACDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_70();
    v9 = OUTLINED_FUNCTION_44_0();
    v23[0] = v9;
    *v8 = 136446210;
    v10 = sub_1BF07E1D8();
    v12 = sub_1BF01A7AC(v10, v11, v23);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1BEFE0000, v6, v7, "Background URL session did finish for identifier: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  v13 = *(v2 + OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_observerLock);
  UnfairLock.lock()();
  v14 = OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_sessionDidFinishObservers;
  swift_beginAccess();
  v15 = *(v2 + v14);
  *(v2 + v14) = MEMORY[0x1E69E7CC0];
  os_unfair_lock_unlock(*(v13 + 16));
  v16 = sub_1BEFE90B4(v15);
  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = v16;
  if (v16 >= 1)
  {
    for (i = 0; i != v17; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = OUTLINED_FUNCTION_41_0();
        v20 = MEMORY[0x1BFB53020](v19);
      }

      else
      {
        v20 = *(v15 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v21 = *(v20 + 16);

        v21(v22);
      }
    }

LABEL_14:

    return;
  }

  __break(1u);
}

uint64_t sub_1BF080A30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v88 = a3;
  v89 = a1;
  v90 = a2;
  v5 = sub_1BF178DEC();
  v87 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v86 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1BF02C548(0, &unk_1ED8EE430, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v91 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v85 - v14;
  sub_1BF02C548(0, &qword_1ED8EF860, MEMORY[0x1E6969530], v8);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v85 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v85 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v85 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v85 - v34;
  v38 = MEMORY[0x1EEE9AC00](v36, v37);
  v40 = &v85 - v39;
  v92 = v31;
  v93 = v5;
  v94 = &v85 - v39;
  if (a4)
  {
    v41 = [a4 transactionMetrics];
    sub_1BEFF9AF8(0, &qword_1ED8EDD20, 0x1E696AFA0);
    v42 = sub_1BF17A4DC();

    if (sub_1BEFE90B4(v42))
    {
      sub_1BF0F428C();
      if ((v42 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x1BFB53020](0, v42);
      }

      else
      {
        v43 = *(v42 + 32);
      }

      v44 = v43;

      if (v44)
      {
        v45 = [v44 fetchStartDate];
        if (v45)
        {
          v46 = v45;
          sub_1BF17945C();

          v47 = sub_1BF1794AC();
          v48 = 0;
        }

        else
        {
          v47 = sub_1BF1794AC();
          v48 = 1;
        }

        v54 = 1;
        __swift_storeEnumTagSinglePayload(v27, v48, 1, v47);
        sub_1BF083FA0(v27, v40, &qword_1ED8EF860, MEMORY[0x1E6969530]);
        v85 = v44;
        v55 = [v44 responseStartDate];
        if (v55)
        {
          v56 = v55;
          sub_1BF17945C();

          v54 = 0;
        }

        v57 = sub_1BF1794AC();
        v58 = 1;
        __swift_storeEnumTagSinglePayload(v23, v54, 1, v57);
        sub_1BF083FA0(v23, v35, &qword_1ED8EF860, MEMORY[0x1E6969530]);
        v59 = [v85 requestStartDate];
        if (v59)
        {
          v60 = v59;
          v51 = v35;
          sub_1BF17945C();

          v58 = 0;
        }

        else
        {
          v51 = v35;
        }

        v5 = v93;
        __swift_storeEnumTagSinglePayload(v19, v58, 1, v57);
        sub_1BF083FA0(v19, v92, &qword_1ED8EF860, MEMORY[0x1E6969530]);
        v52 = v85;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v53 = sub_1BF1794AC();
    __swift_storeEnumTagSinglePayload(v40, 1, 1, v53);
    v51 = v35;
    __swift_storeEnumTagSinglePayload(v35, 1, 1, v53);
    __swift_storeEnumTagSinglePayload(v92, 1, 1, v53);
    v52 = 0;
    v5 = v93;
LABEL_18:
    v61 = [a4 taskInterval];
    sub_1BF178D9C();

    v50 = 0;
    goto LABEL_19;
  }

  v49 = sub_1BF1794AC();
  v50 = 1;
  __swift_storeEnumTagSinglePayload(v40, 1, 1, v49);
  v51 = v35;
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v49);
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v49);
  v52 = 0;
LABEL_19:
  __swift_storeEnumTagSinglePayload(v15, v50, 1, v5);
  sub_1BF02C548(0, &unk_1ED8EDD10, sub_1BF083DE0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF17EBE0;
  *(inited + 32) = 0x6F43737574617473;
  *(inited + 40) = 0xEA00000000006564;
  if (v88 && (objc_opt_self(), (v63 = swift_dynamicCastObjCClass()) != 0))
  {
    v64 = [v63 statusCode];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 48) = v64;
  }

  else
  {
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  *(inited + 80) = 1702521203;
  *(inited + 88) = 0xE400000000000000;
  v65 = objc_opt_self();
  v66 = [v65 stringFromByteCount:MEMORY[0x1BFB51150](v89 countStyle:{v90), 2}];
  v67 = sub_1BF17A0AC();
  v69 = v68;

  v70 = MEMORY[0x1E69E6158];
  *(inited + 96) = v67;
  *(inited + 104) = v69;
  *(inited + 120) = v70;
  *(inited + 128) = 0x646575657571;
  *(inited + 136) = 0xE600000000000000;
  MEMORY[0x1EEE9AC00](v71, v72);
  *(&v85 - 2) = v15;
  v73 = sub_1BF1132A8(sub_1BF083E70, (&v85 - 4), (inited + 144));
  *(inited + 176) = 1650881652;
  *(inited + 184) = 0xE400000000000000;
  MEMORY[0x1EEE9AC00](v73, v74);
  v75 = v92;
  *(&v85 - 2) = v92;
  sub_1BF1132A8(sub_1BF083ED4, (&v85 - 4), (inited + 192));
  *(inited + 224) = 0x6C61746F74;
  *(inited + 232) = 0xE500000000000000;
  v76 = v91;
  sub_1BF083F38(v15, v91, &unk_1ED8EE430, MEMORY[0x1E6968130], MEMORY[0x1E69E6720], sub_1BF02C548);
  v77 = v93;
  if (__swift_getEnumTagSinglePayload(v76, 1, v93) == 1)
  {
    *(inited + 240) = 0u;
    *(inited + 256) = 0u;
  }

  else
  {
    v78 = v76;
    v80 = v86;
    v79 = v87;
    (*(v87 + 32))(v86, v78, v77);
    sub_1BF081954((inited + 240));
    (*(v79 + 8))(v80, v77);
  }

  sub_1BF0819DC(inited);
  v82 = v81;

  swift_setDeallocating();
  sub_1BF0C832C();
  v83 = MEMORY[0x1E6969530];
  sub_1BF082FEC(v51, &qword_1ED8EF860, MEMORY[0x1E6969530]);
  sub_1BF082FEC(v94, &qword_1ED8EF860, v83);
  sub_1BF082FEC(v15, &unk_1ED8EE430, MEMORY[0x1E6968130]);
  sub_1BF082FEC(v75, &qword_1ED8EF860, v83);
  return v82;
}

id NetworkOperationURLSessionDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NetworkOperationURLSessionDelegate.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_taskLock;
  v9 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v0[v3] = UnfairLock.init(options:)(&v9);
  v4 = OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_runningTasks;
  v5 = MEMORY[0x1E69E7CC0];
  *&v1[v4] = sub_1BF179DAC();
  v6 = OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_observerLock;
  v9 = 1;
  swift_allocObject();
  *&v1[v6] = UnfairLock.init(options:)(&v9);
  *&v1[OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_sessionDidFinishObservers] = v5;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id NetworkOperationURLSessionDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BF08153C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BF1794AC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF178DCC();
  sub_1BF1793DC();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  v13[1] = sub_1BF081688(v8);
  v14 = sub_1BF17B6FC();
  v15 = v9;
  result = MEMORY[0x1BFB52000](29549, 0xE200000000000000);
  v11 = v14;
  v12 = v15;
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v11;
  a1[1] = v12;
  return result;
}

uint64_t sub_1BF081688(double a1)
{
  v1 = floor(a1 * 1000.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1BF0816E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, unint64_t *a4@<X4>, void (*a5)(uint64_t)@<X5>, void (*a6)(char *, uint64_t)@<X6>, _OWORD *a7@<X8>)
{
  v25 = a1;
  v26 = a6;
  v27 = a7;
  v11 = a3(0);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v25 - v16;
  v18 = MEMORY[0x1E69E6720];
  sub_1BF02C548(0, a4, a5, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v25 - v21;
  sub_1BF083F38(a2, &v25 - v21, a4, a5, v18, sub_1BF02C548);
  result = __swift_getEnumTagSinglePayload(v22, 1, v11);
  if (result == 1)
  {
    v24 = v27;
    *v27 = 0u;
    v24[1] = 0u;
  }

  else
  {
    (*(v13 + 32))(v17, v22, v11);
    v26(v17, v25);
    result = (*(v13 + 8))(v17, v11);
    if (v7)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BF0818CC@<X0>(uint64_t *a2@<X8>)
{
  sub_1BF1793DC();
  sub_1BF081688(v3);
  v6 = sub_1BF17B6FC();
  v7 = v4;
  result = MEMORY[0x1BFB52000](29549, 0xE200000000000000);
  a2[3] = MEMORY[0x1E69E6158];
  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t sub_1BF081954@<X0>(uint64_t *a1@<X8>)
{
  sub_1BF178DDC();
  sub_1BF081688(v2);
  v5 = sub_1BF17B6FC();
  v6 = v3;
  result = MEMORY[0x1BFB52000](29549, 0xE200000000000000);
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v5;
  a1[1] = v6;
  return result;
}

void sub_1BF0819DC(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CA0];
  v13 = a1 + 32;
LABEL_2:
  for (i = v3 + 48 * v1; ; i += 48)
  {
    if (v2 == v1)
    {
      v17[0] = v4;
      sub_1BEFEC0B0(0, &qword_1ED8EE9D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1BF01B738();
      sub_1BF179F7C();

      return;
    }

    if (v1 >= v2)
    {
      break;
    }

    sub_1BF084014(i, v17);
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v7 = v17[0];
    v8 = v17[1];
    sub_1BF083F38(&v18, &v14, &qword_1ED8EFBA0, v5 + 8, MEMORY[0x1E69E6720], sub_1BEFEC0B0);
    if (v15)
    {
      sub_1BEFF9A40(&v14, v16);
      *&v14 = 0;
      *(&v14 + 1) = 0xE000000000000000;
      MEMORY[0x1BFB52000](v7, v8);
      MEMORY[0x1BFB52000](61, 0xE100000000000000);
      sub_1BF17B40C();
      v9 = v14;
      __swift_destroy_boxed_opaque_existential_1(v16);
      sub_1BF02F3CC(v17, sub_1BF083DE0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF0201A4();
        v4 = v11;
      }

      v10 = *(v4 + 16);
      if (v10 >= *(v4 + 24) >> 1)
      {
        sub_1BF0201A4();
        v4 = v12;
      }

      *(v4 + 16) = v10 + 1;
      *(v4 + 16 * v10 + 32) = v9;
      ++v1;
      v3 = v13;
      goto LABEL_2;
    }

    sub_1BF0831B8(&v14, &qword_1ED8EFBA0, v5 + 8);
    sub_1BF02F3CC(v17, sub_1BF083DE0);
    ++v1;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1BF081CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1BF081D2C()
{

  sub_1BF042FB8(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1BF081DB4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v4 = v6;
      goto LABEL_6;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_6:
      result = sub_1BF083054(a1, v4);
      break;
    default:
      result = sub_1BF1792FC();
      break;
  }

  return result;
}

unint64_t sub_1BF081F08()
{
  result = qword_1EBDCAA80[0];
  if (!qword_1EBDCAA80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDCAA80);
  }

  return result;
}

char *sub_1BF081F5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BEFEC0B0(0, &qword_1ED8EF478, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
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

unint64_t sub_1BF082068(uint64_t a1)
{
  v2 = sub_1BF17B12C();

  return sub_1BF082264(a1, v2);
}

unint64_t sub_1BF0820AC()
{
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1BFB53950](v0);
  sub_1BF17BB9C();
  v1 = OUTLINED_FUNCTION_75();

  return sub_1BF0008D0(v1, v2);
}

unint64_t sub_1BF082104(uint64_t a1)
{
  v1 = a1;
  v2 = sub_1BEFEF8DC();

  return sub_1BF082328(v1, v2);
}

void sub_1BF082148()
{
  OUTLINED_FUNCTION_25_2();
  sub_1BF17923C();
  sub_1BEFE7240(&qword_1ED8ED690, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  OUTLINED_FUNCTION_77_0();
  sub_1BF179F1C();
  sub_1BEFE7398();
}

unint64_t sub_1BF08220C()
{
  OUTLINED_FUNCTION_34_0();
  sub_1BF083514(v4, v0);
  sub_1BF17BB9C();
  v1 = OUTLINED_FUNCTION_75();

  return sub_1BF0824B4(v1, v2);
}

unint64_t sub_1BF082264(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1BF083BD8(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1BFB52F10](v8, a1);
    sub_1BF083C34(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1BF082328(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x6974616D6F747561;
          v8 = 0xEA00000000006E6FLL;
        }

        else
        {
          v8 = 0xE400000000000000;
          v7 = 1869440356;
        }
      }

      else
      {
        v7 = 0x616D726F66726570;
        v8 = 0xEB0000000065636ELL;
      }

      if (a1)
      {
        v9 = a1 == 1 ? 0x6974616D6F747561 : 1869440356;
        v10 = a1 == 1 ? 0xEA00000000006E6FLL : 0xE400000000000000;
      }

      else
      {
        v9 = 0x616D726F66726570;
        v10 = 0xEB0000000065636ELL;
      }

      if (v7 == v9 && v8 == v10)
      {
        break;
      }

      v12 = sub_1BF17B86C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1BF0824B4(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF083738(v6, a1);
    v8 = v7;

    if (v8)
    {
      break;
    }
  }

  return i;
}

void sub_1BF082568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_51_0();
  sub_1BF014CA8();
  if (v12)
  {
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_9_7();
    sub_1BF050340();
    OUTLINED_FUNCTION_21_3(v13);

    OUTLINED_FUNCTION_64();
    sub_1BF17B45C();
    *v10 = a10;
  }

  else
  {
    *v11 = 0u;
    v11[1] = 0u;
  }

  OUTLINED_FUNCTION_85_0();
}

double sub_1BF082600@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_1BF014CA8();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *v1;
    sub_1BF083D48();
    sub_1BF17B43C();

    v6 = (*(v10 + 56) + (v5 << 6));
    v7 = v6[1];
    *a1 = *v6;
    a1[1] = v7;
    v8 = v6[3];
    a1[2] = v6[2];
    a1[3] = v8;
    sub_1BF17B45C();
    *v1 = v10;
  }

  else
  {
    result = 0.0;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

void sub_1BF0826E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  v12 = v11;
  sub_1BEFF6B90();
  if (v14)
  {
    v15 = v13;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = OUTLINED_FUNCTION_9_7();
    sub_1BF02647C(v16);
    OUTLINED_FUNCTION_21_3(v17);

    sub_1BEFE87B0((*(a10 + 56) + 40 * v15), v12);
    sub_1BEFE6EA8(0, &qword_1ED8EACC8, &protocol descriptor for ReferenceTypeServiceType);
    sub_1BF0264F8();
    sub_1BF17B45C();
    *v10 = a10;
  }

  else
  {
    *(v12 + 32) = 0;
    *v12 = 0u;
    *(v12 + 16) = 0u;
  }

  OUTLINED_FUNCTION_85_0();
}

void sub_1BF0827B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_51_0();
  sub_1BF022978();
  if (v13)
  {
    OUTLINED_FUNCTION_84();
    v14 = OUTLINED_FUNCTION_9_7();
    sub_1BF083C88(v14);
    OUTLINED_FUNCTION_21_3(v15);
    v16 = *(a10 + 48);
    v17 = sub_1BF17B42C();
    OUTLINED_FUNCTION_12();
    (*(v18 + 8))(v16 + *(v18 + 72) * v12, v17);
    OUTLINED_FUNCTION_64();
    sub_1BF083CF8();
    sub_1BF17B45C();
    *v10 = a10;
  }

  else
  {
    *v11 = 0u;
    v11[1] = 0u;
  }

  OUTLINED_FUNCTION_85_0();
}

void sub_1BF082874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  sub_1BF08220C();
  if (v11)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v12 = OUTLINED_FUNCTION_60_2();
    sub_1BF083438(v12);
    OUTLINED_FUNCTION_81(v13);

    sub_1BF027AD4(0);
    sub_1BF02C548(0, &qword_1ED8E9CF8, sub_1BF027B68, type metadata accessor for Promise);
    sub_1BEFE7240(&qword_1ED8ECBD8, sub_1BF027AD4, MEMORY[0x1E69E64F8]);
    OUTLINED_FUNCTION_77_0();
    sub_1BF17B45C();
    *v10 = a10;
  }

  OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1BF082980(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1BF014CA8();
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  sub_1BF083D48();
  if ((sub_1BF17B43C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1BF014CA8();
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = *(v16 + 56) + (v12 << 6);

    return sub_1BF083DA8(a1, v17);
  }

  else
  {
    sub_1BF0BD508(v12, a2, a3, a1, v16);

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

void sub_1BF082B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_49_1();
  v15 = v14;
  v17 = OUTLINED_FUNCTION_16_2(v14, v16);
  sub_1BF00088C(v17);
  OUTLINED_FUNCTION_1_5();
  if (v18)
  {
    __break(1u);
LABEL_12:
    sub_1BF17BAAC();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_53_1();
  sub_1BF083B78();
  if (OUTLINED_FUNCTION_18_3(v19))
  {
    sub_1BF00088C(v10);
    OUTLINED_FUNCTION_47_0();
    if (!v21)
    {
      goto LABEL_12;
    }

    v13 = v20;
  }

  if (v12)
  {
    *(*(*v11 + 56) + v13) = v15;
    OUTLINED_FUNCTION_55();
  }

  else
  {
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_55();

    sub_1BF0BD55C(v22, v23, v24, v25);
  }
}

void sub_1BF082BE0()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_49_1();
  v4 = v3;
  OUTLINED_FUNCTION_16_2(v3, v5);
  sub_1BF0820AC();
  OUTLINED_FUNCTION_1_5();
  if (v6)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for UnitsStyle();
    sub_1BF17BAAC();
    __break(1u);
    return;
  }

  v7 = OUTLINED_FUNCTION_53_1();
  sub_1BF083ABC(v7);
  if (OUTLINED_FUNCTION_18_3(v8))
  {
    sub_1BF0820AC();
    OUTLINED_FUNCTION_47_0();
    if (!v10)
    {
      goto LABEL_14;
    }

    v2 = v9;
  }

  if (v1)
  {
    *(*(*v0 + 56) + 8 * v2) = v4;
    OUTLINED_FUNCTION_55();
  }

  else
  {
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_55();

    sub_1BF04E0B8(v13, v14, v15, v16);
  }
}

uint64_t sub_1BF082CB0()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_4_6(v2, v3);
  sub_1BF014CA8();
  OUTLINED_FUNCTION_1_5();
  if (v4)
  {
    __break(1u);
LABEL_13:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  v5 = OUTLINED_FUNCTION_19_4();
  sub_1BF08334C(v5);
  v7 = OUTLINED_FUNCTION_10_7(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_24_4();
    sub_1BF014CA8();
    OUTLINED_FUNCTION_8_2();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_22_2(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_55();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_13_4();
    sub_1BEFF6D1C(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_55();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

uint64_t sub_1BF082D70()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_16_2(v2, v3);
  sub_1BF08220C();
  OUTLINED_FUNCTION_1_5();
  if (v6)
  {
    __break(1u);
LABEL_14:
    sub_1BF027AD4(0);
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  v7 = v4;
  v8 = v5;
  sub_1BF083438(0);
  if (OUTLINED_FUNCTION_18_3(v9))
  {
    sub_1BF08220C();
    OUTLINED_FUNCTION_8_2();
    if (!v11)
    {
      goto LABEL_14;
    }

    v7 = v10;
  }

  if (v8)
  {
    *(*(*v0 + 56) + 8 * v7) = v1;
    OUTLINED_FUNCTION_55();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_31_3();
    sub_1BF04E0B8(v14, v15, v1, v16);
    OUTLINED_FUNCTION_55();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

void sub_1BF082E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_68_0();
  v12 = v11;
  v14 = v13;
  v15 = OUTLINED_FUNCTION_16_2(v13, v11);
  sub_1BF00088C(v15);
  OUTLINED_FUNCTION_1_5();
  if (v18)
  {
    __break(1u);
LABEL_12:
    sub_1BF17BAAC();
    __break(1u);
    return;
  }

  v19 = v16;
  v20 = v17;
  sub_1BF0833D8();
  if (OUTLINED_FUNCTION_18_3(v21))
  {
    sub_1BF00088C(v12);
    OUTLINED_FUNCTION_8_2();
    if (!v23)
    {
      goto LABEL_12;
    }

    v19 = v22;
  }

  if (v20)
  {
    *(*(*v10 + 56) + v19) = v14 & 1;
    OUTLINED_FUNCTION_55();
  }

  else
  {
    OUTLINED_FUNCTION_31_3();
    OUTLINED_FUNCTION_55();

    sub_1BF0BD594(v24, v25, v26, v27);
  }
}

void sub_1BF082F24()
{
  if (!qword_1EBDCB478)
  {
    v0 = sub_1BF179E6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCB478);
    }
  }
}

void sub_1BF082F84(uint64_t a1)
{
  if (!qword_1ED8EF4A0)
  {
    sub_1BEFF9AF8(255, &qword_1ED8EF730, 0x1E69E58C0);
    v1 = sub_1BF17AE6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8EF4A0);
    }
  }
}

uint64_t sub_1BF082FEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BF02C548(0, a2, a3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_12();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BF083054(uint64_t a1, uint64_t a2)
{
  result = sub_1BF178F3C();
  if (!result || (result = sub_1BF178F5C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1BF178F4C();
      return sub_1BF1792FC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF0830E8(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BF17A0AC();

  return v3;
}

uint64_t sub_1BF083158(void *a1)
{
  v1 = [a1 taskDescription];
  if (v1)
  {
    v2 = v1;
    sub_1BF17A0AC();
  }

  return OUTLINED_FUNCTION_36();
}

uint64_t sub_1BF0831B8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1BEFEC0B0(0, a2, a3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_12();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BF0832AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1BF0832EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BF08334C(uint64_t a1)
{
  if (!qword_1ED8EADC8)
  {
    sub_1BEFEC0B0(255, &qword_1ED8EE9D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v1 = sub_1BF17B46C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8EADC8);
    }
  }
}

void sub_1BF0833D8()
{
  if (!qword_1EBDCA8C8)
  {
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCA8C8);
    }
  }
}

void sub_1BF083438(uint64_t a1)
{
  if (!qword_1ED8E9BB8)
  {
    sub_1BF027AD4(255);
    sub_1BF02C548(255, &qword_1ED8E9CF8, sub_1BF027B68, type metadata accessor for Promise);
    sub_1BEFE7240(&qword_1ED8ECBD8, sub_1BF027AD4, MEMORY[0x1E69E64F8]);
    v1 = sub_1BF17B46C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8E9BB8);
    }
  }
}

uint64_t sub_1BF083514(const void *a1, uint64_t a2)
{
  v4 = sub_1BF17923C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v9 = sub_1BF17BB9C();
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;
  v20[3] = v5 + 16;
  v20[4] = v9;
  v20[2] = v5 + 8;
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v15 = 0;
  for (i = 0; v12; v15 ^= v19)
  {
    v17 = i;
LABEL_9:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    (*(v5 + 16))(v8, *(a2 + 48) + *(v5 + 72) * (v18 | (v17 << 6)), v4);
    sub_1BEFE7240(&qword_1ED8ED690, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v19 = sub_1BF179F1C();
    result = (*(v5 + 8))(v8, v4);
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      return MEMORY[0x1BFB53950](v15);
    }

    v12 = *(a2 + 56 + 8 * v17);
    ++i;
    if (v12)
    {
      i = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1BF083738(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF17923C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v46 = &v35 - v11;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v35 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v17 = 0;
    v18 = *(a1 + 56);
    v36 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v42 = v5 + 32;
    v44 = a2 + 56;
    v45 = v5 + 16;
    v23 = (v5 + 8);
    v37 = v22;
    v38 = &v35 - v14;
    v39 = v5;
    v40 = a1;
    if (v21)
    {
      while (2)
      {
        v24 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
LABEL_13:
        v27 = *(a1 + 48);
        v43 = *(v5 + 72);
        v28 = *(v5 + 16);
        v28(v16, v27 + v43 * (v24 | (v17 << 6)), v4, v15);
        (*(v5 + 32))(v46, v16, v4);
        sub_1BEFE7240(&qword_1ED8ED690, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        v29 = sub_1BF179F1C();
        v30 = a2;
        v31 = ~(-1 << *(a2 + 32));
        do
        {
          v32 = v29 & v31;
          if (((*(v44 + (((v29 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v31)) & 1) == 0)
          {
            (*v23)(v46, v4);
            return;
          }

          (v28)(v8, *(v30 + 48) + v32 * v43, v4);
          sub_1BEFE7240(&qword_1ED8EACE8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
          v33 = sub_1BF17A05C();
          v34 = *v23;
          (*v23)(v8, v4);
          v29 = v32 + 1;
        }

        while ((v33 & 1) == 0);
        v34(v46, v4);
        a2 = v30;
        v5 = v39;
        a1 = v40;
        v22 = v37;
        v16 = v38;
        v21 = v41;
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v17 >= v22)
      {
        return;
      }

      v26 = *(v36 + 8 * v17);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v41 = (v26 - 1) & v26;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_1BF083ABC(uint64_t a1)
{
  if (!qword_1EBDCA8C0)
  {
    type metadata accessor for UnitsStyle();
    sub_1BEFF9AF8(255, &unk_1EBDCA918, 0x1E696AB70);
    sub_1BEFE7240(&qword_1EBDCA910, type metadata accessor for UnitsStyle, &unk_1BF17DE9C);
    v1 = sub_1BF17B46C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDCA8C0);
    }
  }
}

void sub_1BF083B78()
{
  if (!qword_1EBDCB5B8)
  {
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCB5B8);
    }
  }
}

void sub_1BF083C88(uint64_t a1)
{
  if (!qword_1EBDCA8B0)
  {
    sub_1BF17B42C();
    sub_1BF083CF8();
    v1 = sub_1BF17B46C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDCA8B0);
    }
  }
}

unint64_t sub_1BF083CF8()
{
  result = qword_1EBDCA888;
  if (!qword_1EBDCA888)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBDCA888);
  }

  return result;
}

void sub_1BF083D48()
{
  if (!qword_1EBDCB5C8)
  {
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCB5C8);
    }
  }
}

void sub_1BF083DE0(uint64_t a1)
{
  if (!qword_1ED8EDD90)
  {
    sub_1BEFEC0B0(255, &qword_1ED8EFBA0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8EDD90);
    }
  }
}

uint64_t sub_1BF083F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  a6(0, a3, a4, a5);
  OUTLINED_FUNCTION_12();
  v7 = OUTLINED_FUNCTION_36();
  v8(v7);
  return a2;
}

uint64_t sub_1BF083FA0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1BF02C548(0, a3, a4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_36();
  v6(v5);
  return a2;
}

uint64_t sub_1BF084014(uint64_t a1, uint64_t a2)
{
  sub_1BF083DE0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t OUTLINED_FUNCTION_67()
{

  return sub_1BF01A7AC(v0, v1, (v2 - 160));
}

void String.FormatArgument.formatValue.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      v4 = MEMORY[0x1E69E72F0];
      v5 = MEMORY[0x1E69E7358];
    }

    else
    {
      v4 = MEMORY[0x1E69E7668];
      v5 = MEMORY[0x1E69E76D0];
    }

    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    *a1 = v3;
  }

  else
  {
    v6 = v1[1];
    *(a1 + 24) = MEMORY[0x1E69E6158];
    *(a1 + 32) = sub_1BF071CD8();
    *a1 = v3;
    *(a1 + 8) = v6;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

uint64_t sub_1BF08416C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BF17B86C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x3233746E69 && a2 == 0xE500000000000000;
    if (v6 || (sub_1BF17B86C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x3233746E6975 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BF17B86C();

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

uint64_t sub_1BF0842B0(unsigned __int8 a1)
{
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](a1);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0842F8(char a1)
{
  if (!a1)
  {
    return 0x676E69727473;
  }

  if (a1 == 1)
  {
    return 0x3233746E69;
  }

  return 0x3233746E6975;
}

uint64_t sub_1BF084358(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF17B86C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF0843C8()
{
  sub_1BF17BB6C();
  OUTLINED_FUNCTION_13_5();
  return sub_1BF17BB9C();
}

uint64_t sub_1BF084420(uint64_t a1)
{
  v2 = *v1;
  sub_1BF17BB6C();
  sub_1BF084288(v4, v2);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF08446C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF08416C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF084494@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF084270();
  *a1 = result;
  return result;
}

uint64_t sub_1BF0844BC(uint64_t a1)
{
  v2 = sub_1BF085CB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF0844F8(uint64_t a1)
{
  v2 = sub_1BF085CB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF084558@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF084344();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BF084584(uint64_t a1)
{
  v2 = sub_1BF085C10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF0845C0(uint64_t a1)
{
  v2 = sub_1BF085C10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF0845FC(uint64_t a1)
{
  v2 = sub_1BF085C64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF084638(uint64_t a1)
{
  v2 = sub_1BF085C64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF084674(uint64_t a1)
{
  v2 = sub_1BF085BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF0846B0(uint64_t a1)
{
  v2 = sub_1BF085BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t String.FormatValidationError.hashValue.getter()
{
  sub_1BF17BB6C();
  OUTLINED_FUNCTION_13_5();
  return sub_1BF17BB9C();
}

uint64_t sub_1BF084780(uint64_t a1)
{
  sub_1BF17BB6C();
  OUTLINED_FUNCTION_13_5();
  return sub_1BF17BB9C();
}

uint64_t _sSS13TeaFoundationE25stringWithValidatedFormat_15formatArgumentsS2S_SaySSAAE0F8ArgumentOGtSSAAE0F15ValidationErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v44 = *MEMORY[0x1E69E9840];
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    *&v41 = MEMORY[0x1E69E7CC0];
    sub_1BF00DD60();
    v5 = v41;
    v39 = v3;
    v6 = (v3 + 48);
    v7 = v4;
    do
    {
      v8 = *v6;
      v6 += 24;
      v9 = qword_1BF17F528[v8];
      *&v41 = v5;
      v10 = *(v5 + 16);
      if (v10 >= *(v5 + 24) >> 1)
      {
        sub_1BF00DD60();
        v5 = v41;
      }

      *(v5 + 16) = v10 + 1;
      v11 = v5 + 16 * v10;
      *(v11 + 32) = v9;
      *(v11 + 40) = 0xE200000000000000;
      --v7;
    }

    while (v7);
    v3 = v39;
  }

  *&v41 = v5;
  sub_1BF02027C();
  sub_1BF01B738();
  sub_1BF179F7C();

  v12 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1BF070674(0, v4, 0);
    v12 = v40;
    v13 = (v3 + 48);
    v14 = MEMORY[0x1E69E7358];
    v15 = MEMORY[0x1E69E7668];
    v16 = MEMORY[0x1E69E76D0];
    do
    {
      v17 = *(v13 - 2);
      if (*v13)
      {
        if (*v13 == 1)
        {
          v42 = MEMORY[0x1E69E72F0];
          v43 = v14;
        }

        else
        {
          v42 = v15;
          v43 = v16;
        }

        LODWORD(v41) = v17;
      }

      else
      {
        v18 = *(v13 - 1);
        v42 = MEMORY[0x1E69E6158];
        v43 = sub_1BF071CD8();
        *&v41 = v17;
        *(&v41 + 1) = v18;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      }

      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1BF070674(v19 > 1, v20 + 1, 1);
      }

      v13 += 24;
      *(v40 + 16) = v20 + 1;
      sub_1BEFE87B0(&v41, v40 + 40 * v20 + 32);
      --v4;
    }

    while (v4);
  }

  v21 = objc_opt_self();
  v22 = sub_1BF17A07C();
  v23 = sub_1BF17A07C();

  sub_1BF084C2C(v12);

  v24 = sub_1BF17A4CC();

  *&v41 = 0;
  v25 = [v21 tf:v22 stringWithValidatedFormat:v23 validFormatSpecifiers:v24 formatArguments:&v41 error:?];

  v26 = v41;
  if (v25)
  {
    v27 = sub_1BF17A0AC();
    v28 = v26;
  }

  else
  {
    v29 = v41;
    v30 = sub_1BF17911C();

    swift_willThrow();
    if (qword_1EBDCAFD8 != -1)
    {
      swift_once();
    }

    v31 = sub_1BF1797FC();
    __swift_project_value_buffer(v31, qword_1EBDCCE30);
    v32 = v30;
    v33 = sub_1BF1797DC();
    v27 = sub_1BF17ACBC();

    if (os_log_type_enabled(v33, v27))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138543362;
      v36 = v30;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_1BEFE0000, v33, v27, "Failed to validate string for localized formatting. Error=%{public}@", v34, 0xCu);
      sub_1BF085B60(v35);
      MEMORY[0x1BFB547B0](v35, -1, -1);
      MEMORY[0x1BFB547B0](v34, -1, -1);
    }

    sub_1BF085B0C();
    swift_willThrowTypedImpl();
  }

  return v27;
}

uint64_t sub_1BF084C2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1BF07062C();
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      sub_1BEFE6A78(v4, &v7);
      sub_1BF05A928();
      swift_dynamicCast();
      v9 = v2;
      v5 = *(v2 + 16);
      if (v5 >= *(v2 + 24) >> 1)
      {
        sub_1BF07062C();
        v2 = v9;
      }

      *(v2 + 16) = v5 + 1;
      sub_1BEFF9A40(&v8, (v2 + 32 * v5 + 32));
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t String.FormatArgument.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_5_3();
  v3 = MEMORY[0x1E69E6F58];
  sub_1BF085D0C(0, v4, v5, v6, MEMORY[0x1E69E6F58]);
  OUTLINED_FUNCTION_1();
  v55 = v8;
  v56 = v7;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v9, v10);
  v54 = &v49 - v11;
  v12 = OUTLINED_FUNCTION_4_7();
  sub_1BF085D0C(v12, v13, v14, v15, v3);
  OUTLINED_FUNCTION_1();
  v52 = v17;
  v53 = v16;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v49 - v20;
  v22 = OUTLINED_FUNCTION_3_4();
  sub_1BF085D0C(v22, v23, v24, v25, v3);
  OUTLINED_FUNCTION_1();
  v50 = v27;
  v51 = v26;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v49 - v30;
  v32 = OUTLINED_FUNCTION_2_5();
  sub_1BF085D0C(v32, v33, v34, &_s14FormatArgumentO10CodingKeysON, v3);
  OUTLINED_FUNCTION_1();
  v58 = v36;
  v59 = v35;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v49 - v39;
  v41 = v1[1];
  v57 = *v1;
  v49 = v41;
  v42 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF085CB8();
  sub_1BF17BC1C();
  if (v42)
  {
    if (v42 == 1)
    {
      v61 = 1;
      sub_1BF085C10();
      OUTLINED_FUNCTION_8_3(&_s14FormatArgumentO15Int32CodingKeysON, &v61);
      v43 = v53;
      sub_1BF17B6AC();
      (*(v52 + 8))(v21, v43);
    }

    else
    {
      v62 = 2;
      sub_1BF085BBC();
      v46 = v54;
      OUTLINED_FUNCTION_8_3(&_s14FormatArgumentO16Uint32CodingKeysON, &v62);
      v47 = v56;
      sub_1BF17B6BC();
      (*(v55 + 8))(v46, v47);
    }
  }

  else
  {
    v44 = v50;
    v60 = 0;
    sub_1BF085C64();
    OUTLINED_FUNCTION_8_3(&_s14FormatArgumentO16StringCodingKeysON, &v60);
    v45 = v51;
    sub_1BF17B66C();
    (*(v44 + 8))(v31, v45);
  }

  return (*(v58 + 8))(v40, v42);
}

uint64_t String.FormatArgument.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  OUTLINED_FUNCTION_5_3();
  v3 = MEMORY[0x1E69E6F48];
  sub_1BF085D0C(0, v4, v5, v6, MEMORY[0x1E69E6F48]);
  OUTLINED_FUNCTION_1();
  v76 = v8;
  v77 = v7;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v9, v10);
  v79 = v75 - v11;
  v12 = OUTLINED_FUNCTION_4_7();
  sub_1BF085D0C(v12, v13, v14, v15, v3);
  OUTLINED_FUNCTION_1();
  v75[3] = v17;
  v75[4] = v16;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v18, v19);
  v78 = v75 - v20;
  v21 = OUTLINED_FUNCTION_3_4();
  sub_1BF085D0C(v21, v22, v23, v24, v3);
  v26 = v25;
  OUTLINED_FUNCTION_1();
  v75[2] = v27;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v28, v29);
  v30 = OUTLINED_FUNCTION_2_5();
  sub_1BF085D0C(v30, v31, v32, &_s14FormatArgumentO10CodingKeysON, v3);
  v34 = v33;
  OUTLINED_FUNCTION_1();
  v81 = v35;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = v75 - v38;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF085CB8();
  v40 = v82;
  sub_1BF17BBDC();
  if (v40)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v75[1] = v26;
  v82 = a1;
  v41 = sub_1BF17B62C();
  result = sub_1BF085D74(v41, 0);
  if (v44 == v45 >> 1)
  {
    v46 = v39;
LABEL_10:
    v55 = sub_1BF17B29C();
    swift_allocError();
    v57 = v56;
    sub_1BF085E38(0);
    *v57 = &type metadata for String.FormatArgument;
    sub_1BF17B5AC();
    sub_1BF17B27C();
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v81 + 8))(v46, v34);
    a1 = v82;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (v44 >= (v45 >> 1))
  {
    __break(1u);
  }

  else
  {
    v47 = v39;
    v48 = *(v43 + v44);
    sub_1BF085DBC(v44 + 1, v45 >> 1, result, v43, v44, v45);
    v50 = v49;
    v52 = v51;
    swift_unknownObjectRelease();
    if (v50 != v52 >> 1)
    {
      v46 = v47;
      goto LABEL_10;
    }

    v53 = v48;
    if (v48)
    {
      if (v48 == 1)
      {
        v84 = 1;
        sub_1BF085C10();
        OUTLINED_FUNCTION_12_4(&_s14FormatArgumentO15Int32CodingKeysON, &v84);
        v54 = v81;
        v59 = v34;
        v62 = sub_1BF17B60C();
        v75[0] = 0;
        swift_unknownObjectRelease();
        v63 = OUTLINED_FUNCTION_6_5();
        v64(v63);
        (*(v54 + 8))(v47, v59);
        v65 = 0;
        v66 = v62;
        v67 = v80;
        v53 = 1;
      }

      else
      {
        LODWORD(v78) = v48;
        v85 = 2;
        sub_1BF085BBC();
        v58 = v79;
        OUTLINED_FUNCTION_12_4(&_s14FormatArgumentO16Uint32CodingKeysON, &v85);
        v67 = v80;
        v61 = sub_1BF17B61C();
        v75[0] = 0;
        LODWORD(v66) = v61;
        swift_unknownObjectRelease();
        (*(v76 + 8))(v58, v77);
        v73 = OUTLINED_FUNCTION_10_8();
        v74(v73);
        v65 = 0;
        v66 = v66;
        v53 = v78;
      }
    }

    else
    {
      v83 = 0;
      sub_1BF085C64();
      sub_1BF17B59C();
      v60 = sub_1BF17B5CC();
      v75[0] = 0;
      v66 = v60;
      v65 = v68;
      swift_unknownObjectRelease();
      v69 = OUTLINED_FUNCTION_11_3();
      v70(v69);
      v71 = OUTLINED_FUNCTION_9_8();
      v72(v71, v34);
      v67 = v80;
    }

    *v67 = v66;
    *(v67 + 8) = v65;
    *(v67 + 16) = v53;
    return __swift_destroy_boxed_opaque_existential_1(v82);
  }

  return result;
}

BOOL static String.FormatArgument.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v6 == 1)
      {
        sub_1BF085F00(*a1, v3, 1);
        v7 = OUTLINED_FUNCTION_6_5();
        v9 = 1;
LABEL_9:
        sub_1BF085F00(v7, v8, v9);
        return v2 == v5;
      }
    }

    else if (v6 == 2)
    {
      sub_1BF085F00(*a1, v3, 2);
      v7 = OUTLINED_FUNCTION_6_5();
      v9 = 2;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (*(a2 + 16))
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
LABEL_10:
    v11 = OUTLINED_FUNCTION_6_5();
    sub_1BF085EEC(v11, v12, v6);
    sub_1BF085F00(v2, v3, v4);
    v13 = OUTLINED_FUNCTION_6_5();
    sub_1BF085F00(v13, v14, v6);
    return 0;
  }

  v15 = *a1;
  if (v2 == v5 && v3 == a2[1])
  {
    sub_1BF085EEC(v15, v3, 0);
    v28 = OUTLINED_FUNCTION_1_6();
    sub_1BF085EEC(v28, v29, v30);
    v31 = OUTLINED_FUNCTION_1_6();
    sub_1BF085F00(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_1_6();
    sub_1BF085F00(v34, v35, v36);
    return 1;
  }

  else
  {
    v17 = sub_1BF17B86C();
    v18 = OUTLINED_FUNCTION_6_5();
    sub_1BF085EEC(v18, v19, 0);
    v20 = OUTLINED_FUNCTION_1_6();
    sub_1BF085EEC(v20, v21, v22);
    v23 = OUTLINED_FUNCTION_1_6();
    sub_1BF085F00(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_6_5();
    sub_1BF085F00(v26, v27, 0);
    return v17 & 1;
  }
}

uint64_t String.FormatArgument.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t String.FormatArgument.init(stringLiteral:)@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BF17B21C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  return result;
}

uint64_t String.FormatArgument.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    MEMORY[0x1BFB53950](v2);
    return sub_1BF17BB8C();
  }

  else
  {
    MEMORY[0x1BFB53950](0);

    return sub_1BF179F3C();
  }
}

uint64_t String.FormatArgument.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1BF17BB6C();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    MEMORY[0x1BFB53950](v2);
    sub_1BF17BB8C();
  }

  else
  {
    OUTLINED_FUNCTION_13_5();
    sub_1BF179F3C();
  }

  return sub_1BF17BB9C();
}

uint64_t sub_1BF085ABC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_1BF17BB6C();
  String.FormatArgument.hash(into:)(v4);
  return sub_1BF17BB9C();
}

unint64_t sub_1BF085B0C()
{
  result = qword_1EBDCB5D0;
  if (!qword_1EBDCB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB5D0);
  }

  return result;
}

uint64_t sub_1BF085B60(uint64_t a1)
{
  sub_1BF082F84(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BF085BBC()
{
  result = qword_1EBDCB5E0;
  if (!qword_1EBDCB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB5E0);
  }

  return result;
}

unint64_t sub_1BF085C10()
{
  result = qword_1EBDCB5F0;
  if (!qword_1EBDCB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB5F0);
  }

  return result;
}

unint64_t sub_1BF085C64()
{
  result = qword_1EBDCB600;
  if (!qword_1EBDCB600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB600);
  }

  return result;
}

unint64_t sub_1BF085CB8()
{
  result = qword_1EBDCB610;
  if (!qword_1EBDCB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB610);
  }

  return result;
}

void sub_1BF085D0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1BF085D74(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF085DBC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1BF085E38(uint64_t a1)
{
  if (!qword_1EBDCB638)
  {
    sub_1BF085EA8();
    sub_1BF17B28C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBDCB638);
    }
  }
}

unint64_t sub_1BF085EA8()
{
  result = qword_1EBDCB640;
  if (!qword_1EBDCB640)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EBDCB640);
  }

  return result;
}

uint64_t sub_1BF085EEC(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

uint64_t sub_1BF085F00(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

unint64_t sub_1BF085F18()
{
  result = qword_1EBDCB648;
  if (!qword_1EBDCB648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB648);
  }

  return result;
}

unint64_t sub_1BF085F7C()
{
  result = qword_1EBDCB650;
  if (!qword_1EBDCB650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB650);
  }

  return result;
}

unint64_t sub_1BF085FE0()
{
  result = qword_1EBDCB658;
  if (!qword_1EBDCB658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB658);
  }

  return result;
}

unint64_t sub_1BF086050()
{
  result = qword_1EBDCB660;
  if (!qword_1EBDCB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB660);
  }

  return result;
}

uint64_t sub_1BF0860B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_1BF0860F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t _s14FormatArgumentO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14FormatArgumentO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCArgumentBuilder(unsigned int *a1, int a2)
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

_BYTE *sub_1BF086328(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BF0863D8()
{
  result = qword_1EBDCB668;
  if (!qword_1EBDCB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB668);
  }

  return result;
}

unint64_t sub_1BF086430()
{
  result = qword_1EBDCB670;
  if (!qword_1EBDCB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB670);
  }

  return result;
}

unint64_t sub_1BF086488()
{
  result = qword_1EBDCB678;
  if (!qword_1EBDCB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB678);
  }

  return result;
}

unint64_t sub_1BF0864E0()
{
  result = qword_1EBDCB680;
  if (!qword_1EBDCB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB680);
  }

  return result;
}

unint64_t sub_1BF086538()
{
  result = qword_1EBDCB688;
  if (!qword_1EBDCB688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB688);
  }

  return result;
}

unint64_t sub_1BF086590()
{
  result = qword_1EBDCB690;
  if (!qword_1EBDCB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB690);
  }

  return result;
}

unint64_t sub_1BF0865E8()
{
  result = qword_1EBDCB698;
  if (!qword_1EBDCB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB698);
  }

  return result;
}

unint64_t sub_1BF086640()
{
  result = qword_1EBDCB6A0;
  if (!qword_1EBDCB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB6A0);
  }

  return result;
}

unint64_t sub_1BF086698()
{
  result = qword_1EBDCB6A8;
  if (!qword_1EBDCB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB6A8);
  }

  return result;
}

unint64_t sub_1BF0866F0()
{
  result = qword_1EBDCB6B0;
  if (!qword_1EBDCB6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB6B0);
  }

  return result;
}

unint64_t sub_1BF086748()
{
  result = qword_1EBDCB6B8;
  if (!qword_1EBDCB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB6B8);
  }

  return result;
}

unint64_t sub_1BF0867A0()
{
  result = qword_1EBDCB6C0;
  if (!qword_1EBDCB6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB6C0);
  }

  return result;
}

uint64_t sub_1BF086810()
{

  sub_1BEFE52DC(*(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t sub_1BF086848()
{
  sub_1BF086810();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

_BYTE *storeEnumTagSinglePayload for HandlerError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF08695C()
{
  result = qword_1EBDCB6C8;
  if (!qword_1EBDCB6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB6C8);
  }

  return result;
}

uint64_t sub_1BF0869B0(uint64_t a1, unint64_t a2)
{
  sub_1BF014DC0(a1, a2);
  sub_1BF086A58(a1, a2);
  v4 = sub_1BF17A18C();

  return v4;
}

uint64_t sub_1BF086A1C@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1BF17A18C();
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_1BF086A58(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BF1793AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v9 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v11 = *(a1 + 16);
      v10 = *(a1 + 24);
      v9 = v10 - v11;
      if (!__OFSUB__(v10, v11))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return;
    case 3uLL:
      goto LABEL_9;
    default:
      v9 = BYTE6(a2);
LABEL_6:
      if (!v9)
      {
        goto LABEL_9;
      }

      sub_1BF01A8B8(v9, 0);
      v12 = sub_1BF1792AC();
      sub_1BF014E18(a1, a2);
      (*(v5 + 8))(v8, v4);
      if (v12 != v9)
      {
        __break(1u);
LABEL_9:
        sub_1BF014E18(a1, a2);
      }

      return;
  }
}

unint64_t sub_1BF086BDC()
{
  result = qword_1ED8EADA0;
  if (!qword_1ED8EADA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED8EADA0);
  }

  return result;
}

uint64_t *sub_1BF086C38()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t sub_1BF086D04()
{
  v0 = sub_1BF086C38();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t LRUCache.__allocating_init(maxSize:)(uint64_t a1)
{
  v2 = swift_allocObject();
  LRUCache.init(maxSize:)(a1, v3, v4, v5);
  return v2;
}

uint64_t LRUCache.values.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_10_9((v0 + 4), v17);
  v2 = v1[10];
  v3 = v1[11];
  v5 = OUTLINED_FUNCTION_5_4(255, v2, v3, v4);
  type metadata accessor for Node(v5, v6, v7, v8);
  v9 = v1[12];
  v10 = sub_1BF179E3C();
  swift_endAccess();
  v17[0] = v10;
  v16[2] = v2;
  v16[3] = v3;
  v16[4] = v9;
  v11 = sub_1BF179E1C();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1BEFF5EDC(sub_1BF086F84, v16, v11, v3, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);

  return v14;
}

uint64_t sub_1BF086EE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  return (*(*(a2 - 8) + 16))(a3, *(v5 + 16) + *(**(v5 + 16) + 104), a2);
}

Swift::Void __swiftcall LRUCache.clear(percentage:)(Swift::Double percentage)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v49 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v41 - v10;
  OUTLINED_FUNCTION_2_3();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v43 = &v41 - v20;
  if (percentage >= 1.0)
  {
    OUTLINED_FUNCTION_7_2((v1 + 4), v54);
    v38 = type metadata accessor for LRUCacheNode(255, v5, *(v4 + 88), v37);
    type metadata accessor for Node(255, v38, v39, v40);
    sub_1BF179E9C();
    sub_1BF179E8C();
    swift_endAccess();
    OUTLINED_FUNCTION_6_6();
    DoublyLinkedList.removeAll()();

    v1[3] = 0;
    return;
  }

  if (percentage <= 0.0)
  {
    return;
  }

  OUTLINED_FUNCTION_3_5((v1 + 4), v54);
  v22 = OUTLINED_FUNCTION_5_4(255, v5, *(v4 + 88), v21);
  type metadata accessor for Node(v22, v23, v24, v25);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  OUTLINED_FUNCTION_1_8();
  v26 = sub_1BF179DFC();

  v27 = floor(v26 * percentage);
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_21;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v27 < 0)
  {
LABEL_24:
    __break(1u);
    return;
  }

  if (v27)
  {
    v28 = 0;
    v42 = (v13 + 16);
    v50 = (v13 + 8);
    v47 = (v7 + 8);
    v48 = (v13 + 32);
    v29 = v27;
    v44 = v27;
    do
    {
      v46 = v28;
      v30 = v2[5];
      OUTLINED_FUNCTION_3_5(v30 + 24, v53);
      v31 = *(v30 + 24);
      v45 = v29;
      if (v31)
      {
        OUTLINED_FUNCTION_3_5(v31 + 16, v51);
        v32 = v43;
        (*v42)(v43, *(v31 + 16) + *(**(v31 + 16) + 96), v5);
        OUTLINED_FUNCTION_7_2((v2 + 4), v52);
        OUTLINED_FUNCTION_1_8();
        sub_1BF179E9C();

        sub_1BF179D7C();
        swift_endAccess();
        (*v50)(v32, v5);

        OUTLINED_FUNCTION_6_6();
        DoublyLinkedList.remove(node:)(v31);

        v33 = v2[3];
        v34 = __OFSUB__(v33, 1);
        v35 = v33 - 1;
        if (v34)
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v2[3] = v35;
      }

      else
      {
        do
        {
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
          OUTLINED_FUNCTION_1_8();
          v36 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

          v52[0] = v36;
          OUTLINED_FUNCTION_1_8();
          sub_1BF179DCC();
          swift_getWitnessTable();
          sub_1BF17AB3C();
          if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
          {
            (*v47)(v11, v49);
          }

          else
          {
            (*v48)(v17, v11, v5);

            OUTLINED_FUNCTION_7_2((v2 + 4), v52);
            OUTLINED_FUNCTION_1_8();
            sub_1BF179E9C();
            sub_1BF179D7C();
            swift_endAccess();

            (*v50)(v17, v5);
          }

          --v29;
        }

        while (v29);
      }

      v28 = v46 + 1;
      v29 = v45 - 1;
    }

    while (v46 + 1 != v44);
  }
}

uint64_t LRUCache.deinit()
{

  return v0;
}

uint64_t LRUCache.__deallocating_deinit()
{
  LRUCache.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t static String.from<A>(string:)(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  v2 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v3 = OUTLINED_FUNCTION_5_5(v2, v5, MEMORY[0x1E69E6158]);
  return OUTLINED_FUNCTION_2_7(v3);
}

unint64_t static Int.from<A>(string:)(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    v25 = 0;
    v24 = 1;
LABEL_73:
    v30 = v25;
    LOBYTE(v31) = v24 & 1;
    sub_1BF07C2FC(0, &qword_1EBDCA940, MEMORY[0x1E69E6530]);
    v27 = OUTLINED_FUNCTION_5_5(v26, &v30, v26);
    return OUTLINED_FUNCTION_2_7(v27);
  }

  v6 = result;
  if ((a2 & 0x1000000000000000) != 0)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF0750D8(v6, a2);
    v8 = v28;
    v24 = v29;

LABEL_70:
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v8;
    }

    goto LABEL_73;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v8 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_15();
              if (!v10 & v9)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_0_9();
              if (!v10)
              {
                goto LABEL_68;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_44();
              if (v10)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_59;
        }

        goto LABEL_68;
      }

      goto LABEL_79;
    }

    if (v7 != 45)
    {
      if (v4)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v20 = *result - 48;
            if (v20 > 9)
            {
              goto LABEL_68;
            }

            v21 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_68;
            }

            v8 = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              goto LABEL_68;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_59;
            }
          }
        }

        goto LABEL_59;
      }

LABEL_68:
      v8 = 0;
      v13 = 1;
      goto LABEL_69;
    }

    if (v4 >= 1)
    {
      if (v4 != 1)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_15();
            if (!v10 & v9)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_0_9();
            if (!v10)
            {
              goto LABEL_68;
            }

            v8 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_44();
            if (v10)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_59:
        v13 = 0;
LABEL_69:
        v32 = v13;
        v24 = v13;
        goto LABEL_70;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v30 = result;
  v31 = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        while (1)
        {
          OUTLINED_FUNCTION_15();
          if (!v10 & v9)
          {
            break;
          }

          OUTLINED_FUNCTION_0_9();
          if (!v10)
          {
            break;
          }

          v8 = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            break;
          }

          OUTLINED_FUNCTION_44();
          if (v10)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v3)
    {
      if (v3 != 1)
      {
        OUTLINED_FUNCTION_6_7();
        while (1)
        {
          OUTLINED_FUNCTION_15();
          if (!v10 & v9)
          {
            break;
          }

          OUTLINED_FUNCTION_0_9();
          if (!v10)
          {
            break;
          }

          v8 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          OUTLINED_FUNCTION_44();
          if (v10)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_78;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      OUTLINED_FUNCTION_6_7();
      while (1)
      {
        OUTLINED_FUNCTION_15();
        if (!v10 & v9)
        {
          break;
        }

        OUTLINED_FUNCTION_0_9();
        if (!v10)
        {
          break;
        }

        v8 = v19 + v18;
        if (__OFADD__(v19, v18))
        {
          break;
        }

        OUTLINED_FUNCTION_44();
        if (v10)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_80:
  __break(1u);
  return result;
}

uint64_t static Float.from<A>(string:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_8(a1, a2);
  sub_1BF030B4C(v3, v2);
  sub_1BF07C2FC(0, &qword_1EBDCB6D0, MEMORY[0x1E69E6448]);
  v4 = swift_dynamicCast();
  return OUTLINED_FUNCTION_7_5(v4);
}

uint64_t static Double.from<A>(string:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_8(a1, a2);
  sub_1BF052280(v3, v2);
  sub_1BF07C2FC(0, &qword_1EBDCB6D8, MEMORY[0x1E69E63B0]);
  v4 = swift_dynamicCast();
  return OUTLINED_FUNCTION_7_5(v4);
}

uint64_t static Bool.from<A>(string:)(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 1702195828 && a2 == 0xE400000000000000;
  if (v2 || (sub_1BF17B86C() & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v9 = a1 == 0x65736C6166 && a2 == 0xE500000000000000;
    if (v9 || (sub_1BF17B86C() & 1) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = 2;
    }
  }

  v10 = v5;
  sub_1BF07C2FC(0, &qword_1EBDCB6E0, MEMORY[0x1E69E6370]);
  v7 = OUTLINED_FUNCTION_5_5(v6, &v10, v6);
  return OUTLINED_FUNCTION_2_7(v7);
}

_BYTE *sub_1BF087A60@<X0>(_BYTE *result@<X0>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  v7 = v5 || v6 == 0;
  v8 = v7 && (result = _swift_stdlib_strtof_clocale()) != 0 && *result == 0;
  *a3 = v8;
  return result;
}

BOOL DisposableBag.isDisposed.getter()
{
  OUTLINED_FUNCTION_0_10();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

uint64_t sub_1BF087B3C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t DisposableBag.__allocating_init(disposeOn:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DisposableBag.init(disposeOn:)(a1);
  return v2;
}

Swift::Void __swiftcall DisposableBag.dispose()()
{
  OUTLINED_FUNCTION_0_10();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t DisposableBag.deinit()
{
  sub_1BF042FB8(v0 + 16);

  return v0;
}

void CacheControlHeader.init(response:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BF087D38(a1);
  v6 = v5;
  v8 = v7;

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
}

unsigned __int8 *sub_1BF087D38(void *a1)
{
  v2 = sub_1BF17A07C();
  v3 = [a1 valueForHTTPHeaderField_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1BF17A0AC();
  v6 = v5;
  v7 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v8 = sub_1BF0884F4(0x3D6567612D78616DLL, 0xED0000292B645C28, 0);
  sub_1BF0885D0();
  sub_1BF088628();
  sub_1BF013170();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v9 = sub_1BF17ADFC();
  v11 = v10;
  v50 = 0;
  v51 = 0;
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v6;
  v12[4] = &v50;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1BF088680;
  *(v13 + 24) = v12;
  v48 = sub_1BF08868C;
  v49 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = sub_1BF088450;
  v47 = &block_descriptor;
  v14 = _Block_copy(&aBlock);

  [v8 enumerateMatchesInString:v3 options:0 range:v9 usingBlock:{v11, v14}];

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_71:
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF0750D8(isEscapingClosureAtFileLocation, v3);
    v21 = v41;
    v43 = v42;

    if (v43)
    {
      goto LABEL_67;
    }

    goto LABEL_72;
  }

  v3 = v51;
  if (!v51 || ((isEscapingClosureAtFileLocation = v50, v17 = HIBYTE(v51) & 0xF, v18 = v50 & 0xFFFFFFFFFFFFLL, (v51 & 0x2000000000000000) != 0) ? (v19 = HIBYTE(v51) & 0xF) : (v19 = v50 & 0xFFFFFFFFFFFFLL), !v19))
  {

LABEL_67:

    return 0;
  }

  if ((v51 & 0x1000000000000000) != 0)
  {
    goto LABEL_71;
  }

  if ((v51 & 0x2000000000000000) == 0)
  {
    if ((v50 & 0x1000000000000000) != 0)
    {
      result = ((v51 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v20 = *result;
    if (v20 == 43)
    {
      if (v18 >= 1)
      {
        v17 = v18 - 1;
        if (v18 != 1)
        {
          v21 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_65;
              }

              v21 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v17)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_57;
        }

        goto LABEL_65;
      }

      goto LABEL_76;
    }

    if (v20 != 45)
    {
      if (v18)
      {
        v21 = 0;
        if (result)
        {
          while (1)
          {
            v34 = *result - 48;
            if (v34 > 9)
            {
              goto LABEL_65;
            }

            v35 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              goto LABEL_65;
            }

            v21 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              goto LABEL_65;
            }

            ++result;
            if (!--v18)
            {
              goto LABEL_57;
            }
          }
        }

        goto LABEL_57;
      }

LABEL_65:
      v21 = 0;
      LOBYTE(v17) = 1;
LABEL_66:
      v39 = v17;

      if (v39)
      {
        goto LABEL_67;
      }

LABEL_72:
      v40 = sub_1BF0884C4(v21);

      return v40;
    }

    if (v18 >= 1)
    {
      v17 = v18 - 1;
      if (v18 != 1)
      {
        v21 = 0;
        if (result)
        {
          v22 = result + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              goto LABEL_65;
            }

            v24 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              goto LABEL_65;
            }

            v21 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              goto LABEL_65;
            }

            ++v22;
            if (!--v17)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_57:
        LOBYTE(v17) = 0;
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  aBlock = v50;
  v45 = v51 & 0xFFFFFFFFFFFFFFLL;
  if (v50 != 43)
  {
    if (v50 != 45)
    {
      if (v17)
      {
        v21 = 0;
        p_aBlock = &aBlock;
        while (1)
        {
          v37 = *p_aBlock - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v38 + v37;
          if (__OFADD__(v38, v37))
          {
            break;
          }

          ++p_aBlock;
          if (!--v17)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v17)
    {
      if (--v17)
      {
        v21 = 0;
        v25 = &aBlock + 1;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v27 - v26;
          if (__OFSUB__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v17)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_75;
  }

  if (v17)
  {
    if (--v17)
    {
      v21 = 0;
      v31 = &aBlock + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = 10 * v21;
        if ((v21 * 10) >> 64 != (10 * v21) >> 63)
        {
          break;
        }

        v21 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          break;
        }

        ++v31;
        if (!--v17)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for CacheControlHeader(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CacheControlHeader(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

void sub_1BF088378(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a1)
  {
    v13 = a1;
    if ([v13 numberOfRanges] == 2)
    {
      [v13 rangeAtIndex_];
      sub_1BF17AC6C();
      if ((v8 & 1) == 0)
      {
        v9 = sub_1BF17A31C();
        v10 = MEMORY[0x1BFB51F50](v9);
        v12 = v11;

        *a6 = v10;
        a6[1] = v12;

        *a3 = 1;
      }
    }
  }
}

void sub_1BF088450(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v7(a2, a3, a4);
}

id sub_1BF0884F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1BF17A07C();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1BF17911C();

    swift_willThrow();
  }

  return v6;
}

void sub_1BF0885D0()
{
  if (!qword_1ED8EAE48)
  {
    v0 = sub_1BF17AC8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EAE48);
    }
  }
}

unint64_t sub_1BF088628()
{
  result = qword_1ED8EAE40;
  if (!qword_1ED8EAE40)
  {
    sub_1BF0885D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EAE40);
  }

  return result;
}

uint64_t FixedSizeTypeBinaryCodable.write(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1BF088D00(v8, sub_1BF088754, 0, a2, MEMORY[0x1E69E73E0], MEMORY[0x1E6969080], MEMORY[0x1E69E7410], a8);
  sub_1BF17939C();
  return sub_1BF014E18(v10, v11);
}

uint64_t sub_1BF088754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1BF088784(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1BF088784(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1BF17924C();
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = MEMORY[0x1BFB51040]();
    }

    else
    {
      v6 = MEMORY[0x1BFB51060]();
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1BF088840(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v51 = *MEMORY[0x1E69E9840];
  v45[0] = a1;
  v45[1] = a2;
  *&v48 = a1;
  *(&v48 + 1) = a2;
  sub_1BF089038();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  if (swift_dynamicCast())
  {
    sub_1BEFE87B0(v46, &v49);
    __swift_project_boxed_opaque_existential_1(&v49, v50);
    sub_1BF17908C();
    v46[0] = v48;
    __swift_destroy_boxed_opaque_existential_1(&v49);
    goto LABEL_59;
  }

  v47 = 0;
  memset(v46, 0, sizeof(v46));
  sub_1BF089094(v46);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v46[0] = a1;
    *(&v46[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v46;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_1BF17B2FC();
  }

  sub_1BF089624(v5, v6, &v49);
  v7 = *(&v49 + 1);
  v8 = v49;
  if (*(&v49 + 1) >> 60 != 15)
  {
    v46[0] = v49;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v46[0] = MEMORY[0x1BFB510C0](v9);
  *(&v46[0] + 1) = v10;
  MEMORY[0x1EEE9AC00](*&v46[0], v10);
  v40[2] = v45;
  v11 = sub_1BF089148(sub_1BF089838, v40);
  v13 = *(&v46[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v46[0]);
  switch(*(&v46[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v46[0]) - LODWORD(v46[0]);
      if (__OFSUB__(DWORD1(v46[0]), v46[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v46[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v46[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v46[0] + 16);
      v21 = *(*&v46[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1BF1792DC();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v40[4] = v4;
      v41 = v8;
      v42 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v43 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v44 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v48 + 7) = 0;
      *&v48 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v46[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v32 = OUTLINED_FUNCTION_0_11();
      v28 = sub_1BF0B603C(v32, v33, v34);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_1BF17A24C();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_1BF17A28C();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v49 = v14;
      *(&v49 + 1) = v44;
      v31 = *(&v49 + v29);
    }

    else
    {
      v30 = v43;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1BF17B2FC();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v35 = OUTLINED_FUNCTION_0_11();
      v18 = sub_1BF0B603C(v35, v36, v37);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_0_11();
    v18 = sub_1BF17A25C();
LABEL_46:
    *(&v48 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      OUTLINED_FUNCTION_1_9();
      sub_1BF1792FC();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    OUTLINED_FUNCTION_1_9();
    sub_1BF1792FC();
    sub_1BF00F5F4(v41, v42);
    goto LABEL_58;
  }

  sub_1BF00F5F4(v41, v42);
LABEL_59:
  v38 = v46[0];
  sub_1BF014DC0(*&v46[0], *(&v46[0] + 1));

  sub_1BF014E18(v38, *(&v38 + 1));
  return v38;
}

uint64_t sub_1BF088D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16, v16 + *(*(v15 - 8) + 64), v14, v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1BF088E48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1BF0E5E94(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BF088E90@<X0>(_WORD *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1BF0E5EAC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BF088ED8@<X0>(_DWORD *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1BF0E5EC4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_1BF088F3C(float *a1@<X8>, uint64_t a2@<X0>)
{
  v4 = sub_1BF0E41C0(a2);
  if (!v2)
  {
    *a1 = v4;
  }
}

uint64_t UUID.write(to:)()
{
  v6 = *MEMORY[0x1E69E9840];
  v5[0] = sub_1BF1794DC();
  v5[1] = v0;
  v1 = sub_1BF088784(v5, &v6);
  v3 = v2;
  sub_1BF17939C();
  return sub_1BF014E18(v1, v3);
}

unint64_t sub_1BF089038()
{
  result = qword_1EBDCB6E8;
  if (!qword_1EBDCB6E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBDCB6E8);
  }

  return result;
}

uint64_t sub_1BF089094(uint64_t a1)
{
  sub_1BF0890F0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF0890F0(uint64_t a1)
{
  if (!qword_1EBDCB6F0)
  {
    sub_1BF089038();
    v1 = sub_1BF17AE6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDCB6F0);
    }
  }
}

uint64_t sub_1BF089148(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1BF014E18(v7, v6);
      *v5 = xmmword_1BF17EBD0;
      sub_1BF014E18(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (sub_1BF178F3C() && __OFSUB__(v7, sub_1BF178F5C()))
      {
        goto LABEL_24;
      }

      sub_1BF178F6C();
      swift_allocObject();
      v14 = sub_1BF178F1C();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_1BF089570(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1BF014E18(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_1BF17EBD0;
      sub_1BF014E18(0, 0xC000000000000000);
      sub_1BF17925C();
      v7 = v17;
      v10 = sub_1BF089570(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_1BF014E18(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

void *sub_1BF08950C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1BF089570(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1BF178F3C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1BF178F5C();
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

  v12 = sub_1BF178F4C();
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

uint64_t sub_1BF089624@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1BF17924C();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1BF178F6C();
      swift_allocObject();
      v8 = sub_1BF178F2C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1BF1792CC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1BF0896EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1BF08950C(sub_1BF089894, v5, a1, a2);
}

uint64_t sub_1BF089740@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1BF17924C();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1BFB51040]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1BFB51060]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1BF0897B8(uint64_t result)
{
  if (result)
  {
    result = sub_1BF17B1FC();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BF089800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_1BF0896EC(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1BF089854@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BF0897B8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1BF0898CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1BF014CA8();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v6;
}

uint64_t sub_1BF089924(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1BF08220C();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_12(v2);
}

uint64_t SingletonPool.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1BF0899EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF089A3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1BF089A90(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1BF089AC0()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_6_8();
  sub_1BF0491C4(0, v9, v10, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v11);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_115(v14, v21);
  v15 = sub_1BF17A77C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BF00CAB0(v0);
  }

  else
  {
    sub_1BF17A76C();
    OUTLINED_FUNCTION_20();
    (*(v17 + 8))(v0, v15);
  }

  v18 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v18)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1BF00CAB0(v6);
    OUTLINED_FUNCTION_58();
    v20 = swift_allocObject();
    *(v20 + 16) = v4;
    *(v20 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1BF17A6AC();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1BF17A16C();
  OUTLINED_FUNCTION_58();
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = v2;

  swift_task_create();

  sub_1BF00CAB0(v6);

LABEL_9:
  OUTLINED_FUNCTION_26_2();
}

void sub_1BF089D40()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_6_8();
  sub_1BF0491C4(0, v9, v10, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v11);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_115(v14, v21);
  v15 = sub_1BF17A77C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BF00CAB0(v0);
  }

  else
  {
    sub_1BF17A76C();
    OUTLINED_FUNCTION_20();
    (*(v17 + 8))(v0, v15);
  }

  v18 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v18)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1BF00CAB0(v6);
    OUTLINED_FUNCTION_58();
    v20 = swift_allocObject();
    *(v20 + 16) = v4;
    *(v20 + 24) = v2;
    OUTLINED_FUNCTION_52_1(&qword_1EBDCB708, MEMORY[0x1E69E7CA8]);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1BF17A6AC();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1BF17A16C();
  OUTLINED_FUNCTION_58();
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = v2;
  OUTLINED_FUNCTION_52_1(&qword_1EBDCB708, MEMORY[0x1E69E7CA8]);

  swift_task_create();
  OUTLINED_FUNCTION_66();

  sub_1BF00CAB0(v6);

LABEL_9:
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF089FE0@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v31 = a1;
  v28 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, v25, v21);
  if (__swift_getEnumTagSinglePayload(v23, 1, v13) == 1)
  {
    return __swift_storeEnumTagSinglePayload(a6, 1, 1, a4);
  }

  (*(v14 + 32))(v18, v23, v13);
  v31(v18, v11);
  result = (*(v14 + 8))(v18, v13);
  if (v6)
  {
    return (*(v28 + 32))(v29, v11, a3);
  }

  return result;
}

uint64_t static PromiseError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_51;
    }

    v21 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_1BF17B86C();
      v23 = OUTLINED_FUNCTION_41_0();
      v25 = OUTLINED_FUNCTION_28_2(v23, v24, 0);
      v27 = OUTLINED_FUNCTION_28_2(v25, v26, 0);
      sub_1BF08A4A8(v27, v28, 0);
      v18 = OUTLINED_FUNCTION_41_0();
      v20 = 0;
      goto LABEL_15;
    }

    v69 = OUTLINED_FUNCTION_28_2(v21, v2, 0);
    v71 = OUTLINED_FUNCTION_28_2(v69, v70, 0);
    sub_1BF08A4A8(v71, v72, 0);
    v33 = OUTLINED_FUNCTION_31_1();
    v56 = 0;
LABEL_54:
    sub_1BF08A4A8(v33, v55, v56);
    return 1;
  }

  if (v4 != 1)
  {
    switch(v3)
    {
      case 1:
        if (v7 != 2 || v6 != 1 || v5 != 0)
        {
          goto LABEL_51;
        }

        v73 = OUTLINED_FUNCTION_31_1();
        sub_1BF08A4A8(v73, v74, 2u);
        v34 = 1;
        v44 = 1;
        v45 = 0;
        v46 = 2;
        goto LABEL_24;
      case 2:
        if (v7 != 2 || v6 != 2 || v5 != 0)
        {
          goto LABEL_51;
        }

        v49 = OUTLINED_FUNCTION_31_1();
        sub_1BF08A4A8(v49, v50, 2u);
        v33 = 2;
        break;
      case 3:
        if (v7 != 2 || v6 != 3 || v5 != 0)
        {
          goto LABEL_51;
        }

        v53 = OUTLINED_FUNCTION_31_1();
        sub_1BF08A4A8(v53, v54, 2u);
        v33 = 3;
        break;
      default:
        if (v7 != 2 || (v5 | v6) != 0)
        {
          goto LABEL_51;
        }

        v31 = OUTLINED_FUNCTION_31_1();
        sub_1BF08A4A8(v31, v32, 2u);
        v33 = 0;
        break;
    }

    v55 = 0;
    v56 = 2;
    goto LABEL_54;
  }

  if (v7 != 1)
  {
LABEL_51:
    v59 = OUTLINED_FUNCTION_20_3();
    v62 = OUTLINED_FUNCTION_28_2(v59, v60, v61);
    v64 = OUTLINED_FUNCTION_28_2(v62, v63, v4);
    sub_1BF08A4A8(v64, v65, v4);
    v66 = OUTLINED_FUNCTION_20_3();
    sub_1BF08A4A8(v66, v67, v68);
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    OUTLINED_FUNCTION_31_1();
    v9 = sub_1BF17B86C();
    v10 = OUTLINED_FUNCTION_41_0();
    sub_1BF08A490(v10, v11, 1u);
    v12 = OUTLINED_FUNCTION_24_5();
    sub_1BF08A490(v12, v13, v14);
    v15 = OUTLINED_FUNCTION_24_5();
    sub_1BF08A4A8(v15, v16, v17);
    v18 = OUTLINED_FUNCTION_41_0();
    v20 = 1;
LABEL_15:
    sub_1BF08A4A8(v18, v19, v20);
    return v9 & 1;
  }

  v34 = 1;
  v35 = OUTLINED_FUNCTION_24_5();
  sub_1BF08A490(v35, v36, v37);
  v38 = OUTLINED_FUNCTION_24_5();
  sub_1BF08A490(v38, v39, v40);
  v41 = OUTLINED_FUNCTION_24_5();
  sub_1BF08A4A8(v41, v42, v43);
  v44 = OUTLINED_FUNCTION_24_5();
LABEL_24:
  sub_1BF08A4A8(v44, v45, v46);
  return v34;
}

uint64_t sub_1BF08A490(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

uint64_t sub_1BF08A4A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t Promise.__allocating_init(error:)()
{
  OUTLINED_FUNCTION_19();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_66();
  Promise.init(error:)(v1);
  return v0;
}

uint64_t Promise.init(error:)(uint64_t a1)
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for Seal(0, *(v3 + 80), v4, v5);
  v6 = OUTLINED_FUNCTION_110();
  v7 = OUTLINED_FUNCTION_87(v6);
  v9 = OUTLINED_FUNCTION_120(v7, v8);
  *(v1 + 16) = sub_1BF0EEF90(v9, a1);
  return v1;
}

uint64_t sub_1BF08A5A8()
{
  OUTLINED_FUNCTION_89();
  v2 = OUTLINED_FUNCTION_110();
  v3 = OUTLINED_FUNCTION_87(v2);
  v5 = OUTLINED_FUNCTION_120(v3, v4);
  OUTLINED_FUNCTION_7_6();
  sub_1BF0035CC(0, v6, v7, v8);
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_65_0(v9, MEMORY[0x1E69E7CC0]);
  *(v10 + 16) = v5;
  *(v10 + 24) = 0;
  *(v0 + 16) = v10;
  OUTLINED_FUNCTION_82_0();
  swift_retain_n();
  v1(sub_1BF0970D8, v0, sub_1BF0970E0, v0);
  OUTLINED_FUNCTION_82_0();

  return v0;
}

void sub_1BF08A678()
{
  OUTLINED_FUNCTION_68_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_6_8();
  sub_1BF0491C4(0, v8, v9, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v10);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v11, v12);
  v30[0] = 0;
  v13 = type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_87(v13);
  v14 = UnfairLock.init(options:)(v30);
  sub_1BF09683C(0);
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_65_0(v15, MEMORY[0x1E69E7CC0]);
  *(v16 + 16) = v14;
  *(v16 + 24) = 0;
  *(v7 + 16) = v16;
  OUTLINED_FUNCTION_58();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1BF0968B8;
  *(v17 + 24) = v7;

  sub_1BF09693C(v5 + 72, &v28);
  if (v29)
  {
    sub_1BEFE87B0(&v28, v30);
    sub_1BF17A77C();
    OUTLINED_FUNCTION_83_0();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    sub_1BF0972D0(v30, &v28);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    sub_1BEFE87B0(&v28, (v22 + 4));
    v22[9] = v3;
    v22[10] = v1;
    v22[11] = sub_1BF096904;
    v22[12] = v17;
    v22[13] = sub_1BF0968C0;
    v22[14] = v7;
    OUTLINED_FUNCTION_81_0();
    swift_retain_n();
    v23 = OUTLINED_FUNCTION_41_0();
    sub_1BF014DC0(v23, v24);

    sub_1BF089AC0();

    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_81_0();
  }

  else
  {
    OUTLINED_FUNCTION_81_0();
    swift_retain_n();

    sub_1BF0969CC(&v28);
    v25 = sub_1BF0FBF30(0, 0);
    v25();
    OUTLINED_FUNCTION_81_0();
  }

  v26 = OUTLINED_FUNCTION_41_0();
  sub_1BF014E18(v26, v27);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_1BF08A914(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = OUTLINED_FUNCTION_110();
  v13 = OUTLINED_FUNCTION_87(v12);
  OUTLINED_FUNCTION_120(v13, v14);
  OUTLINED_FUNCTION_7_6();
  sub_1BF0035CC(0, a3, a4, v15);
  OUTLINED_FUNCTION_50_0();
  v16 = swift_allocObject();
  *(v16 + 32) = MEMORY[0x1E69E7CC0];
  *(v16 + 40) = 0;
  *(v6 + 16) = OUTLINED_FUNCTION_64_0(v16);
  OUTLINED_FUNCTION_82_0();
  swift_retain_n();
  a1(a5, v6, a6, v6);
  OUTLINED_FUNCTION_82_0();

  return v6;
}

uint64_t sub_1BF08A9DC()
{
  v0 = sub_1BF0FBBA4();
  v0();
}

uint64_t sub_1BF08AA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = a4(a1, a2);
  v4();
}

uint64_t sub_1BF08AA98(char a1)
{
  v1 = sub_1BF0FC114(a1 & 1);
  v1();
}

uint64_t sub_1BF08AB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = a4(a1, a3);
  v4();
}

uint64_t sub_1BF08ABB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a1);
  v3();
}

uint64_t sub_1BF08AD20()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_49_0();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    *(v3 + 24) = 1;
    v7 = v1;
    v6 = v3;
    v2(v1, 0, 1);
    OUTLINED_FUNCTION_126();
  }

  os_unfair_lock_unlock(*(v0 + 16));
  return v6;
}

void sub_1BF08ADF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1BF09704C(0, v27, v25);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = (&a9 - v33);
  v35 = *(v20 + 16);
  UnfairLock.lock()();
  if ((*(v20 + 24) & 1) == 0)
  {
    *(v20 + 24) = 1;
    *v34 = v30;
    swift_storeEnumTagMultiPayload();
    v36 = v30;
    v24(v34);
    OUTLINED_FUNCTION_126();
    sub_1BF0967E8(v34, v28, v26);
  }

  os_unfair_lock_unlock(*(v35 + 16));
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF08AF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t (*)(), void *), uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a7;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;

  a5(sub_1BF097950, v13);
}

void sub_1BF08B014(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v10 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Result(0, v15, v13, v14);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = (&v23 - v19);
  (*(v21 + 16))(&v23 - v19, a1, v16, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v20;
    a4(*v20);
  }

  else
  {
    (*(v10 + 32))(v12, v20, a6);
    a2(v12);
    (*(v10 + 8))(v12, a6);
  }
}

uint64_t Promise.__allocating_init(_:scheduleOn:)()
{
  OUTLINED_FUNCTION_62_0();
  v2 = OUTLINED_FUNCTION_86_0();
  v4 = Promise.__allocating_init(resolver:)(v2, v3);
  v0(v1);

  return v4;
}

uint64_t sub_1BF08B258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v13 = *a7;
  v14 = *MEMORY[0x1E69E7D40];
  v15 = swift_allocObject();
  v15[2] = *((v14 & v13) + 0x50);
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a5;
  v15[6] = a6;
  v15[7] = a3;
  v15[8] = a4;

  return sub_1BF043D04(sub_1BF09791C, v15);
}

void sub_1BF08B330(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5, void (*a6)(id), uint64_t a7, uint64_t a8)
{
  v26 = a4;
  v27 = a6;
  v11 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Result(0, v16, v14, v15);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = (&v26 - v20);
  (*(v22 + 16))(&v26 - v20, a1, v17, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v21;
    v23 = v29;
    v24 = v29;
    sub_1BEFE6EA8(0, &qword_1ED8EFD30, MEMORY[0x1E69E7280]);
    if (!swift_dynamicCast() || (v28 & 1) != 0)
    {

      v27(v23);
      v25 = v23;
    }

    else
    {

      v26();
      v25 = v29;
    }
  }

  else
  {
    (*(v11 + 32))(v13, v21, a8);
    a2(v13);
    (*(v11 + 8))(v13, a8);
  }
}

uint64_t sub_1BF08B580()
{
  v1 = *(v0 + 88);
  *(v0 + 16) = v1;
  v2 = v1;
  sub_1BEFE6EA8(0, &qword_1ED8EFD30, MEMORY[0x1E69E7280]);
  OUTLINED_FUNCTION_36();
  v3 = swift_dynamicCast();
  v4 = *(v0 + 88);
  if (v3)
  {

    v5 = sub_1BF0EEFD4();
    v5();

    v6 = OUTLINED_FUNCTION_125_0();
    v7(v6);
    v8 = *(v0 + 16);
  }

  else
  {

    v9 = sub_1BF02DA9C(v4);
    v9();

    v8 = v4;
  }

  OUTLINED_FUNCTION_9();

  return v10();
}

uint64_t sub_1BF08B728()
{
  OUTLINED_FUNCTION_17_3();
  sub_1BF0491C4(0, &qword_1ED8E9DD0, type metadata accessor for AuthToken, type metadata accessor for Seal);
  swift_allocObject();
  OUTLINED_FUNCTION_21_4();
  *(v0 + 16) = sub_1BF094318(v1);
  v2 = OUTLINED_FUNCTION_4_9();
  sub_1BF0491C4(v2, v3, type metadata accessor for AuthToken, v4);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_58_1();

  sub_1BEFF7020();
  OUTLINED_FUNCTION_42();
  swift_unownedRetainStrong();
  OUTLINED_FUNCTION_41_1();

  swift_unownedRelease();
  return v0;
}

uint64_t sub_1BF08B840()
{
  OUTLINED_FUNCTION_17_3();
  sub_1BF0491C4(0, &qword_1EBDCAA08, sub_1BF096F0C, type metadata accessor for Seal);
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_65_0(v2, MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = v1;
  *(v3 + 24) = 0;
  *(v0 + 16) = v3;
  v4 = OUTLINED_FUNCTION_4_9();
  sub_1BF0491C4(v4, v5, sub_1BF096F0C, v6);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_58_1();

  sub_1BEFF7020();
  OUTLINED_FUNCTION_42();
  swift_unownedRetainStrong();
  OUTLINED_FUNCTION_41_1();

  swift_unownedRelease();
  return v0;
}

uint64_t sub_1BF08B944()
{
  OUTLINED_FUNCTION_17_3();
  v2 = MEMORY[0x1E6967EC8];
  sub_1BF0491C4(0, &qword_1EBDCAA18, MEMORY[0x1E6967EC8], type metadata accessor for Seal);
  swift_allocObject();
  OUTLINED_FUNCTION_75_0();
  *(v0 + 16) = sub_1BF094318(v1);
  v3 = OUTLINED_FUNCTION_4_9();
  sub_1BF0491C4(v3, v4, v2, v5);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_58_1();

  sub_1BEFF7020();
  OUTLINED_FUNCTION_42();
  swift_unownedRetainStrong();
  OUTLINED_FUNCTION_41_1();

  swift_unownedRelease();
  return v0;
}

uint64_t sub_1BF08BA5C()
{
  OUTLINED_FUNCTION_17_3();
  v2 = MEMORY[0x1E6968FB0];
  sub_1BF0491C4(0, &qword_1EBDCB718, MEMORY[0x1E6968FB0], type metadata accessor for Seal);
  swift_allocObject();
  OUTLINED_FUNCTION_74_0();
  *(v0 + 16) = sub_1BF094318(v1);
  v3 = OUTLINED_FUNCTION_4_9();
  sub_1BF0491C4(v3, v4, v2, v5);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_58_1();

  sub_1BEFF7020();
  OUTLINED_FUNCTION_42();
  swift_unownedRetainStrong();
  OUTLINED_FUNCTION_41_1();

  swift_unownedRelease();
  return v0;
}

uint64_t sub_1BF08BB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a4 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v11 - v7;
  v9(v6);
  DeferredPromise.resolve(_:)(v8);
  return (*(v5 + 8))(v8, v4);
}

void sub_1BF08BCF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = *(*a3 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v13 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    a4(a1, Strong);
    DeferredPromise.resolve(_:)(v9);
    swift_unknownObjectRelease();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_1BF095D40();
    v11 = swift_allocError();
    *v12 = xmmword_1BF17FB20;
    *(v12 + 16) = 2;
    DeferredPromise.reject(_:)(v11);
  }
}

uint64_t sub_1BF08BF14(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  a2(a1);
  v5 = qword_1ED8F0210;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_1BF08C0FC(a4);
  sub_1BF08C13C(a4);
  sub_1BF08C17C(a4);
  sub_1BF005910();
  v7 = v6;

  v7(v8);
}

void sub_1BF08C1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    a4(a1, Strong);
    v13 = qword_1ED8F0210;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_1BF08C42C(a3, a6);
    sub_1BF08C498(a3, a6);
    sub_1BF08C504(a3, a6);
    sub_1BF005910();
    v15 = v14;

    v15(v16);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BF095D40();
    v11 = swift_allocError();
    *v12 = xmmword_1BF17FB20;
    *(v12 + 16) = 2;
    DeferredPromise.reject(_:)(v11);
  }
}

void (*sub_1BF08C42C(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF0979F4;
}

uint64_t (*sub_1BF08C498(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF02E1A8;
}

uint64_t (*sub_1BF08C504(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF05E03C;
}

uint64_t sub_1BF08C5F4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a3(a1, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BF08C6FC(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void *), void (*a7)(uint64_t, uint64_t))
{
  v8 = sub_1BF08C744(a1, a2, a3, a4, a5, a6, a7);
  v8();

  return v7;
}

void (*sub_1BF08C744(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void *), void (*a7)(uint64_t, uint64_t)))()
{
  v13 = *(v7 + 16);
  UnfairLock.lock()();
  OUTLINED_FUNCTION_14_0();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v15 = a1;

  v16 = a6(a5, v14);
  v18 = v17;
  v19 = ~v17;

  os_unfair_lock_unlock(*(v13 + 16));
  if (!v19)
  {
    return nullsub_1;
  }

  v20 = sub_1BF006210(v15, a2, a3);
  a7(v16, v18);
  return v20;
}

void (*sub_1BF08C8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_1BF0979E4;
}

uint64_t (*sub_1BF08C948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_1BF097A0C;
}

void sub_1BF08C9C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27[1] = v27;
    MEMORY[0x1EEE9AC00](Strong, v15);
    v20[2] = a6;
    v21 = *(*(v13 + 80) + 16);
    v22 = a7;
    v23 = a8;
    v24 = a4;
    v25 = a5;
    v26 = v16;
    v17 = sub_1BEFE6EA8(0, &qword_1ED8EFD30, MEMORY[0x1E69E7280]);
    v28 = sub_1BF03CFB4(sub_1BF09788C, v20, a6, v21, v17, a8, MEMORY[0x1E69E7288], &v28);
    DeferredPromise.resolve(_:)(&v28);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BF095D40();
    v18 = swift_allocError();
    *v19 = xmmword_1BF17FB20;
    *(v19 + 16) = 2;
    DeferredPromise.reject(_:)(v18);
  }
}

void Promise<A>.flatMap<A>(on:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_99();
  v16 = *v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_109(AssociatedTypeWitness);
  v18 = OUTLINED_FUNCTION_12_1();
  type metadata accessor for DeferredPromise(v18, v19, v20, v21);

  v22 = sub_1BF0057E8();
  v23 = *(v16 + 80);
  OUTLINED_FUNCTION_61_0();
  sub_1BF08CDA0(v24, v25, v26, v27, v28);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_61_0();
  sub_1BF08CE28(v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_69();
  v34 = swift_allocObject();
  v34[2] = v23;
  v34[3] = v15;
  v34[4] = v14;
  v34[5] = v13;
  v34[6] = v22;
  v34[7] = a11;
  v34[8] = a12;

  sub_1BF005910();
  v36 = v35;

  v36(v37);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v22 + 16))
  {

    OUTLINED_FUNCTION_94();
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1BF08CDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;

  return sub_1BF0979F0;
}

uint64_t (*sub_1BF08CE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;

  return sub_1BF097A18;
}

void Promise<A>.flatMap<A, B>(on:disposeOn:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_105();
  v19 = *v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_109(AssociatedTypeWitness);
  v21 = OUTLINED_FUNCTION_12_1();
  type metadata accessor for DeferredPromise(v21, v22, v23, v24);

  v25 = sub_1BF0057E8();
  v26 = *(v19 + 80);
  OUTLINED_FUNCTION_26_3();
  sub_1BF08D074(v27, v28, v29, v30, v31, v32);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_26_3();
  sub_1BF08D108(v33, v34, v35, v36, v37, v38);
  OUTLINED_FUNCTION_27();
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  v40[2] = v26;
  v40[3] = v18;
  v40[4] = v17;
  v40[5] = v16;
  v40[6] = v15;
  v40[7] = v39;
  v40[8] = v25;
  v40[9] = a13;
  v40[10] = a14;

  sub_1BF005910();
  v42 = v41;

  v42(v43);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v25 + 16))
  {

    OUTLINED_FUNCTION_132();
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1BF08D074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v12[7] = a1;

  return sub_1BF0979EC;
}

uint64_t (*sub_1BF08D108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v12[7] = a1;

  return sub_1BF097A14;
}

void (*sub_1BF08D200(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF0979E8;
}

uint64_t (*sub_1BF08D274(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF097A10;
}

uint64_t sub_1BF08D2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v7 = sub_1BF17A38C();
  DeferredPromise.resolve(_:)(&v7);
}

void sub_1BF08D46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t (*a31)(uint64_t))
{
  OUTLINED_FUNCTION_133();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v52 = v38;
  v53 = v39;
  v40 = *v31;
  sub_1BF17A65C();
  v41 = OUTLINED_FUNCTION_12_1();
  type metadata accessor for DeferredPromise(v41, v42, v43, v44);

  v45 = sub_1BF0057E8();
  v46 = *(v40 + 80);
  OUTLINED_FUNCTION_67_0();
  v33();
  v47 = OUTLINED_FUNCTION_36();
  v48 = a31(v47);
  OUTLINED_FUNCTION_27();
  v49 = swift_allocObject();
  OUTLINED_FUNCTION_128(v49);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_69();
  v50 = swift_allocObject();
  v50[2] = v46;
  v50[3] = v37;
  v50[4] = v35;
  v50[5] = v40;
  v50[6] = v45;
  v50[7] = v52;
  v50[8] = v53;

  sub_1BF005910();
  OUTLINED_FUNCTION_98();

  v48(v51);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v45 + 16))
  {

    OUTLINED_FUNCTION_132();
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1BF08D614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_1BF097868;
}

uint64_t (*sub_1BF08D694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_1BF097844;
}

void sub_1BF08D714(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong, v9);
    v12 = sub_1BF17A38C();
    DeferredPromise.resolve(_:)(&v12);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BF095D40();
    v10 = swift_allocError();
    *v11 = xmmword_1BF17FB20;
    *(v11 + 16) = 2;
    DeferredPromise.reject(_:)(v10);
  }
}

void (*sub_1BF08D9A4(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF0979E8;
}

uint64_t (*sub_1BF08DA18(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF097A10;
}

uint64_t sub_1BF08DA8C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v5 = &v7 - v4;
  sub_1BF17A3FC();
  DeferredPromise.resolve(_:)(v5);
  return (*(v3 + 8))(v5, v2);
}

void (*sub_1BF08DC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_1BF0979E4;
}

uint64_t (*sub_1BF08DD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_1BF097A0C;
}

void sub_1BF08DD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(*a3 + 80);
  v21[0] = *(v12 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = v21 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21[1] = v21;
    MEMORY[0x1EEE9AC00](Strong, v16);
    v21[-8] = a7;
    v21[-7] = v12;
    v21[-6] = a8;
    v21[-5] = v17;
    v21[-4] = a5;
    v21[-3] = a6;
    v21[-2] = v18;
    sub_1BF17A3FC();
    DeferredPromise.resolve(_:)(v14);
    swift_unknownObjectRelease();
    (*(v21[0] + 8))(v14, v12);
  }

  else
  {
    sub_1BF095D40();
    v19 = swift_allocError();
    *v20 = xmmword_1BF17FB20;
    *(v20 + 16) = 2;
    DeferredPromise.reject(_:)(v19);
  }
}

void sub_1BF08E08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void), uint64_t (*a22)(uint64_t), uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_32();
  v26 = v25;
  v28 = v27;
  v69 = v29;
  v70 = v30;
  v65 = v32;
  v66 = v31;
  v71 = v33;
  v72 = a24;
  v73 = v34;
  v67 = a23;
  v35 = *v24;
  OUTLINED_FUNCTION_2_3();
  v37 = v36;
  v39 = *(v38 + 64);
  v62 = a22;
  MEMORY[0x1EEE9AC00](v40, v41);
  v42 = (&v61 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for DeferredPromise(0, v45, v43, v44);
  v68 = v24[2];

  v46 = sub_1BF0057E8();
  v47 = *(v35 + 80);
  OUTLINED_FUNCTION_67_0();
  v48 = a21();
  v63 = v49;
  v64 = v48;
  v50 = OUTLINED_FUNCTION_36();
  v51 = v62(v50);
  v61 = v52;
  v62 = v51;
  OUTLINED_FUNCTION_27();
  v53 = swift_allocObject();
  OUTLINED_FUNCTION_128(v53);
  swift_unknownObjectWeakInit();
  (*(v37 + 16))(v42, v66, v28);
  v54 = (*(v37 + 80) + 64) & ~*(v37 + 80);
  v55 = (v39 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  *(v56 + 2) = v47;
  *(v56 + 3) = v28;
  v57 = v73;
  *(v56 + 4) = v26;
  *(v56 + 5) = v57;
  *(v56 + 6) = a21;
  *(v56 + 7) = v46;
  (*(v37 + 32))(&v56[v54], v42, v28);
  v58 = &v56[v55];
  v59 = v70;
  *v58 = v69;
  *(v58 + 1) = v59;

  sub_1BF005910();
  OUTLINED_FUNCTION_98();

  v42(v60);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v46 + 16))
  {

    OUTLINED_FUNCTION_26_2();
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1BF08E300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_1BF0979E4;
}

uint64_t (*sub_1BF08E380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_1BF097A0C;
}

void sub_1BF08E400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = a5;
  v30 = a8;
  v12 = *(*a3 + 80);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v28 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v28[1] = a1;
    v22 = (*(v13 + 16))(v15, a4, v12);
    MEMORY[0x1EEE9AC00](v22, v23);
    v28[-8] = a7;
    v28[-7] = v12;
    v24 = v29;
    v28[-6] = v30;
    v28[-5] = a9;
    v28[-4] = v24;
    v28[-3] = v25;
    v28[-2] = v21;
    sub_1BF17A3EC();
    DeferredPromise.resolve(_:)(v19);
    swift_unknownObjectRelease();
    (*(v13 + 8))(v19, v12);
  }

  else
  {
    sub_1BF095D40();
    v26 = swift_allocError();
    *v27 = xmmword_1BF17FB20;
    *(v27 + 16) = 2;
    DeferredPromise.reject(_:)(v26);
  }
}

void Promise<A>.unique<A>(on:uniqueBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_29();
  v16 = *(v15 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_109(AssociatedTypeWitness);
  v18 = OUTLINED_FUNCTION_12_1();
  type metadata accessor for DeferredPromise(v18, v19, v20, v21);

  v22 = sub_1BF0057E8();
  OUTLINED_FUNCTION_61_0();
  sub_1BF08E854(v23, v24, v25, v26, v27);
  OUTLINED_FUNCTION_61_0();
  sub_1BF08E8DC(v28, v29, v30, v31, v32);
  OUTLINED_FUNCTION_69();
  v33 = swift_allocObject();
  v33[2] = v16;
  v33[3] = v14;
  v33[4] = v13;
  v33[5] = v12;
  v33[6] = v22;
  v33[7] = a11;
  v33[8] = a12;

  sub_1BF005910();
  v35 = v34;
  OUTLINED_FUNCTION_121();

  v35(v36);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v22 + 16))
  {

    OUTLINED_FUNCTION_94();
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1BF08E854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;

  return sub_1BF097790;
}

uint64_t (*sub_1BF08E8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;

  return sub_1BF09776C;
}

uint64_t sub_1BF08E964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  *&v10 = a9(a3, a4, a5, a6, a7, a8);
  DeferredPromise.resolve(_:)(&v10);
}

void Promise<A>.unique<A, B>(on:disposeOn:uniqueBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t))
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_29();
  v20 = *(v19 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_109(AssociatedTypeWitness);
  v22 = OUTLINED_FUNCTION_12_1();
  type metadata accessor for DeferredPromise(v22, v23, v24, v25);

  v26 = sub_1BF0057E8();
  OUTLINED_FUNCTION_26_3();
  sub_1BF08EC2C(v27, v28, v29, v30, v31, v32);
  OUTLINED_FUNCTION_26_3();
  sub_1BF08ECC0(v33, v34, v35, v36, v37, v38);
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_27();
  v39 = swift_allocObject();
  OUTLINED_FUNCTION_128(v39);
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  v40[2] = v20;
  v40[3] = v17;
  v40[4] = v16;
  v40[5] = v15;
  v40[6] = v14;
  v40[7] = v18;
  v40[8] = v26;
  v40[9] = a13;
  v40[10] = a14;

  sub_1BF005910();
  OUTLINED_FUNCTION_55_1();

  a14(v41);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v26 + 16))
  {

    OUTLINED_FUNCTION_132();
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1BF08EC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v12[7] = a1;

  return sub_1BF097748;
}

uint64_t (*sub_1BF08ECC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v12[7] = a1;

  return sub_1BF097724;
}

void sub_1BF08ED54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = MEMORY[0x1EEE9AC00](a23, v23);
    v28 = v25(v24);
    DeferredPromise.resolve(_:)(&v28);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BF095D40();
    v26 = swift_allocError();
    *v27 = xmmword_1BF17FB20;
    *(v27 + 16) = 2;
    DeferredPromise.reject(_:)(v26);
  }

  OUTLINED_FUNCTION_26_2();
}

void Promise<A>.filter(on:closure:)()
{
  OUTLINED_FUNCTION_97_0();
  v1 = v0;
  v3 = v2;
  v15 = v4;
  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_109(AssociatedTypeWitness);
  v8 = OUTLINED_FUNCTION_12_1();
  type metadata accessor for DeferredPromise(v8, v9, v10, v11);
  OUTLINED_FUNCTION_106();

  v12 = sub_1BF0057E8();
  sub_1BF08F0AC(v12, v6, v1);
  sub_1BF08F120(v12, v6, v1);
  OUTLINED_FUNCTION_46();
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = v1;
  v13[4] = v12;
  v13[5] = v15;
  v13[6] = v3;

  OUTLINED_FUNCTION_67_0();
  sub_1BF005910();
  OUTLINED_FUNCTION_98();

  v3(v14);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v12 + 16))
  {

    OUTLINED_FUNCTION_96();
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1BF08F0AC(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF0979E8;
}

uint64_t (*sub_1BF08F120(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF097A10;
}

uint64_t sub_1BF08F194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x1EEE9AC00](a1, a1);
  (*(v8 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v11 = sub_1BF17A3DC();
  DeferredPromise.resolve(_:)(&v11);
}

void Promise<A>.filter<A>(on:disposeOn:closure:)()
{
  OUTLINED_FUNCTION_95_0();
  v2 = v1;
  v4 = v3;
  v20 = v5;
  v21 = v6;
  OUTLINED_FUNCTION_29();
  v8 = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_109(AssociatedTypeWitness);
  v10 = OUTLINED_FUNCTION_12_1();
  type metadata accessor for DeferredPromise(v10, v11, v12, v13);
  OUTLINED_FUNCTION_106();

  v14 = sub_1BF0057E8();
  sub_1BF08F4F0(v14, v8, v4, v2);
  sub_1BF08F570(v14, v8, v4, v2);
  OUTLINED_FUNCTION_27();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_128(v15);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_69();
  v16 = swift_allocObject();
  v16[2] = v8;
  v16[3] = v4;
  v16[4] = v2;
  v16[5] = v0;
  v16[6] = v14;
  v16[7] = v20;
  v16[8] = v21;

  sub_1BF005910();
  v18 = v17;
  OUTLINED_FUNCTION_121();

  v18(v19);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v14 + 16))
  {

    OUTLINED_FUNCTION_94();
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1BF08F4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_1BF0979E4;
}

uint64_t (*sub_1BF08F570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_1BF097A0C;
}

void sub_1BF08F5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = (*(v14 + 16))(v16, a1, a6);
    MEMORY[0x1EEE9AC00](v19, v20);
    *(&v23 - 6) = a6;
    *(&v23 - 5) = a7;
    *(&v23 - 4) = a8;
    *(&v23 - 3) = a4;
    *(&v23 - 2) = a5;
    *(&v23 - 1) = v18;
    v23 = sub_1BF17A3DC();
    DeferredPromise.resolve(_:)(&v23);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BF095D40();
    v21 = swift_allocError();
    *v22 = xmmword_1BF17FB20;
    *(v22 + 16) = 2;
    DeferredPromise.reject(_:)(v21);
  }
}

uint64_t Promise<A>.flatten(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_62_0();
  v7 = *v3;
  OUTLINED_FUNCTION_14_0();
  v8 = swift_allocObject();
  v8[2] = *(v7 + 80);
  v8[3] = v4;
  v8[4] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Promise<A>.flatMap<A>(on:closure:)(v5, sub_1BF095C7C, v8, AssociatedTypeWitness, v4, a3, v10, v11, v15, v16, v17, v18);
  v13 = v12;

  return v13;
}

uint64_t Promise.dictionaryOfPromises<A, B, C>(keys:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_29();
  sub_1BF17AE6C();
  v3 = OUTLINED_FUNCTION_12_1();
  type metadata accessor for Promise(v3, v4, v5, v6);
  sub_1BF179CEC();
  sub_1BF179E9C();
  sub_1BF17A3EC();
  return v8;
}

uint64_t sub_1BF08FA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a1;
  v28 = a5;
  v29 = a3;
  v7 = *(*a3 + 80);
  v8 = v7[2];
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v30 = &v27 - v15;
  v16 = *(v9 + 16);
  v16(v14);
  (v16)(v11, a2, v8);
  v17 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a4;
  *(v18 + 3) = v8;
  v19 = v28;
  *(v18 + 4) = v7[3];
  *(v18 + 5) = v19;
  *(v18 + 6) = v7[4];
  (*(v9 + 32))(&v18[v17], v11, v8);
  v20 = sub_1BF17AE6C();
  v21 = sub_1BF007568();
  Promise.then<A>(on:closure:)(v21, sub_1BF097658, v18, v20);
  v23 = v22;

  v32 = v23;
  type metadata accessor for Promise(255, v20, v24, v25);
  sub_1BF179E9C();
  return sub_1BF179EBC();
}

uint64_t delay(until:)(uint64_t a1)
{
  v5[2] = a1;
  v1 = MEMORY[0x1E69E7CA8];
  OUTLINED_FUNCTION_12_5();
  sub_1BF0035CC(0, v2, v1 + 8, v3);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  return sub_1BF08A914(sub_1BF095CBC, v5, &qword_1ED8ED8D0, v1 + 8, sub_1BF097A04, sub_1BF097614);
}

void sub_1BF08FD4C()
{
  OUTLINED_FUNCTION_32();
  v36 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_1BF179B5C();
  OUTLINED_FUNCTION_1();
  v37 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v35 = sub_1BF179BBC();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  v19 = sub_1BF179B6C();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  OUTLINED_FUNCTION_58();
  v27 = swift_allocObject();
  *(v27 + 16) = v4;
  *(v27 + 24) = v2;
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  (*(v21 + 104))(v26, *MEMORY[0x1E69E7F98], v19);

  v28 = sub_1BF17ADAC();
  (*(v21 + 8))(v26, v19);
  OUTLINED_FUNCTION_58();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1BF0004A8;
  *(v29 + 24) = v27;
  v38[4] = sub_1BF006170;
  v38[5] = v29;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 1107296256;
  v38[2] = sub_1BF0058CC;
  v38[3] = &block_descriptor_318;
  v30 = _Block_copy(v38);
  sub_1BF179B8C();
  OUTLINED_FUNCTION_48_1();
  sub_1BEFF7410(v31, v32, MEMORY[0x1E69E7F70]);
  OUTLINED_FUNCTION_47_1();
  sub_1BF0491C4(0, v33, v34, MEMORY[0x1E69E62F8]);
  sub_1BF095E00();
  sub_1BF17B0BC();
  MEMORY[0x1BFB52B00](v36, v18, v11, v30);
  _Block_release(v30);

  (*(v37 + 8))(v11, v5);
  (*(v13 + 8))(v18, v35);

  OUTLINED_FUNCTION_26_2();
}

uint64_t delay<A>(until:queue:value:)()
{
  OUTLINED_FUNCTION_62_0();
  v0 = OUTLINED_FUNCTION_104();
  type metadata accessor for Promise(v0, v1, v2, v3);
  OUTLINED_FUNCTION_86_0();
  return Promise.__allocating_init(resolver:)();
}

uint64_t sub_1BF090120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a6;
  v34 = a5;
  v30 = a1;
  v11 = sub_1BF179B5C();
  v32 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BF179BBC();
  v15 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a8 - 8);
  v20 = *(v19 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v24, a7, a8, v23);
  v25 = (*(v19 + 80) + 40) & ~*(v19 + 80);
  v26 = swift_allocObject();
  v27 = v30;
  *(v26 + 2) = a8;
  *(v26 + 3) = v27;
  *(v26 + 4) = a2;
  (*(v19 + 32))(&v26[v25], v24, a8);
  aBlock[4] = sub_1BF00C0B8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_308;
  v28 = _Block_copy(aBlock);

  sub_1BF179B8C();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1BEFF7410(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BF0491C4(0, &qword_1ED8EFBE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1BF095E00();
  sub_1BF17B0BC();
  MEMORY[0x1BFB52B00](v33, v18, v14, v28);
  _Block_release(v28);
  (*(v32 + 8))(v14, v11);
  (*(v15 + 8))(v18, v31);
}

void Promise.wait(until:with:)()
{
  OUTLINED_FUNCTION_32();
  v30 = v1;
  v32 = v2;
  v34 = v3;
  OUTLINED_FUNCTION_29();
  v5 = *(v4 + 80);
  v6 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v29 = v7;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_63_0();
  v10 = swift_allocBox();
  v31 = v11;
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v5);
  v15 = dispatch_semaphore_create(0);
  v35 = 1;
  v16 = type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_87(v16);
  v17 = UnfairLock.init(options:)(&v35);
  OUTLINED_FUNCTION_14_0();
  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = v17;
  v18[4] = v10;

  v33 = v10;

  v19 = MEMORY[0x1E69E7CA8];
  v20 = sub_1BF007568();
  Promise.then<A>(on:closure:)(v20, sub_1BF095CD0, v18, v19 + 8);

  OUTLINED_FUNCTION_27();
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  v22 = qword_1ED8F0210;
  v23 = v15;
  if (v22 != -1)
  {
    OUTLINED_FUNCTION_1_10();
    swift_once();
  }

  sub_1BF08C6FC(off_1ED8F0218, sub_1BF095CF0, v21, &unk_1F3DB9378, sub_1BF0975C4, sub_1BF040820, sub_1BF043E18);

  v24 = sub_1BF17ADBC();
  v35 = v17;
  MEMORY[0x1EEE9AC00](v24, v25);
  v28[2] = v5;
  v28[3] = v31;
  Lock.sync<A>(_:)(sub_1BF095D14, v28, v16, v6, &protocol witness table for UnfairLock);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v5);
  v27 = *(v5 - 8);
  if (EnumTagSinglePayload == 1)
  {
    (*(v27 + 16))(v34, v30, v5);
    if (__swift_getEnumTagSinglePayload(v0, 1, v5) != 1)
    {
      (*(v29 + 8))(v0, v6);
    }
  }

  else
  {
    (*(v27 + 32))(v34, v0, v5);
  }

  OUTLINED_FUNCTION_26_2();
}

void sub_1BF090824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BF17AE6C();
  swift_projectBox();
  sub_1BF000444(sub_1BF097608);
}

uint64_t sub_1BF0908B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF17AE6C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v13 - v10;
  (*(*(a3 - 8) + 16))(&v13 - v10, a2, a3, v9);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, a3);
  swift_beginAccess();
  return (*(v7 + 40))(a1, v11, v6);
}

uint64_t sub_1BF0909E4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v5 = sub_1BF17AE6C();
  return (*(*(v5 - 8) + 16))(a3, a1, v5);
}

void Promise.await()(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_29();
  v4 = *(v3 + 80);
  v53 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v51 = v5;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v6, v7);
  v52 = &v45 - v8;
  sub_1BF179BEC();
  OUTLINED_FUNCTION_1();
  v49 = v10;
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = sub_1BF179C5C();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_2_0();
  v22 = (v21 - v20);
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  v22->isa = sub_1BF17AD5C();
  (*(v17 + 104))(v22, *MEMORY[0x1E69E8018], v15);
  v23 = sub_1BF179C8C();
  (*(v17 + 8))(v22, v15);
  if (v23)
  {
    v46 = a1;
    v47 = v1;
    v24 = swift_allocBox();
    a1 = v25;
    OUTLINED_FUNCTION_83_0();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v4);
    OUTLINED_FUNCTION_27();
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    v45 = (v29 + 16);
    v22 = dispatch_semaphore_create(0);
    OUTLINED_FUNCTION_58();
    v30 = swift_allocObject();
    *(v30 + 16) = v4;
    *(v30 + 24) = v24;
    v48 = v24;

    v31 = MEMORY[0x1E69E7CA8];
    v32 = sub_1BF007568();
    Promise.then<A>(on:closure:)(v32, sub_1BF095D1C, v30, v31 + 8);

    v33 = qword_1ED8F0210;

    if (v33 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_1_10();
  swift_once();
LABEL_3:
  v34 = off_1ED8F0218;
  sub_1BF0040A8();

  OUTLINED_FUNCTION_27();
  v35 = swift_allocObject();
  *(v35 + 16) = v22;
  v36 = v22;
  sub_1BF08C6FC(v34, sub_1BF0979CC, v35, &unk_1F3DB9378, sub_1BF0975C4, sub_1BF040820, sub_1BF043E18);

  sub_1BF179BCC();
  sub_1BF17ADBC();
  (*(v49 + 8))(v14, v50);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  v38 = v51;
  v37 = v52;
  v39 = v53;
  (*(v51 + 16))(v52, a1, v53);
  if (__swift_getEnumTagSinglePayload(v37, 1, v4) == 1)
  {
    (*(v38 + 8))(v37, v39);
    v40 = v45;
    OUTLINED_FUNCTION_31();
    swift_beginAccess();
    v41 = *v40;
    if (!v41)
    {
      sub_1BF095D40();
      swift_allocError();
      *v43 = xmmword_1BF17FB30;
      *(v43 + 16) = 2;
    }

    swift_willThrow();
    v44 = v41;
  }

  else
  {

    OUTLINED_FUNCTION_20();
    (*(v42 + 32))(v46, v37, v4);
  }
}

uint64_t sub_1BF090FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BF17AE6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - v8;
  v10 = swift_projectBox();
  (*(*(a3 - 8) + 16))(v9, a1, a3);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, a3);
  swift_beginAccess();
  return (*(v6 + 40))(v10, v9, v5);
}

id sub_1BF09110C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

uint64_t static Promise.wait<A>(interval:queue:valueProvider:)()
{
  v0 = OUTLINED_FUNCTION_104();
  type metadata accessor for Promise(v0, v1, v2, v3);
  OUTLINED_FUNCTION_86_0();
  return Promise.__allocating_init(resolver:)();
}

uint64_t sub_1BF0911EC(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v27 = a1;
  v16 = sub_1BF179B5C();
  v29 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BF179BBC();
  v20 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v21);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a9;
  *(v24 + 24) = a10;
  *(v24 + 32) = a6;
  *(v24 + 40) = a7;
  *(v24 + 48) = a8;
  *(v24 + 56) = a3;
  *(v24 + 64) = v27;
  *(v24 + 72) = a2;
  aBlock[4] = sub_1BF097990;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_295;
  v25 = _Block_copy(aBlock);

  a8;

  sub_1BF179B8C();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1BEFF7410(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BF0491C4(0, &qword_1ED8EFBE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1BF095E00();
  sub_1BF17B0BC();
  MEMORY[0x1BFB52B50](0, v23, v19, v25);
  _Block_release(v25);
  (*(v29 + 8))(v19, v16);
  (*(v20 + 8))(v23, v28);
}

uint64_t sub_1BF0914F8(void *(*a1)(void *__return_ptr, double), uint64_t a2, void *a3, uint64_t (*a4)(void *), uint64_t a5, double a6)
{
  v40 = a4;
  v36 = a3;
  v10 = sub_1BF179B5C();
  v39 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BF179BBC();
  v37 = *(v14 - 8);
  v38 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BF179BEC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v34 - v26;
  v28 = a1(aBlock, v25);
  if ((aBlock[0] & 1) == 0)
  {
    return v40(v28);
  }

  sub_1BF179BDC();
  sub_1BF179C6C();
  v29 = *(v19 + 8);
  v34 = v18;
  v35 = v29;
  v29(v22, v18);
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  v31 = v36;
  *(v30 + 32) = v36;
  *(v30 + 40) = a6;
  *(v30 + 48) = v40;
  *(v30 + 56) = a5;
  aBlock[4] = sub_1BF097548;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_283;
  v32 = _Block_copy(aBlock);

  v31;

  sub_1BF179B8C();
  v41 = MEMORY[0x1E69E7CC0];
  sub_1BEFF7410(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BF0491C4(0, &qword_1ED8EFBE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1BF095E00();
  sub_1BF17B0BC();
  MEMORY[0x1BFB52B00](v27, v17, v13, v32);
  _Block_release(v32);
  (*(v39 + 8))(v13, v10);
  (*(v37 + 8))(v17, v38);
  v35(v27, v34);
}

uint64_t sub_1BF091900(void (*a1)(double), uint64_t a2, void *a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v45 = a6;
  v46 = a3;
  v54 = a4;
  v55 = a5;
  v12 = sub_1BF179B5C();
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v49 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1BF179BBC();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v15);
  v44 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1BF179BEC();
  v47 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v53 = &v43 - v22;
  v23 = sub_1BF17AE6C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v43 - v26;
  v28 = *(a7 - 8);
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v43 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v31);
  if (__swift_getEnumTagSinglePayload(v27, 1, a7) == 1)
  {
    (*(v24 + 8))(v27, v23);
    sub_1BF179BDC();
    sub_1BF179C6C();
    v47 = *(v47 + 8);
    (v47)(v19, v56);
    v34 = swift_allocObject();
    v35 = v46;
    *(v34 + 16) = v45;
    *(v34 + 24) = a7;
    *(v34 + 32) = a1;
    *(v34 + 40) = a2;
    *(v34 + 48) = v35;
    *(v34 + 56) = a8;
    v36 = v55;
    *(v34 + 64) = v54;
    *(v34 + 72) = v36;
    aBlock[4] = sub_1BF097560;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF0058CC;
    aBlock[3] = &block_descriptor_289;
    v37 = _Block_copy(aBlock);

    v35;

    v38 = v44;
    sub_1BF179B8C();
    v57 = MEMORY[0x1E69E7CC0];
    sub_1BEFF7410(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1BF0491C4(0, &qword_1ED8EFBE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1BF095E00();
    v39 = v49;
    v40 = v52;
    sub_1BF17B0BC();
    v41 = v53;
    MEMORY[0x1BFB52B00](v53, v38, v39, v37);
    _Block_release(v37);
    (*(v51 + 8))(v39, v40);
    (*(v48 + 8))(v38, v50);
    (v47)(v41, v56);
  }

  else
  {
    (*(v28 + 32))(v33, v27, a7);
    v54(v33);
    return (*(v28 + 8))(v33, a7);
  }
}

uint64_t static Promise.wait<A>(timeout:interval:queue:valueProvider:)()
{
  OUTLINED_FUNCTION_62_0();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_104();
  type metadata accessor for Promise(v2, v3, v4, v5);
  OUTLINED_FUNCTION_41_0();
  static Promise.wait<A>(interval:queue:valueProvider:)();
  OUTLINED_FUNCTION_66();
  v6 = sub_1BF007568();
  v7 = Promise.timeout(after:on:message:)(v6, 0, 0, v1);

  return v7;
}

uint64_t static Promise.wait(interval:queue:condition:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_1BF179B5C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  sub_1BF179BBC();
  OUTLINED_FUNCTION_1();
  v39 = v14;
  v40 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_58();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = MEMORY[0x1E69E7CA8];
  OUTLINED_FUNCTION_12_5();
  sub_1BF0035CC(0, v21, v20 + 8, v22);
  OUTLINED_FUNCTION_27();
  v23 = swift_allocObject();
  aBlock[0] = 0;
  v24 = type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_87(v24);
  v25 = a1;

  UnfairLock.init(options:)(aBlock);
  OUTLINED_FUNCTION_7_6();
  sub_1BF0035CC(0, v26, v20 + 8, v27);
  OUTLINED_FUNCTION_50_0();
  v28 = swift_allocObject();
  *(v28 + 32) = MEMORY[0x1E69E7CC0];
  *(v28 + 40) = 0;
  *(v23 + 16) = OUTLINED_FUNCTION_64_0(v28);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1BF095DC8;
  *(v29 + 24) = v19;
  *(v29 + 32) = v25;
  *(v29 + 40) = a4;
  *(v29 + 48) = sub_1BF035788;
  *(v29 + 56) = v23;
  aBlock[4] = sub_1BF09798C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_0;
  v30 = _Block_copy(aBlock);
  swift_retain_n();
  v31 = v25;

  sub_1BF179B8C();
  OUTLINED_FUNCTION_48_1();
  sub_1BEFF7410(v32, v33, MEMORY[0x1E69E7F70]);
  OUTLINED_FUNCTION_47_1();
  sub_1BF0491C4(0, v34, v35, MEMORY[0x1E69E62F8]);
  sub_1BF095E00();
  sub_1BF17B0BC();
  MEMORY[0x1BFB52B50](0, v18, v12, v30);
  _Block_release(v30);
  v36 = OUTLINED_FUNCTION_129();
  v37(v36);
  (*(v39 + 8))(v18, v40);

  return v23;
}

void sub_1BF0922A4()
{
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  sub_1BF099E08();
}

uint64_t Promise.asOptionalWithRecovery()()
{
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  v2 = swift_allocObject();
  v3 = *(v1 + 80);
  *(v2 + 16) = v3;
  v4 = sub_1BF17AE6C();
  v5 = sub_1BF007568();
  Promise.then<A>(on:closure:)(v5, sub_1BF09799C, v2, v4);
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_27();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = sub_1BF007568();
  v8 = Promise.recover(on:closure:)(v7, sub_1BF095EEC, v6);

  return v8;
}

uint64_t static Promise.wait<A>(for:ignoreInitialValue:satisfying:)()
{
  OUTLINED_FUNCTION_25_3();
  type metadata accessor for Promise(0, *(*v0 + 80), v1, v2);
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_86_0();
  return Promise.__allocating_init(resolver:)();
}

uint64_t sub_1BF092490(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a2;
  v13 = sub_1BF179C5C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  *v17 = sub_1BF17AD5C();
  v18 = *(v14 + 104);
  v48 = *MEMORY[0x1E69E8020];
  v49 = v14 + 104;
  v47 = v18;
  v18(v17);
  v19 = sub_1BF179C8C();
  v21 = *(v14 + 8);
  v20 = v14 + 8;
  v46 = v21;
  result = v21(v17, v13);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v44 = v20;
  v45 = v13;
  v43 = a6;
  v23 = swift_allocObject();
  v24 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  *(v23 + 16) = v24;
  v40 = (v23 + 16);
  result = swift_allocObject();
  *(result + 16) = (a5 & 1) == 0;
  v25 = (result + 16);
  if (!v24)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v26 = result;
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = a7;
  v27[4] = a8;
  v27[5] = v23;
  v39 = a1;
  v27[6] = a1;
  v27[7] = v50;

  sub_1BF009984(a7, a8);

  v41 = a7;
  v42 = a8;
  sub_1BF009984(a7, a8);

  v28 = v24;
  *v17 = sub_1BF17AD5C();
  v29 = v45;
  v47(v17, v48, v45);
  v30 = sub_1BF179C8C();
  result = v46(v17, v29);
  if ((v30 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v31 = v43;
  sub_1BF09555C(v28, sub_1BF0973F0, v27);
  swift_beginAccess();
  v32 = *(v31 + 24);
  v52 = v32;
  swift_beginAccess();
  if (*v25 == 1)
  {
    v34 = v41;
    v33 = v42;
    if (!v41 || (v51[0] = v32, , v35 = v34(v51), sub_1BEFE52DC(v34, v33), (v35 & 1) != 0))
    {
      v36 = v40;
      swift_beginAccess();
      v37 = *v36;
      *v36 = 0;

      v39(&v52);
    }
  }

  else
  {
    *v25 = 1;
    v34 = v41;
    v33 = v42;
  }

  sub_1BEFE52DC(v34, v33);
}

uint64_t sub_1BF092870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a1;
  v13 = *a6;
  v14 = sub_1BF179C5C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  *v18 = sub_1BF17AD5C();
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v19 = sub_1BF179C8C();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v21 = swift_allocObject();
    v22 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
    *(v21 + 16) = v22;
    result = swift_allocObject();
    *(result + 16) = (a5 & 1) == 0;
    if (v22)
    {
      v23 = result;
      v24 = swift_allocObject();
      v24[2] = a9;
      v24[3] = *(v13 + 80);
      v24[4] = v23;
      v24[5] = a7;
      v24[6] = a8;
      v25 = v28;
      v24[7] = v21;
      v24[8] = v25;
      v24[9] = a2;
      v26 = v22;

      sub_1BF009984(a7, a8);
      sub_1BEFF9AF8(0, &qword_1ED8EF730, 0x1E69E58C0);

      ObservableProperty.eagerObserve<A>(disposeOn:block:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF092B0C(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(_BYTE *), uint64_t a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v17 = a2;
  swift_beginAccess();
  if (*(a3 + 16) == 1)
  {
    if (!a4 || (v16[0] = a2 & 1, , v13 = a4(v16), result = sub_1BEFE52DC(a4, a5), (v13 & 1) != 0))
    {
      swift_beginAccess();
      v15 = *(a6 + 16);
      *(a6 + 16) = 0;

      return a7(&v17);
    }
  }

  else
  {
    result = swift_beginAccess();
    *(a3 + 16) = 1;
  }

  return result;
}

uint64_t sub_1BF092C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_beginAccess();
  if (*(a3 + 16) != 1)
  {
    result = swift_beginAccess();
    *(a3 + 16) = 1;
    return result;
  }

  v26[6] = a8;
  v27 = a7;
  if (a4)
  {
    v17 = swift_allocObject();
    v19 = v17;
    v17[2] = a9;
    v17[3] = a10;
    v17[4] = a4;
    v17[5] = a5;
    v20 = sub_1BF097998;
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  v29 = v20;
  v30 = v19;
  MEMORY[0x1EEE9AC00](v17, v18);
  v26[2] = a9;
  v26[3] = a10;
  v26[4] = a2;
  sub_1BF009984(a4, a5);
  v22 = MEMORY[0x1E69E6370];
  swift_getFunctionTypeMetadata1();
  sub_1BF17AE6C();
  sub_1BF089FE0(sub_1BF097974, v26, MEMORY[0x1E69E73E0], v22, v23, &v28);
  result = sub_1BEFE52DC(v20, v19);
  if (v28 == 2)
  {
    v24 = v27;
  }

  else
  {
    v24 = v27;
    if ((v28 & 1) == 0)
    {
      return result;
    }
  }

  swift_beginAccess();
  v25 = *(a6 + 16);
  *(a6 + 16) = 0;

  return v24(a2);
}

uint64_t static Promise.wait(for:ignoreInitialValue:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6370];
  OUTLINED_FUNCTION_12_5();
  sub_1BF0035CC(0, v3, v2, v4);
  OUTLINED_FUNCTION_27();
  v5 = swift_allocObject();
  v6 = OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_87(v6);
  OUTLINED_FUNCTION_66();

  UnfairLock.init(options:)(&v13);
  OUTLINED_FUNCTION_7_6();
  sub_1BF0035CC(0, v7, v2, v8);
  OUTLINED_FUNCTION_50_0();
  v9 = swift_allocObject();
  *(v9 + 32) = MEMORY[0x1E69E7CC0];
  *(v9 + 40) = 0;
  *(v5 + 16) = OUTLINED_FUNCTION_64_0(v9);
  swift_retain_n();
  sub_1BF092490(sub_1BF095F5C, v5, sub_1BF095F64, v5, 0, a1, sub_1BF01877C, 0);

  sub_1BF0922A4();
  v11 = v10;

  return v11;
}

uint64_t static Promise.waitUnwrapped<A>(for:ignoreInitialValue:satisfying:)()
{
  OUTLINED_FUNCTION_25_3();
  type metadata accessor for Promise(0, *(*(*v0 + 80) + 16), v1, v2);
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_86_0();
  return Promise.__allocating_init(resolver:)();
}

uint64_t sub_1BF092FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a1;
  v13 = *a6;
  v14 = sub_1BF179C5C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  *v18 = sub_1BF17AD5C();
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v19 = sub_1BF179C8C();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v21 = swift_allocObject();
    v22 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
    *(v21 + 16) = v22;
    result = swift_allocObject();
    *(result + 16) = (a5 & 1) == 0;
    if (v22)
    {
      v23 = result;
      v24 = swift_allocObject();
      v24[2] = a9;
      v24[3] = *(*(v13 + 80) + 16);
      v24[4] = v23;
      v24[5] = a7;
      v24[6] = a8;
      v25 = v28;
      v24[7] = v21;
      v24[8] = v25;
      v24[9] = a2;
      v26 = v22;

      sub_1BF009984(a7, a8);
      sub_1BEFF9AF8(0, &qword_1ED8EF730, 0x1E69E58C0);

      ObservableProperty.eagerObserve<A>(disposeOn:block:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF093244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v35 = a8;
  v36 = a7;
  v34 = a6;
  v14 = sub_1BF17AE6C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v33 - v17;
  v19 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a3 + 16) == 1)
  {
    (*(v15 + 16))(v18, a2, v14);
    if (__swift_getEnumTagSinglePayload(v18, 1, a10) == 1)
    {
      return (*(v15 + 8))(v18, v14);
    }

    else
    {
      v25 = (*(v19 + 32))(v23, v18, a10);
      if (a4)
      {
        v25 = swift_allocObject();
        v27 = v25;
        v25[2] = a9;
        v25[3] = a10;
        v25[4] = a4;
        v25[5] = a5;
        v28 = sub_1BF097394;
      }

      else
      {
        v28 = 0;
        v27 = 0;
      }

      v38 = v28;
      v39 = v27;
      MEMORY[0x1EEE9AC00](v25, v26);
      *(&v33 - 4) = a9;
      *(&v33 - 3) = a10;
      *(&v33 - 2) = v23;
      sub_1BF009984(a4, a5);
      v29 = MEMORY[0x1E69E6370];
      swift_getFunctionTypeMetadata1();
      sub_1BF17AE6C();
      sub_1BF089FE0(sub_1BF09737C, (&v33 - 6), MEMORY[0x1E69E73E0], v29, v30, &v37);
      sub_1BEFE52DC(v28, v27);
      if (v37 == 2 || (v37 & 1) != 0)
      {
        v31 = v34;
        swift_beginAccess();
        v32 = *(v31 + 16);
        *(v31 + 16) = 0;

        v36(v23);
      }

      return (*(v19 + 8))(v23, a10);
    }
  }

  else
  {
    result = swift_beginAccess();
    *(a3 + 16) = 1;
  }

  return result;
}

uint64_t sub_1BF0935D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v25 = a1;
  v12 = *a6;
  v13 = sub_1BF179C5C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  *v17 = sub_1BF17AD5C();
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v18 = sub_1BF179C8C();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v20 = swift_allocObject();
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0;
    *(v20 + 16) = 0u;
    v21 = swift_allocObject();
    *(v21 + 16) = (a5 & 1) == 0;
    v22 = swift_allocObject();
    v22[2] = *(v12 + 80);
    v22[3] = v21;
    v22[4] = a7;
    v22[5] = a8;
    v23 = v25;
    v22[6] = v20;
    v22[7] = v23;
    v22[8] = a2;

    sub_1BF009984(a7, a8);

    SyncObservable.onNext(eager:block:)(1, sub_1BF097210, v22, v26);

    swift_beginAccess();
    sub_1BF097228();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF093878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v16 = swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    v25[4] = a7;
    if (a3)
    {
      v16 = swift_allocObject();
      v18 = v16;
      v16[2] = a8;
      v16[3] = a3;
      v16[4] = a4;
      v19 = sub_1BF097330;
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }

    *&v26 = v19;
    *(&v26 + 1) = v18;
    MEMORY[0x1EEE9AC00](v16, v17);
    v25[2] = a8;
    v25[3] = a1;
    sub_1BF009984(a3, a4);
    v21 = MEMORY[0x1E69E6370];
    swift_getFunctionTypeMetadata1();
    sub_1BF17AE6C();
    sub_1BF089FE0(sub_1BF097280, v25, MEMORY[0x1E69E73E0], v21, v22, v29);
    result = sub_1BEFE52DC(v19, v18);
    if (v29[0] == 2 || (v29[0] & 1) != 0)
    {
      swift_beginAccess();
      if (*(a5 + 40))
      {
        sub_1BF0972D0(a5 + 16, &v26);
        v23 = *(&v27 + 1);
        v24 = v28;
        __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
        (*(v24 + 16))(v23, v24);
        __swift_destroy_boxed_opaque_existential_1(&v26);
      }

      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      swift_beginAccess();
      sub_1BF097228();
      return a6(a1);
    }
  }

  else
  {
    result = swift_beginAccess();
    *(a2 + 16) = 1;
  }

  return result;
}

void Promise.wait<A>(for:ignoreInitialValue:satisfying:)()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_85();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_114(v2);
  sub_1BF009984(v1, v0);
  v3 = sub_1BF007568();
  OUTLINED_FUNCTION_134(v3);

  OUTLINED_FUNCTION_55();
}

uint64_t sub_1BF093BC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Promise(0, *(*(*a2 + *MEMORY[0x1E69E77B0] + 8) + 80), a3, a4);
  swift_getAtKeyPath();
  v4 = static Promise.wait<A>(for:ignoreInitialValue:satisfying:)();

  return v4;
}

void Promise.waitUnwrapped<A>(for:ignoreInitialValue:satisfying:)()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_85();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_114(v2);
  sub_1BF009984(v1, v0);
  v3 = sub_1BF007568();
  OUTLINED_FUNCTION_134(v3);

  OUTLINED_FUNCTION_55();
}

uint64_t sub_1BF093D68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Promise(0, *(*(*(*a2 + *MEMORY[0x1E69E77B0] + 8) + 80) + 16), a3, a4);
  swift_getAtKeyPath();
  v4 = static Promise.waitUnwrapped<A>(for:ignoreInitialValue:satisfying:)();

  return v4;
}

uint64_t Promise.as<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  OUTLINED_FUNCTION_58();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 80);
  *(v5 + 24) = a2;
  v6 = sub_1BF007568();
  Promise.then<A>(on:closure:)(v6, sub_1BF096098, v5, a2);
  v8 = v7;

  return v8;
}

void sub_1BF093F50(void (*a1)(char *), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a4;
  v34 = a3;
  v32 = a1;
  v10 = sub_1BF17AE6C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v31 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a7 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v18, a5, a6, v22);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, a7);
    (*(v19 + 32))(v24, v14, a7);
    v32(v24);
    (*(v19 + 8))(v24, a7);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, a7);
    (*(v11 + 8))(v14, v10);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1BF17B1EC();
    MEMORY[0x1BFB52000](0x742064656C696146, 0xEF2074736163206FLL);
    sub_1BF17B80C();
    MEMORY[0x1BFB52000](544432416, 0xE400000000000000);
    swift_getMetatypeMetadata();
    v26 = sub_1BF17BD4C();
    MEMORY[0x1BFB52000](v26);

    v27 = v35;
    v28 = v36;
    sub_1BF095D40();
    v29 = swift_allocError();
    *v30 = v27;
    *(v30 + 8) = v28;
    *(v30 + 16) = 1;
    v34();
  }
}

uint64_t sub_1BF094280()
{
  result = swift_weakLoadStrong();
  if (result)
  {

    v1 = sub_1BF0EEFD4();

    v1(v2);
  }

  return result;
}

uint64_t sub_1BF0942FC(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = v2;
  *(v1 + 56) = -1;
  return OUTLINED_FUNCTION_80_0(a1);
}

uint64_t sub_1BF094318(uint64_t a1)
{
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_29();
  sub_1BF09704C(0, v3, v4);
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_1BF094518(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_62_0();
  v7 = *(v3 + 16);
  os_unfair_lock_assert_owner(*(v7 + 16));
  OUTLINED_FUNCTION_15_3(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_20_3();
  sub_1BF097124(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_37_1();
  sub_1BF097140(v14, v15, v16);
  OUTLINED_FUNCTION_14_5(v17, v18, v19, v20, v21, v22, v23, v24, v31);
  v25 = *(v3 + 32);
  *(v3 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_50_0();
  v26 = swift_allocObject();
  *(v26 + 16) = v7;
  *(v26 + 24) = v25;
  *(v26 + 32) = v5;
  *(v26 + 40) = v4;
  *(v26 + 48) = a3;
  v27 = OUTLINED_FUNCTION_20_3();
  sub_1BF097124(v27, v28, v29);
  OUTLINED_FUNCTION_73_0();
  return OUTLINED_FUNCTION_32_2();
}

void sub_1BF094660()
{
  OUTLINED_FUNCTION_32();
  sub_1BF09704C(0, qword_1ED8E9E18, type metadata accessor for AuthToken);
  v2 = v1;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_90();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_11_4();
  sub_1BF096708(0, v5, qword_1ED8E9E18, type metadata accessor for AuthToken, v6);
  OUTLINED_FUNCTION_68(v7);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_63_0();
  v10 = OUTLINED_FUNCTION_106();
  os_unfair_lock_assert_owner(v10);
  OUTLINED_FUNCTION_56_1();
  sub_1BF096764();
  OUTLINED_FUNCTION_127();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v2);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_116();
  swift_endAccess();
  OUTLINED_FUNCTION_77_1();
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_56_1();
  sub_1BF096764();
  OUTLINED_FUNCTION_54_2();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_40_2(v14);

  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF094894(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_62_0();
  v7 = *(v3 + 16);
  os_unfair_lock_assert_owner(*(v7 + 16));
  OUTLINED_FUNCTION_15_3(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_20_3();
  sub_1BF096E40(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_37_1();
  sub_1BF096E9C(v14, v15, v16);
  OUTLINED_FUNCTION_14_5(v17, v18, v19, v20, v21, v22, v23, v24, v31);
  v25 = *(v3 + 32);
  *(v3 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_50_0();
  v26 = swift_allocObject();
  *(v26 + 16) = v7;
  *(v26 + 24) = v25;
  *(v26 + 32) = v5;
  *(v26 + 40) = v4;
  *(v26 + 48) = a3;
  v27 = OUTLINED_FUNCTION_20_3();
  sub_1BF096E40(v27, v28, v29);
  OUTLINED_FUNCTION_73_0();
  return OUTLINED_FUNCTION_32_2();
}

void sub_1BF0949DC()
{
  OUTLINED_FUNCTION_32();
  v1 = MEMORY[0x1E6967EC8];
  sub_1BF09704C(0, &qword_1EBDCAA58, MEMORY[0x1E6967EC8]);
  v3 = v2;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_90();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_11_4();
  sub_1BF096708(0, v6, &qword_1EBDCAA58, v1, v7);
  OUTLINED_FUNCTION_68(v8);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_63_0();
  v11 = OUTLINED_FUNCTION_106();
  os_unfair_lock_assert_owner(v11);
  OUTLINED_FUNCTION_56_1();
  sub_1BF096764();
  OUTLINED_FUNCTION_127();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v3);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_116();
  swift_endAccess();
  OUTLINED_FUNCTION_77_1();
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_56_1();
  sub_1BF096764();
  OUTLINED_FUNCTION_54_2();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_40_2(v15);

  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF094B88(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_62_0();
  v7 = *(v3 + 16);
  os_unfair_lock_assert_owner(*(v7 + 16));
  OUTLINED_FUNCTION_15_3(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_20_3();
  sub_1BF096B3C(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_37_1();
  sub_1BF096B5C(v14, v15, v16);
  OUTLINED_FUNCTION_14_5(v17, v18, v19, v20, v21, v22, v23, v24, v31);
  v25 = *(v3 + 32);
  *(v3 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_50_0();
  v26 = swift_allocObject();
  *(v26 + 16) = v7;
  *(v26 + 24) = v25;
  *(v26 + 32) = v5;
  *(v26 + 40) = v4;
  *(v26 + 48) = a3;
  v27 = OUTLINED_FUNCTION_20_3();
  sub_1BF096B3C(v27, v28, v29);
  OUTLINED_FUNCTION_73_0();
  return OUTLINED_FUNCTION_32_2();
}