uint64_t sub_1E4B80E80(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F10, &qword_1E4C0E7F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v72 = &v69 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F18, &qword_1E4C0E7F8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v76 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v69 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944D0, &qword_1E4C0E800);
  v78 = *(v81 - 8);
  v10 = MEMORY[0x1EEE9AC00](v81);
  v71 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F20, &qword_1E4C0E808);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v69 - v14;
  v16 = type metadata accessor for RCSChatbotRenderInformationResponse(0);
  v79 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = a1;
  v18 = a1[6];
  v19 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E4B84C88;
  *(v20 + 24) = a2;
  v21 = *(v19 + 72);
  v22 = sub_1E4B85014(&qword_1ECF95F28, type metadata accessor for RCSChatbotRenderInformationResponse, &protocol conformance descriptor for RCSChatbotRenderInformationResponse);
  swift_retain_n();
  v82 = v16;
  v21(sub_1E4B84C90, v20, v16, v22, v18, v19);

  v23 = v87[2];
  os_unfair_lock_lock((v23 + 104));
  v24 = 0;
  sub_1E4B853B4((v23 + 16));
  os_unfair_lock_unlock((v23 + 104));
  os_unfair_lock_lock((v23 + 104));
  v25 = sub_1E4B76B24(sub_1E4B785A4, 0);
  os_unfair_lock_unlock((v23 + 104));
  v87 = *(v25 + 2);
  if (v87)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_36:
      swift_once();
    }

    v83 = v24;
    v77 = sub_1E4BEFB7C();
    v26 = __swift_project_value_buffer(v77, qword_1ECF95E30);

    v84 = v26;
    v27 = sub_1E4BEFB5C();
    v28 = v25;
    v29 = sub_1E4BF04BC();
    v30 = os_log_type_enabled(v27, v29);
    v31 = v82;
    if (v30)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v91 = v33;
      *v32 = 134218242;
      *(v32 + 4) = *(v25 + 2);

      *(v32 + 12) = 2080;
      LOBYTE(v89) = 34;
      v34 = sub_1E4BEFEFC();
      v25 = v35;
      v36 = sub_1E4B30548(v34, v35, &v91);

      *(v32 + 14) = v36;
      _os_log_impl(&dword_1E4AD3000, v27, v29, "Flushing %ld messages (%s) to client, since it started listening for them", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1E6921800](v33, -1, -1);
      MEMORY[0x1E6921800](v32, -1, -1);
    }

    else
    {
    }

    v24 = v86;
    v38 = v28;
    v39 = 0;
    v40 = (v38 + 32);
    v41 = (v79 + 56);
    v79 = v78 + 48;
    v74 = (v78 + 32);
    v73 = (v78 + 8);
    v80 = a2;
    v85 = v38;
    do
    {
      if (v39 >= *(v38 + 2))
      {
        __break(1u);
        goto LABEL_36;
      }

      sub_1E4B3AA00(v40, &v91);
      sub_1E4ADB544(&v92, &v89);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      v42 = swift_dynamicCast();
      v43 = *v41;
      if (v42)
      {
        v43(v15, 0, 1, v31);
        sub_1E4B8505C(v15, v24, type metadata accessor for RCSChatbotRenderInformationResponse);
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v45 = (v24 + *(v31 + 20));
          v46 = v45[1];
          if (v46)
          {
            v47 = v31;
            v48 = *v45;
            v49 = *(v24 + *(v47 + 24));
            v50 = *(Strong + 160);
            if (v49 == 10)
            {
              v89 = *v45;
              v90 = v46;
              v25 = *(v50 + 16);
              MEMORY[0x1EEE9AC00](Strong);
              *(&v69 - 2) = &v89;
              os_unfair_lock_lock(v25 + 6);
              v51 = v76;
              v52 = v83;
              sub_1E4B84CB8(v76);
              v83 = v52;
              os_unfair_lock_unlock(v25 + 6);
              v53 = v81;
              if ((*v79)(v51, 1, v81) == 1)
              {
                sub_1E4AE0AE4(v51, &qword_1ECF95F18, &qword_1E4C0E7F8);
              }

              else
              {
                v66 = v71;
                (*v74)(v71, v51, v53);
                sub_1E4AF1898(v86, v72, &qword_1ECF95F10, &qword_1E4C0E7F0);
                sub_1E4BF01BC();
                (*v73)(v66, v53);
              }

              a2 = v80;
              v31 = v82;
            }

            else
            {
              sub_1E4B843DC();
              v60 = swift_allocError();
              v78 = v60;
              *v61 = v49;
              v89 = v48;
              v90 = v46;
              v25 = *(v50 + 16);
              MEMORY[0x1EEE9AC00](v60);
              *(&v69 - 2) = &v89;
              os_unfair_lock_lock(v25 + 6);
              v62 = v75;
              v63 = v83;
              sub_1E4B84CF0(v75);
              v83 = v63;
              os_unfair_lock_unlock(v25 + 6);
              v64 = v81;
              if ((*v79)(v62, 1, v81) == 1)
              {
                sub_1E4AE0AE4(v62, &qword_1ECF95F18, &qword_1E4C0E7F8);

                v65 = v78;
              }

              else
              {
                v67 = v70;
                (*v74)(v70, v62, v64);
                v25 = v78;
                v88 = v78;
                v68 = v78;
                sub_1E4BF01AC();
                (*v73)(v67, v64);

                v65 = v25;
              }

              a2 = v80;
              v31 = v82;
            }

            v24 = v86;
          }

          else
          {
            if (qword_1ECF92440 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v77, qword_1ECF97928);
            v57 = sub_1E4BEFB5C();
            v25 = sub_1E4BF04DC();
            if (os_log_type_enabled(v57, v25))
            {
              v58 = swift_slowAlloc();
              *v58 = 0;
              _os_log_impl(&dword_1E4AD3000, v57, v25, "Received render info response with missing operation ID", v58, 2u);
              v59 = v58;
              v24 = v86;
              MEMORY[0x1E6921800](v59, -1, -1);
            }
          }
        }

        sub_1E4B8512C(v24, type metadata accessor for RCSChatbotRenderInformationResponse);
        v38 = v85;
      }

      else
      {
        v43(v15, 1, 1, v31);
        sub_1E4AE0AE4(v15, &qword_1ECF95F20, &qword_1E4C0E808);
        v54 = sub_1E4BEFB5C();
        v25 = sub_1E4BF04DC();
        if (os_log_type_enabled(v54, v25))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_1E4AD3000, v54, v25, "Got an unexpected message type when flushing pending messages", v55, 2u);
          v56 = v55;
          v24 = v86;
          MEMORY[0x1E6921800](v56, -1, -1);
        }
      }

      v39 = (v39 + 1);
      v40 += 48;
    }

    while (v87 != v39);
  }

  else
  {
  }
}

uint64_t sub_1E4B819E4(void *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E4B84B7C;
  *(v6 + 24) = a2;
  v7 = *(v5 + 72);
  v8 = sub_1E4B1C600();
  swift_retain_n();
  v7(sub_1E4B853CC, v6, &type metadata for RCSGroupChatMutationResponseNotification, v8, v4, v5);

  v9 = a1[2];
  os_unfair_lock_lock((v9 + 104));
  sub_1E4B853B4((v9 + 16));
  os_unfair_lock_unlock((v9 + 104));
  os_unfair_lock_lock((v9 + 104));
  v10 = sub_1E4B76B24(sub_1E4B785B4, 0);
  os_unfair_lock_unlock((v9 + 104));
  v11 = *(v10 + 16);
  if (v11)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_19:
      swift_once();
    }

    v12 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v12, qword_1ECF95E30);

    v13 = sub_1E4BEFB5C();
    v14 = sub_1E4BF04BC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v48 = v16;
      *v15 = 134218242;
      *(v15 + 4) = *(v10 + 16);

      *(v15 + 12) = 2080;
      LOBYTE(v41) = 19;
      v17 = sub_1E4BEFEFC();
      v19 = a2;
      v20 = sub_1E4B30548(v17, v18, &v48);

      *(v15 + 14) = v20;
      a2 = v19;
      _os_log_impl(&dword_1E4AD3000, v13, v14, "Flushing %ld messages (%s) to client, since it started listening for them", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E6921800](v16, -1, -1);
      MEMORY[0x1E6921800](v15, -1, -1);
    }

    else
    {
    }

    v22 = 0;
    v23 = &qword_1ECF95E60;
    v24 = &qword_1E4C0E730;
    v25 = v10 + 32;
    v34 = v10;
    do
    {
      if (v22 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      sub_1E4B3AA00(v25, v54);
      sub_1E4ADB544(v55, v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
      if (swift_dynamicCast())
      {
        v50 = v43;
        v51 = v44;
        v52 = v45;
        v53 = v46;
        v48 = v41;
        v49 = v42;
        sub_1E4BDD8DC(&v48, a2);
        v37 = v50;
        v38 = v51;
        v39 = v52;
        v40 = v53;
        v35 = v48;
        v36 = v49;
        sub_1E4B1B874(&v35);
      }

      else
      {
        v26 = v11;
        v27 = v24;
        v28 = v23;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0;
        sub_1E4AE0AE4(&v35, &qword_1ECF95EF0, &qword_1E4C0E7B8);
        v29 = sub_1E4BEFB5C();
        v30 = sub_1E4BF04DC();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = a2;
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_1E4AD3000, v29, v30, "Got an unexpected message type when flushing pending messages", v32, 2u);
          v33 = v32;
          a2 = v31;
          MEMORY[0x1E6921800](v33, -1, -1);
        }

        v23 = v28;
        v24 = v27;
        v11 = v26;
        v10 = v34;
      }

      ++v22;
      v25 += 48;
    }

    while (v11 != v22);
  }

  else
  {
  }
}

uint64_t sub_1E4B81EA0(void *a1, uint64_t a2)
{
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94480, &qword_1E4C05488);
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v76 = &v73 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EE0, &qword_1E4C0E7A0);
  v6 = *(v5 - 8);
  v95 = v5;
  v96 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v94 = &v73 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92EE0, &qword_1E4BFDC70);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v73 - v8;
  v84 = type metadata accessor for RCSService.IncomingMessageNotification(0);
  v9 = MEMORY[0x1EEE9AC00](v84);
  v77 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v100 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EE8, &qword_1E4C0E7A8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v82 = &v73 - v13;
  v14 = type metadata accessor for RCSReceivedNotification(0);
  v98 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v83 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v73 - v17;
  v18 = a1[6];
  v19 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E4B84B4C;
  *(v20 + 24) = a2;
  v21 = *(v19 + 72);
  v22 = sub_1E4B85014(&qword_1ECF94878, type metadata accessor for RCSReceivedNotification, &protocol conformance descriptor for RCSReceivedNotification);
  v89 = a2;
  swift_retain_n();
  v21(sub_1E4B84B54, v20, v14, v22, v18, v19);

  v23 = a1[2];
  os_unfair_lock_lock((v23 + 104));
  sub_1E4B853B4((v23 + 16));
  os_unfair_lock_unlock((v23 + 104));
  os_unfair_lock_lock((v23 + 104));
  v24 = sub_1E4B76B24(sub_1E4B785C4, 0);
  os_unfair_lock_unlock((v23 + 104));
  v93 = *(v24 + 16);
  if (v93)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_26:
      swift_once();
    }

    v25 = sub_1E4BEFB7C();
    v26 = __swift_project_value_buffer(v25, qword_1ECF95E30);

    v88 = v26;
    v27 = sub_1E4BEFB5C();
    v28 = sub_1E4BF04BC();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v81;
    v87 = v24;
    if (v29)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v102 = v32;
      *v31 = 134218242;
      *(v31 + 4) = *(v24 + 16);

      *(v31 + 12) = 2080;
      v101[0] = 10;
      v33 = sub_1E4BEFEFC();
      v35 = sub_1E4B30548(v33, v34, &v102);

      *(v31 + 14) = v35;
      v24 = v87;
      _os_log_impl(&dword_1E4AD3000, v27, v28, "Flushing %ld messages (%s) to client, since it started listening for them", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1E6921800](v32, -1, -1);
      MEMORY[0x1E6921800](v31, -1, -1);
    }

    else
    {
    }

    v37 = v100;
    v38 = v82;
    v39 = 0;
    v92 = v24 + 32;
    v40 = (v98 + 7);
    v41 = &qword_1E4BFDC70;
    v91 = (v98 + 7);
    v75 = v14;
    v74 = (v97 + 8);
    v73 = (v96 + 8);
    v98 = (v97 + 16);
    do
    {
      if (v39 >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      sub_1E4B3AA00(v92 + 48 * v39, &v102);
      sub_1E4ADB544(&v103, v101);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      v42 = swift_dynamicCast();
      v43 = *v40;
      if (v42)
      {
        v43(v38, 0, 1, v14);
        sub_1E4B8505C(v38, v30, type metadata accessor for RCSReceivedNotification);
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v45 = Strong;
          v90 = v39;
          v46 = v83;
          sub_1E4B850C4(v30, v83, type metadata accessor for RCSReceivedNotification);
          sub_1E4B8505C(v46, v37, type metadata accessor for RCSMessage);
          v47 = *(v46 + *(v14 + 24));
          v48 = (v46 + *(v14 + 20));
          v49 = v84;
          v50 = (v37 + *(v84 + 20));
          v51 = v48[1];
          *v50 = *v48;
          v50[1] = v51;
          *(v37 + *(v49 + 24)) = v47;
          v52 = *(*(v45 + 64) + 16);
          os_unfair_lock_lock((v52 + 24));
          v53 = *(v52 + 16);

          os_unfair_lock_unlock((v52 + 24));
          v54 = v53;
          v55 = *(v53 + 16);
          if (v55)
          {
            v86 = v45;
            v97 = *(v80 + 28);
            v56 = (*(v79 + 80) + 32) & ~*(v79 + 80);
            v85 = v54;
            v57 = v54 + v56;
            v96 = *(v79 + 72);
            v58 = v99;
            v59 = v76;
            v60 = v78;
            v61 = v77;
            v62 = v74;
            v63 = v73;
            do
            {
              sub_1E4AF1898(v57, v60, &qword_1ECF92EE0, &qword_1E4BFDC70);
              (*v98)(v59, v60 + v97, v58);
              sub_1E4AE0AE4(v60, &qword_1ECF92EE0, &qword_1E4BFDC70);
              sub_1E4B850C4(v100, v61, type metadata accessor for RCSService.IncomingMessageNotification);
              v64 = v94;
              sub_1E4BF022C();
              v58 = v99;
              (*v62)(v59, v99);
              (*v63)(v64, v95);
              v57 += v96;
              --v55;
            }

            while (v55);

            v37 = v100;
            v38 = v82;
            v14 = v75;
            v30 = v81;
            v24 = v87;
            v41 = &qword_1E4BFDC70;
          }

          else
          {
          }

          sub_1E4B8512C(v37, type metadata accessor for RCSService.IncomingMessageNotification);

          v39 = v90;
          v40 = v91;
        }

        sub_1E4B8512C(v30, type metadata accessor for RCSReceivedNotification);
      }

      else
      {
        v65 = v37;
        v66 = v30;
        v67 = v41;
        v68 = v39;
        v43(v38, 1, 1, v14);
        sub_1E4AE0AE4(v38, &qword_1ECF95EE8, &qword_1E4C0E7A8);
        v69 = sub_1E4BEFB5C();
        v70 = sub_1E4BF04DC();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&dword_1E4AD3000, v69, v70, "Got an unexpected message type when flushing pending messages", v71, 2u);
          v72 = v71;
          v24 = v87;
          MEMORY[0x1E6921800](v72, -1, -1);
        }

        v39 = v68;
        v40 = v91;
        v41 = v67;
        v30 = v66;
        v37 = v65;
      }

      ++v39;
    }

    while (v39 != v93);
  }

  else
  {
  }
}

uint64_t sub_1E4B829D0(void *a1, uint64_t a2)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94468, &qword_1E4C05468);
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v56 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95ED0, &qword_1E4C0E790);
  v63 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92ED0, &qword_1E4BFDC60);
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v48 - v8;
  v9 = a1[6];
  v10 = a1[7];
  v66 = __swift_project_boxed_opaque_existential_1(a1 + 3, v9);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1E4B84A38;
  *(v11 + 24) = a2;
  v12 = *(v10 + 72);
  v13 = sub_1E4B1C750();
  v57 = a2;
  swift_retain_n();
  v12(sub_1E4B84300, v11, &type metadata for RCSGroupChatMutationNotification, v13, v9, v10);

  v14 = a1[2];
  os_unfair_lock_lock((v14 + 104));
  sub_1E4B853B4((v14 + 16));
  os_unfair_lock_unlock((v14 + 104));
  os_unfair_lock_lock((v14 + 104));
  v15 = sub_1E4B76B24(sub_1E4B785D4, 0);
  os_unfair_lock_unlock((v14 + 104));
  v16 = *(v15 + 16);
  if (v16)
  {
    v64 = v5;
    if (qword_1ECF923E8 != -1)
    {
LABEL_26:
      swift_once();
    }

    v17 = sub_1E4BEFB7C();
    v18 = __swift_project_value_buffer(v17, qword_1ECF95E30);

    v19 = sub_1E4BEFB5C();
    v20 = sub_1E4BF04BC();
    v21 = os_log_type_enabled(v19, v20);
    v51 = v18;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v85[0] = v66;
      *v22 = 134218242;
      *(v22 + 4) = *(v15 + 16);

      *(v22 + 12) = 2080;
      v80.n128_u8[0] = 18;
      v23 = sub_1E4BEFEFC();
      v25 = sub_1E4B30548(v23, v24, v85);

      *(v22 + 14) = v25;
      _os_log_impl(&dword_1E4AD3000, v19, v20, "Flushing %ld messages (%s) to client, since it started listening for them", v22, 0x16u);
      v26 = v66;
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1E6921800](v26, -1, -1);
      MEMORY[0x1E6921800](v22, -1, -1);
    }

    else
    {
    }

    v28 = v63;
    v29 = 0;
    v63 = (v65 + 16);
    v61 = v15 + 32;
    v62 = (v65 + 8);
    v48 = (v28 + 1);
    v49 = v16;
    v50 = v15;
    v30 = v56;
    do
    {
      if (v29 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      sub_1E4B3AA00(v61 + 48 * v29, v87);
      sub_1E4ADB544(v88, v86);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      if (swift_dynamicCast())
      {
        v79[2] = v85[2];
        v79[3] = v85[3];
        v79[0] = v85[0];
        v79[1] = v85[1];
        v82 = v85[2];
        v83 = v85[3];
        v84 = v85[4];
        v81 = v85[1];
        v79[4] = v85[4];
        v80 = v85[0];
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v32 = Strong;
          v76 = v82;
          v77 = v83;
          v78 = v84;
          v74 = v80;
          v75 = v81;
          sub_1E4B84A40(&v80, &v69);
          sub_1E4BDB0DC(&v74, &v69);
          v76 = v71;
          v77 = v72;
          v78 = v73;
          v74 = v69;
          v75 = v70;
          v33 = *(*(v32 + 80) + 16);
          os_unfair_lock_lock((v33 + 24));
          v34 = *(v33 + 16);

          v35 = (v33 + 24);
          v36 = v34;
          os_unfair_lock_unlock(v35);
          v37 = *(v34 + 16);
          if (v37)
          {
            v59 = v32;
            v60 = v29;
            v38 = *(v54 + 28);
            v39 = *(v53 + 80);
            v58 = v36;
            v40 = v36 + ((v39 + 32) & ~v39);
            v65 = *(v53 + 72);
            v66 = v38;
            v41 = v67;
            v42 = v55;
            v43 = v52;
            v44 = v48;
            do
            {
              sub_1E4AF1898(v40, v43, &qword_1ECF92ED0, &qword_1E4BFDC60);
              (*v63)(v30, v66 + v43, v41);
              sub_1E4AE0AE4(v43, &qword_1ECF92ED0, &qword_1E4BFDC60);
              v71 = v76;
              v72 = v77;
              v73 = v78;
              v69 = v74;
              v70 = v75;
              sub_1E4B84A9C(&v74, &v68);
              sub_1E4BF022C();
              v41 = v67;
              (*v62)(v30, v67);
              (*v44)(v42, v64);
              v40 += v65;
              --v37;
            }

            while (v37);

            v16 = v49;
            v15 = v50;
            v29 = v60;
          }

          else
          {
          }

          sub_1E4B84AF8(&v74);
        }

        sub_1E4AE0AE4(v79, &qword_1ECF95ED8, &qword_1E4C0E798);
      }

      else
      {
        *&v85[0] = 0x1FFFFFFFELL;
        *(v85 + 8) = 0u;
        *(&v85[1] + 8) = 0u;
        *(&v85[2] + 8) = 0u;
        *(&v85[3] + 8) = 0u;
        *(&v85[4] + 1) = 0;
        v82 = v85[2];
        v83 = v85[3];
        v84 = 0uLL;
        v80 = v85[0];
        v81 = v85[1];
        sub_1E4AE0AE4(&v80, &qword_1ECF95ED8, &qword_1E4C0E798);
        v45 = sub_1E4BEFB5C();
        v46 = sub_1E4BF04DC();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_1E4AD3000, v45, v46, "Got an unexpected message type when flushing pending messages", v47, 2u);
          MEMORY[0x1E6921800](v47, -1, -1);
        }
      }

      ++v29;
    }

    while (v29 != v16);
  }

  else
  {
  }
}

uint64_t sub_1E4B8323C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v54 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v8 = *(v63 - 8);
  v9 = MEMORY[0x1EEE9AC00](v63);
  v55 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v54 - v11;
  v12 = a1[6];
  v13 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1E4B84480;
  *(v14 + 24) = a2;
  v15 = *(v13 + 72);
  v16 = sub_1E4B84488();
  swift_retain_n();
  v15(sub_1E4B853CC, v14, &type metadata for RCSReportSpamResultNotification, v16, v12, v13);

  v17 = a1[2];
  os_unfair_lock_lock((v17 + 104));
  sub_1E4B853B4((v17 + 16));
  os_unfair_lock_unlock((v17 + 104));
  os_unfair_lock_lock((v17 + 104));
  v18 = sub_1E4B76B24(sub_1E4B785E4, 0);
  v19 = (v17 + 104);
  v20 = v18;
  os_unfair_lock_unlock(v19);
  v21 = *(v20 + 16);
  if (v21)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_31:
      swift_once();
    }

    v56 = v8;
    v22 = sub_1E4BEFB7C();
    v23 = __swift_project_value_buffer(v22, qword_1ECF95E30);

    v65 = v23;
    v24 = sub_1E4BEFB5C();
    v25 = sub_1E4BF04BC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v72 = v27;
      *v26 = 134218242;
      *(v26 + 4) = *(v20 + 16);

      *(v26 + 12) = 2080;
      LOBYTE(v70) = 29;
      v28 = sub_1E4BEFEFC();
      v30 = sub_1E4B30548(v28, v29, &v72);

      *(v26 + 14) = v30;
      _os_log_impl(&dword_1E4AD3000, v24, v25, "Flushing %ld messages (%s) to client, since it started listening for them", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1E6921800](v27, -1, -1);
      MEMORY[0x1E6921800](v26, -1, -1);
    }

    else
    {
    }

    v32 = 0;
    v8 = &v72;
    v33 = v20 + 32;
    v61 = (v56 + 6);
    v57 = (v56 + 4);
    ++v56;
    v58 = a2;
    v62 = v20;
    v64 = v21;
    while (1)
    {
      if (v32 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      sub_1E4B3AA00(v33, &v72);
      sub_1E4ADB544(v73, &v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      if (!swift_dynamicCast())
      {
        v66 = 0;
        v67 = 0;
        v69 = 0;
        v68 = 0;

        v42 = sub_1E4BEFB5C();
        v43 = sub_1E4BF04DC();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_1E4AD3000, v42, v43, "Got an unexpected message type when flushing pending messages", v44, 2u);
          MEMORY[0x1E6921800](v44, -1, -1);
        }

        goto LABEL_11;
      }

      v34 = v67;
      v35 = v68;
      v36 = v69;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v38 = *(Strong + 152);
        if (v36 == 10)
        {
          v70 = v34;
          v71 = v35;
          v39 = *(v38 + 16);
          MEMORY[0x1EEE9AC00](Strong);
          *(&v54 - 2) = &v70;
          os_unfair_lock_lock(v39 + 6);
          v40 = v60;
          sub_1E4B85400(v60);
          os_unfair_lock_unlock(v39 + 6);
          v41 = v63;
          if ((*v61)(v40, 1, v63) == 1)
          {
            sub_1E4AE0AE4(v40, &qword_1ECF95EC0, &unk_1E4C0E780);
          }

          else
          {
            v51 = v55;
            (*v57)(v55, v40, v41);
            sub_1E4BF01BC();
            (*v56)(v51, v41);
          }

          v20 = v62;
          v21 = v64;

          goto LABEL_28;
        }

        sub_1E4B843DC();
        v45 = swift_allocError();
        *v46 = v36;
        v70 = v34;
        v71 = v35;
        v47 = *(v38 + 16);
        MEMORY[0x1EEE9AC00](v45);
        *(&v54 - 2) = &v70;
        os_unfair_lock_lock(v47 + 6);
        v48 = v59;
        sub_1E4B844DC(v59);
        v49 = v48;
        os_unfair_lock_unlock(v47 + 6);
        v50 = v63;
        if ((*v61)(v48, 1, v63) == 1)
        {
          sub_1E4AE0AE4(v48, &qword_1ECF95EC0, &unk_1E4C0E780);
        }

        else
        {
          v52 = v54;
          (*v57)(v54, v49, v50);
          v66 = v45;
          v53 = v45;
          sub_1E4BF01AC();
          (*v56)(v52, v50);
        }

        a2 = v58;
        v20 = v62;
      }

      else
      {
      }

      v21 = v64;
LABEL_28:
      v8 = &v72;
LABEL_11:
      ++v32;
      v33 += 48;
      if (v21 == v32)
      {
      }
    }
  }
}

uint64_t sub_1E4B83A98(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E50, &qword_1E4C0E6E8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v54 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94450, qword_1E4C0E6F0);
  v8 = *(v63 - 8);
  v9 = MEMORY[0x1EEE9AC00](v63);
  v55 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v54 - v11;
  v12 = a1[6];
  v13 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1E4B842F8;
  *(v14 + 24) = a2;
  v15 = *(v13 + 72);
  v16 = sub_1E4B84334();
  v65 = a2;
  swift_retain_n();
  v15(sub_1E4B84300, v14, &type metadata for RCSRevokeMessageResponseNotification, v16, v12, v13);

  v17 = a1[2];
  os_unfair_lock_lock((v17 + 104));
  sub_1E4B84388((v17 + 16));
  os_unfair_lock_unlock((v17 + 104));
  os_unfair_lock_lock((v17 + 104));
  v18 = sub_1E4B76B24(sub_1E4B785F4, 0);
  os_unfair_lock_unlock((v17 + 104));
  v19 = *(v18 + 16);
  if (v19)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_31:
      swift_once();
    }

    v20 = sub_1E4BEFB7C();
    v21 = __swift_project_value_buffer(v20, qword_1ECF95E30);

    v64 = v21;
    v22 = sub_1E4BEFB5C();
    v23 = sub_1E4BF04BC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v72 = v25;
      *v24 = 134218242;
      *(v24 + 4) = *(v18 + 16);

      *(v24 + 12) = 2080;
      LOBYTE(v70) = 36;
      v26 = sub_1E4BEFEFC();
      v28 = v8;
      v29 = sub_1E4B30548(v26, v27, &v72);

      *(v24 + 14) = v29;
      v8 = v28;
      _os_log_impl(&dword_1E4AD3000, v22, v23, "Flushing %ld messages (%s) to client, since it started listening for them", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1E6921800](v25, -1, -1);
      MEMORY[0x1E6921800](v24, -1, -1);
    }

    else
    {
    }

    v31 = 0;
    v32 = v18 + 32;
    v60 = (v8 + 6);
    v57 = (v8 + 4);
    v56 = (v8 + 1);
    v8 = &qword_1ECF95E60;
    v62 = v18;
    v61 = v19;
    do
    {
      if (v31 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      sub_1E4B3AA00(v32, &v72);
      sub_1E4ADB544(v73, &v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      if (swift_dynamicCast())
      {
        v33 = v67;
        v34 = v68;
        v35 = v69;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v37 = v35 >> 8;
          v38 = *(Strong + 144);
          if (v35 >> 8 == 10)
          {
            v70 = v33;
            v71 = v34;
            v39 = *(v38 + 16);
            MEMORY[0x1EEE9AC00](Strong);
            *(&v54 - 2) = &v70;
            os_unfair_lock_lock(v39 + 6);
            v40 = v59;
            sub_1E4B843A4(v59);
            os_unfair_lock_unlock(v39 + 6);
            v41 = v63;
            if ((*v60)(v40, 1, v63) == 1)
            {
              sub_1E4AE0AE4(v40, &qword_1ECF95E50, &qword_1E4C0E6E8);
            }

            else
            {
              v51 = v55;
              (*v57)(v55, v40, v41);
              LOBYTE(v66) = v35 & 1;
              sub_1E4BF01BC();
              (*v56)(v51, v41);
            }
          }

          else
          {
            sub_1E4B843DC();
            v45 = swift_allocError();
            *v46 = v37;
            v70 = v33;
            v71 = v34;
            v47 = *(v38 + 16);
            MEMORY[0x1EEE9AC00](v45);
            *(&v54 - 2) = &v70;
            os_unfair_lock_lock(v47 + 6);
            v48 = v58;
            sub_1E4B84430(v58);
            v49 = v48;
            os_unfair_lock_unlock(v47 + 6);
            v50 = v63;
            if ((*v60)(v48, 1, v63) == 1)
            {
              sub_1E4AE0AE4(v48, &qword_1ECF95E50, &qword_1E4C0E6E8);
            }

            else
            {
              v52 = v54;
              (*v57)(v54, v49, v50);
              v66 = v45;
              v53 = v45;
              sub_1E4BF01AC();
              (*v56)(v52, v50);
            }
          }

          v18 = v62;
          v19 = v61;
        }

        else
        {
        }

        v8 = &qword_1ECF95E60;
      }

      else
      {
        v66 = 0;
        v67 = 0;
        v69 = 0;
        v68 = 0;

        v42 = sub_1E4BEFB5C();
        v43 = sub_1E4BF04DC();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_1E4AD3000, v42, v43, "Got an unexpected message type when flushing pending messages", v44, 2u);
          MEMORY[0x1E6921800](v44, -1, -1);
        }
      }

      ++v31;
      v32 += 48;
    }

    while (v19 != v31);
  }

  else
  {
  }
}

unint64_t sub_1E4B84334()
{
  result = qword_1ECF95E58;
  if (!qword_1ECF95E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95E58);
  }

  return result;
}

unint64_t sub_1E4B843DC()
{
  result = qword_1ECF95E68;
  if (!qword_1ECF95E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95E68);
  }

  return result;
}

unint64_t sub_1E4B84488()
{
  result = qword_1ECF95EC8;
  if (!qword_1ECF95EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95EC8);
  }

  return result;
}

uint64_t sub_1E4B845B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1E4BF061C();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = sub_1E4BF061C();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4B846E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t *a4, uint64_t *a5)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a5;
    v8 = a4;
    v11 = a3;
    v9 = a2;
    v10 = a1;
    v12 = *v7;
    v13 = *v7 >> 62;
    if (!v13)
    {
      result = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1E4BF061C();
  if (result < v9)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v9, v10))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10 - v9;
  if (__OFSUB__(0, v9 - v10))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13)
  {
    v16 = sub_1E4BF061C();
  }

  else
  {
    v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = __OFADD__(v16, v15);
  result = v16 + v15;
  if (!v17)
  {
    v11(result, 1);
    return sub_1E4B845B4(v10, v9, 0, v8, v6);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1E4B848C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *v5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v17 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1E4B84D44()
{
  result = qword_1ECF95F58;
  if (!qword_1ECF95F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95F58);
  }

  return result;
}

unint64_t sub_1E4B84EB8()
{
  result = qword_1ECF95FB0;
  if (!qword_1ECF95FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95FB0);
  }

  return result;
}

unint64_t sub_1E4B84F0C()
{
  result = qword_1ECF95FB8;
  if (!qword_1ECF95FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95FB8);
  }

  return result;
}

uint64_t sub_1E4B84FC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return v5(a1 + *(v6 + 40));
}

uint64_t sub_1E4B85014(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4B8505C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4B850C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4B8512C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4B8519C()
{
  result = qword_1ECF96008;
  if (!qword_1ECF96008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96008);
  }

  return result;
}

uint64_t sub_1E4B85234(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E4B33678;

  return sub_1E4B77F90(a1, v4, v5, v6);
}

uint64_t sub_1E4B85310(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4B85358(uint64_t result, int a2, int a3)
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

double RCSReceiveRequest.messageID.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

TelephonyMessagingKit::RCSReceiveRequest __swiftcall RCSReceiveRequest.init(cellularServiceID:messageID:)(TelephonyMessagingKit::CellularServiceID cellularServiceID, TelephonyMessagingKit::RCSMessageID messageID)
{
  v3 = *messageID.rawValue._countAndFlagsBits;
  v4 = *(messageID.rawValue._countAndFlagsBits + 8);
  *v2 = *cellularServiceID.simSlot;
  *(v2 + 8) = v3;
  *(v2 + 16) = v4;
  result.messageID = messageID;
  result.cellularServiceID = cellularServiceID;
  return result;
}

uint64_t sub_1E4B85498(uint64_t a1)
{
  v2 = sub_1E4B856C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B854D4(uint64_t a1)
{
  v2 = sub_1E4B856C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSReceiveRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96038, &qword_1E4C0E980);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 2);
  v11[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B856C4();
  sub_1E4BF0ACC();
  LOBYTE(v12) = v7;
  v14 = 0;
  sub_1E4ADBE98();
  v9 = v11[1];
  sub_1E4BF093C();
  if (!v9)
  {
    v12 = v11[0];
    v13 = v8;
    v14 = 1;
    sub_1E4AE2DEC();

    sub_1E4BF093C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E4B856C4()
{
  result = qword_1ECF96040;
  if (!qword_1ECF96040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96040);
  }

  return result;
}

uint64_t RCSReceiveRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96048, &qword_1E4C0E988);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B856C4();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v14 = 0;
    sub_1E4ADBF38();
    sub_1E4BF087C();
    v9 = v13[0];
    v14 = 1;
    sub_1E4AE30EC();
    sub_1E4BF087C();
    (*(v6 + 8))(v8, v5);
    v11 = v13[0];
    v12 = v13[1];
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4B858F0(uint64_t a1)
{
  result = sub_1E4B85918();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4B85918()
{
  result = qword_1EE2BDD68;
  if (!qword_1EE2BDD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDD68);
  }

  return result;
}

uint64_t sub_1E4B859D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RCSMessage(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4B85A24(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B85A54();
  result = sub_1E4B85AA8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4B85A54()
{
  result = qword_1EE2BDD70;
  if (!qword_1EE2BDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDD70);
  }

  return result;
}

unint64_t sub_1E4B85AA8()
{
  result = qword_1EE2BDD78[0];
  if (!qword_1EE2BDD78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2BDD78);
  }

  return result;
}

unint64_t sub_1E4B85B50()
{
  result = qword_1ECF96050;
  if (!qword_1ECF96050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96050);
  }

  return result;
}

unint64_t sub_1E4B85BA8()
{
  result = qword_1ECF96058;
  if (!qword_1ECF96058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96058);
  }

  return result;
}

unint64_t sub_1E4B85C00()
{
  result = qword_1ECF96060;
  if (!qword_1ECF96060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96060);
  }

  return result;
}

_BYTE *SMSResultNotification.init(cellularServiceID:messageID:error:)@<X0>(_BYTE *result@<X0>, int *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = *result;
  *(a4 + 4) = v4;
  *(a4 + 8) = v5;
  return result;
}

uint64_t sub_1E4B85CA0(uint64_t a1)
{
  v2 = sub_1E4B85EF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B85CDC(uint64_t a1)
{
  v2 = sub_1E4B85EF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SMSResultNotification.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96068, &qword_1E4C0EB80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  HIDWORD(v12) = v1[8];
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B85EF8();
  sub_1E4BF0ACC();
  v19 = v8;
  v18 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v10 = BYTE4(v12);
    v15 = v13;
    v17 = 1;
    sub_1E4B4824C();
    sub_1E4BF093C();
    v16 = v10;
    v14 = 2;
    sub_1E4B85F4C();
    sub_1E4BF08EC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1E4B85EF8()
{
  result = qword_1ECF96070;
  if (!qword_1ECF96070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96070);
  }

  return result;
}

unint64_t sub_1E4B85F4C()
{
  result = qword_1ECF96078;
  if (!qword_1ECF96078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96078);
  }

  return result;
}

uint64_t SMSResultNotification.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96080, &qword_1E4C0EB88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B85EF8();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v17 = 0;
    sub_1E4ADBF38();
    sub_1E4BF087C();
    v9 = v18;
    v16 = 1;
    sub_1E4B48474();
    sub_1E4BF087C();
    v11 = v14;
    v13[15] = 2;
    sub_1E4B861BC();
    sub_1E4BF082C();
    (*(v6 + 8))(v8, v5);
    v12 = v15;
    *a2 = v9;
    *(a2 + 4) = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4B861BC()
{
  result = qword_1ECF96088;
  if (!qword_1ECF96088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96088);
  }

  return result;
}

unint64_t sub_1E4B86210(uint64_t a1)
{
  result = sub_1E4B84EB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4B86238(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B86268();
  result = sub_1E4B862BC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4B86268()
{
  result = qword_1ECF96090;
  if (!qword_1ECF96090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96090);
  }

  return result;
}

unint64_t sub_1E4B862BC()
{
  result = qword_1ECF96098;
  if (!qword_1ECF96098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96098);
  }

  return result;
}

unint64_t sub_1E4B86364()
{
  result = qword_1ECF960A0;
  if (!qword_1ECF960A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF960A0);
  }

  return result;
}

unint64_t sub_1E4B863BC()
{
  result = qword_1ECF960A8;
  if (!qword_1ECF960A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF960A8);
  }

  return result;
}

unint64_t sub_1E4B86414()
{
  result = qword_1ECF960B0;
  if (!qword_1ECF960B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF960B0);
  }

  return result;
}

uint64_t sub_1E4B86478(uint64_t a1)
{
  result = sub_1E4BEFAFC();
  if (v2 <= 0x3F)
  {
    result = sub_1E4BF053C();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1E4B86564(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_1E4B8661C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4B86640, 0, 0);
}

uint64_t sub_1E4B86640()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1E4B8673C;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_1E4B8B8BC, v3, v5);
}

uint64_t sub_1E4B8673C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E4B32F7C;
  }

  else
  {

    v2 = sub_1E4B86858;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1E4B86870(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94948, &unk_1E4C0EF20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95808, &unk_1E4C0BED0);
  if (swift_dynamicCast())
  {
    sub_1E4ADB544(v31, v34);
    v5 = v35;
    v6 = v36;
    v7 = __swift_project_boxed_opaque_existential_1(v34, v35);
    MEMORY[0x1EEE9AC00](v7);
    v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v9);
    v11 = sub_1E4B8B7C0();
    v12 = sub_1E4B8B814();
    sub_1E4B65600(v9, &type metadata for CodableVoid, v5, v11, v12, v6, a2);

    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    sub_1E4AE0AE4(v31, &qword_1ECF95810, &qword_1E4C0EF30);
    swift_getErrorValue();
    v13 = a1;
    v14 = sub_1E4BF0A0C();
    v16 = v15;
    ErrorValue = swift_getErrorValue();
    MEMORY[0x1EEE9AC00](ErrorValue);
    (*(v19 + 16))(&v30[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v20 = sub_1E4BEFEFC();
    v22 = v21;
    v23 = swift_getErrorValue();
    MEMORY[0x1EEE9AC00](v23);
    (*(v25 + 16))(&v30[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v26 = sub_1E4BEFF0C();
    v28 = v27;

    *(a2 + 32) = &type metadata for XPCApplicationError;
    *(a2 + 40) = sub_1E4B6781C();
    *(a2 + 48) = sub_1E4B67870();
    *(a2 + 56) = sub_1E4B678C4();
    v29 = swift_allocObject();
    *(a2 + 8) = v29;

    v29[2] = v14;
    v29[3] = v16;
    v29[4] = v20;
    v29[5] = v22;
    v29[6] = v26;
    v29[7] = v28;
    *a2 = 0;
    *(a2 + 64) = 1;
  }
}

uint64_t sub_1E4B86C30(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v4 = sub_1E4BEFD3C();
  return (*(*(v4 - 8) + 8))(a1, v4);
}

uint64_t sub_1E4B86CA4()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1ECF960B8);
  v1 = __swift_project_value_buffer(v0, qword_1ECF960B8);
  if (qword_1EE2BD750 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1E4B86DC4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, void *, char *, void, void))
{
  v8 = sub_1E4BEFBBC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4BEFC3C();
  v11 = a3;

  sub_1E4BEFBAC();
  return a4(a1, a2, a3, v10, 0, 0);
}

uint64_t sub_1E4B86E9C()
{
  v1 = *v0;
  if (qword_1ECF923F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v2, qword_1ECF960B8);

  v3 = sub_1E4BEFB5C();
  v4 = sub_1E4BF04BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    sub_1E4BEFAFC();
    sub_1E4B8B944(&qword_1ECF93B78, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v7 = sub_1E4BF096C();
    v9 = v8;

    v10 = sub_1E4B30548(v7, v9, &v19);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1E4AD3000, v3, v4, "Configuring connection %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E6921800](v6, -1, -1);
    MEMORY[0x1E6921800](v5, -1, -1);
  }

  else
  {
  }

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v13 = v1[10];
  v12[2] = v13;
  v14 = v1[11];
  v12[3] = v14;
  v15 = v1[12];
  v12[4] = v15;
  v12[5] = v11;

  sub_1E4BEFBDC();

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v14;
  v17[4] = v15;
  v17[5] = v16;

  sub_1E4BEFBCC();

  return sub_1E4BEFC1C();
}

char *sub_1E4B871A0()
{
  v1 = v0;
  if (qword_1ECF923F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v2, qword_1ECF960B8);

  v3 = sub_1E4BEFB5C();
  v4 = sub_1E4BF04BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    sub_1E4BEFAFC();
    sub_1E4B8B944(&qword_1ECF93B78, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v7 = sub_1E4BF096C();
    v9 = v8;

    v10 = sub_1E4B30548(v7, v9, &v16);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1E4AD3000, v3, v4, "XPCConnection %s deinit", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E6921800](v6, -1, -1);
    MEMORY[0x1E6921800](v5, -1, -1);
  }

  else
  {
  }

  sub_1E4B874C4();
  sub_1E4BEFC0C();

  v11 = qword_1EE2C2010;
  v12 = sub_1E4BEFAFC();
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  v13 = *(*v1 + 112);
  v14 = sub_1E4BF053C();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  sub_1E4AD651C(*(v1 + *(*v1 + 120)), *(v1 + *(*v1 + 120) + 8));

  return v1;
}

uint64_t sub_1E4B874C4()
{
  v1 = *(v0 + *(*v0 + 128));
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t sub_1E4B87518()
{
  sub_1E4B871A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

double sub_1E4B87588@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E4B8760C(a1, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1E4B8760C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v109 = a2;
  v106 = *v3;
  v5 = v106;
  v6 = sub_1E4BEFD3C();
  v101 = *(v6 - 8);
  v102 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v100 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = *(v106[10] - 8);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v94 - v9;
  v10 = v5[12];
  v107 = v11;
  v105 = v10;
  v13 = type metadata accessor for XPCBoxedMessage(255, v11, v10, v12);
  v14 = sub_1E4BF053C();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v94 - v16;
  v18 = *(v13 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v21 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v94 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v108 = &v94 - v25;
  swift_getWitnessTable();
  sub_1E4BEFD2C();
  v96 = v21;
  v97 = v24;
  v98 = a1;
  (*(v18 + 56))(v17, 0, 1, v13);
  v99 = v18;
  v26 = v108;
  v27 = (*(v18 + 32))(v108, v17, v13);
  v28 = *(v3 + *(*v3 + 144));
  MEMORY[0x1EEE9AC00](v27);
  v29 = v107;
  v30 = v106[11];
  *(&v94 - 4) = v107;
  *(&v94 - 3) = v30;
  *(&v94 - 2) = v105;
  *(&v94 - 1) = v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF95BF0, &unk_1E4C0EF00);
  sub_1E4BEFDAC();
  v31 = (*(*v28 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v28 + v31));
  sub_1E4B8B6F4(v110);
  v106 = 0;
  os_unfair_lock_unlock((v28 + v31));
  v32 = *&v110[0];
  v33 = v26;
  v34 = v13;
  if (*&v110[0])
  {
    v35 = *(&v110[0] + 1);
    if (qword_1ECF923F0 != -1)
    {
      swift_once();
    }

    v36 = sub_1E4BEFB7C();
    v37 = __swift_project_value_buffer(v36, qword_1ECF960B8);
    v38 = v99;
    v39 = v97;
    (*(v99 + 16))(v97, v33, v13);
    v96 = v37;
    v40 = sub_1E4BEFB5C();
    v41 = sub_1E4BF04BC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v105 = v13;
      v43 = v42;
      v94 = swift_slowAlloc();
      v95 = v35;
      *&v110[0] = v94;
      *v43 = 136315138;
      (*(v104 + 16))(v103, v39, v29);
      v44 = sub_1E4BEFEFC();
      v46 = v45;
      v47 = *(v99 + 8);
      v48 = v39;
      v49 = v105;
      v47(v48, v105);
      v50 = sub_1E4B30548(v44, v46, v110);

      *(v43 + 4) = v50;
      _os_log_impl(&dword_1E4AD3000, v40, v41, "Handling request: %s", v43, 0xCu);
      v51 = v94;
      __swift_destroy_boxed_opaque_existential_1(v94);
      v35 = v95;
      MEMORY[0x1E6921800](v51, -1, -1);
      MEMORY[0x1E6921800](v43, -1, -1);

      v52 = v98;
      v53 = v102;
      v54 = v49;
    }

    else
    {

      v47 = *(v38 + 8);
      v47(v39, v13);
      v54 = v13;
      v52 = v98;
      v53 = v102;
    }

    v72 = v100;
    (*(v101 + 16))(v100, v52, v53);
    v73 = v108;
    v74 = &v108[*(v54 + 36)];
    v75 = v106;
    v32(v72, v74);
    if (v75)
    {
      sub_1E4AD651C(v32, v35);
      v76 = v75;
      v77 = sub_1E4BEFB5C();
      v78 = sub_1E4BF04DC();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v79 = 138412290;
        v81 = v75;
        v82 = _swift_stdlib_bridgeErrorToNSError();
        *(v79 + 4) = v82;
        *v80 = v82;
        _os_log_impl(&dword_1E4AD3000, v77, v78, "Error while handling request: %@", v79, 0xCu);
        sub_1E4AE0AE4(v80, &qword_1ECF93B50, &qword_1E4C05660);
        MEMORY[0x1E6921800](v80, -1, -1);
        MEMORY[0x1E6921800](v79, -1, -1);
      }

      v83 = *(v74 + 3);
      v84 = *(v74 + 4);
      __swift_project_boxed_opaque_existential_1(v74, v83);
      sub_1E4B6F600(v75, v83, v84);
    }

    else
    {
      sub_1E4AD651C(v32, v35);
    }

    v85 = v109;
    *(v109 + 32) = 0;
    *v85 = 0u;
    v85[1] = 0u;
    return v47(v73, v54);
  }

  else
  {
    v55 = v103;
    if (qword_1ECF923F0 != -1)
    {
      swift_once();
    }

    v56 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v56, qword_1ECF960B8);
    v57 = v99;
    v58 = v96;
    (*(v99 + 16))(v96, v33, v13);
    v59 = sub_1E4BEFB5C();
    v60 = sub_1E4BF04DC();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v104;
    if (v61)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v105 = v34;
      v65 = v64;
      *&v110[0] = v64;
      *v63 = 136315138;
      (*(v62 + 16))(v55, v58, v29);
      v66 = sub_1E4BEFEFC();
      v68 = v67;
      v69 = *(v57 + 8);
      v69(v58, v105);
      v70 = sub_1E4B30548(v66, v68, v110);

      *(v63 + 4) = v70;
      _os_log_impl(&dword_1E4AD3000, v59, v60, "Received unhandled request: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      v71 = v65;
      v34 = v105;
      MEMORY[0x1E6921800](v71, -1, -1);
      MEMORY[0x1E6921800](v63, -1, -1);
    }

    else
    {

      v69 = *(v57 + 8);
      v69(v58, v34);
    }

    v87 = v108;
    v88 = &v108[*(v34 + 9)];
    v89 = *(v88 + 3);
    v90 = *(v88 + 4);
    __swift_project_boxed_opaque_existential_1(v88, v89);
    sub_1E4B14264();
    v91 = swift_allocError();
    *v92 = 2;
    sub_1E4B6F600(v91, v89, v90);

    v93 = v109;
    *(v109 + 32) = 0;
    *v93 = 0u;
    v93[1] = 0u;
    return (v69)(v87, v34);
  }
}

uint64_t sub_1E4B880E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E4BEFAFC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (qword_1ECF923F0 != -1)
    {
      swift_once();
    }

    v9 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v9, qword_1ECF960B8);

    v10 = sub_1E4BEFB5C();
    v11 = sub_1E4BF04BC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v27 = a1;
      v13 = v12;
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      (*(v4 + 16))(v6, v8 + qword_1EE2C2010, v3);
      sub_1E4B8B944(&qword_1ECF93B78, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v15 = sub_1E4BF096C();
      v17 = v16;

      (*(v4 + 8))(v6, v3);
      v18 = sub_1E4B30548(v15, v17, &v28);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1E4AD3000, v10, v11, "Received cancellation for connection %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1E6921800](v14, -1, -1);
      v19 = v13;
      a1 = v27;
      MEMORY[0x1E6921800](v19, -1, -1);
    }

    else
    {
    }

    v20 = *(v8 + *(*v8 + 136));
    os_unfair_lock_lock((v20 + 32));
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = *(v20 + 24);
      v23 = swift_allocObject();
      *(v23 + 16) = v21;
      *(v23 + 24) = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_1E4B8B6A4;
      *(v24 + 24) = v23;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_1E4B8B6A4;
      *(v25 + 24) = v23;
      *(v20 + 16) = sub_1E4B8BB40;
      *(v20 + 24) = v25;

      os_unfair_lock_unlock((v20 + 32));

      (*(v24 + 16))(a1);
      sub_1E4AD651C(sub_1E4B8B6CC, v24);
      sub_1E4AD651C(sub_1E4B8B6CC, v24);
    }

    else
    {
      os_unfair_lock_unlock((v20 + 32));
    }
  }

  return result;
}

void sub_1E4B884BC()
{
  v2 = v1;
  v3 = (v0 + *(*v0 + 120));
  v4 = *v3;
  if (*v3)
  {
    v5 = v0;
    v6 = v3[1];
    v7 = qword_1ECF923F0;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v8, qword_1ECF960B8);
    v9 = sub_1E4BEFB5C();
    v10 = sub_1E4BF04BC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1E4AD3000, v9, v10, "Resetting session", v11, 2u);
      MEMORY[0x1E6921800](v11, -1, -1);
    }

    v12 = *(v5 + *(*v5 + 128));
    MEMORY[0x1EEE9AC00](v13);
    os_unfair_lock_lock((v12 + 24));
    sub_1E4B8B66C((v12 + 16));
    os_unfair_lock_unlock((v12 + 24));
    if (v2)
    {
      sub_1E4AD651C(v4, v6);
    }

    else
    {
      v14 = sub_1E4BEFB5C();
      v15 = sub_1E4BF04BC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1E4AD3000, v14, v15, "Created new session", v16, 2u);
        MEMORY[0x1E6921800](v16, -1, -1);
      }

      sub_1E4AD651C(v4, v6);
    }
  }
}

uint64_t sub_1E4B886E0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{

  v5 = sub_1E4BEFC0C();
  v6 = a2(v5);

  if (!v2)
  {
    *a1 = v6;
    sub_1E4B86E9C();
  }

  return result;
}

uint64_t sub_1E4B88794()
{
  if (qword_1ECF923F0 != -1)
  {
    swift_once();
  }

  v0 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v0, qword_1ECF960B8);
  v1 = sub_1E4BEFB5C();
  v2 = sub_1E4BF04BC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1E4AD3000, v1, v2, "Pinging remote end", v3, 2u);
    MEMORY[0x1E6921800](v3, -1, -1);
  }

  sub_1E4B874C4();
  sub_1E4B8B868();
  sub_1E4BEFBFC();
}

uint64_t sub_1E4B888B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E4B888D8, 0, 0);
}

uint64_t sub_1E4B888D8()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v2;
  v6 = swift_task_alloc();
  v0[8] = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v6 = v0;
  v6[1] = sub_1E4B889F8;
  v8 = v0[2];

  return MEMORY[0x1EEE6DE38](v8, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_1E4B8BA4C, v5, AssociatedTypeWitness);
}

uint64_t sub_1E4B889F8()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4B88B34, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E4B88B34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4B88B98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v40 = a5;
  v42 = a2;
  v43 = a1;
  v6 = *a3;
  v36 = sub_1E4BEFCCC();
  v35[1] = *(v36 - 8);
  v7 = MEMORY[0x1EEE9AC00](v36);
  v35[4] = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v35[0] = v35 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v35[2] = v35 - v11;
  swift_getAssociatedTypeWitness();
  v35[3] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF94948, &unk_1E4C0EF20);
  v12 = sub_1E4BF01CC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v39 = v35 - v15;
  v16 = a4;
  v17 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v6;
  v20 = *(v6 + 80);
  v37 = type metadata accessor for XPCBoxedMessage(0, v20, *(v6 + 96), v21);
  v41 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v23 = v35 - v22;
  (*(v17 + 16))(v19, v42, v16);
  v24 = v19;
  v25 = v16;
  v26 = v16;
  v27 = v40;
  sub_1E4BC4FB4(v24, v20, v25, v40, v23);
  v42 = sub_1E4B874C4();
  v28 = v39;
  (*(v13 + 16))(v39, v43, v12);
  v29 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v30 = swift_allocObject();
  v31 = v38;
  *(v30 + 2) = v20;
  v32 = v37;
  *(v30 + 3) = *(v31 + 88);
  *(v30 + 4) = v26;
  *(v30 + 5) = v27;
  v33 = *(v13 + 32);
  v40 = v12;
  v33(&v30[v29], v28, v12);
  swift_getWitnessTable();
  sub_1E4BEFBEC();
  (*(v41 + 8))(v23, v32);
}

uint64_t sub_1E4B894E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a2;
  v7 = sub_1E4BEFCCC();
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v30 = &v28 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for CodableResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v29 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v16 = sub_1E4BEFD3C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF960E8, &qword_1E4C0EF48);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  sub_1E4B8B98C(a1, &v28 - v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v31;
    v24 = v32;
    (*(v32 + 32))(v31, v22, v7);
    sub_1E4B8B944(&qword_1ECF95C80, MEMORY[0x1E69E84C0], MEMORY[0x1E69E84C8]);
    v25 = swift_allocError();
    (*(v24 + 16))(v26, v23, v7);
    v34 = v25;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF94948, &unk_1E4C0EF20);
    sub_1E4BF01CC();
    sub_1E4BF01AC();
    return (*(v24 + 8))(v23, v7);
  }

  else
  {
    (*(v17 + 32))(v19, v22, v16);
    swift_getWitnessTable();
    sub_1E4BEFD2C();
    sub_1E4B65B14(v13, v30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF94948, &unk_1E4C0EF20);
    sub_1E4BF01CC();
    sub_1E4BF01BC();
    (*(v29 + 8))(v15, v13);
    return (*(v17 + 8))(v19, v16);
  }
}

uint64_t sub_1E4B89A00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v34 = a2;
  v35 = a5;
  v36 = a1;
  v7 = *a3;
  v31 = sub_1E4BEFCCC();
  v30[2] = *(v31 - 8);
  v8 = MEMORY[0x1EEE9AC00](v31);
  v30[4] = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v30[1] = v30 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v30[3] = v30 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v30 - v16;
  v18 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a3;
  v21 = *(v7 + 80);
  v23 = type metadata accessor for XPCBoxedMessage(0, v21, *(v7 + 96), v22);
  v33 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v30 - v24;
  (*(v18 + 16))(v20, v34, a4);
  sub_1E4BC4FB4(v20, v21, a4, v35, v25);
  sub_1E4B874C4();
  (*(v14 + 16))(v17, v36, v13);
  v26 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v27 = swift_allocObject();
  v28 = *(v14 + 32);
  v35 = v13;
  v28(v27 + v26, v17, v13);
  swift_getWitnessTable();
  sub_1E4BEFBEC();
  (*(v33 + 8))(v25, v23);
}

uint64_t sub_1E4B8A2D8(uint64_t a1)
{
  v2 = sub_1E4BEFCCC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4BEFD3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF960E8, &qword_1E4C0EF48);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-1] - v11;
  sub_1E4B8B98C(a1, &v17[-1] - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v12, v2);
    sub_1E4B8B944(&qword_1ECF95C80, MEMORY[0x1E69E84C0], MEMORY[0x1E69E84C8]);
    v13 = swift_allocError();
    (*(v3 + 16))(v14, v5, v2);
    v17[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
    sub_1E4BF01AC();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BA0, &qword_1E4C0BEC0);
    sub_1E4B8B9FC(&qword_1ECF960F0, &unk_1E4C0BE20);
    sub_1E4BEFD2C();
    sub_1E4B66FBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
    sub_1E4BF01BC();
    sub_1E4AE0AE4(v17, &qword_1ECF93BA0, &qword_1E4C0BEC0);
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1E4B8A670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a1;
  v31 = a4;
  v7 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v32 = type metadata accessor for CodableResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v30 = *(v32 - 8);
  v11 = MEMORY[0x1EEE9AC00](v32);
  v13 = &v29 - v12;
  v14 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v7 + 80);
  v19 = type metadata accessor for XPCBoxedMessage(0, v17, *(v7 + 96), v18);
  v33 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v29 - v20;
  (*(v14 + 16))(v16, v34, a2);
  v22 = v32;
  v23 = a3;
  v24 = v13;
  sub_1E4BC4FB4(v16, v17, a2, v23, v21);
  sub_1E4B874C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v25 = v35;
  sub_1E4BEFC2C();
  if (v25)
  {
    (*(v33 + 8))(v21, v19);
  }

  else
  {
    v27 = v33;
    v28 = v30;

    sub_1E4B65B14(v22, v31);
    (*(v28 + 8))(v24, v22);
    return (*(v27 + 8))(v21, v19);
  }
}

void sub_1E4B8A9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + *(*v4 + 144));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF95BF0, &unk_1E4C0EF00);
  swift_getAssociatedConformanceWitness();
  sub_1E4BEFDAC();
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_1E4B8B778(v5 + v6);
  os_unfair_lock_unlock((v5 + v7));
}

uint64_t sub_1E4B8AB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v13 + 64))(v14, v13);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = a2;
  v15[7] = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1E4B8B79C;
  *(v16 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF95BF0, &unk_1E4C0EF00);
  swift_getAssociatedConformanceWitness();
  sub_1E4BEFDAC();
  return sub_1E4BEFDCC();
}

uint64_t sub_1E4B8ACC4(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a4;
  v43 = a3;
  v56 = a1;
  v11 = type metadata accessor for XPCPeerMessage(0, a7, a8, a4);
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v42 - v12;
  v13 = sub_1E4BF053C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - v16;
  v18 = *(a7 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v42 - v22;
  sub_1E4B14334(a2, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECF95BF8, &unk_1E4C0EF10);
  v24 = swift_dynamicCast();
  v25 = *(v18 + 56);
  if (v24)
  {
    v25(v17, 0, 1, a7);
    (*(v18 + 32))(v23, v17, a7);
    v26 = sub_1E4BEFD3C();
    v49 = v26;
    v50 = &off_1F5EB8920;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v48);
    (*(*(v26 - 8) + 16))(boxed_opaque_existential_1, v56, v26);
    v28 = sub_1E4BEFCFC();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    type metadata accessor for audit_token_t(0);
    v53 = v35;
    v54 = &off_1F5EB1D50;
    v36 = swift_allocObject();
    *&v52 = v36;
    v36[2] = v28;
    v36[3] = v30;
    v36[4] = v32;
    v36[5] = v34;
    (*(v18 + 16))(v21, v23, a7);
    v37 = v45;
    sub_1E4BA9114(&v48, &v52, v21, a7, a8, v45);
    v38 = v44;
    v43(v37);
    if (v38)
    {
      v39 = v38;
      sub_1E4B86870(v38, &v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BA0, &qword_1E4C0BEC0);
      sub_1E4B8B9FC(&qword_1ECF93BA8, &unk_1E4C0BE98);
      sub_1E4BEFD1C();
    }

    else
    {
      v51 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BA0, &qword_1E4C0BEC0);
      sub_1E4B8B9FC(&qword_1ECF93BA8, &unk_1E4C0BE98);
      sub_1E4BEFD1C();
    }

    sub_1E4AE0AE4(&v48, &qword_1ECF93BA0, &qword_1E4C0BEC0);
    (*(v46 + 8))(v37, v47);
    return (*(v18 + 8))(v23, a7);
  }

  else
  {
    v25(v17, 1, 1, a7);
    (*(v14 + 8))(v17, v13);
    sub_1E4B14264();
    swift_allocError();
    *v41 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1E4B8B1FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1EE2C2010;
  v5 = sub_1E4BEFAFC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1E4B8B278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E4B33678;

  return sub_1E4B888B0(a1, a2, a3, a4);
}

uint64_t sub_1E4B8B33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E4B34F84;

  return sub_1E4B8661C(a1, a2, a3);
}

uint64_t sub_1E4B8B490(uint64_t a1)
{
  sub_1E4BEFAFC();
  sub_1E4B8B944(&qword_1ECF94700, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_1E4BEFDDC();
}

uint64_t sub_1E4B8B514()
{
  sub_1E4BF0A6C();
  sub_1E4B8B490(v1);
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4B8B59C(uint64_t a1)
{
  sub_1E4BF0A6C();
  sub_1E4B8B490(v2);
  return sub_1E4BF0A9C();
}

double sub_1E4B8B6F4@<D0>(_OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95BF0, &unk_1E4C0EF00);
  sub_1E4BEFDBC();
  result = *&v4;
  *a2 = v4;
  return result;
}

unint64_t sub_1E4B8B7C0()
{
  result = qword_1ECF960D0;
  if (!qword_1ECF960D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF960D0);
  }

  return result;
}

unint64_t sub_1E4B8B814()
{
  result = qword_1ECF960D8;
  if (!qword_1ECF960D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF960D8);
  }

  return result;
}

unint64_t sub_1E4B8B868()
{
  result = qword_1ECF960E0;
  if (!qword_1ECF960E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF960E0);
  }

  return result;
}

uint64_t sub_1E4B8B8C8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);

  return sub_1E4B8A2D8(a1);
}

uint64_t sub_1E4B8B944(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4B8B98C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF960E8, &qword_1E4C0EF48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4B8B9FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF93BA0, &qword_1E4C0BEC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4B8BA58(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF94948, &unk_1E4C0EF20);
  v7 = *(sub_1E4BF01CC() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1E4B894E8(a1, v8, v3, v4, v5, v6);
}

Swift::Bool __swiftcall MessagingServiceStatus.isViable(for:cellularServiceID:)(TelephonyMessagingKit::MessagingServiceType a1, TelephonyMessagingKit::CellularServiceID cellularServiceID)
{
  v3 = *v2;
  if (*(v3 + 16) && (v4 = *a1, v5 = sub_1E4B8DD50(*cellularServiceID.simSlot, sub_1E4B8DF0C), (v6 & 1) != 0) && (v7 = *(*(v3 + 56) + 32 * v5 + 24), *(v7 + 16)) && (v8 = sub_1E4B8DDC8(v4), (v9 & 1) != 0))
  {
    return *(*(v7 + 56) + v8);
  }

  else
  {
    return 0;
  }
}

uint64_t MessagingServiceStatus.cellularServices.getter()
{

  sub_1E4B38DD4(v0);
  v2 = v1;

  return v2;
}

uint64_t sub_1E4B8BC3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B8EEC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B8BC64(uint64_t a1)
{
  v2 = sub_1E4B8DBAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B8BCA0(uint64_t a1)
{
  v2 = sub_1E4B8DBAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B8BCDC(uint64_t a1)
{
  v2 = sub_1E4B8DC54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B8BD18(uint64_t a1)
{
  v2 = sub_1E4B8DC54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B8BD54(uint64_t a1)
{
  v2 = sub_1E4B8DC00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B8BD90(uint64_t a1)
{
  v2 = sub_1E4B8DC00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B8BDCC(uint64_t a1)
{
  v2 = sub_1E4B8DCA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B8BE08(uint64_t a1)
{
  v2 = sub_1E4B8DCA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessagingServiceType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF960F8, &qword_1E4C0EF60);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96100, &qword_1E4C0EF68);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96108, &qword_1E4C0EF70);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96110, &qword_1E4C0EF78);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B8DBAC();
  sub_1E4BF0ACC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1E4B8DC54();
      v9 = v21;
      sub_1E4BF08BC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1E4B8DC00();
      v9 = v24;
      sub_1E4BF08BC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1E4B8DCA8();
    sub_1E4BF08BC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t MessagingServiceType.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t MessagingServiceType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96138, &qword_1E4C0EF80);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96140, &qword_1E4C0EF88);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96148, &qword_1E4C0EF90);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96150, &unk_1E4C0EF98);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E4B8DBAC();
  v15 = v36;
  sub_1E4BF0ABC();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1E4BF088C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1E4AE0F1C();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1E4BF06EC();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
      *v24 = &type metadata for MessagingServiceType;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1E4B8DC54();
          sub_1E4BF07EC();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1E4B8DC00();
          v26 = v17;
          sub_1E4BF07EC();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1E4B8DCA8();
        sub_1E4BF07EC();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1E4B8C850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C626169567369 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4B8C8D8(uint64_t a1)
{
  v2 = sub_1E4B8DCFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B8C914(uint64_t a1)
{
  v2 = sub_1E4B8DCFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessagingServiceStatus.ServiceInfo.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96158, &qword_1E4C0EFA8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B8DCFC();
  sub_1E4BF0ACC();
  sub_1E4BF090C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t MessagingServiceStatus.ServiceInfo.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96168, &qword_1E4C0EFB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B8DCFC();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v9 = sub_1E4BF084C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B8CBF8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96158, &qword_1E4C0EFA8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B8DCFC();
  sub_1E4BF0ACC();
  sub_1E4BF090C();
  return (*(v3 + 8))(v5, v2);
}

double MessagingServiceStatus.State.cellularServiceState.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

TelephonyMessagingKit::MessagingServiceStatus::State __swiftcall MessagingServiceStatus.State.init(cellularServiceState:serviceInfoByType:)(TelephonyMessagingKit::CellularServiceState cellularServiceState, Swift::OpaquePointer serviceInfoByType)
{
  v3 = *(*&cellularServiceState.id.simSlot + 8);
  v4 = *(*&cellularServiceState.id.simSlot + 16);
  *v2 = **&cellularServiceState.id.simSlot;
  *(v2 + 8) = v3;
  *(v2 + 16) = v4;
  *(v2 + 24) = cellularServiceState.label._countAndFlagsBits;
  result.cellularServiceState.label._object = cellularServiceState.label._object;
  result.cellularServiceState.label._countAndFlagsBits = cellularServiceState.label._countAndFlagsBits;
  result.cellularServiceState.id.simSlot = cellularServiceState.id.simSlot;
  result.serviceInfoByType = serviceInfoByType;
  return result;
}

uint64_t sub_1E4B8CD68(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v26 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v27 = (v7 - 1) & v7;
LABEL_14:
    v13 = v10 | (v3 << 6);
    v14 = *(*(result + 48) + v13);
    v15 = (*(result + 56) + 32 * v13);
    v16 = *v15;
    v18 = v15[1];
    v17 = v15[2];
    v19 = v15[3];
    v20 = v17 == 0;

    if (!v17)
    {
      return v20;
    }

    v21 = sub_1E4B8DD50(v14, sub_1E4B8DF0C);
    if ((v22 & 1) == 0 || (v23 = (*(a2 + 56) + 32 * v21), v16 != *v23) || ((v24 = v23[3], v23[1] == v18) ? (v25 = v17 == v23[2]) : (v25 = 0), !v25 && (sub_1E4BF099C() & 1) == 0))
    {

      return 0;
    }

    v9 = sub_1E4B8CF34(v24, v19);

    result = v26;
    v7 = v27;
    if ((v9 & 1) == 0)
    {
      return v20;
    }
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v27 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E4B8CF34(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    result = sub_1E4B8DDC8(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0 || v13 != *(*(a2 + 56) + result))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E4B8D03C()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1E4B8D078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000014 && 0x80000001E4BF20B0 == a2;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E4BF20D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4B8D158(uint64_t a1)
{
  v2 = sub_1E4B8E194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B8D194(uint64_t a1)
{
  v2 = sub_1E4B8E194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessagingServiceStatus.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96170, &qword_1E4C0EFB8);
  v12 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v11 - v4;
  v6 = *v1;
  v8 = *(v1 + 1);
  v7 = *(v1 + 2);
  v11[0] = *(v1 + 3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B8E194();

  sub_1E4BF0ACC();
  LOBYTE(v13) = v6;
  v14 = v8;
  v15 = v7;
  v16 = 0;
  sub_1E4B8E1E8();
  v9 = v11[1];
  sub_1E4BF093C();

  if (!v9)
  {
    v13 = v11[0];
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96188, &qword_1E4C0EFC0);
    sub_1E4B8E338(&qword_1ECF96190, sub_1E4B8E23C, sub_1E4B8E290, MEMORY[0x1E69E5E38]);
    sub_1E4BF093C();
  }

  return (*(v12 + 8))(v5, v3);
}

uint64_t MessagingServiceStatus.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF961A8, &qword_1E4C0EFC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B8E194();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  sub_1E4B8E2E4();
  sub_1E4BF087C();
  v9 = v15;
  v10 = v17;
  v14 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96188, &qword_1E4C0EFC0);
  v18 = 1;
  sub_1E4B8E338(&qword_1ECF961B8, sub_1E4B8E3C8, sub_1E4B8E41C, MEMORY[0x1E69E5E58]);
  sub_1E4BF087C();
  (*(v6 + 8))(v8, v5);
  v11 = v14;
  v12 = v15;
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B8D6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4979426574617473 && a2 == 0xE900000000000044)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4B8D764(uint64_t a1)
{
  v2 = sub_1E4B8E470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B8D7A0(uint64_t a1)
{
  v2 = sub_1E4B8E470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessagingServiceStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF961D0, &qword_1E4C0EFD0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B8E470();

  sub_1E4BF0ACC();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF961E0, &qword_1E4C0EFD8);
  sub_1E4B8E4C4(&qword_1ECF961E8, sub_1E4ADBE98, sub_1E4B8E554, MEMORY[0x1E69E5E38]);
  sub_1E4BF093C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t MessagingServiceStatus.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF961F8, &qword_1E4C0EFE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B8E470();
  sub_1E4BF0ABC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF961E0, &qword_1E4C0EFD8);
    sub_1E4B8E4C4(&qword_1ECF96200, sub_1E4ADBF38, sub_1E4B8E5A8, MEMORY[0x1E69E5E58]);
    sub_1E4BF087C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4B8DBAC()
{
  result = qword_1ECF96118;
  if (!qword_1ECF96118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96118);
  }

  return result;
}

unint64_t sub_1E4B8DC00()
{
  result = qword_1ECF96120;
  if (!qword_1ECF96120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96120);
  }

  return result;
}

unint64_t sub_1E4B8DC54()
{
  result = qword_1ECF96128;
  if (!qword_1ECF96128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96128);
  }

  return result;
}

unint64_t sub_1E4B8DCA8()
{
  result = qword_1ECF96130;
  if (!qword_1ECF96130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96130);
  }

  return result;
}

unint64_t sub_1E4B8DCFC()
{
  result = qword_1ECF96160;
  if (!qword_1ECF96160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96160);
  }

  return result;
}

uint64_t sub_1E4B8DD50(char a1, uint64_t (*a2)(void, uint64_t))
{
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](a1 & 1);
  v3 = sub_1E4BF0A9C();

  return a2(a1 & 1, v3);
}

unint64_t sub_1E4B8DDC8(uint64_t a1)
{
  v1 = a1;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  v2 = sub_1E4BF0A9C();
  return sub_1E4B8DF7C(v1, v2);
}

unint64_t sub_1E4B8DE30(uint64_t a1)
{
  v1 = a1;
  sub_1E4BF0A6C();
  sub_1E4BF0A8C();
  v2 = sub_1E4BF0A9C();
  return sub_1E4B8DFEC(v1, v2);
}

unint64_t sub_1E4B8DE98(uint64_t a1, uint64_t a2)
{
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();
  v4 = sub_1E4BF0A9C();
  return sub_1E4B8E058(a1, a2, v4);
}

unint64_t sub_1E4B8DF0C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E4B8DF7C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E4B8DFEC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E4B8E058(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1E4BF099C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t _s21TelephonyMessagingKit0B13ServiceStatusV5StateV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[3];
  v4 = a2[3];
  v5 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v5 && (sub_1E4BF099C() & 1) == 0)
  {
    return 0;
  }

  return sub_1E4B8CF34(v3, v4);
}

unint64_t sub_1E4B8E194()
{
  result = qword_1ECF96178;
  if (!qword_1ECF96178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96178);
  }

  return result;
}

unint64_t sub_1E4B8E1E8()
{
  result = qword_1ECF96180;
  if (!qword_1ECF96180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96180);
  }

  return result;
}

unint64_t sub_1E4B8E23C()
{
  result = qword_1ECF96198;
  if (!qword_1ECF96198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96198);
  }

  return result;
}

unint64_t sub_1E4B8E290()
{
  result = qword_1ECF961A0;
  if (!qword_1ECF961A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF961A0);
  }

  return result;
}

unint64_t sub_1E4B8E2E4()
{
  result = qword_1ECF961B0;
  if (!qword_1ECF961B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF961B0);
  }

  return result;
}

uint64_t sub_1E4B8E338(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF96188, &qword_1E4C0EFC0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4B8E3C8()
{
  result = qword_1ECF961C0;
  if (!qword_1ECF961C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF961C0);
  }

  return result;
}

unint64_t sub_1E4B8E41C()
{
  result = qword_1ECF961C8;
  if (!qword_1ECF961C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF961C8);
  }

  return result;
}

unint64_t sub_1E4B8E470()
{
  result = qword_1ECF961D8;
  if (!qword_1ECF961D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF961D8);
  }

  return result;
}

uint64_t sub_1E4B8E4C4(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF961E0, &qword_1E4C0EFD8);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4B8E554()
{
  result = qword_1ECF961F0;
  if (!qword_1ECF961F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF961F0);
  }

  return result;
}

unint64_t sub_1E4B8E5A8()
{
  result = qword_1ECF96208;
  if (!qword_1ECF96208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96208);
  }

  return result;
}

unint64_t sub_1E4B8E600()
{
  result = qword_1ECF96210;
  if (!qword_1ECF96210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96210);
  }

  return result;
}

unint64_t sub_1E4B8E658()
{
  result = qword_1ECF96218;
  if (!qword_1ECF96218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF96220, &qword_1E4C0F0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96218);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessagingServiceStatus.ServiceInfo(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E4B8E78C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4B8E7D4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1E4B8E898()
{
  result = qword_1ECF96228;
  if (!qword_1ECF96228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96228);
  }

  return result;
}

unint64_t sub_1E4B8E8F0()
{
  result = qword_1ECF96230;
  if (!qword_1ECF96230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96230);
  }

  return result;
}

unint64_t sub_1E4B8E948()
{
  result = qword_1ECF96238;
  if (!qword_1ECF96238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96238);
  }

  return result;
}

unint64_t sub_1E4B8E9A0()
{
  result = qword_1ECF96240;
  if (!qword_1ECF96240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96240);
  }

  return result;
}

unint64_t sub_1E4B8E9F8()
{
  result = qword_1ECF96248;
  if (!qword_1ECF96248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96248);
  }

  return result;
}

unint64_t sub_1E4B8EA50()
{
  result = qword_1ECF96250;
  if (!qword_1ECF96250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96250);
  }

  return result;
}

unint64_t sub_1E4B8EAA8()
{
  result = qword_1ECF96258;
  if (!qword_1ECF96258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96258);
  }

  return result;
}

unint64_t sub_1E4B8EB00()
{
  result = qword_1ECF96260;
  if (!qword_1ECF96260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96260);
  }

  return result;
}

unint64_t sub_1E4B8EB58()
{
  result = qword_1ECF96268;
  if (!qword_1ECF96268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96268);
  }

  return result;
}

unint64_t sub_1E4B8EBB0()
{
  result = qword_1ECF96270;
  if (!qword_1ECF96270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96270);
  }

  return result;
}

unint64_t sub_1E4B8EC08()
{
  result = qword_1ECF96278;
  if (!qword_1ECF96278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96278);
  }

  return result;
}

unint64_t sub_1E4B8EC60()
{
  result = qword_1ECF96280;
  if (!qword_1ECF96280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96280);
  }

  return result;
}

unint64_t sub_1E4B8ECB8()
{
  result = qword_1ECF96288;
  if (!qword_1ECF96288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96288);
  }

  return result;
}

unint64_t sub_1E4B8ED10()
{
  result = qword_1ECF96290;
  if (!qword_1ECF96290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96290);
  }

  return result;
}

unint64_t sub_1E4B8ED68()
{
  result = qword_1ECF96298;
  if (!qword_1ECF96298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96298);
  }

  return result;
}

unint64_t sub_1E4B8EDC0()
{
  result = qword_1ECF962A0;
  if (!qword_1ECF962A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF962A0);
  }

  return result;
}

unint64_t sub_1E4B8EE18()
{
  result = qword_1ECF962A8;
  if (!qword_1ECF962A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF962A8);
  }

  return result;
}

unint64_t sub_1E4B8EE70()
{
  result = qword_1ECF962B0;
  if (!qword_1ECF962B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF962B0);
  }

  return result;
}

uint64_t sub_1E4B8EEC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 7564659 && a2 == 0xE300000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7564653 && a2 == 0xE300000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7562098 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E4B8EFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E4B8F014(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4B8F05C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1E4B8F0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  sub_1E4B14334(a3, (a5 + 2));
  type metadata accessor for ExpiringArray.Wrapped(0, a4, v8, v9);
  v10 = sub_1E4BF012C();
  result = __swift_destroy_boxed_opaque_existential_1(a3);
  a5[7] = v10;
  return result;
}

void *sub_1E4B8F148(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1E4BF031C();
  if (!v19)
  {
    return sub_1E4BF012C();
  }

  v41 = v19;
  v45 = sub_1E4BF076C();
  v32 = sub_1E4BF077C();
  sub_1E4BF072C();
  result = sub_1E4BF02EC();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1E4BF03BC();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1E4BF075C();
      result = sub_1E4BF034C();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4B8F568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1E4BEFABC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E4BEFAAC();
  v19 = *(a4 + 16);
  v20 = a5;
  v21 = a6;
  v22 = v12;
  v15 = type metadata accessor for ExpiringArray.Wrapped(0, v19, v13, v14);
  v23 = sub_1E4B8F148(sub_1E4B917FC, v18, a5, v15, MEMORY[0x1E69E73E0], a6, MEMORY[0x1E69E7410], v16);
  sub_1E4BF017C();
  swift_getWitnessTable();
  sub_1E4BF00FC();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1E4B8F708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E4BEFABC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1, a3);
  (*(v9 + 16))(v12, a2, v8);
  return sub_1E4B8F890(v14, v12, a3, a4);
}

uint64_t sub_1E4B8F890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v9 = *(type metadata accessor for ExpiringArray.Wrapped(0, a3, v7, v8) + 28);
  v10 = sub_1E4BEFABC();
  v11 = *(*(v10 - 8) + 32);

  return v11(a4 + v9, a2, v10);
}

uint64_t sub_1E4B8F948@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t x2_0@<X2>, uint64_t a4@<X3>)
{
  v6 = *(a2 + 16);
  v7 = type metadata accessor for ExpiringArray.Wrapped(0, v6, x2_0, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  sub_1E4BF018C();
  (*(*(v6 - 8) + 16))(a3, v10, v6);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1E4B8FA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ExpiringArray.Wrapped(0, *(a1 + 16), a3, a4);

  return sub_1E4BF015C();
}

uint64_t sub_1E4B8FAA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1E4BF0AFC();
  v7[3] = &type metadata for TimeProvider;
  v7[4] = &off_1F5EB9B80;
  return sub_1E4B8F0E0(v4, v5, v7, a1, a2);
}

uint64_t sub_1E4B8FB18(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1E4B91540(a1, *a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

void (*sub_1E4B8FB88(void *a1, uint64_t *a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = v3;
  v8[1] = a3;
  v10 = *(a3 + 16);
  v8[2] = v10;
  v11 = *(v10 - 8);
  v8[3] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(v12);
    v13 = malloc(v12);
  }

  v16 = v13;
  v17 = *a2;
  v9[5] = v16;
  v9[6] = v17;
  sub_1E4B8F948(a3, v16, v14, v15);
  return sub_1E4B8FCA4;
}

void sub_1E4B8FCA4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v8 = *(*a1 + 8);
  v7 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 32), v3, v7);
    sub_1E4B91540(v5, v4, v8);
    v9 = *(v6 + 8);
    v9(v5, v7);
    v9(v3, v7);
  }

  else
  {
    sub_1E4B91540(*(*a1 + 40), v4, v8);
    (*(v6 + 8))(v3, v7);
  }

  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_1E4B8FD9C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  sub_1E4B9174C(a1, &v7, a3, a4);
  swift_getWitnessTable();
  v5 = sub_1E4BF0A5C();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t (*sub_1E4B8FE3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_1E4B8FF14(v8, a2, a3, a4);
  return sub_1E4B8FECC;
}

void sub_1E4B8FECC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_1E4B8FF14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = sub_1E4BF0A5C();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v11[6] = v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = sub_1E4BF049C();
  v11[7] = v17;
  v18 = *(v17 - 8);
  v19 = v18;
  v11[8] = v18;
  if (v9)
  {
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(*(v18 + 64));
  }

  v11[9] = v20;
  (*(v19 + 16))();
  sub_1E4B90838(a2, a3, a4, v16);
  return sub_1E4B90138;
}

void sub_1E4B90138(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v6 = (*a1)[8];
  v5 = (*a1)[9];
  v7 = (*a1)[6];
  v10 = (*a1)[7];
  v8 = (*a1)[3];
  if (a2)
  {
    (*(v4 + 16))(v3, v7, v2[3]);
    swift_getWitnessTable();
    sub_1E4BF095C();
    v9 = *(v4 + 8);
    v9(v3, v8);
    (*(v6 + 8))(v5, v10);
    v9(v7, v8);
  }

  else
  {
    swift_getWitnessTable();
    sub_1E4BF095C();
    (*(v6 + 8))(v5, v10);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

uint64_t sub_1E4B903B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1E4B8F568(*a1, a1[1], a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

uint64_t sub_1E4B90534(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69828](a1, a2, WitnessTable, v5);
}

uint64_t sub_1E4B905BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_1E4B8FA64(a1, a3, a4, a5);
  *a2 = result;
  return result;
}

uint64_t (*sub_1E4B905E4(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1E4B906B4(v6, *a2, a3);
  return sub_1E4B9066C;
}

void sub_1E4B9066C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_1E4B906B4(void *a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  v7 = *(v6 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  a1[2] = v8;
  sub_1E4B8F948(a3, v8, v9, v10);
  return sub_1E4B90784;
}

void sub_1E4B90784(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1E4B907D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1E4B90838(a1, a2, WitnessTable, a3);
}

uint64_t sub_1E4B90838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a1;
  v47 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  v41 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  swift_getAssociatedConformanceWitness();
  v44 = sub_1E4BF049C();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v19 = &v36 - v18;
  sub_1E4BF02EC();
  v48 = v4;
  v45 = v6;
  v46 = a2;
  sub_1E4BF033C();
  result = sub_1E4BEFE1C();
  if (result)
  {
    v21 = v41;
    v22 = *(v41 + 32);
    v22(v12, v17, AssociatedTypeWitness);
    v23 = TupleTypeMetadata2;
    v22(&v12[*(TupleTypeMetadata2 + 48)], v15, AssociatedTypeWitness);
    v24 = v22;
    v25 = v43;
    v26 = v39;
    (*(v43 + 16))(v39, v12, v23);
    v37 = *(v23 + 48);
    v24(v19, v26, AssociatedTypeWitness);
    v38 = v24;
    v27 = *(v21 + 8);
    v27(&v26[v37], AssociatedTypeWitness);
    (*(v25 + 32))(v26, v12, v23);
    v28 = v44;
    v24(&v19[*(v44 + 36)], &v26[*(v23 + 48)], AssociatedTypeWitness);
    v27(v26, AssociatedTypeWitness);
    v29 = v48;
    v30 = v49;
    v31 = v46;
    sub_1E4BF030C();
    v32 = v42;
    (*(v42 + 8))(v19, v28);
    v33 = sub_1E4BF0A5C();
    v34 = v47;
    (*(*(v31 - 8) + 16))(&v47[*(v33 + 40)], v29, v31);
    (*(v32 + 16))(v19, v30, v28);
    v35 = v38;
    v38(v34, v19, AssociatedTypeWitness);
    return v35(&v34[*(v33 + 36)], &v19[*(v28 + 36)], AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4B90CC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69838](a1, WitnessTable, v3);
}

uint64_t sub_1E4B90DC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69820](a1, a2, WitnessTable, v5);
}

uint64_t sub_1E4B90E48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

__n128 sub_1E4B90EC0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_1E4B90ED8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1E4B90F2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_1E4B91470(v1, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v4;
}

unint64_t sub_1E4B9103C()
{
  result = qword_1ECF962C8;
  if (!qword_1ECF962C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF962C8);
  }

  return result;
}

uint64_t sub_1E4B9125C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF962C0, &qword_1E4C0FA88);
    sub_1E4B9103C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4B91338(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1E4B9138C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1E4BEFE1C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4B91474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1E4BEFE1C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1E4BF049C();
  result = sub_1E4BEFE1C();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4B91540(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E4BEFABC();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ExpiringArray.Wrapped(0, v12, v16, v17);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v24 - v20;
  (*(v13 + 16))(v15, a1, v12);
  sub_1E4BEFAAC();
  sub_1E4B8F890(v15, v11, v12, v21);
  sub_1E4BF017C();
  sub_1E4BF011C();
  v22 = *(v4 + 56);
  sub_1E4B91338(a2, v22, v18);
  return (*(v19 + 40))(v22 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * a2, v21, v18);
}

uint64_t sub_1E4B9174C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E4BF0A5C();
  swift_getWitnessTable();

  return sub_1E4BF095C();
}

uint64_t sub_1E4B91828(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1E4BEFABC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E4B918B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1E4BEFABC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1E4B91B14(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1E4BEFABC() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t RCSService.Configuration.maximumTextMessageSize.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for RCSService.Configuration(0);
  sub_1E4B920AC(v1 + *(v10 + 20), v9);
  v11 = 1;
  if ((*(v4 + 48))(v9, 1, v3) != 1)
  {
    v12 = *(v4 + 32);
    v12(v6, v9, v3);
    if (qword_1ECF92400 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v3, qword_1ECFD4440);
    sub_1E4AF19DC(&qword_1ECF94610, MEMORY[0x1E6968088]);
    if (sub_1E4BEFE0C())
    {
      (*(v4 + 16))(a1, v13, v3);
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      v12(a1, v6, v3);
    }

    v11 = 0;
  }

  return (*(v4 + 56))(a1, v11, 1, v3);
}

uint64_t sub_1E4B920AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RCSService.Configuration.maximumGroupSize.getter()
{
  v1 = v0 + *(type metadata accessor for RCSService.Configuration(0) + 24);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *v1 < 100;
  v5 = 100;
  if (v4)
  {
    v5 = v2;
  }

  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t RCSService.Configuration.maximumFileTransferSize.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for RCSService.Configuration(0);
  sub_1E4B920AC(v1 + *(v10 + 28), v9);
  v11 = 1;
  if ((*(v4 + 48))(v9, 1, v3) != 1)
  {
    v12 = *(v4 + 32);
    v12(v6, v9, v3);
    if (qword_1ECF923F8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v3, qword_1ECFD4428);
    sub_1E4AF19DC(&qword_1ECF94610, MEMORY[0x1E6968088]);
    if (sub_1E4BEFE0C())
    {
      (*(v4 + 16))(a1, v13, v3);
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      v12(a1, v6, v3);
    }

    v11 = 0;
  }

  return (*(v4 + 56))(a1, v11, 1, v3);
}

uint64_t RCSService.Configuration.fileTransferWarningSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RCSService.Configuration(0) + 32);

  return sub_1E4B920AC(v3, a1);
}

uint64_t sub_1E4B92480(double a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  v7 = [objc_opt_self() *a4];
  sub_1E4AF15E0();
  return sub_1E4BEF97C();
}

uint64_t sub_1E4B92524(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4B925D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t (*a11)(void))
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  v17 = a11(0);
  sub_1E4B92524(a4, a9 + v17[5]);
  v18 = a9 + v17[6];
  *v18 = a5;
  *(v18 + 8) = a6 & 1;
  sub_1E4B92524(a7, a9 + v17[7]);
  v19 = a9 + v17[8];

  return sub_1E4B92524(a8, v19);
}

unint64_t sub_1E4B926AC()
{
  v1 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000017;
  }

  v2 = 0xD000000000000016;
  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1E4B92734@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B94638(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B9275C(uint64_t a1)
{
  v2 = sub_1E4B92A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B92798(uint64_t a1)
{
  v2 = sub_1E4B92A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Configuration.CodableRepresentation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96360, &qword_1E4C0FD60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B92A50();
  sub_1E4BF0ACC();
  v9 = *(v3 + 16);
  v11 = *v3;
  v12 = v9;
  v13 = 0;
  sub_1E4BF08EC();
  if (!v2)
  {
    type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
    LOBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
    sub_1E4AF19DC(&qword_1ECF92D88, MEMORY[0x1E6968078]);
    sub_1E4BF08EC();
    LOBYTE(v11) = 2;
    sub_1E4BF08DC();
    LOBYTE(v11) = 3;
    sub_1E4BF08EC();
    LOBYTE(v11) = 4;
    sub_1E4BF08EC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E4B92A50()
{
  result = qword_1ECF96368;
  if (!qword_1ECF96368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96368);
  }

  return result;
}

uint64_t RCSService.Configuration.CodableRepresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96370, &qword_1E4C0FD68);
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B92A50();
  v16 = v12;
  v17 = v34;
  sub_1E4BF0ABC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v9;
  v34 = a1;
  v28 = v13;
  v19 = v32;
  v20 = v33;
  v37 = 0;
  sub_1E4BF082C();
  v21 = v36;
  *v15 = v35;
  v15[16] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  LOBYTE(v35) = 1;
  sub_1E4AF19DC(&qword_1ECF92D98, MEMORY[0x1E6968098]);
  sub_1E4BF082C();
  sub_1E4B92524(v18, &v15[v28[5]]);
  LOBYTE(v35) = 2;
  v22 = sub_1E4BF081C();
  v23 = &v15[v28[6]];
  *v23 = v22;
  v23[8] = v24 & 1;
  LOBYTE(v35) = 3;
  sub_1E4BF082C();
  sub_1E4B92524(v31, &v15[v28[7]]);
  LOBYTE(v35) = 4;
  v25 = v30;
  sub_1E4BF082C();
  (*(v19 + 8))(v16, v20);
  sub_1E4B92524(v25, &v15[v28[8]]);
  sub_1E4B92FB8(v15, v29);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_1E4B93190(v15, type metadata accessor for RCSService.Configuration.CodableRepresentation);
}

uint64_t sub_1E4B92F50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4B92FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RCSConfigurationRequest.Reply.init(config:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  RCSService.Configuration.maximumTextMessageSize.getter(&v20 - v5);
  v10 = type metadata accessor for RCSService.Configuration(0);
  v11 = a1 + *(v10 + 24);
  v12 = *v11;
  v13 = v11[8];
  v14 = *v11 < 100;
  v15 = 100;
  if (v14)
  {
    v15 = v12;
  }

  if (v13)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
  RCSService.Configuration.maximumFileTransferSize.getter((a2 + v17[7]));
  sub_1E4B920AC(a1 + *(v10 + 32), a2 + v17[8]);
  sub_1E4B93190(a1, type metadata accessor for RCSService.Configuration);
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  result = sub_1E4B92524(v6, a2 + v17[5]);
  v19 = a2 + v17[6];
  *v19 = v16;
  *(v19 + 8) = v13;
  return result;
}

uint64_t sub_1E4B93190(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4B93208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6769666E6F635FLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4B93290(uint64_t a1)
{
  v2 = sub_1E4B93480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B932CC(uint64_t a1)
{
  v2 = sub_1E4B93480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSConfigurationRequest.Reply.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96378, &qword_1E4C0FD70);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B93480();
  sub_1E4BF0ACC();
  type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
  sub_1E4B93768(&qword_1ECF96388, type metadata accessor for RCSService.Configuration.CodableRepresentation, &protocol conformance descriptor for RCSService.Configuration.CodableRepresentation);
  sub_1E4BF093C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E4B93480()
{
  result = qword_1ECF96380;
  if (!qword_1ECF96380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96380);
  }

  return result;
}

uint64_t RCSConfigurationRequest.Reply.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96390, &qword_1E4C0FD78);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for RCSConfigurationRequest.Reply(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B93480();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v12 = v15;
    sub_1E4B93768(&qword_1ECF96398, type metadata accessor for RCSService.Configuration.CodableRepresentation, &protocol conformance descriptor for RCSService.Configuration.CodableRepresentation);
    v13 = v17;
    sub_1E4BF087C();
    (*(v16 + 8))(v8, v6);
    sub_1E4B937B0(v13, v11, type metadata accessor for RCSService.Configuration.CodableRepresentation);
    sub_1E4B937B0(v11, v12, type metadata accessor for RCSConfigurationRequest.Reply);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B93768(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4B937B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4B93830(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96378, &qword_1E4C0FD70);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B93480();
  sub_1E4BF0ACC();
  type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
  sub_1E4B93768(&qword_1ECF96388, type metadata accessor for RCSService.Configuration.CodableRepresentation, &protocol conformance descriptor for RCSService.Configuration.CodableRepresentation);
  sub_1E4BF093C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1E4B939EC(uint64_t a1)
{
  v2 = sub_1E4B93BB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B93A28(uint64_t a1)
{
  v2 = sub_1E4B93BB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSConfigurationRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF963A0, &qword_1E4C0FD80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B93BB0();
  sub_1E4BF0ACC();
  v10 = v7;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E4B93BB0()
{
  result = qword_1ECF963A8;
  if (!qword_1ECF963A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF963A8);
  }

  return result;
}

uint64_t RCSConfigurationRequest.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF963B0, &qword_1E4C0FD88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B93BB0();
  sub_1E4BF0ABC();
  if (!v2)
  {
    sub_1E4ADBF38();
    sub_1E4BF087C();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4B93E00(uint64_t a1)
{
  result = sub_1E4B93E28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4B93E28()
{
  result = qword_1EE2BDB20;
  if (!qword_1EE2BDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDB20);
  }

  return result;
}

unint64_t sub_1E4B93F18(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B93F48();
  result = sub_1E4B93F9C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4B93F48()
{
  result = qword_1EE2BDB28;
  if (!qword_1EE2BDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDB28);
  }

  return result;
}

unint64_t sub_1E4B93F9C()
{
  result = qword_1EE2BDB30;
  if (!qword_1EE2BDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDB30);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

void sub_1E4B94184(uint64_t a1)
{
  sub_1E4AE5B08(319, &qword_1EE2BD700, MEMORY[0x1E69E7B30]);
  if (v1 <= 0x3F)
  {
    sub_1E4AF1EBC(319);
    if (v2 <= 0x3F)
    {
      sub_1E4AE5B08(319, &qword_1ECF92DD8, MEMORY[0x1E69E6530]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E4B94284(uint64_t a1)
{
  result = type metadata accessor for RCSService.Configuration.CodableRepresentation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E4B94324()
{
  result = qword_1ECF963F8;
  if (!qword_1ECF963F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF963F8);
  }

  return result;
}

unint64_t sub_1E4B9437C()
{
  result = qword_1ECF96400;
  if (!qword_1ECF96400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96400);
  }

  return result;
}

unint64_t sub_1E4B943D4()
{
  result = qword_1ECF96408;
  if (!qword_1ECF96408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96408);
  }

  return result;
}

unint64_t sub_1E4B9442C()
{
  result = qword_1ECF96410;
  if (!qword_1ECF96410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96410);
  }

  return result;
}

unint64_t sub_1E4B94484()
{
  result = qword_1ECF96418;
  if (!qword_1ECF96418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96418);
  }

  return result;
}

unint64_t sub_1E4B944DC()
{
  result = qword_1ECF96420;
  if (!qword_1ECF96420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96420);
  }

  return result;
}

unint64_t sub_1E4B94534()
{
  result = qword_1ECF96428;
  if (!qword_1ECF96428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96428);
  }

  return result;
}

unint64_t sub_1E4B9458C()
{
  result = qword_1ECF96430;
  if (!qword_1ECF96430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96430);
  }

  return result;
}

unint64_t sub_1E4B945E4()
{
  result = qword_1ECF96438;
  if (!qword_1ECF96438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96438);
  }

  return result;
}

uint64_t sub_1E4B94638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000011 && 0x80000001E4BF20F0 == a2;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E4BF2110 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E4BF2130 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E4BF2150 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E4BF2170 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E4B947FC(uint64_t a1)
{
  v2 = sub_1E4B94988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B94838(uint64_t a1)
{
  v2 = sub_1E4B94988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CarrierMessagingCapabilityRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96440, &qword_1E4C10280);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B94988();
  sub_1E4BF0ACC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E4B94988()
{
  result = qword_1ECF96448;
  if (!qword_1ECF96448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96448);
  }

  return result;
}

unint64_t sub_1E4B94A04(uint64_t a1)
{
  result = sub_1E4B39064();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4B94A50(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B94A80();
  result = sub_1E4B94AD4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4B94A80()
{
  result = qword_1EE2BECA8;
  if (!qword_1EE2BECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BECA8);
  }

  return result;
}

unint64_t sub_1E4B94AD4()
{
  result = qword_1EE2BECB0;
  if (!qword_1EE2BECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BECB0);
  }

  return result;
}

uint64_t sub_1E4B94B28(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96440, &qword_1E4C10280);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B94988();
  sub_1E4BF0ACC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E4B94C60()
{
  result = qword_1ECF96450;
  if (!qword_1ECF96450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96450);
  }

  return result;
}

unint64_t sub_1E4B94CB8()
{
  result = qword_1ECF96458;
  if (!qword_1ECF96458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96458);
  }

  return result;
}

uint64_t sub_1E4B94D0C()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1ECF96460);
  v1 = __swift_project_value_buffer(v0, qword_1ECF96460);
  if (qword_1EE2BD748 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1E4B94DD4()
{
  v1 = v0[10];
  os_unfair_lock_lock(v1 + 10);
  sub_1E4B95534(&v1[4]);
  os_unfair_lock_unlock(v1 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[9];

  return v0;
}

uint64_t sub_1E4B94E44()
{
  sub_1E4B94DD4();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t get_enum_tag_for_layout_string_s5Int32VIeghy_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E4B94EB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1E4B94F10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1E4B94F74(int *a1, uint64_t *a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  if (*a1 == -1)
  {
    out_token = -1;
    v9 = a2[9];
    v10 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1E4B955A4;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E4B95550;
    aBlock[3] = &block_descriptor_0;
    v11 = _Block_copy(aBlock);
    swift_retain_n();

    v12 = sub_1E4BEFF1C();
    v13 = notify_register_dispatch((v12 + 32), &out_token, v9, v11);

    _Block_release(v11);

    if (v13)
    {
      if (qword_1ECF92408 != -1)
      {
        swift_once();
      }

      v14 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v14, qword_1ECF96460);
      v15 = sub_1E4BEFB5C();
      v16 = sub_1E4BF04DC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 67109120;
        *(v17 + 4) = v13;
        _os_log_impl(&dword_1E4AD3000, v15, v16, "Failed to register for daemon ready notification: %u", v17, 8u);
        MEMORY[0x1E6921800](v17, -1, -1);
      }

      sub_1E4B955C4();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      *a1 = out_token;
    }
  }

  else
  {
    if (qword_1ECF92408 != -1)
    {
      swift_once();
    }

    v3 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v3, qword_1ECF96460);

    v4 = sub_1E4BEFB5C();
    v5 = sub_1E4BF04BC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1E4B30548(a2[7], a2[8], aBlock);
      _os_log_impl(&dword_1E4AD3000, v4, v5, "Already registered for: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1E6921800](v7, -1, -1);
      MEMORY[0x1E6921800](v6, -1, -1);
    }
  }
}

uint64_t sub_1E4B952EC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E4B9534C(v2);
  }

  return result;
}

void sub_1E4B9534C(int a1)
{
  v3 = *(v1 + 80);
  os_unfair_lock_lock((v3 + 40));
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E4B95618;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_1E4AD650C(v4, v5);
  os_unfair_lock_unlock((v3 + 40));
  if (v4)
  {
    v8 = a1;

    v7(&v8);
    sub_1E4AD651C(v7, v6);
    sub_1E4AD651C(v7, v6);
  }
}

uint64_t sub_1E4B9541C(uint64_t result)
{
  v1 = *result;
  if (*result != -1)
  {
    v2 = result;
    sub_1E4AD651C(*(result + 8), *(result + 16));
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    if (qword_1ECF92408 != -1)
    {
      swift_once();
    }

    v3 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v3, qword_1ECF96460);
    v4 = sub_1E4BEFB5C();
    v5 = sub_1E4BF04BC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1E4AD3000, v4, v5, "Deregistering for daemon ready notification", v6, 2u);
      MEMORY[0x1E6921800](v6, -1, -1);
    }

    result = notify_cancel(v1);
    *v2 = -1;
  }

  return result;
}

uint64_t sub_1E4B95550(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E4B955C4()
{
  result = qword_1ECF96478;
  if (!qword_1ECF96478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96478);
  }

  return result;
}

unint64_t sub_1E4B95658()
{
  result = qword_1ECF96480;
  if (!qword_1ECF96480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96480);
  }

  return result;
}

double RCSRevokeMessageRequest.request.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  sub_1E4ADD6D8(v2, v3, v4, v5, v6);

  return result;
}

double RCSRevokeMessageRequest.messageID.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;

  return result;
}

uint64_t RCSRevokeMessageRequest.messageID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  return result;
}

uint64_t RCSRevokeMessageRequest.init(request:messageID:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v9 = a1[40];
  v11 = *(a1 + 6);
  v10 = *(a1 + 7);
  v12 = *a2;
  v14 = a2[1];
  sub_1E4ADD6D8(v5, v6, v7, v8, v9);

  sub_1E4ADD764(v5, v6, v7, v8, v9);

  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  *(a3 + 48) = v11;
  *(a3 + 56) = v10;
  *(a3 + 64) = v12;
  *(a3 + 72) = v14;
  return result;
}

uint64_t sub_1E4B95840()
{
  if (*v0)
  {
    return 0x496567617373656DLL;
  }

  else
  {
    return 0x747365757165725FLL;
  }
}

uint64_t sub_1E4B95880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x747365757165725FLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4B95964(uint64_t a1)
{
  v2 = sub_1E4B965C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B959A0(uint64_t a1)
{
  v2 = sub_1E4B965C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSRevokeMessageRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96488, &qword_1E4C10520);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = v1[1];
  v22 = *v1;
  v23 = v8;
  v9 = v1[3];
  v24 = v1[2];
  v25 = v9;
  v10 = *(v1 + 9);
  v12 = *(v1 + 8);
  v26 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B96568(&v22, &v18);
  sub_1E4B965C4();
  sub_1E4BF0ACC();
  v18 = v22;
  v19 = v23;
  v20 = v24;
  v21 = v25;
  v17 = 0;
  sub_1E4B96618();
  sub_1E4BF093C();
  v16[0] = v18;
  v16[1] = v19;
  v16[2] = v20;
  v16[3] = v21;
  sub_1E4B9666C(v16);
  if (!v2)
  {
    v14 = v12;
    v15 = v26;
    v13 = 1;
    sub_1E4AE2DEC();

    sub_1E4BF093C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RCSRevokeMessageRequest.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF964A0, &qword_1E4C10528);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B965C4();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v15;
  v29 = 0;
  sub_1E4B966C0();
  sub_1E4BF087C();
  v24 = v20;
  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = 1;
  sub_1E4AE30EC();
  sub_1E4BF087C();
  (*(v5 + 8))(v7, v4);
  v9 = v19;
  v10 = v24;
  v11 = v25;
  v16[0] = v24;
  v16[1] = v25;
  v12 = v27;
  v16[2] = v26;
  v16[3] = v27;
  v17 = v19;
  v8[2] = v26;
  v8[3] = v12;
  *v8 = v10;
  v8[1] = v11;
  v8[4] = v17;
  sub_1E4B96714(v16, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v18[0] = v24;
  v18[1] = v25;
  v18[2] = v26;
  v18[3] = v27;
  v18[4] = v9;
  return sub_1E4B9674C(v18);
}

double RCSRevokeMessageResponseNotification.messageID.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

TelephonyMessagingKit::RCSRevokeMessageResponseNotification __swiftcall RCSRevokeMessageResponseNotification.init(cellularServiceID:messageID:didRevoke:error:)(TelephonyMessagingKit::CellularServiceID cellularServiceID, TelephonyMessagingKit::RCSMessageID messageID, Swift::Bool didRevoke, TelephonyMessagingKit::RCSService::Error_optional error)
{
  v5 = *messageID.rawValue._countAndFlagsBits;
  v6 = *(messageID.rawValue._countAndFlagsBits + 8);
  v7 = *didRevoke;
  *v4 = *cellularServiceID.simSlot;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = messageID.rawValue._object;
  *(v4 + 25) = v7;
  result.messageID = messageID;
  result.didRevoke = didRevoke;
  result.cellularServiceID = cellularServiceID;
  return result;
}

unint64_t sub_1E4B95F40()
{
  v1 = 0x496567617373656DLL;
  v2 = 0x6B6F766552646964;
  if (*v0 != 2)
  {
    v2 = 0x726F727265;
  }

  if (!*v0)
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

uint64_t sub_1E4B95FC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B96DE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B95FE8(uint64_t a1)
{
  v2 = sub_1E4B9677C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B96024(uint64_t a1)
{
  v2 = sub_1E4B9677C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSRevokeMessageResponseNotification.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF964B0, &qword_1E4C10530);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = *v1;
  v8 = *(v1 + 2);
  v14 = *(v1 + 1);
  v18 = v1[24];
  v13 = v1[25];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B9677C();
  sub_1E4BF0ACC();
  LOBYTE(v16) = v7;
  v19 = 0;
  sub_1E4ADBE98();
  v9 = v15;
  sub_1E4BF093C();
  if (!v9)
  {
    v10 = v13;
    v16 = v14;
    v17 = v8;
    v19 = 1;
    sub_1E4AE2DEC();

    sub_1E4BF093C();

    LOBYTE(v16) = 2;
    sub_1E4BF090C();
    LOBYTE(v16) = v10;
    v19 = 3;
    sub_1E4B1B740();
    sub_1E4BF08EC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RCSRevokeMessageResponseNotification.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF964C0, &qword_1E4C10538);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B9677C();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v9 = v18;
  v21 = 1;
  sub_1E4AE30EC();
  sub_1E4BF087C();
  v10 = v18;
  v17 = v19;
  LOBYTE(v18) = 2;
  v11 = sub_1E4BF084C();
  v16 = v10;
  v20 = v11;
  v21 = 3;
  sub_1E4B1B7E8();
  sub_1E4BF082C();
  v13 = v20 & 1;
  (*(v6 + 8))(v8, v5);
  v14 = v18;
  *a2 = v9;
  v15 = v17;
  *(a2 + 8) = v16;
  *(a2 + 16) = v15;
  *(a2 + 24) = v13;
  *(a2 + 25) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4B965C4()
{
  result = qword_1ECF96490;
  if (!qword_1ECF96490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96490);
  }

  return result;
}

unint64_t sub_1E4B96618()
{
  result = qword_1ECF96498;
  if (!qword_1ECF96498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96498);
  }

  return result;
}

unint64_t sub_1E4B966C0()
{
  result = qword_1ECF964A8;
  if (!qword_1ECF964A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF964A8);
  }

  return result;
}

unint64_t sub_1E4B9677C()
{
  result = qword_1ECF964B8;
  if (!qword_1ECF964B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF964B8);
  }

  return result;
}

unint64_t sub_1E4B967D0(uint64_t a1)
{
  result = sub_1E4B967F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4B967F8()
{
  result = qword_1EE2BDA50;
  if (!qword_1EE2BDA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDA50);
  }

  return result;
}

unint64_t sub_1E4B96878()
{
  result = qword_1EE2BDA58;
  if (!qword_1EE2BDA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDA58);
  }

  return result;
}

unint64_t sub_1E4B968CC()
{
  result = qword_1EE2BDA60[0];
  if (!qword_1EE2BDA60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2BDA60);
  }

  return result;
}

unint64_t sub_1E4B96920(uint64_t a1)
{
  result = sub_1E4B84334();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4B96974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4B969B0()
{
  result = qword_1ECF964C8;
  if (!qword_1ECF964C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF964C8);
  }

  return result;
}

unint64_t sub_1E4B96A04()
{
  result = qword_1ECF964D0;
  if (!qword_1ECF964D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF964D0);
  }

  return result;
}

uint64_t sub_1E4B96A58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4B96AA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B96B18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4B96B60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E4B96BD8()
{
  result = qword_1ECF964D8;
  if (!qword_1ECF964D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF964D8);
  }

  return result;
}

unint64_t sub_1E4B96C30()
{
  result = qword_1ECF964E0;
  if (!qword_1ECF964E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF964E0);
  }

  return result;
}

unint64_t sub_1E4B96C88()
{
  result = qword_1ECF964E8;
  if (!qword_1ECF964E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF964E8);
  }

  return result;
}

unint64_t sub_1E4B96CE0()
{
  result = qword_1ECF964F0;
  if (!qword_1ECF964F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF964F0);
  }

  return result;
}

unint64_t sub_1E4B96D38()
{
  result = qword_1ECF964F8;
  if (!qword_1ECF964F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF964F8);
  }

  return result;
}

unint64_t sub_1E4B96D90()
{
  result = qword_1ECF96500;
  if (!qword_1ECF96500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96500);
  }

  return result;
}

uint64_t sub_1E4B96DE4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6F766552646964 && a2 == 0xE900000000000065 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E4B96F70(char a1)
{
  result = 0x534D53646E6573;
  switch(a1)
  {
    case 1:
      v3 = 0x4D53646E6573;
      goto LABEL_15;
    case 2:
      v3 = 0x4D4D646E6573;
      goto LABEL_15;
    case 3:
      return 0x6965636552736D73;
    case 4:
      return 0x6965636552736D6DLL;
    case 5:
      return 0x6972746552736D6DLL;
    case 6:
      return 0x534D4D646E6573;
    case 7:
    case 13:
      return 0xD000000000000014;
    case 8:
      return 0xD000000000000019;
    case 9:
      return 0x534352646E6573;
    case 10:
    case 37:
      return 0xD000000000000017;
    case 11:
      return 0x5265766965636572;
    case 12:
      v3 = 0x4352646E6573;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x5253000000000000;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD000000000000019;
      break;
    case 16:
    case 29:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 18:
    case 22:
    case 33:
      result = 0xD000000000000020;
      break;
    case 19:
      result = 0xD000000000000028;
      break;
    case 20:
    case 39:
      result = 0xD000000000000021;
      break;
    case 21:
      result = 0xD000000000000024;
      break;
    case 23:
      result = 0xD000000000000018;
      break;
    case 24:
      result = 0xD000000000000019;
      break;
    case 25:
      result = 0xD000000000000019;
      break;
    case 26:
      result = 0x726F706552736D73;
      break;
    case 27:
      result = 0x726F706552736D6DLL;
      break;
    case 28:
      result = 0x726F706552736372;
      break;
    case 30:
      result = 0xD00000000000001FLL;
      break;
    case 31:
      result = 0xD00000000000001BLL;
      break;
    case 32:
      result = 0xD000000000000025;
      break;
    case 34:
      result = 0xD000000000000023;
      break;
    case 35:
      result = 0xD000000000000010;
      break;
    case 36:
      result = 0xD000000000000011;
      break;
    case 38:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E4B973A0(uint64_t a1)
{
  v2 = sub_1E4B9AAE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B973DC(uint64_t a1)
{
  v2 = sub_1E4B9AAE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97420@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4BA0904(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B97454(uint64_t a1)
{
  v2 = sub_1E4B9AA94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97490(uint64_t a1)
{
  v2 = sub_1E4B9AA94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B974CC(uint64_t a1)
{
  v2 = sub_1E4B9AD88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97508(uint64_t a1)
{
  v2 = sub_1E4B9AD88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97544(uint64_t a1)
{
  v2 = sub_1E4B9ADDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97580(uint64_t a1)
{
  v2 = sub_1E4B9ADDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B975BC(uint64_t a1)
{
  v2 = sub_1E4B9B664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B975F8(uint64_t a1)
{
  v2 = sub_1E4B9B664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97634(uint64_t a1)
{
  v2 = sub_1E4B9AED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97670(uint64_t a1)
{
  v2 = sub_1E4B9AED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B976AC(uint64_t a1)
{
  v2 = sub_1E4B9B610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B976E8(uint64_t a1)
{
  v2 = sub_1E4B9B610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97724(uint64_t a1)
{
  v2 = sub_1E4B9B2C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97760(uint64_t a1)
{
  v2 = sub_1E4B9B2C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B9779C(uint64_t a1)
{
  v2 = sub_1E4B9B370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B977D8(uint64_t a1)
{
  v2 = sub_1E4B9B370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97814(uint64_t a1)
{
  v2 = sub_1E4B9B31C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97850(uint64_t a1)
{
  v2 = sub_1E4B9B31C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B9788C(uint64_t a1)
{
  v2 = sub_1E4B9B274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B978C8(uint64_t a1)
{
  v2 = sub_1E4B9B274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97904(uint64_t a1)
{
  v2 = sub_1E4B9ACE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97940(uint64_t a1)
{
  v2 = sub_1E4B9ACE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B9797C(uint64_t a1)
{
  v2 = sub_1E4B9AD34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B979B8(uint64_t a1)
{
  v2 = sub_1E4B9AD34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B979F4(uint64_t a1)
{
  v2 = sub_1E4B9AC8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97A30(uint64_t a1)
{
  v2 = sub_1E4B9AC8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97A6C(uint64_t a1)
{
  v2 = sub_1E4B9AB90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97AA8(uint64_t a1)
{
  v2 = sub_1E4B9AB90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97AE4(uint64_t a1)
{
  v2 = sub_1E4B9B124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97B20(uint64_t a1)
{
  v2 = sub_1E4B9B124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97B5C(uint64_t a1)
{
  v2 = sub_1E4B9B07C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97B98(uint64_t a1)
{
  v2 = sub_1E4B9B07C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97BD4(uint64_t a1)
{
  v2 = sub_1E4B9AFD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97C10(uint64_t a1)
{
  v2 = sub_1E4B9AFD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97C4C(uint64_t a1)
{
  v2 = sub_1E4B9B028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97C88(uint64_t a1)
{
  v2 = sub_1E4B9B028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97CC4(uint64_t a1)
{
  v2 = sub_1E4B9B1CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97D00(uint64_t a1)
{
  v2 = sub_1E4B9B1CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97D3C(uint64_t a1)
{
  v2 = sub_1E4B9B178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97D78(uint64_t a1)
{
  v2 = sub_1E4B9B178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97DB4(uint64_t a1)
{
  v2 = sub_1E4B9B0D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97DF0(uint64_t a1)
{
  v2 = sub_1E4B9B0D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97E2C(uint64_t a1)
{
  v2 = sub_1E4B9B46C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97E68(uint64_t a1)
{
  v2 = sub_1E4B9B46C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97EA4(uint64_t a1)
{
  v2 = sub_1E4B9AE84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97EE0(uint64_t a1)
{
  v2 = sub_1E4B9AE84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97F1C(uint64_t a1)
{
  v2 = sub_1E4B9AE30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97F58(uint64_t a1)
{
  v2 = sub_1E4B9AE30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97F94(uint64_t a1)
{
  v2 = sub_1E4B9AC38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97FD0(uint64_t a1)
{
  v2 = sub_1E4B9AC38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B9800C(uint64_t a1)
{
  v2 = sub_1E4B9ABE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B98048(uint64_t a1)
{
  v2 = sub_1E4B9ABE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B98084(uint64_t a1)
{
  v2 = sub_1E4B9B418();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B980C0(uint64_t a1)
{
  v2 = sub_1E4B9B418();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B980FC(uint64_t a1)
{
  v2 = sub_1E4B9B5BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B98138(uint64_t a1)
{
  v2 = sub_1E4B9B5BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B98174(uint64_t a1)
{
  v2 = sub_1E4B9B70C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B981B0(uint64_t a1)
{
  v2 = sub_1E4B9B70C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B981EC(uint64_t a1)
{
  v2 = sub_1E4B9B4C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B98228(uint64_t a1)
{
  v2 = sub_1E4B9B4C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B98264(uint64_t a1)
{
  v2 = sub_1E4B9AB3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B982A0(uint64_t a1)
{
  v2 = sub_1E4B9AB3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B982DC(uint64_t a1)
{
  v2 = sub_1E4B9B220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B98318(uint64_t a1)
{
  v2 = sub_1E4B9B220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B98354(uint64_t a1)
{
  v2 = sub_1E4B9B3C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B98390(uint64_t a1)
{
  v2 = sub_1E4B9B3C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B983CC(uint64_t a1)
{
  v2 = sub_1E4B9AF80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B98408(uint64_t a1)
{
  v2 = sub_1E4B9AF80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B98444(uint64_t a1)
{
  v2 = sub_1E4B9B7B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B98480(uint64_t a1)
{
  v2 = sub_1E4B9B7B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B984BC(uint64_t a1)
{
  v2 = sub_1E4B9B760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B984F8(uint64_t a1)
{
  v2 = sub_1E4B9B760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B98534(uint64_t a1)
{
  v2 = sub_1E4B9B514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B98570(uint64_t a1)
{
  v2 = sub_1E4B9B514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B985AC(uint64_t a1)
{
  v2 = sub_1E4B9B568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B985E8(uint64_t a1)
{
  v2 = sub_1E4B9B568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B98624(uint64_t a1)
{
  v2 = sub_1E4B9B6B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B98660(uint64_t a1)
{
  v2 = sub_1E4B9B6B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B9869C(uint64_t a1)
{
  v2 = sub_1E4B9AF2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B986D8(uint64_t a1)
{
  v2 = sub_1E4B9AF2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Messaging.MessageID.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96508, &qword_1E4C10970);
  v217 = *(v4 - 8);
  v218 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v216 = &v101 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96510, &qword_1E4C10978);
  v214 = *(v6 - 8);
  v215 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v213 = &v101 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96518, &qword_1E4C10980);
  v211 = *(v8 - 8);
  v212 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v210 = &v101 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96520, &qword_1E4C10988);
  v208 = *(v10 - 8);
  v209 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v207 = &v101 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96528, &qword_1E4C10990);
  v205 = *(v12 - 8);
  v206 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v204 = &v101 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96530, &qword_1E4C10998);
  v202 = *(v14 - 8);
  v203 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v201 = &v101 - v15;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96538, &qword_1E4C109A0);
  v199 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v198 = &v101 - v16;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96540, &qword_1E4C109A8);
  v196 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v195 = &v101 - v17;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96548, &qword_1E4C109B0);
  v193 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v192 = &v101 - v18;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96550, &qword_1E4C109B8);
  v190 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v189 = &v101 - v19;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96558, &qword_1E4C109C0);
  v187 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v186 = &v101 - v20;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96560, &qword_1E4C109C8);
  v184 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v183 = &v101 - v21;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96568, &qword_1E4C109D0);
  v181 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v180 = &v101 - v22;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96570, &qword_1E4C109D8);
  v178 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v177 = &v101 - v23;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96578, &qword_1E4C109E0);
  v175 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v174 = &v101 - v24;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96580, &qword_1E4C109E8);
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v171 = &v101 - v25;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96588, &qword_1E4C109F0);
  v169 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v168 = &v101 - v26;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96590, &qword_1E4C109F8);
  v166 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v165 = &v101 - v27;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96598, &qword_1E4C10A00);
  v163 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v162 = &v101 - v28;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965A0, &qword_1E4C10A08);
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v159 = &v101 - v29;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965A8, &qword_1E4C10A10);
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v156 = &v101 - v30;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965B0, &qword_1E4C10A18);
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v153 = &v101 - v31;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965B8, &qword_1E4C10A20);
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v150 = &v101 - v32;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965C0, &qword_1E4C10A28);
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v101 - v33;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965C8, &qword_1E4C10A30);
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v101 - v34;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965D0, &qword_1E4C10A38);
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v101 - v35;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965D8, &qword_1E4C10A40);
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v138 = &v101 - v36;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965E0, &qword_1E4C10A48);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v135 = &v101 - v37;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965E8, &qword_1E4C10A50);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v101 - v38;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965F0, &qword_1E4C10A58);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v101 - v39;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965F8, &qword_1E4C10A60);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v126 = &v101 - v40;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96600, &qword_1E4C10A68);
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v123 = &v101 - v41;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96608, &qword_1E4C10A70);
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v120 = &v101 - v42;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96610, &qword_1E4C10A78);
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v101 - v43;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96618, &qword_1E4C10A80);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v101 - v44;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96620, &qword_1E4C10A88);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v101 - v45;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96628, &qword_1E4C10A90);
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v108 = &v101 - v46;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96630, &qword_1E4C10A98);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v101 - v47;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96638, &qword_1E4C10AA0);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v49 = &v101 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96640, &qword_1E4C10AA8);
  v102 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v101 - v51;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96648, &qword_1E4C10AB0);
  v53 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v55 = &v101 - v54;
  v56 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B9AA94();
  v219 = v55;
  sub_1E4BF0ACC();
  v57 = (v53 + 8);
  switch(v56)
  {
    case 1:
      v222 = 1;
      sub_1E4B9B760();
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v103 + 8);
      v68 = v49;
      v69 = &v136;
      goto LABEL_43;
    case 2:
      v222 = 2;
      sub_1E4B9B70C();
      v79 = v105;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v106 + 8);
      v68 = v79;
      v69 = &v139;
      goto LABEL_43;
    case 3:
      v222 = 3;
      sub_1E4B9B6B8();
      v81 = v108;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v109 + 8);
      v68 = v81;
      v69 = &v142;
      goto LABEL_43;
    case 4:
      v222 = 4;
      sub_1E4B9B664();
      v74 = v111;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v112 + 8);
      v68 = v74;
      v69 = &v145;
      goto LABEL_43;
    case 5:
      v222 = 5;
      sub_1E4B9B610();
      v86 = v114;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v115 + 8);
      v68 = v86;
      v69 = &v148;
      goto LABEL_43;
    case 6:
      v222 = 6;
      sub_1E4B9B5BC();
      v89 = v117;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v118 + 8);
      v68 = v89;
      v69 = &v151;
      goto LABEL_43;
    case 7:
      v222 = 7;
      sub_1E4B9B568();
      v82 = v120;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v121 + 8);
      v68 = v82;
      v69 = &v154;
      goto LABEL_43;
    case 8:
      v222 = 8;
      sub_1E4B9B514();
      v92 = v123;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v124 + 8);
      v68 = v92;
      v69 = &v157;
      goto LABEL_43;
    case 9:
      v222 = 9;
      sub_1E4B9B4C0();
      v76 = v126;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v127 + 8);
      v68 = v76;
      v69 = &v160;
      goto LABEL_43;
    case 10:
      v222 = 10;
      sub_1E4B9B46C();
      v91 = v129;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v130 + 8);
      v68 = v91;
      v69 = &v163;
      goto LABEL_43;
    case 11:
      v222 = 11;
      sub_1E4B9B418();
      v73 = v132;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v133 + 8);
      v68 = v73;
      v69 = &v166;
      goto LABEL_43;
    case 12:
      v222 = 12;
      sub_1E4B9B3C4();
      v75 = v135;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v136 + 8);
      v68 = v75;
      v69 = &v169;
      goto LABEL_43;
    case 13:
      v222 = 13;
      sub_1E4B9B370();
      v88 = v138;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v139 + 8);
      v68 = v88;
      v69 = &v172;
      goto LABEL_43;
    case 14:
      v222 = 14;
      sub_1E4B9B31C();
      v71 = v141;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v142 + 8);
      v68 = v71;
      v69 = &v175;
      goto LABEL_43;
    case 15:
      v222 = 15;
      sub_1E4B9B2C8();
      v80 = v144;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v145 + 8);
      v68 = v80;
      v69 = &v178;
      goto LABEL_43;
    case 16:
      v222 = 16;
      sub_1E4B9B274();
      v70 = v147;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v148 + 8);
      v68 = v70;
      v69 = &v181;
      goto LABEL_43;
    case 17:
      v222 = 17;
      sub_1E4B9B220();
      v84 = v150;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v151 + 8);
      v68 = v84;
      v69 = &v184;
      goto LABEL_43;
    case 18:
      v222 = 18;
      sub_1E4B9B1CC();
      v90 = v153;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v154 + 8);
      v68 = v90;
      v69 = &v187;
      goto LABEL_43;
    case 19:
      v222 = 19;
      sub_1E4B9B178();
      v96 = v156;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v157 + 8);
      v68 = v96;
      v69 = &v190;
      goto LABEL_43;
    case 20:
      v222 = 20;
      sub_1E4B9B124();
      v85 = v159;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v160 + 8);
      v68 = v85;
      v69 = &v193;
      goto LABEL_43;
    case 21:
      v222 = 21;
      sub_1E4B9B0D0();
      v87 = v162;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v163 + 8);
      v68 = v87;
      v69 = &v196;
      goto LABEL_43;
    case 22:
      v222 = 22;
      sub_1E4B9B07C();
      v95 = v165;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v166 + 8);
      v68 = v95;
      v69 = &v199;
      goto LABEL_43;
    case 23:
      v222 = 23;
      sub_1E4B9B028();
      v97 = v168;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v169 + 8);
      v68 = v97;
      v69 = &v202;
      goto LABEL_43;
    case 24:
      v222 = 24;
      sub_1E4B9AFD4();
      v78 = v171;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v172 + 8);
      v68 = v78;
      v69 = &v205;
      goto LABEL_43;
    case 25:
      v222 = 25;
      sub_1E4B9AF80();
      v77 = v174;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v175 + 8);
      v68 = v77;
      v69 = &v208;
      goto LABEL_43;
    case 26:
      v222 = 26;
      sub_1E4B9AF2C();
      v100 = v177;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v178 + 8);
      v68 = v100;
      v69 = &v211;
      goto LABEL_43;
    case 27:
      v222 = 27;
      sub_1E4B9AED8();
      v66 = v180;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v181 + 8);
      v68 = v66;
      v69 = &v214;
      goto LABEL_43;
    case 28:
      v222 = 28;
      sub_1E4B9AE84();
      v98 = v183;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v184 + 8);
      v68 = v98;
      v69 = &v217;
      goto LABEL_43;
    case 29:
      v222 = 29;
      sub_1E4B9AE30();
      v99 = v186;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v187 + 8);
      v68 = v99;
      v69 = &v220;
      goto LABEL_43;
    case 30:
      v222 = 30;
      sub_1E4B9ADDC();
      v93 = v189;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v190 + 8);
      v68 = v93;
      v69 = &v221;
      goto LABEL_43;
    case 31:
      v222 = 31;
      sub_1E4B9AD88();
      v83 = v192;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v193 + 8);
      v68 = v83;
      v69 = &v223;
      goto LABEL_43;
    case 32:
      v222 = 32;
      sub_1E4B9AD34();
      v94 = v195;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v196 + 8);
      v68 = v94;
      v69 = &v224;
      goto LABEL_43;
    case 33:
      v222 = 33;
      sub_1E4B9ACE0();
      v72 = v198;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v67 = *(v199 + 8);
      v68 = v72;
      v69 = &v225;
LABEL_43:
      v67(v68, *(v69 - 32));
      goto LABEL_44;
    case 34:
      v222 = 34;
      sub_1E4B9AC8C();
      v61 = v201;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v65 = v202;
      v64 = v203;
      goto LABEL_41;
    case 35:
      v222 = 35;
      sub_1E4B9AC38();
      v61 = v204;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v65 = v205;
      v64 = v206;
      goto LABEL_41;
    case 36:
      v222 = 36;
      sub_1E4B9ABE4();
      v61 = v207;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v65 = v208;
      v64 = v209;
      goto LABEL_41;
    case 37:
      v222 = 37;
      sub_1E4B9AB90();
      v61 = v210;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v65 = v211;
      v64 = v212;
      goto LABEL_41;
    case 38:
      v222 = 38;
      sub_1E4B9AB3C();
      v61 = v213;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v65 = v214;
      v64 = v215;
      goto LABEL_41;
    case 39:
      v222 = 39;
      sub_1E4B9AAE8();
      v61 = v216;
      v63 = v219;
      v62 = v220;
      sub_1E4BF08BC();
      v65 = v217;
      v64 = v218;
LABEL_41:
      (*(v65 + 8))(v61, v64);
LABEL_44:
      result = (*v57)(v63, v62);
      break;
    default:
      v222 = 0;
      sub_1E4B9B7B4();
      v58 = v219;
      v59 = v220;
      sub_1E4BF08BC();
      (*(v102 + 8))(v52, v50);
      result = (*v57)(v58, v59);
      break;
  }

  return result;
}

unint64_t sub_1E4B9AA94()
{
  result = qword_1ECF96650;
  if (!qword_1ECF96650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96650);
  }

  return result;
}

unint64_t sub_1E4B9AAE8()
{
  result = qword_1ECF96658;
  if (!qword_1ECF96658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96658);
  }

  return result;
}

unint64_t sub_1E4B9AB3C()
{
  result = qword_1ECF96660;
  if (!qword_1ECF96660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96660);
  }

  return result;
}

unint64_t sub_1E4B9AB90()
{
  result = qword_1ECF96668;
  if (!qword_1ECF96668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96668);
  }

  return result;
}

unint64_t sub_1E4B9ABE4()
{
  result = qword_1ECF96670;
  if (!qword_1ECF96670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96670);
  }

  return result;
}

unint64_t sub_1E4B9AC38()
{
  result = qword_1ECF96678;
  if (!qword_1ECF96678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96678);
  }

  return result;
}

unint64_t sub_1E4B9AC8C()
{
  result = qword_1ECF96680;
  if (!qword_1ECF96680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96680);
  }

  return result;
}

unint64_t sub_1E4B9ACE0()
{
  result = qword_1ECF96688;
  if (!qword_1ECF96688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96688);
  }

  return result;
}

unint64_t sub_1E4B9AD34()
{
  result = qword_1ECF96690;
  if (!qword_1ECF96690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96690);
  }

  return result;
}

unint64_t sub_1E4B9AD88()
{
  result = qword_1ECF96698;
  if (!qword_1ECF96698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96698);
  }

  return result;
}

unint64_t sub_1E4B9ADDC()
{
  result = qword_1ECF966A0;
  if (!qword_1ECF966A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966A0);
  }

  return result;
}

unint64_t sub_1E4B9AE30()
{
  result = qword_1ECF966A8;
  if (!qword_1ECF966A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966A8);
  }

  return result;
}

unint64_t sub_1E4B9AE84()
{
  result = qword_1ECF966B0;
  if (!qword_1ECF966B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966B0);
  }

  return result;
}

unint64_t sub_1E4B9AED8()
{
  result = qword_1ECF966B8;
  if (!qword_1ECF966B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966B8);
  }

  return result;
}

unint64_t sub_1E4B9AF2C()
{
  result = qword_1ECF966C0;
  if (!qword_1ECF966C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966C0);
  }

  return result;
}

unint64_t sub_1E4B9AF80()
{
  result = qword_1ECF966C8;
  if (!qword_1ECF966C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966C8);
  }

  return result;
}

unint64_t sub_1E4B9AFD4()
{
  result = qword_1ECF966D0;
  if (!qword_1ECF966D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966D0);
  }

  return result;
}

unint64_t sub_1E4B9B028()
{
  result = qword_1ECF966D8;
  if (!qword_1ECF966D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966D8);
  }

  return result;
}

unint64_t sub_1E4B9B07C()
{
  result = qword_1ECF966E0;
  if (!qword_1ECF966E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966E0);
  }

  return result;
}

unint64_t sub_1E4B9B0D0()
{
  result = qword_1ECF966E8;
  if (!qword_1ECF966E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966E8);
  }

  return result;
}

unint64_t sub_1E4B9B124()
{
  result = qword_1ECF966F0;
  if (!qword_1ECF966F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966F0);
  }

  return result;
}

unint64_t sub_1E4B9B178()
{
  result = qword_1ECF966F8;
  if (!qword_1ECF966F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966F8);
  }

  return result;
}

unint64_t sub_1E4B9B1CC()
{
  result = qword_1ECF96700;
  if (!qword_1ECF96700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96700);
  }

  return result;
}

unint64_t sub_1E4B9B220()
{
  result = qword_1ECF96708;
  if (!qword_1ECF96708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96708);
  }

  return result;
}

unint64_t sub_1E4B9B274()
{
  result = qword_1ECF96710;
  if (!qword_1ECF96710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96710);
  }

  return result;
}

unint64_t sub_1E4B9B2C8()
{
  result = qword_1ECF96718;
  if (!qword_1ECF96718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96718);
  }

  return result;
}

unint64_t sub_1E4B9B31C()
{
  result = qword_1ECF96720;
  if (!qword_1ECF96720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96720);
  }

  return result;
}

unint64_t sub_1E4B9B370()
{
  result = qword_1ECF96728;
  if (!qword_1ECF96728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96728);
  }

  return result;
}

unint64_t sub_1E4B9B3C4()
{
  result = qword_1ECF96730;
  if (!qword_1ECF96730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96730);
  }

  return result;
}

unint64_t sub_1E4B9B418()
{
  result = qword_1ECF96738;
  if (!qword_1ECF96738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96738);
  }

  return result;
}

unint64_t sub_1E4B9B46C()
{
  result = qword_1ECF96740;
  if (!qword_1ECF96740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96740);
  }

  return result;
}

unint64_t sub_1E4B9B4C0()
{
  result = qword_1ECF96748;
  if (!qword_1ECF96748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96748);
  }

  return result;
}

unint64_t sub_1E4B9B514()
{
  result = qword_1ECF96750;
  if (!qword_1ECF96750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96750);
  }

  return result;
}

unint64_t sub_1E4B9B568()
{
  result = qword_1ECF96758;
  if (!qword_1ECF96758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96758);
  }

  return result;
}

unint64_t sub_1E4B9B5BC()
{
  result = qword_1ECF96760;
  if (!qword_1ECF96760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96760);
  }

  return result;
}

unint64_t sub_1E4B9B610()
{
  result = qword_1ECF96768;
  if (!qword_1ECF96768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96768);
  }

  return result;
}

unint64_t sub_1E4B9B664()
{
  result = qword_1ECF96770;
  if (!qword_1ECF96770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96770);
  }

  return result;
}

unint64_t sub_1E4B9B6B8()
{
  result = qword_1ECF96778;
  if (!qword_1ECF96778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96778);
  }

  return result;
}

unint64_t sub_1E4B9B70C()
{
  result = qword_1ECF96780;
  if (!qword_1ECF96780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96780);
  }

  return result;
}

unint64_t sub_1E4B9B760()
{
  result = qword_1ECF96788;
  if (!qword_1ECF96788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96788);
  }

  return result;
}

unint64_t sub_1E4B9B7B4()
{
  result = qword_1ECF96790;
  if (!qword_1ECF96790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96790);
  }

  return result;
}

uint64_t Messaging.MessageID.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t Messaging.MessageID.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v267 = a2;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96798, &qword_1E4C10AB8);
  v227 = *(v266 - 8);
  MEMORY[0x1EEE9AC00](v266);
  v262 = &v145 - v3;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967A0, &qword_1E4C10AC0);
  v225 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226);
  v261 = &v145 - v4;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967A8, &qword_1E4C10AC8);
  v223 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v260 = &v145 - v5;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967B0, &qword_1E4C10AD0);
  v221 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v259 = &v145 - v6;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967B8, &qword_1E4C10AD8);
  v219 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v258 = &v145 - v7;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967C0, &qword_1E4C10AE0);
  v217 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v257 = &v145 - v8;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967C8, &qword_1E4C10AE8);
  v215 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v256 = &v145 - v9;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967D0, &qword_1E4C10AF0);
  v213 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v255 = &v145 - v10;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967D8, &qword_1E4C10AF8);
  v211 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v254 = &v145 - v11;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967E0, &qword_1E4C10B00);
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v253 = &v145 - v12;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967E8, &qword_1E4C10B08);
  v207 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v252 = &v145 - v13;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967F0, &qword_1E4C10B10);
  v205 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v251 = &v145 - v14;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967F8, &qword_1E4C10B18);
  v203 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v250 = &v145 - v15;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96800, &qword_1E4C10B20);
  v201 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v249 = &v145 - v16;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96808, &qword_1E4C10B28);
  v199 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v248 = &v145 - v17;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96810, &qword_1E4C10B30);
  v197 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v247 = &v145 - v18;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96818, &qword_1E4C10B38);
  v195 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v246 = &v145 - v19;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96820, &qword_1E4C10B40);
  v193 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v245 = &v145 - v20;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96828, &qword_1E4C10B48);
  v191 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v244 = &v145 - v21;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96830, &qword_1E4C10B50);
  v189 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v243 = &v145 - v22;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96838, &qword_1E4C10B58);
  v187 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v242 = &v145 - v23;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96840, &qword_1E4C10B60);
  v185 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v241 = &v145 - v24;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96848, &qword_1E4C10B68);
  v183 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v240 = &v145 - v25;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96850, &qword_1E4C10B70);
  v181 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v239 = &v145 - v26;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96858, &qword_1E4C10B78);
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v238 = &v145 - v27;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96860, &qword_1E4C10B80);
  v177 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v237 = &v145 - v28;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96868, &qword_1E4C10B88);
  v175 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v236 = &v145 - v29;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96870, &qword_1E4C10B90);
  v173 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v235 = &v145 - v30;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96878, &qword_1E4C10B98);
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v234 = &v145 - v31;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96880, &qword_1E4C10BA0);
  v169 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v265 = &v145 - v32;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96888, &qword_1E4C10BA8);
  v168 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v264 = &v145 - v33;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96890, &qword_1E4C10BB0);
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v263 = &v145 - v34;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96898, &qword_1E4C10BB8);
  v163 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v233 = &v145 - v35;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF968A0, &qword_1E4C10BC0);
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v232 = &v145 - v36;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF968A8, &qword_1E4C10BC8);
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v231 = &v145 - v37;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF968B0, &qword_1E4C10BD0);
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v230 = &v145 - v38;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF968B8, &qword_1E4C10BD8);
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v229 = &v145 - v39;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF968C0, &qword_1E4C10BE0);
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v228 = &v145 - v40;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF968C8, &qword_1E4C10BE8);
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v42 = &v145 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF968D0, &qword_1E4C10BF0);
  v150 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v145 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF968D8, &unk_1E4C10BF8);
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v145 - v48;
  v50 = a1[3];
  v269 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v50);
  sub_1E4B9AA94();
  v51 = v268;
  sub_1E4BF0ABC();
  if (v51)
  {
LABEL_8:
    v68 = v269;
    return __swift_destroy_boxed_opaque_existential_1(v68);
  }

  v147 = v45;
  v146 = v43;
  v148 = v42;
  v52 = v263;
  v53 = v264;
  v54 = v265;
  v149 = 0;
  v56 = v266;
  v55 = v267;
  v268 = v47;
  v57 = v46;
  v58 = v49;
  v59 = sub_1E4BF088C();
  v60 = (2 * *(v59 + 16)) | 1;
  v270 = v59;
  v271 = v59 + 32;
  v272 = 0;
  v273 = v60;
  v61 = sub_1E4ADD4F0();
  if (v272 != v273 >> 1)
  {
LABEL_6:
    v65 = sub_1E4BF06EC();
    swift_allocError();
    v67 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
    *v67 = &type metadata for Messaging.MessageID;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v65 - 8) + 104))(v67, *MEMORY[0x1E69E6AF8], v65);
    swift_willThrow();
LABEL_7:
    (*(v268 + 8))(v58, v57);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v62 = v61;
  switch(v61)
  {
    case 0:
      v274 = 0;
      sub_1E4B9B7B4();
      v63 = v147;
      v64 = v149;
      sub_1E4BF07EC();
      if (v64)
      {
        goto LABEL_7;
      }

      (*(v150 + 8))(v63, v146);
      goto LABEL_88;
    case 1:
      v274 = 1;
      sub_1E4B9B760();
      v105 = v148;
      v106 = v149;
      sub_1E4BF07EC();
      if (v106)
      {
        goto LABEL_7;
      }

      (*(v151 + 8))(v105, v152);
      goto LABEL_88;
    case 2:
      v274 = 2;
      sub_1E4B9B70C();
      v97 = v228;
      v98 = v149;
      sub_1E4BF07EC();
      if (v98)
      {
        goto LABEL_7;
      }

      (*(v153 + 8))(v97, v154);
      goto LABEL_88;
    case 3:
      v274 = 3;
      sub_1E4B9B6B8();
      v101 = v229;
      v102 = v149;
      sub_1E4BF07EC();
      if (v102)
      {
        goto LABEL_7;
      }

      (*(v155 + 8))(v101, v156);
      goto LABEL_88;
    case 4:
      v274 = 4;
      sub_1E4B9B664();
      v88 = v230;
      v89 = v149;
      sub_1E4BF07EC();
      if (v89)
      {
        goto LABEL_7;
      }

      (*(v157 + 8))(v88, v158);
      goto LABEL_88;
    case 5:
      v274 = 5;
      sub_1E4B9B610();
      v113 = v231;
      v114 = v149;
      sub_1E4BF07EC();
      if (v114)
      {
        goto LABEL_7;
      }

      (*(v159 + 8))(v113, v160);
      goto LABEL_88;
    case 6:
      v274 = 6;
      sub_1E4B9B5BC();
      v119 = v232;
      v120 = v149;
      sub_1E4BF07EC();
      if (v120)
      {
        goto LABEL_7;
      }

      (*(v161 + 8))(v119, v162);
      goto LABEL_88;
    case 7:
      v274 = 7;
      sub_1E4B9B568();
      v103 = v233;
      v104 = v149;
      sub_1E4BF07EC();
      if (v104)
      {
        goto LABEL_7;
      }

      (*(v163 + 8))(v103, v164);
      goto LABEL_88;
    case 8:
      v274 = 8;
      sub_1E4B9B514();
      v124 = v149;
      sub_1E4BF07EC();
      if (v124)
      {
        goto LABEL_7;
      }

      (*(v165 + 8))(v52, v166);
      goto LABEL_88;
    case 9:
      v274 = 9;
      sub_1E4B9B4C0();
      v92 = v149;
      sub_1E4BF07EC();
      if (v92)
      {
        goto LABEL_7;
      }

      (*(v168 + 8))(v53, v167);
      goto LABEL_88;
    case 10:
      v274 = 10;
      sub_1E4B9B46C();
      v123 = v149;
      sub_1E4BF07EC();
      if (v123)
      {
        goto LABEL_7;
      }

      (*(v169 + 8))(v54, v170);
      goto LABEL_88;
    case 11:
      v274 = 11;
      sub_1E4B9B418();
      v86 = v234;
      v87 = v149;
      sub_1E4BF07EC();
      if (v87)
      {
        goto LABEL_7;
      }

      (*(v171 + 8))(v86, v172);
      goto LABEL_88;
    case 12:
      v274 = 12;
      sub_1E4B9B3C4();
      v90 = v235;
      v91 = v149;
      sub_1E4BF07EC();
      if (v91)
      {
        goto LABEL_7;
      }

      (*(v173 + 8))(v90, v174);
      goto LABEL_88;
    case 13:
      v274 = 13;
      sub_1E4B9B370();
      v117 = v236;
      v118 = v149;
      sub_1E4BF07EC();
      if (v118)
      {
        goto LABEL_7;
      }

      (*(v175 + 8))(v117, v176);
      goto LABEL_88;
    case 14:
      v274 = 14;
      sub_1E4B9B31C();
      v82 = v237;
      v83 = v149;
      sub_1E4BF07EC();
      if (v83)
      {
        goto LABEL_7;
      }

      (*(v177 + 8))(v82, v178);
      goto LABEL_88;
    case 15:
      v274 = 15;
      sub_1E4B9B2C8();
      v99 = v238;
      v100 = v149;
      sub_1E4BF07EC();
      if (v100)
      {
        goto LABEL_7;
      }

      (*(v179 + 8))(v99, v180);
      goto LABEL_88;
    case 16:
      v274 = 16;
      sub_1E4B9B274();
      v80 = v239;
      v81 = v149;
      sub_1E4BF07EC();
      if (v81)
      {
        goto LABEL_7;
      }

      (*(v181 + 8))(v80, v182);
      goto LABEL_88;
    case 17:
      v274 = 17;
      sub_1E4B9B220();
      v109 = v240;
      v110 = v149;
      sub_1E4BF07EC();
      if (v110)
      {
        goto LABEL_7;
      }

      (*(v183 + 8))(v109, v184);
      goto LABEL_88;
    case 18:
      v274 = 18;
      sub_1E4B9B1CC();
      v121 = v241;
      v122 = v149;
      sub_1E4BF07EC();
      if (v122)
      {
        goto LABEL_7;
      }

      (*(v185 + 8))(v121, v186);
      goto LABEL_88;
    case 19:
      v274 = 19;
      sub_1E4B9B178();
      v133 = v242;
      v134 = v149;
      sub_1E4BF07EC();
      if (v134)
      {
        goto LABEL_7;
      }

      (*(v187 + 8))(v133, v188);
      goto LABEL_88;
    case 20:
      v274 = 20;
      sub_1E4B9B124();
      v111 = v243;
      v112 = v149;
      sub_1E4BF07EC();
      if (v112)
      {
        goto LABEL_7;
      }

      (*(v189 + 8))(v111, v190);
      goto LABEL_88;
    case 21:
      v274 = 21;
      sub_1E4B9B0D0();
      v115 = v244;
      v116 = v149;
      sub_1E4BF07EC();
      if (v116)
      {
        goto LABEL_7;
      }

      (*(v191 + 8))(v115, v192);
      goto LABEL_88;
    case 22:
      v274 = 22;
      sub_1E4B9B07C();
      v129 = v245;
      v130 = v149;
      sub_1E4BF07EC();
      if (v130)
      {
        goto LABEL_7;
      }

      (*(v193 + 8))(v129, v194);
      goto LABEL_88;
    case 23:
      v274 = 23;
      sub_1E4B9B028();
      v135 = v246;
      v136 = v149;
      sub_1E4BF07EC();
      if (v136)
      {
        goto LABEL_7;
      }

      (*(v195 + 8))(v135, v196);
      goto LABEL_88;
    case 24:
      v274 = 24;
      sub_1E4B9AFD4();
      v95 = v247;
      v96 = v149;
      sub_1E4BF07EC();
      if (v96)
      {
        goto LABEL_7;
      }

      (*(v197 + 8))(v95, v198);
      goto LABEL_88;
    case 25:
      v274 = 25;
      sub_1E4B9AF80();
      v93 = v248;
      v94 = v149;
      sub_1E4BF07EC();
      if (v94)
      {
        goto LABEL_7;
      }

      (*(v199 + 8))(v93, v200);
      goto LABEL_88;
    case 26:
      v274 = 26;
      sub_1E4B9AF2C();
      v143 = v249;
      v144 = v149;
      sub_1E4BF07EC();
      if (v144)
      {
        goto LABEL_7;
      }

      (*(v201 + 8))(v143, v202);
      goto LABEL_88;
    case 27:
      v274 = 27;
      sub_1E4B9AED8();
      v76 = v250;
      v77 = v149;
      sub_1E4BF07EC();
      if (v77)
      {
        goto LABEL_7;
      }

      (*(v203 + 8))(v76, v204);
      goto LABEL_88;
    case 28:
      v274 = 28;
      sub_1E4B9AE84();
      v137 = v251;
      v138 = v149;
      sub_1E4BF07EC();
      if (v138)
      {
        goto LABEL_7;
      }

      (*(v205 + 8))(v137, v206);
      goto LABEL_88;
    case 29:
      v274 = 29;
      sub_1E4B9AE30();
      v139 = v252;
      v140 = v149;
      sub_1E4BF07EC();
      if (v140)
      {
        goto LABEL_7;
      }

      (*(v207 + 8))(v139, v208);
      goto LABEL_88;
    case 30:
      v274 = 30;
      sub_1E4B9ADDC();
      v125 = v253;
      v126 = v149;
      sub_1E4BF07EC();
      if (v126)
      {
        goto LABEL_7;
      }

      (*(v209 + 8))(v125, v210);
      goto LABEL_88;
    case 31:
      v274 = 31;
      sub_1E4B9AD88();
      v107 = v254;
      v108 = v149;
      sub_1E4BF07EC();
      if (v108)
      {
        goto LABEL_7;
      }

      (*(v211 + 8))(v107, v212);
      goto LABEL_88;
    case 32:
      v274 = 32;
      sub_1E4B9AD34();
      v127 = v255;
      v128 = v149;
      sub_1E4BF07EC();
      if (v128)
      {
        goto LABEL_7;
      }

      (*(v213 + 8))(v127, v214);
      goto LABEL_88;
    case 33:
      v274 = 33;
      sub_1E4B9ACE0();
      v84 = v256;
      v85 = v149;
      sub_1E4BF07EC();
      if (v85)
      {
        goto LABEL_7;
      }

      (*(v215 + 8))(v84, v216);
      goto LABEL_88;
    case 34:
      v274 = 34;
      sub_1E4B9AC8C();
      v78 = v257;
      v79 = v149;
      sub_1E4BF07EC();
      if (v79)
      {
        goto LABEL_7;
      }

      (*(v217 + 8))(v78, v218);
      goto LABEL_88;
    case 35:
      v274 = 35;
      sub_1E4B9AC38();
      v72 = v258;
      v73 = v149;
      sub_1E4BF07EC();
      if (v73)
      {
        goto LABEL_7;
      }

      (*(v219 + 8))(v72, v220);
      goto LABEL_88;
    case 36:
      v274 = 36;
      sub_1E4B9ABE4();
      v74 = v259;
      v75 = v149;
      sub_1E4BF07EC();
      if (v75)
      {
        goto LABEL_7;
      }

      (*(v221 + 8))(v74, v222);
      goto LABEL_88;
    case 37:
      v274 = 37;
      sub_1E4B9AB90();
      v70 = v260;
      v71 = v149;
      sub_1E4BF07EC();
      if (v71)
      {
        goto LABEL_7;
      }

      (*(v223 + 8))(v70, v224);
      goto LABEL_88;
    case 38:
      v274 = 38;
      sub_1E4B9AB3C();
      v141 = v261;
      v142 = v149;
      sub_1E4BF07EC();
      if (v142)
      {
        goto LABEL_7;
      }

      (*(v225 + 8))(v141, v226);
LABEL_88:
      (*(v268 + 8))(v58, v57);
      swift_unknownObjectRelease();
      v68 = v269;
      goto LABEL_89;
    case 39:
      v274 = 39;
      sub_1E4B9AAE8();
      v131 = v262;
      v132 = v149;
      sub_1E4BF07EC();
      if (v132)
      {
        (*(v268 + 8))(v58, v57);
        swift_unknownObjectRelease();
        v68 = v269;
      }

      else
      {
        (*(v227 + 8))(v131, v56);
        (*(v268 + 8))(v58, v57);
        swift_unknownObjectRelease();
        v68 = v269;
LABEL_89:
        *v55 = v62;
      }

      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1(v68);
}