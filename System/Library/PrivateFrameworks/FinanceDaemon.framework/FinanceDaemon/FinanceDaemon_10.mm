uint64_t sub_226BB8A78(uint64_t a1)
{
  v51 = sub_226D6B9BC();
  v3 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata(0);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_226D6EDFC();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v48 = v7;
    v60 = MEMORY[0x277D84F90];
    sub_226AE26E0(0, v8 & ~(v8 >> 63), 0);
    v55 = v60;
    if (v52)
    {
      result = sub_226D6EDAC();
    }

    else
    {
      result = sub_226D6ED6C();
      v10 = *(a1 + 36);
    }

    v57 = result;
    v58 = v10;
    v59 = v52 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v46 = v8;
      v47 = (v3 + 32);
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v12 = a1;
      }

      v44 = a1 + 56;
      v45 = v12;
      v42 = v1;
      v43 = a1 + 64;
      while (v11 < v8)
      {
        if (__OFADD__(v11++, 1))
        {
          goto LABEL_40;
        }

        v15 = v57;
        v16 = v59;
        v53 = v58;
        v17 = a1;
        sub_226CCCCEC(v57, v58, v59, a1);
        v19 = v18;
        sub_226D69D5C();
        v20 = [v19 externalAccountId];
        if (v20)
        {
          v21 = v20;
          v22 = sub_226D6E39C();
          v24 = v23;
        }

        else
        {
          v22 = 0;
          v24 = 0;
        }

        v25 = v50;
        v26 = v48;
        sub_226D69EBC();
        (*v47)(v26, v54, v51);

        v27 = (v26 + *(v25 + 20));
        *v27 = v22;
        v27[1] = v24;
        v28 = v55;
        v60 = v55;
        v30 = *(v55 + 16);
        v29 = *(v55 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_226AE26E0((v29 > 1), v30 + 1, 1);
          v26 = v48;
          v28 = v60;
        }

        *(v28 + 16) = v30 + 1;
        v31 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v55 = v28;
        result = sub_226BBC070(v26, v28 + v31 + *(v49 + 72) * v30);
        a1 = v17;
        if (v52)
        {
          if (!v16)
          {
            goto LABEL_45;
          }

          if (sub_226D6EDCC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7288, &qword_226D74970);
          v13 = sub_226D6E8CC();
          sub_226D6EE4C();
          result = v13(v56, 0);
          if (v11 == v8)
          {
LABEL_37:
            sub_226AE5444(v57, v58, v59);
            return v55;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_46;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_41;
          }

          v32 = 1 << *(v17 + 32);
          if (v15 >= v32)
          {
            goto LABEL_41;
          }

          v33 = v15 >> 6;
          v34 = *(v44 + 8 * (v15 >> 6));
          if (((v34 >> v15) & 1) == 0)
          {
            goto LABEL_42;
          }

          if (*(v17 + 36) != v53)
          {
            goto LABEL_43;
          }

          v35 = v34 & (-2 << (v15 & 0x3F));
          if (v35)
          {
            v32 = __clz(__rbit64(v35)) | v15 & 0x7FFFFFFFFFFFFFC0;
            v8 = v46;
          }

          else
          {
            v36 = v33 << 6;
            v37 = v33 + 1;
            v38 = (v43 + 8 * v33);
            v8 = v46;
            while (v37 < (v32 + 63) >> 6)
            {
              v40 = *v38++;
              v39 = v40;
              v36 += 64;
              ++v37;
              if (v40)
              {
                result = sub_226AE5444(v15, v53, 0);
                v32 = __clz(__rbit64(v39)) + v36;
                goto LABEL_36;
              }
            }

            result = sub_226AE5444(v15, v53, 0);
          }

LABEL_36:
          v41 = *(v17 + 36);
          v57 = v32;
          v58 = v41;
          v59 = 0;
          if (v11 == v8)
          {
            goto LABEL_37;
          }
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  return result;
}

uint64_t ManagedConsentDeleter.init(widgetRefresher:walletMessageUpdater:messagesManager:userDefaults:notificationCenter:deletedAccountsApplicationRemover:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_226D67F1C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a7 + 32) = 0;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  sub_226B1B848(a1, a7);
  sub_226AE532C(a2, a7 + 40);
  sub_226AE532C(a3, a7 + 80);
  sub_226AE532C(a4, a7 + 120);
  sub_226AC40E8(a5, &v24, &qword_27D7A6918, &unk_226D7BBC0);
  if (v25)
  {
    sub_226AC47B0(a5, &qword_27D7A6918, &unk_226D7BBC0);
    __swift_destroy_boxed_opaque_existential_0Tm(a4);
    __swift_destroy_boxed_opaque_existential_0Tm(a3);
    __swift_destroy_boxed_opaque_existential_0Tm(a2);
    sub_226AC47B0(a1, &qword_27D7A6910, &unk_226D721C0);
    sub_226AC484C(&v24, &v26);
  }

  else
  {
    sub_226D67E6C();
    sub_226D67F0C();
    v22 = a1;
    v23 = a6;
    (*(v15 + 8))(v17, v14);
    v18 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v19 = sub_226D6E36C();

    v20 = [v18 initWithBundleIdentifier_];

    v27 = sub_226AE59B4(0, &qword_28105F428, 0x277CE2028);
    v28 = MEMORY[0x277CC85E8];
    *&v26 = v20;
    a6 = v23;
    sub_226AC47B0(a5, &qword_27D7A6918, &unk_226D7BBC0);
    __swift_destroy_boxed_opaque_existential_0Tm(a4);
    __swift_destroy_boxed_opaque_existential_0Tm(a3);
    __swift_destroy_boxed_opaque_existential_0Tm(a2);
    sub_226AC47B0(v22, &qword_27D7A6910, &unk_226D721C0);
    if (v25)
    {
      sub_226AC47B0(&v24, &qword_27D7A6918, &unk_226D7BBC0);
    }
  }

  sub_226AC484C(&v26, a7 + 160);
  return sub_226AC484C(a6, a7 + 200);
}

Swift::Void __swiftcall ManagedConsentDeleter.postProcess(_:shouldUpdateWalletMessages:)(Swift::OpaquePointer _, Swift::Bool shouldUpdateWalletMessages)
{
  v36 = shouldUpdateWalletMessages;
  v35 = sub_226D6714C();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v33 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226D6831C();
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata(0);
  MEMORY[0x28223BE20](v49);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(_._rawValue + 2);
  if (v9)
  {
    v10 = _._rawValue + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v47 = *(v6 + 72);
    v46 = *MEMORY[0x277CC7298];
    v45 = v50 + 104;
    v44 = *MEMORY[0x277CC7278];
    v43 = *MEMORY[0x277CC7288];
    v42 = *MEMORY[0x277CC72A0];
    v41 = *MEMORY[0x277CC7280];
    v38 = (v50 + 32);
    v40 = xmmword_226D750B0;
    v37 = *MEMORY[0x277CC7290];
    v48 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      v53 = v10;
      v54 = v9;
      sub_226BBA3E0(v10, v8);
      v11 = sub_226D6B9AC();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74D8, &qword_226D756E0);
      v14 = v50;
      v15 = *(v50 + 72);
      v16 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v52 = v16 + 5 * v15;
      v17 = swift_allocObject();
      *(v17 + 16) = v40;
      v18 = (v17 + v16);
      *v18 = v11;
      v18[1] = v13;
      v19 = *(v14 + 104);
      (v19)(v18, v46, v4);
      v20 = (v18 + v15);
      *v20 = v11;
      v20[1] = v13;
      v19();
      v21 = (v18 + 2 * v15);
      *v21 = v11;
      v21[1] = v13;
      v19();
      v22 = (v18 + 3 * v15);
      *v22 = v11;
      v22[1] = v13;
      v19();
      v23 = (v18 + 4 * v15);
      v8 = v48;
      *v23 = v11;
      v23[1] = v13;
      v19();
      v24 = &v8[*(v49 + 20)];
      v25 = *(v24 + 1);
      if (v25)
      {
        v26 = v39;
        *v39 = *v24;
        v26[1] = v25;
        (v19)(v26, v37, v4);
        swift_bridgeObjectRetain_n();

        v27 = sub_226BBAC40(1, 6, 1, v17, &qword_27D7A74D8, &qword_226D756E0, MEMORY[0x277CC72A8]);
        *(v27 + 2) = 6;
        (*v38)(&v27[v52], v26, v4);
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

      __swift_project_boxed_opaque_existential_1(v51 + 10, v51[13]);
      sub_226D6AD4C();

      sub_226BBC010(v8, type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata);
      v10 = &v53[v47];
      v9 = v54 - 1;
    }

    while (v54 != 1);
  }

  sub_226AC40E8(v51, v55, &qword_27D7A6910, &unk_226D721C0);
  if (v56)
  {
    __swift_project_boxed_opaque_existential_1(v55, v56);
    v28 = v34;
    v29 = v33;
    v30 = v35;
    (*(v34 + 104))(v33, *MEMORY[0x277CC6B40], v35);
    sub_226D680BC();
    (*(v28 + 8))(v29, v30);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
  }

  else
  {
    sub_226AC47B0(v55, &qword_27D7A6910, &unk_226D721C0);
  }

  if (v36)
  {
    __swift_project_boxed_opaque_existential_1(v51 + 5, v51[8]);
    sub_226D69A5C();
  }

  v31 = v51[28];
  v32 = v51[29];
  __swift_project_boxed_opaque_existential_1(v51 + 25, v31);
  (*(v32 + 24))(v31, v32);
}

void sub_226BB9890(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v99) = a5;
  v97 = a4;
  v107 = a3;
  v100 = a6;
  v106 = type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata(0);
  v102 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_226D6D52C();
  v103 = *(v98 - 1);
  MEMORY[0x28223BE20](v98);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6B9BC();
  v96 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_226D682FC();
  v101 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6794C();
  v17 = v105;
  v18 = sub_226D6788C();
  if (!v17)
  {
    v91 = a1;
    v105 = a2;
    v93 = v13;
    v94 = v14;
    v92 = v11;
    v90 = v10;
    v95 = v16;
    if (!v18)
    {
      sub_226BBBFBC();
      swift_allocError();
      swift_willThrow();
      return;
    }

    v19 = v18;
    sub_226D6830C();
    v20 = sub_226D6790C();
    v21 = sub_226BB8A78(v20);

    v22 = [v19 institutionObject];
    v23 = [v22 termsAndConditionsObject];

    v24 = v107;
    [v107 deleteObject_];
    sub_226D6996C();
    v25 = sub_226D6991C();
    v105 = 0;
    if (v25)
    {
      v26 = v25;
      [v24 deleteObject_];
    }

    v89 = v23;
    if (v23)
    {
      v87 = sub_226D6842C();
      v27 = v23;
      v91 = sub_226D6840C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_226D71F40;
      v86 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_226D70840;
      v88 = v27;
      v30 = [v27 id];
      v31 = sub_226D6E39C();
      v33 = v32;

      *(v29 + 56) = MEMORY[0x277D837D0];
      *(v29 + 64) = sub_226B16404();
      *(v29 + 32) = v31;
      *(v29 + 40) = v33;
      *(v28 + 32) = sub_226D6E91C();
      *(v28 + 40) = sub_226D6E91C();
      v34 = sub_226D6E5CC();

      v35 = [objc_opt_self() andPredicateWithSubpredicates_];

      v36 = v91;
      [v91 setPredicate_];

      v37 = v36;
      [v36 setResultType_];
      v38 = v105;
      v39 = sub_226D6EBAC();
      if (v38)
      {
        (*(v101 + 8))(v95, v94);

        v40 = v88;

        return;
      }

      v48 = v88;
      v87 = v21;
      v105 = 0;
      v47 = v94;
      v42 = v101;
      if (v39)
      {
        v41 = 0;
      }

      else
      {
        v49 = v88;
        [v88 setReviewedAt_];
        v50 = [v49 id];
        sub_226D6E39C();

        sub_226BBA444();

        v51 = [v49 id];
        v52 = sub_226D6E39C();
        v54 = v53;

        v55 = v52;
        v37 = v91;
        v41 = sub_226BBA604(v55, v54, v24);

        v48 = v49;
      }

      v44 = v98;

      v43 = v106;
      v45 = v104;
      v46 = v99;
    }

    else
    {
      v87 = v21;
      v41 = 0;
      v42 = v101;
      v43 = v106;
      v44 = v98;
      v45 = v104;
      v46 = v99;
      v47 = v94;
    }

    v56 = v100;
    (*(v42 + 16))(v100, v95, v47);
    v57 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
    v58 = v87;
    *(v56 + *(v57 + 20)) = v87;
    *(v56 + *(v57 + 24)) = v41 & 1;
    v85 = v19;
    if ((v46 & 1) != 0 && (v99 = *(v58 + 16)) != 0)
    {
      v59 = 0;
      v60 = (v96 + 16);
      v98 = (v96 + 8);
      v61 = v93;
      while (v59 < *(v58 + 16))
      {
        v62 = v58;
        v63 = v58 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v59;
        sub_226D68E6C();
        v64 = v92;
        (*v60)(v61, v63, v92);
        v65 = v105;
        v66 = sub_226D68E2C();
        v105 = v65;
        if (v65)
        {

          (*v98)(v61, v64);
          (*(v101 + 8))(v95, v94);
          sub_226BBC010(v100, type metadata accessor for ManagedConsentDeleter.Metadata);
          return;
        }

        v67 = v66;
        (*v98)(v61, v64);
        v43 = v106;
        if (v67)
        {
          [v107 deleteObject_];
        }

        ++v59;
        v61 = v93;
        v58 = v62;
        if (v99 == v59)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_23:
      sub_226AE532C((v97 + 25), v108);
      v68 = v109;
      v69 = v110;
      v70 = __swift_project_boxed_opaque_existential_1(v108, v109);
      v71 = v58;
      v72 = *(v58 + 16);
      v73 = MEMORY[0x277D84F90];
      if (v72)
      {
        v97 = v70;
        v98 = v69;
        v99 = v68;
        v111 = MEMORY[0x277D84F90];
        sub_226AE20D4(0, v72, 0);
        v73 = v111;
        v74 = v71 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
        v102 = *(v102 + 72);
        v75 = (v103 + 16);
        v76 = v90;
        do
        {
          sub_226BBA3E0(v74, v45);
          (*v75)(v76, v45 + *(v43 + 24), v44);
          sub_226BBC010(v45, type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata);
          v111 = v73;
          v77 = v44;
          v79 = *(v73 + 16);
          v78 = *(v73 + 24);
          if (v79 >= v78 >> 1)
          {
            sub_226AE20D4((v78 > 1), v79 + 1, 1);
            v73 = v111;
          }

          *(v73 + 16) = v79 + 1;
          (*(v103 + 32))(v73 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v79, v76, v77);
          v74 += v102;
          --v72;
          v43 = v106;
          v44 = v77;
          v45 = v104;
        }

        while (v72);
        v69 = v98;
        v68 = v99;
      }

      v80 = sub_226AE45DC(v73);

      v81 = v105;
      (v69[2])(v80, v107, v68, v69);
      v82 = v100;
      v83 = v85;
      (*(v101 + 8))(v95, v94);

      if (v81)
      {

        sub_226BBC010(v82, type metadata accessor for ManagedConsentDeleter.Metadata);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v108);
    }
  }
}

uint64_t sub_226BBA3E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BBA444()
{
  v1 = v0;
  v2 = sub_226D6C98C();
  v4 = v3;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);

  v6 = sub_226D6E05C();
  v7 = sub_226D6E9EC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_226AC4530(v2, v4, &v12);
    _os_log_impl(&dword_226AB4000, v6, v7, "Removing outstanding T&Cs notification with ID: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v1 + 160), *(v1 + 184));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_226D70840;
  *(v10 + 32) = v2;
  *(v10 + 40) = v4;
  sub_226D6A00C();
}

uint64_t sub_226BBA604(uint64_t a1, uint64_t a2, void *a3)
{
  sub_226D691CC();
  result = sub_226D6915C();
  if (result)
  {
    v5 = result;
    [a3 deleteObject_];

    return 1;
  }

  return result;
}

uint64_t ManagedConsentDeleter.ConsentDeletingError.hashValue.getter()
{
  sub_226D6F2FC();
  MEMORY[0x22AA8B3B0](0);
  return sub_226D6F35C();
}

uint64_t ManagedConsentDeleter.Metadata.deletedConsent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_226D682FC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ManagedConsentDeleter.Metadata.deletedConsent.setter(uint64_t a1)
{
  v3 = sub_226D682FC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

double ManagedConsentDeleter.Metadata.grantedAccountsMetadata.getter()
{
  type metadata accessor for ManagedConsentDeleter.Metadata(0);

  return result;
}

uint64_t ManagedConsentDeleter.Metadata.grantedAccountsMetadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ManagedConsentDeleter.Metadata(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ManagedConsentDeleter.Metadata.deletedWalletMessages.setter(char a1)
{
  result = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

char *sub_226BBAB0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_226BBAC40(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_226BBAE6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68A0, &unk_226D75900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_226BBAF90(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A78C0, &qword_226D758F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A78C8, &qword_226D758F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_226BBB0C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A78A8, &qword_226D758C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_226BBB294()
{
  result = qword_27D7A7858;
  if (!qword_27D7A7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7858);
  }

  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_226BBB32C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226BBB374(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
      *(result + 240) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_226BBB438(uint64_t a1)
{
  sub_226D682FC();
  if (v1 <= 0x3F)
  {
    sub_226BBB4C4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_226BBB4C4(uint64_t a1)
{
  if (!qword_27D7A7870)
  {
    type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata(255);
    v1 = sub_226D6E6AC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7A7870);
    }
  }
}

void sub_226BBB544(uint64_t a1)
{
  sub_226D6B9BC();
  if (v1 <= 0x3F)
  {
    sub_226BBB5E0();
    if (v2 <= 0x3F)
    {
      sub_226D6D52C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_226BBB5E0()
{
  if (!qword_28105F548)
  {
    v0 = sub_226D6EC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_28105F548);
    }
  }
}

char *sub_226BBB7A4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_226BBBA44(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7900, &unk_226D75958);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_226BBBBA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A78F0, &qword_226D75938);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_226BBBCC8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
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

void *sub_226BBBE88(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A78B8, &qword_226D758D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F78, &unk_226D758E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_226BBBFBC()
{
  result = qword_27D7A7938;
  if (!qword_27D7A7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7938);
  }

  return result;
}

uint64_t sub_226BBC010(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226BBC070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_226BBC0D4(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v120 = a5;
  v112 = a3;
  v110 = a4;
  v111 = a2;
  v121 = a1;
  v106 = a6;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7798, &unk_226D75570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v97 - v7;
  v9 = sub_226D6E00C();
  v101 = *(v9 - 8);
  v102 = v9;
  MEMORY[0x28223BE20](v9);
  v98 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v99 = &v97 - v12;
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult(0);
  MEMORY[0x28223BE20](updated);
  v109 = (&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_226D6B49C();
  v117 = *(v14 - 8);
  v118 = v14;
  MEMORY[0x28223BE20](v14);
  v116 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_226D67CEC();
  v114 = *(v16 - 8);
  v115 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_226D6DFCC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v103 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v105 = &v97 - v23;
  MEMORY[0x28223BE20](v24);
  v104 = &v97 - v25;
  MEMORY[0x28223BE20](v26);
  v108 = &v97 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v97 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v97 - v32;
  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v34 = sub_226D6DFFC();
  v35 = __swift_project_value_buffer(v34, qword_281064510);
  sub_226D6DFBC();
  v113 = v35;
  v36 = sub_226D6DFDC();
  v37 = sub_226D6EABC();
  v38 = sub_226D6EC8C();
  v107 = v8;
  if (v38)
  {
    v39 = v20;
    v40 = v19;
    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = sub_226D6DFAC();
    _os_signpost_emit_with_name_impl(&dword_226AB4000, v36, v37, v42, "InsertOrUpdateOrder", "", v41, 2u);
    v43 = v41;
    v19 = v40;
    v20 = v39;
    MEMORY[0x22AA8BEE0](v43, -1, -1);
  }

  (*(v20 + 16))(v30, v33, v19);
  sub_226D6E03C();
  swift_allocObject();
  v44 = sub_226D6E02C();
  v47 = *(v20 + 8);
  v46 = v20 + 8;
  v45 = v47;
  v47(v33, v19);
  v48 = v19;
  sub_226D6751C();
  sub_226D6726C();
  v49 = v116;
  sub_226D67C4C();
  (*(v114 + 8))(v18, v115);
  v50 = v119;
  v51 = v120;
  v52 = sub_226D6745C();
  if (v50)
  {
    (*(v117 + 8))(v49, v118);
  }

  else
  {
    v53 = v52;
    v54 = v45;
    v115 = v44;
    v119 = v48;
    (*(v117 + 8))(v49, v118);
    if (v53)
    {
      v55 = v53;
      v56 = v108;
      sub_226D6DFBC();
      v57 = sub_226D6DFDC();
      v58 = sub_226D6EACC();
      if (sub_226D6EC8C())
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        v60 = sub_226D6DFAC();
        _os_signpost_emit_with_name_impl(&dword_226AB4000, v57, v58, v60, "InsertOrUpdateOrder", "Update", v59, 2u);
        MEMORY[0x22AA8BEE0](v59, -1, -1);
      }

      v54(v56, v119);
      v61 = v109;
      sub_226BBCB6C(v55, v121, v111, v112, v110 & 0x1010101, v120, v109);

      v68 = sub_226D6DFDC();
      v69 = v104;
      sub_226D6E01C();
      LODWORD(v121) = sub_226D6EAAC();
      if (sub_226D6EC8C())
      {

        v70 = v99;
        sub_226D6E04C();
        v71 = v70;

        v72 = v101;
        v73 = v70;
        v74 = v102;
        if ((*(v101 + 88))(v73, v102) == *MEMORY[0x277D85B00])
        {
          v75 = "[Error] Interval already ended";
        }

        else
        {
          (*(v72 + 8))(v71, v74);
          v75 = "";
        }

        v86 = swift_slowAlloc();
        *v86 = 0;
        v69 = v104;
        v87 = sub_226D6DFAC();
        _os_signpost_emit_with_name_impl(&dword_226AB4000, v68, v121, v87, "InsertOrUpdateOrder", v75, v86, 2u);
        MEMORY[0x22AA8BEE0](v86, -1, -1);
        v61 = v109;
      }

      v54(v69, v119);
      sub_226BBF058(v61, v106);
    }

    else
    {
      v62 = v105;
      sub_226D6DFBC();
      v63 = sub_226D6DFDC();
      v64 = sub_226D6EACC();
      if (sub_226D6EC8C())
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        v66 = sub_226D6DFAC();
        _os_signpost_emit_with_name_impl(&dword_226AB4000, v63, v64, v66, "InsertOrUpdateOrder", "Insert", v65, 2u);
        v67 = v65;
        v51 = v120;
        MEMORY[0x22AA8BEE0](v67, -1, -1);
      }

      v45(v62, v119);
      v76 = sub_226BBE008(v107, v121, v111, v112, v110 & 0x1010101, v51);
      v78 = v77;
      v79 = v45;
      v80 = sub_226D6DFDC();
      v81 = v103;
      sub_226D6E01C();
      LODWORD(v121) = sub_226D6EAAC();
      if (sub_226D6EC8C())
      {

        v82 = v98;
        sub_226D6E04C();

        v84 = v101;
        v83 = v102;
        v85 = (*(v101 + 88))(v82, v102) == *MEMORY[0x277D85B00];
        v97 = v46;
        if (v85)
        {
          v88 = "[Error] Interval already ended";
        }

        else
        {
          (*(v84 + 8))(v82, v83);
          v88 = "";
        }

        v89 = swift_slowAlloc();
        *v89 = 0;
        v81 = v103;
        v90 = sub_226D6DFAC();
        _os_signpost_emit_with_name_impl(&dword_226AB4000, v80, v121, v90, "InsertOrUpdateOrder", v88, v89, 2u);
        MEMORY[0x22AA8BEE0](v89, -1, -1);
      }

      v79(v81, v119);
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
      v92 = *(v91 + 48);
      v93 = *(v91 + 64);
      v95 = v106;
      v94 = v107;
      v96 = v106 + v93;
      *v106 = v76;
      sub_226BBEFE8(v94, v95 + v92);
      *v96 = v78 & 1;
      v96[1] = BYTE1(v78) & 1;
      v96[2] = BYTE2(v78) & 1;
      v96[3] = HIBYTE(v78) & 1;
      swift_storeEnumTagMultiPayload();
    }
  }
}

id sub_226BBCB6C@<X0>(void *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unsigned int a5@<W4>, void *a6@<X5>, void *a7@<X8>)
{
  v167 = a6;
  v154 = a4;
  v153 = a3;
  v183 = a1;
  v158 = a7;
  v157 = a5 & 0x100;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v9 - 8);
  v159 = &v150 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  MEMORY[0x28223BE20](v11 - 8);
  v156 = &v150 - v12;
  v161 = sub_226D6D1AC();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v151 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_226D675EC();
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v155 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226D6A58C();
  v173 = *(v15 - 8);
  v174 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v172 = &v150 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7798, &unk_226D75570);
  MEMORY[0x28223BE20](v20 - 8);
  v165 = &v150 - v21;
  v171 = sub_226D68F4C();
  v179 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v162 = (&v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v152 = (&v150 - v24);
  MEMORY[0x28223BE20](v25);
  v27 = &v150 - v26;
  v175 = sub_226D6D4AC();
  v170 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v166 = &v150 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v150 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v150 - v33;
  v35 = sub_226D67CEC();
  v177 = *(v35 - 8);
  v178 = v35;
  MEMORY[0x28223BE20](v35);
  v150 = &v150 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v150 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v150 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v150 - v44;
  v168 = a2;
  sub_226D6726C();
  v181 = v45;
  v169 = a5;
  if ((a5 & 0x10000) == 0)
  {
    sub_226D67CDC();
    sub_226D6749C();
    sub_226D68F2C();
    (*(v179 + 8))(v27, v171);
    if (sub_226D6ACFC())
    {
      sub_226BBF204();
      v46 = v175;
      v47 = sub_226D6E33C();
    }

    else
    {
      v47 = sub_226D6D3FC();
      v46 = v175;
    }

    v48 = *(v170 + 8);
    v48(v31, v46);
    v48(v34, v46);
    v49 = v169;
    v45 = v181;
    if ((v47 & 1) == 0)
    {
      if (qword_28105F5B8 != -1)
      {
        swift_once();
      }

      LODWORD(v179) = v49 & 0x1000000;
      v82 = sub_226D6E07C();
      __swift_project_value_buffer(v82, qword_28105F5C0);
      v83 = v177;
      v84 = v178;
      v85 = *(v177 + 16);
      v86 = v181;
      v85(v39, v181, v178);
      v87 = v150;
      v85(v150, v86, v84);
      v88 = sub_226D6E05C();
      v89 = sub_226D6E9CC();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        *&v182[0] = v176;
        *v90 = 136315394;
        LODWORD(v175) = v89;
        v91 = sub_226D67CBC();
        v93 = v92;
        v94 = *(v83 + 8);
        v94(v39, v84);
        v95 = sub_226AC4530(v91, v93, v182);

        *(v90 + 4) = v95;
        *(v90 + 12) = 2080;
        v96 = sub_226D67C9C();
        v98 = v97;
        v94(v87, v84);
        v99 = sub_226AC4530(v96, v98, v182);

        *(v90 + 14) = v99;
        _os_log_impl(&dword_226AB4000, v88, v175, "Existing order with orderTypeIdentifier=%s and orderIdentifier=%s is newer, cannot update", v90, 0x16u);
        v100 = v176;
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v100, -1, -1);
        MEMORY[0x22AA8BEE0](v90, -1, -1);

        v94(v181, v84);
      }

      else
      {

        v120 = *(v83 + 8);
        v120(v87, v84);
        v120(v39, v84);
        v120(v181, v84);
      }

      v109 = v183;
      v121 = v158;
      *v158 = v183;
      v121[8] = v49 & 1;
      v121[9] = BYTE1(v157);
      v121[10] = 0;
      v121[11] = BYTE3(v179);
LABEL_34:
      type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult(0);
      swift_storeEnumTagMultiPayload();
      return v109;
    }
  }

  v50 = v177;
  v51 = v178;
  (*(v177 + 16))(v42, v45, v178);
  if ((*(v50 + 88))(v42, v51) == *MEMORY[0x277CC6FA8])
  {
    (*(v50 + 96))(v42, v51);
    v53 = v172;
    v52 = v173;
    v54 = v42;
    v55 = v174;
    (*(v173 + 32))(v172, v54, v174);
    sub_226D6B2AC();
    (*(v52 + 16))(v17, v53, v55);
    sub_226AC40E8(v176 + 32, v182, &qword_27D7A7790, &unk_226D79770);

    v56 = v167;
    v57 = v180;
    v58 = sub_226D6B2BC();
    if (v57)
    {
      (*(v52 + 8))(v53, v55);
      return (*(v50 + 8))(v181, v51);
    }

    v60 = v58;
    v180 = 0;
    sub_226D67F9C();
    v61 = v56;
    sub_226B11B44(v153, v154);
    v62 = sub_226D67F8C();
    [v60 setOrderData_];

    v63 = v152;
    sub_226D6749C();
    v64 = v179;
    v65 = v171;
    v66 = (*(v179 + 88))(v63, v171);
    if (v66 != *MEMORY[0x277CC76A8])
    {
      *&v182[0] = 0;
      *(&v182[0] + 1) = 0xE000000000000000;
      sub_226D6EEFC();
      MEMORY[0x22AA8A510](0xD000000000000018, 0x8000000226D82370);
      sub_226D6EFBC();
      goto LABEL_46;
    }

    v67 = v66;
    (*(v64 + 96))(v63, v65);
    v68 = *v63;
    v69 = v60;
    v70 = v155;
    sub_226D675DC();
    [v61 deleteObject_];

    v71 = v163;
    v72 = v165;
    v73 = v164;
    (*(v163 + 16))(v165, v70, v164);
    (*(v71 + 56))(v72, 0, 1, v73);
    v74 = v162;
    *v162 = v69;
    (*(v64 + 104))(v74, v67, v65);
    v75 = v69;
    v76 = v61;
    v77 = v166;
    sub_226D6D46C();
    sub_226D6741C();
    v78 = v65;
    v79 = v170 + 8;
    v168 = *(v170 + 8);
    v168(v77, v175);
    v80 = *(v64 + 8);
    v179 = v64 + 8;
    v167 = v80;
    (v80)(v74, v78);
    v176 = v76;
    v154 = v79;
    v81 = v183;
    if (v169)
    {
      LODWORD(v153) = sub_226BCA084(v183, v75, v70, v76);
    }

    else
    {
      LODWORD(v153) = HIBYTE(v169) & 1;
    }

    v101 = v181;
    v102 = v159;
    v103 = v161;
    v104 = v156;
    v105 = v173;

    (*(v163 + 8))(v70, v164);
    (*(v105 + 8))(v172, v174);
    sub_226D67C8C();
    v106 = v160;
    v107 = (*(v160 + 48))(v104, 1, v103);
    v108 = v180;
    if (v107 == 1)
    {
      sub_226AC47B0(v104, &unk_27D7A62F8, &unk_226D73B70);
      v109 = v81;
LABEL_26:
      [v109 setOrderWebService_];
      [v109 setAuthenticationToken_];
      v122 = [v109 orderRegistration];
      v119 = v168;
      v123 = v108;
      if (v122)
      {
        v124 = v122;
        v125 = [v109 orderContentModificationDate];
        v126 = v166;
        sub_226D6D45C();

        v127 = sub_226D6D3EC();
        v119(v126, v175);
        [v124 setCancellationDate_];
      }

      [v109 setOrderRegistration_];
      goto LABEL_29;
    }

    v110 = v104;
    v111 = v151;
    (*(v106 + 32))(v151, v110, v103);
    v112 = sub_226D67CAC();
    v109 = v81;
    if (!v113)
    {
      (*(v106 + 8))(v111, v103);
      v102 = v159;
      goto LABEL_26;
    }

    v174 = v112;
    v114 = [v81 orderWebService];
    v115 = [v109 orderType];
    if (v115)
    {
      v116 = v115;
      sub_226D69F6C();
      v117 = v151;
      v118 = sub_226D69F3C();
      v119 = v168;
      if (v108)
      {

        (*(v160 + 8))(v117, v161);
        sub_226AC47B0(v165, &qword_27D7A7798, &unk_226D75570);
        return (*(v177 + 8))(v181, v178);
      }

      v139 = v118;

      v140 = v139;
      v141 = v183;
      [v183 setOrderWebService_];
      v142 = sub_226D6E36C();

      [v141 setAuthenticationToken_];

      if (v114)
      {
        v143 = v114;
        v144 = sub_226D6EC3C();

        v123 = 0;
        if (v144)
        {
          v114 = v140;
          v109 = v183;
LABEL_42:

          (*(v160 + 8))(v151, v161);
          v101 = v181;
          v102 = v159;
LABEL_29:
          [v109 setLastModifiedValue_];
          sub_226D67CCC();
          v128 = v175;
          v129 = 0;
          if ((*(v170 + 48))(v102, 1, v175) != 1)
          {
            v129 = sub_226D6D3EC();
            v119(v102, v128);
          }

          [v109 setAutomaticUpdatesEnabledUntilDate_];

          v130 = v162;
          sub_226D6749C();
          v131 = v166;
          sub_226D68F1C();
          (v167)(v130, v171);
          v132 = sub_226D6D3EC();
          v119(v131, v128);
          [v109 setArchiveDate_];

          memset(v182, 0, sizeof(v182));
          sub_226B42C34(v109, v176);
          if (v123)
          {
            sub_226AFD62C(v182);
            sub_226AC47B0(v165, &qword_27D7A7798, &unk_226D75570);
            return (*(v177 + 8))(v101, v178);
          }

          v133 = v169;
          v134 = BYTE2(v169) & 1;
          sub_226AFD62C(v182);
          (*(v177 + 8))(v101, v178);
          v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
          v136 = *(v135 + 48);
          v137 = v158;
          v138 = v158 + *(v135 + 64);
          *v158 = v109;
          sub_226BBEFE8(v165, v137 + v136);
          *v138 = v133 & 1;
          v138[1] = BYTE1(v157);
          v138[2] = v134;
          v138[3] = v153 & 1;
          goto LABEL_34;
        }
      }

      else
      {

        v123 = 0;
      }

      v109 = v183;
      v145 = [v183 orderRegistration];
      if (v145)
      {
        v146 = v145;
        v147 = [v109 orderContentModificationDate];
        v148 = v166;
        sub_226D6D45C();

        v149 = sub_226D6D3EC();
        v119(v148, v175);
        [v146 setCancellationDate_];
      }

      [v109 setOrderRegistration_];
      v143 = v140;
      goto LABEL_42;
    }

    __break(1u);
  }

  *&v182[0] = 0;
  *(&v182[0] + 1) = 0xE000000000000000;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD00000000000002BLL, 0x8000000226D82340);
  sub_226D6EFBC();
LABEL_46:
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

char *sub_226BBE008(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5, void *a6)
{
  v101 = a5;
  v98 = a4;
  v97 = a3;
  v102 = a1;
  v119 = sub_226D6D4AC();
  v121 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v107 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_226D68F4C();
  v100 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v115 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_226D675EC();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v99 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6A58C();
  v113 = *(v11 - 8);
  v114 = v11;
  MEMORY[0x28223BE20](v11);
  v108 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v112 = &v92 - v14;
  v15 = sub_226D6D1AC();
  v117 = *(v15 - 1);
  v118 = v15;
  MEMORY[0x28223BE20](v15);
  v103 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  MEMORY[0x28223BE20](v17 - 8);
  v111 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v92 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v21 - 8);
  v110 = &v92 - v22;
  v23 = sub_226D67CEC();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v92 - v28;
  v116 = a2;
  sub_226D6726C();
  sub_226D6751C();
  v30 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  sub_226D67FDC();
  sub_226D67CBC();
  v31 = v123;
  v32 = sub_226D67FCC();
  if (v31)
  {
    (*(v24 + 8))(v29, v23);

    return v29;
  }

  v33 = v32;
  v94 = 0;
  v92 = v26;
  v123 = a6;
  v95 = v24;
  v96 = v23;

  v93 = v33;
  [v30 setOrderType_];
  sub_226D67CBC();
  v34 = sub_226D6E36C();

  [v30 setOrderTypeIdentifier_];

  sub_226D67C9C();
  v35 = sub_226D6E36C();

  [v30 setOrderIdentifier_];

  v36 = v110;
  sub_226D67CCC();
  v37 = v121;
  v38 = v119;
  v39 = v30;
  if ((*(v121 + 48))(v36, 1, v119) == 1)
  {
    v40 = 0;
  }

  else
  {
    v41 = v37;
    v40 = sub_226D6D3EC();
    (*(v41 + 8))(v36, v38);
  }

  v42 = v120;
  v43 = v117;
  v44 = v111;
  [v30 setAutomaticUpdatesEnabledUntilDate_];

  sub_226D67C8C();
  v111 = sub_226D67CAC();
  v46 = v45;
  sub_226AC40E8(v42, v44, &unk_27D7A62F8, &unk_226D73B70);
  v47 = v118;
  if ((*(v43 + 6))(v44, 1, v118) == 1)
  {
    sub_226AC47B0(v44, &unk_27D7A62F8, &unk_226D73B70);
LABEL_12:
    v53 = v96;
    goto LABEL_13;
  }

  v48 = v44;
  v49 = v103;
  (*(v43 + 4))(v103, v48, v47);
  if (!v46)
  {
    (*(v43 + 1))(v49, v47);
    goto LABEL_12;
  }

  sub_226D69F6C();

  v50 = v93;
  v51 = v94;
  v52 = sub_226D69F3C();
  v53 = v96;
  if (v51)
  {

    swift_bridgeObjectRelease_n();
    (*(v117 + 1))(v49, v118);
    sub_226AC47B0(v42, &unk_27D7A62F8, &unk_226D73B70);
    (*(v95 + 8))(v29, v53);
    return v29;
  }

  v90 = v52;
  v94 = 0;
  [v39 setOrderWebService_];

  v91 = sub_226D6E36C();

  [v39 setAuthenticationToken_];

  (*(v117 + 1))(v49, v118);
LABEL_13:
  v118 = v39;
  v54 = v95;
  v55 = *(v95 + 16);
  v56 = v92;
  v117 = v29;
  v55(v92, v29, v53);
  v57 = (*(v54 + 88))(v56, v53);
  v58 = v112;
  if (v57 == *MEMORY[0x277CC6FA8])
  {

    (*(v54 + 96))(v56, v53);
    v59 = v113;
    v60 = v56;
    v61 = v114;
    (*(v113 + 32))(v58, v60, v114);
    sub_226D6B2AC();
    (*(v59 + 16))(v108, v58, v61);
    sub_226AC40E8(v109 + 32, v122, &qword_27D7A7790, &unk_226D79770);

    v62 = v123;
    v63 = v94;
    v64 = sub_226D6B2BC();
    v65 = v115;
    if (v63)
    {

      v66 = *(v59 + 8);
      v29 = (v59 + 8);
      v66(v58, v61);
      sub_226AC47B0(v120, &unk_27D7A62F8, &unk_226D73B70);
      (*(v54 + 8))(v117, v53);
    }

    else
    {
      v67 = v64;
      sub_226D67F9C();
      v68 = v62;
      sub_226B11B44(v97, v98);
      v123 = v68;
      v69 = sub_226D67F8C();
      [v67 setOrderData_];

      v70 = v67;
      v71 = v99;
      sub_226D675DC();
      v72 = v104;
      v73 = v102;
      v74 = v105;
      (*(v104 + 16))(v102, v71, v105);
      (*(v72 + 56))(v73, 0, 1, v74);
      *v65 = v70;
      v75 = v65;
      v76 = v100;
      v77 = v106;
      (*(v100 + 104))(v75, *MEMORY[0x277CC76A8], v106);
      v78 = v70;
      v29 = v118;
      v79 = [v118 creationDate];
      v80 = v107;
      sub_226D6D45C();

      sub_226D6741C();
      v81 = v77;
      v82 = *(v121 + 8);
      v121 += 8;
      v82(v80, v119);
      v83 = *(v76 + 8);
      v83(v75, v81);
      if (v101)
      {
        LODWORD(v116) = sub_226BCA084(v29, v78, v71, v123);
      }

      else
      {
        LODWORD(v116) = HIBYTE(v101) & 1;
      }

      v85 = v113;
      v84 = v114;

      (*(v104 + 8))(v71, v105);
      (*(v85 + 8))(v112, v84);
      [v29 setLastModifiedValue_];
      v86 = v115;
      sub_226D6749C();
      v87 = v107;
      sub_226D68F1C();
      v83(v86, v106);
      v88 = sub_226D6D3EC();
      v82(v87, v119);
      [v29 setArchiveDate_];

      memset(v122, 0, sizeof(v122));
      sub_226B42C34(v29, v123);

      sub_226AFD62C(v122);
      sub_226AC47B0(v120, &unk_27D7A62F8, &unk_226D73B70);
      (*(v95 + 8))(v117, v96);
    }

    return v29;
  }

  *&v122[0] = 0;
  *(&v122[0] + 1) = 0xE000000000000000;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000018, 0x8000000226D82370);
  sub_226D6EFBC();
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226BBEE64()
{
  sub_226AC47B0((v0 + 4), &qword_27D7A7790, &unk_226D79770);
  sub_226AC47B0((v0 + 9), &qword_27D7A6910, &unk_226D721C0);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  sub_226AC47B0((v0 + 19), &qword_27D7A6FA0, &qword_226D79780);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 29);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 34);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult(uint64_t a1)
{
  result = qword_27D7A7948;
  if (!qword_27D7A7948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226BBEFE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7798, &unk_226D75570);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BBF058(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_226BBF0BC(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = a10;
  v28 = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v26);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a6, a10);
  v20 = swift_allocObject();
  *(v20 + 312) = 0xD000000000000018;
  *(v20 + 320) = 0x8000000226D81BA0;
  sub_226AC484C(a1, v20 + 232);
  sub_226AC484C(a2, v20 + 272);
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v21 = *(a5 + 16);
  *(v20 + 72) = *a5;
  *(v20 + 88) = v21;
  *(v20 + 104) = *(a5 + 32);
  sub_226AC484C(&v26, v20 + 112);
  v22 = *(a7 + 16);
  *(v20 + 32) = *a7;
  *(v20 + 48) = v22;
  v23 = *a8;
  *(v20 + 168) = a8[1];
  v24 = a8[3];
  *(v20 + 184) = a8[2];
  *(v20 + 200) = v24;
  *(v20 + 216) = a8[4];
  *(v20 + 64) = *(a7 + 32);
  *(v20 + 152) = v23;
  return v20;
}

unint64_t sub_226BBF204()
{
  result = qword_27D7A66D8;
  if (!qword_27D7A66D8)
  {
    sub_226D6D4AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A66D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManagedOrderImporter.Options(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedOrderImporter.Options(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_226BBF30C(uint64_t a1)
{
  sub_226BBF380(319);
  if (v1 <= 0x3F)
  {
    sub_226BBF404(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_226BBF380(uint64_t a1)
{
  if (!qword_27D7A7958)
  {
    sub_226D6751C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A7798, &unk_226D75570);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D7A7958);
    }
  }
}

void sub_226BBF404(uint64_t a1)
{
  if (!qword_27D7A7960)
  {
    sub_226D6751C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D7A7960);
    }
  }
}

uint64_t sub_226BBF46C()
{
  v1 = *(v0 + 8);
  sub_226D6F2FC();
  if (v1)
  {
    MEMORY[0x22AA8B3B0](1);
    sub_226D6E42C();
    sub_226D6E42C();
  }

  else
  {
    MEMORY[0x22AA8B3B0](0);
  }

  return sub_226D6F35C();
}

uint64_t sub_226BBF4F8(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x22AA8B3B0](0);
  }

  MEMORY[0x22AA8B3B0](1);
  sub_226D6E42C();

  return sub_226D6E42C();
}

uint64_t sub_226BBF590(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_226D6F2FC();
  if (v2)
  {
    MEMORY[0x22AA8B3B0](1);
    sub_226D6E42C();
    sub_226D6E42C();
  }

  else
  {
    MEMORY[0x22AA8B3B0](0);
  }

  return sub_226D6F35C();
}

uint64_t sub_226BBF618(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = a2[2];
  v8 = a2[3];
  v9 = *a1 == *a2 && v3 == v4;
  if (v9 || (v10 = sub_226D6F21C(), result = 0, (v10 & 1) != 0))
  {
    if (v5 != v7 || v6 != v8)
    {

      return sub_226D6F21C();
    }

    return 1;
  }

  return result;
}

uint64_t sub_226BBF6E8@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a3@<X3>, void *a4@<X5>, _BYTE *a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66D0, &unk_226D75B80);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  MEMORY[0x28223BE20](v20);
  v24 = &v37 - v23;
  if (v22)
  {
    return sub_226BBFAE0(a1, v22, a2, a3, a4, a5);
  }

  v26 = v5;
  v27 = v21;
  sub_226D69D0C();
  v28 = sub_226BDD96C(v13, a4);
  v37 = *(v27 + 48);
  v38 = v28;
  sub_226AFD80C(v13, &v24[v37], &qword_27D7A8BE0, &unk_226D718F0);
  v29 = *(v27 + 48);
  v30 = v5[10];
  v31 = v26[11];
  v32 = __swift_project_boxed_opaque_existential_1(v26 + 7, v26[10]);
  v39[3] = v30;
  v39[4] = *(v31 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  (*(*(v30 - 8) + 16))(boxed_opaque_existential_1, v32, v30);
  LOBYTE(v30) = sub_226B5A79C(&v19[v29]);
  sub_226AFD7B8(v39);
  LOBYTE(v31) = v30 & 1;
  *v19 = v30 & 1;
  v34 = type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata(0);
  sub_226AFD80C(&v24[v37], &a5[v34[5]], &qword_27D7A8BE0, &unk_226D718F0);
  sub_226AFD80C(v19, v16, &qword_27D7A66D0, &unk_226D75B80);
  v35 = *(v27 + 48);
  *a5 = v38 & 1;
  a5[v34[6]] = v31;
  sub_226AFD80C(&v16[v35], &a5[v34[7]], &qword_27D7A8BE0, &unk_226D718F0);
  v36 = type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v36 - 8) + 56))(a5, 0, 1, v36);
}

uint64_t sub_226BBFAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v113 = a5;
  v112 = a4;
  v115 = a6;
  v105 = type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata(0);
  MEMORY[0x28223BE20](v105);
  v107 = v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A08, &qword_226D72540);
  MEMORY[0x28223BE20](v10 - 8);
  v103 = v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v102 = v94 - v13;
  MEMORY[0x28223BE20](v14);
  v109 = v94 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v16 - 8);
  v100 = v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v104 = v94 - v19;
  MEMORY[0x28223BE20](v20);
  v108 = v94 - v21;
  MEMORY[0x28223BE20](v22);
  v101 = v94 - v23;
  MEMORY[0x28223BE20](v24);
  v106 = v94 - v25;
  v26 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus(0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v94 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = v94 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
  inited = swift_initStackObject();
  v110 = xmmword_226D70840;
  *(inited + 16) = xmmword_226D70840;
  v111 = a1;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v114 = a2;

  v37 = sub_226B1EC00(inited);
  swift_setDeallocating();
  sub_226BC751C(inited + 32);
  v38 = a3;
  v39 = a3;
  v40 = v112;
  v41 = v113;
  sub_226BDF504(v37, v39, v112, v113);
  v99 = v31;
  v97 = v28;
  v98 = v34;

  sub_226D6990C();
  v42 = v40;
  v96 = sub_226D6985C();

  sub_226D6B1CC();
  v43 = v111;
  v44 = v114;
  v45 = sub_226D6B18C();
  if (v45 | v96)
  {
    v95 = v45;
    v94[2] = sub_226D69D0C();
    v94[1] = v35;
    v55 = swift_initStackObject();
    v56 = v43;
    v57 = v55;
    *(v55 + 16) = v110;
    *(v55 + 32) = v56;
    v58 = v55 + 32;
    *(v55 + 40) = v44;

    v59 = sub_226B1EC00(v57);
    swift_setDeallocating();
    sub_226BC751C(v58);
    v60 = v99;
    v61 = v59;
    v62 = v41;
    sub_226BDBB64(v61, v38, v42, v41, v99);

    sub_226BC5B18(v60, v98, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
    v63 = swift_initStackObject();
    *(v63 + 16) = v110;
    *(v63 + 32) = v111;
    *(v63 + 40) = v44;

    v64 = sub_226B1EC00(v63);
    swift_setDeallocating();
    sub_226BC751C(v63 + 32);
    v65 = v109;
    sub_226BDCB08(v64, v38, v42, v62, v109);

    v66 = v102;
    sub_226AC40E8(v65, v102, &qword_27D7A6A08, &qword_226D72540);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A00, &qword_226D72538);
    v68 = *(*(v67 - 8) + 48);
    if (v68(v66, 1, v67) == 1)
    {
      sub_226AC47B0(v66, &qword_27D7A6A08, &qword_226D72540);
      LODWORD(v114) = 0;
    }

    else
    {
      LODWORD(v114) = *v66;
      v69 = *(v67 + 48);
      v70 = sub_226D6D4AC();
      v71 = &v66[v69];
      v65 = v109;
      (*(*(v70 - 8) + 8))(v71, v70);
    }

    v72 = v105;
    v73 = v106;
    v74 = v103;
    sub_226AFD80C(v65, v103, &qword_27D7A6A08, &qword_226D72540);
    if (v68(v74, 1, v67) == 1)
    {
      sub_226AC47B0(v74, &qword_27D7A6A08, &qword_226D72540);
      v75 = sub_226D6D4AC();
      v76 = v101;
      (*(*(v75 - 8) + 56))(v101, 1, 1, v75);
    }

    else
    {
      v77 = *(v67 + 48);
      v75 = sub_226D6D4AC();
      v78 = *(v75 - 8);
      v79 = v74 + v77;
      v76 = v101;
      (*(v78 + 32))(v101, v79, v75);
      (*(v78 + 56))(v76, 0, 1, v75);
    }

    sub_226AFD80C(v76, v73, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226BC4428(v98, v97, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
    sub_226AC40E8(v73, v108, &qword_27D7A8BE0, &unk_226D718F0);
    v80 = v72[9];
    sub_226D6D4AC();
    v81 = *(*(v75 - 8) + 56);
    v82 = v107;
    v81(&v107[v80], 1, 1, v75);
    v113 = v72[11];
    v81((v82 + v113), 1, 1, v75);
    if (v95)
    {
      *v82 = [v95 objectID];
      v83 = v96;
      if (!v96)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v82 = 0;
      v83 = v96;
      if (!v96)
      {
        v95 = 0;
LABEL_22:
        *(v82 + 8) = 0;
        *(v82 + 16) = 0;
        v89 = v97;
        sub_226BC4428(v97, v82 + v72[7], type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
        *(v82 + v72[8]) = 0;

        sub_226BC4490(v89, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
        sub_226AC47B0(v73, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226BC4490(v98, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
        v90 = v104;
        v81(v104, 1, 1, v75);
        v88 = v90;
LABEL_23:
        v91 = v108;
        sub_226AFD680(v88, v82 + v80, &qword_27D7A8BE0, &unk_226D718F0);
        *(v82 + v72[10]) = v114;
        sub_226AFD680(v91, v82 + v113, &qword_27D7A8BE0, &unk_226D718F0);
        v92 = v115;
        sub_226BC5B18(v82, v115, type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata);
        v93 = type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
      }
    }

    *(v82 + 8) = [v83 objectID];

    v84 = 1;
    *(v82 + 16) = 1;
    sub_226BC4428(v97, v82 + v72[7], type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
    *(v82 + v72[8]) = [v83 isMarkedAsComplete];
    v85 = [v83 isMarkedAsCompleteModificationDate];
    if (v85)
    {
      v86 = v100;
      v87 = v85;
      sub_226D6D45C();

      v84 = 0;
    }

    else
    {
      v87 = v83;
      v86 = v100;
    }

    sub_226BC4490(v97, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
    sub_226AC47B0(v106, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226BC4490(v98, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
    v81(v86, v84, 1, v75);
    v88 = v104;
    sub_226AFD80C(v86, v104, &qword_27D7A8BE0, &unk_226D718F0);
    v82 = v107;
    v72 = v105;
    goto LABEL_23;
  }

  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v46 = sub_226D6E07C();
  __swift_project_value_buffer(v46, qword_28105F6A8);

  v47 = sub_226D6E05C();
  v48 = sub_226D6E9CC();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = v43;
    v52 = v50;
    v116 = v50;
    *v49 = 136315394;
    *(v49 + 4) = sub_226AC4530(v51, v44, &v116);
    *(v49 + 12) = 2080;
    *(v49 + 14) = sub_226AC4530(v38, v40, &v116);
    _os_log_impl(&dword_226AB4000, v47, v48, "Neither cascade nor extracted order found for messageID: %s orderNumber: %s", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v52, -1, -1);
    MEMORY[0x22AA8BEE0](v49, -1, -1);
  }

  v53 = type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata(0);
  return (*(*(v53 - 8) + 56))(v115, 1, 1, v53);
}

void sub_226BC0FB8(void (*a1)(char *, uint64_t), void *a2)
{
  v373 = a2;
  v375 = a1;
  v384 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v2 - 8);
  v362 = &v323 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  MEMORY[0x28223BE20](v4 - 8);
  v355 = &v323 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  MEMORY[0x28223BE20](v6 - 8);
  v354 = &v323 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  MEMORY[0x28223BE20](v8 - 8);
  v353 = &v323 - v9;
  v356 = _s7ChangesV11FulfillmentVMa(0);
  v341 = *(v356 - 8);
  MEMORY[0x28223BE20](v356);
  v350 = &v323 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v352 = &v323 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6688, &unk_226D718A0);
  MEMORY[0x28223BE20](v13 - 8);
  v340 = &v323 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v351 = &v323 - v16;
  v336 = sub_226D677FC();
  v335 = *(v336 - 8);
  MEMORY[0x28223BE20](v336);
  v328 = &v323 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v332 = &v323 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6690, &qword_226D74720);
  MEMORY[0x28223BE20](v20 - 8);
  v333 = &v323 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v330 = &v323 - v23;
  v24 = _s7ChangesVMa(0);
  MEMORY[0x28223BE20](v24 - 8);
  v327 = &v323 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v334 = &v323 - v27;
  v339 = sub_226D6A6BC();
  v337 = *(v339 - 8);
  MEMORY[0x28223BE20](v339);
  v338 = (&v323 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v349 = sub_226D6D71C();
  v348 = *(v349 - 8);
  MEMORY[0x28223BE20](v349);
  v345 = &v323 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v347 = sub_226D6D6DC();
  v346 = *(v347 - 8);
  MEMORY[0x28223BE20](v347);
  v344 = &v323 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v377 = sub_226D6D4AC();
  v374 = *(v377 - 8);
  MEMORY[0x28223BE20](v377);
  v32 = &v323 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v371 = &v323 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v323 - v36;
  MEMORY[0x28223BE20](v38);
  v372 = &v323 - v39;
  MEMORY[0x28223BE20](v40);
  v343 = &v323 - v41;
  v329 = type metadata accessor for ManagedExtractedOrderTracker.TrackingResult(0);
  MEMORY[0x28223BE20](v329);
  v331 = (&v323 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v359 = type metadata accessor for ManagedExtractedOrderTracker(0);
  MEMORY[0x28223BE20](v359);
  v361 = &v323 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v358 = _s21NotificationSchedulerVMa(0);
  v357 = *(v358 - 1);
  MEMORY[0x28223BE20](v358);
  v360 = &v323 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6640, &qword_226D75B50);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v323 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v365 = &v323 - v49;
  v369 = sub_226D696EC();
  v368 = *(v369 - 1);
  MEMORY[0x28223BE20](v369);
  v51 = &v323 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v364 = &v323 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7980, &qword_226D75B58);
  MEMORY[0x28223BE20](v54 - 8);
  v56 = &v323 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v59 = &v323 - v58;
  v366 = sub_226D6785C();
  v367 = *(v366 - 8);
  MEMORY[0x28223BE20](v366);
  v342 = &v323 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v63 = &v323 - v62;
  MEMORY[0x28223BE20](v64);
  v363 = &v323 - v65;
  v66 = type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation(0);
  MEMORY[0x28223BE20](v66);
  v68 = &v323 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226BC4428(v375, v68, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v82 = *v68;
      LODWORD(v371) = v68[8];
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7990, &qword_226D75B68);
      v84 = v374;
      v85 = &v68[*(v83 + 64)];
      v86 = v372;
      v87 = v377;
      (*(v374 + 32))(v372, v85, v377);
      if (qword_28105F6A0 != -1)
      {
        swift_once();
      }

      v88 = sub_226D6E07C();
      v89 = __swift_project_value_buffer(v88, qword_28105F6A8);
      v369 = *(v84 + 16);
      v369(v37, v86, v87);
      v90 = v82;
      v370 = v89;
      v91 = sub_226D6E05C();
      v92 = sub_226D6E9EC();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v368 = swift_slowAlloc();
        *&v379 = v368;
        *v93 = 138412802;
        *(v93 + 4) = v90;
        *v94 = v90;
        *(v93 + 12) = 1024;
        *(v93 + 14) = v371;
        *(v93 + 18) = 2080;
        sub_226BC7A6C(&qword_281062B80, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v95 = v90;
        v96 = sub_226D6F1CC();
        v98 = v97;
        v375 = *(v374 + 8);
        v375(v37, v377);
        v99 = sub_226AC4530(v96, v98, &v379);

        *(v93 + 20) = v99;
        _os_log_impl(&dword_226AB4000, v91, v92, "Setting isMarkedAsComplete for an extracted order: %@ with value: %{BOOL}d modificationDate: %s", v93, 0x1Cu);
        sub_226AC47B0(v94, &qword_27D7A5FB0, &qword_226D70870);
        v100 = v94;
        v84 = v374;
        MEMORY[0x22AA8BEE0](v100, -1, -1);
        v101 = v368;
        __swift_destroy_boxed_opaque_existential_0Tm(v368);
        MEMORY[0x22AA8BEE0](v101, -1, -1);
        v102 = v93;
        v86 = v372;
        MEMORY[0x22AA8BEE0](v102, -1, -1);
      }

      else
      {

        v375 = *(v84 + 8);
        v375(v37, v87);
      }

      v133 = v373;
      sub_226D6990C();
      v134 = v376;
      v135 = sub_226D698AC();
      if (v134)
      {
        v136 = v134;
      }

      else
      {
        v168 = v135;
        v169 = [v135 isMarkedAsComplete];
        if (v371 != v169)
        {
          v376 = v90;
          v170 = v362;
          v171 = v377;
          v369(v362, v86, v377);
          (*(v84 + 56))(v170, 0, 1, v171);
          sub_226D698BC();
          sub_226AC47B0(v170, &qword_27D7A8BE0, &unk_226D718F0);
          v382 = 0u;
          v383 = 0u;
          v380 = 0u;
          v381 = 0u;
          v379 = 0u;
          sub_226B42120(v168, v133);
          sub_226AFD62C(&v379);
          v90 = v376;
        }

        *&v379 = 0;
        if ([v133 save_])
        {
          v209 = v379;
          v375(v86, v377);

          return;
        }

        v210 = v379;
        v136 = sub_226D6D04C();

        swift_willThrow();
      }

      v137 = v136;
      v138 = sub_226D6E05C();
      v139 = sub_226D6E9CC();

      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        *v140 = 138412290;
        v142 = v136;
        v143 = _swift_stdlib_bridgeErrorToNSError();
        *(v140 + 4) = v143;
        *v141 = v143;
        _os_log_impl(&dword_226AB4000, v138, v139, "Failed to mark order as complete with error: %@", v140, 0xCu);
        sub_226AC47B0(v141, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v141, -1, -1);
        MEMORY[0x22AA8BEE0](v140, -1, -1);
      }

      v375(v86, v377);
    }

    else
    {
      v115 = *v68;
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7988, &qword_226D75B60);
      v117 = v374;
      v118 = v371;
      v119 = v377;
      (*(v374 + 32))(v371, &v68[*(v116 + 48)], v377);
      if (qword_28105F6A0 != -1)
      {
        swift_once();
      }

      v120 = sub_226D6E07C();
      __swift_project_value_buffer(v120, qword_28105F6A8);
      (*(v117 + 16))(v32, v118, v119);
      v121 = sub_226D6E05C();
      v122 = sub_226D6E9EC();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = v117;
        v124 = swift_slowAlloc();
        v375 = swift_slowAlloc();
        *&v379 = v375;
        *v124 = 67109378;
        *(v124 + 4) = v115;
        *(v124 + 8) = 2080;
        sub_226BC7A6C(&qword_281062B80, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v125 = sub_226D6F1CC();
        v127 = v126;
        v128 = *(v123 + 8);
        LODWORD(v374) = v115;
        v128(v32, v377);
        v118 = v371;
        v129 = sub_226AC4530(v125, v127, &v379);
        v119 = v377;

        *(v124 + 10) = v129;
        v130 = v122;
        v131 = v374;
        _os_log_impl(&dword_226AB4000, v121, v130, "Updating local AutomaticIngestionConsentValue to %{BOOL}d, modificationDate: %s", v124, 0x12u);
        v132 = v375;
        __swift_destroy_boxed_opaque_existential_0Tm(v375);
        MEMORY[0x22AA8BEE0](v132, -1, -1);
        MEMORY[0x22AA8BEE0](v124, -1, -1);
      }

      else
      {

        v128 = *(v117 + 8);
        v131 = v115;
        v128(v32, v119);
      }

      v144 = v370[10];
      v145 = v370[11];
      v146 = __swift_project_boxed_opaque_existential_1(v370 + 7, v144);
      *(&v380 + 1) = v144;
      *&v381 = *(v145 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v379);
      (*(*(v144 - 8) + 16))(boxed_opaque_existential_1, v146, v144);
      sub_226B5A9C8(v131, v118);
      v128(v118, v119);
      sub_226AFD7B8(&v379);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v70 = *v68;
      sub_226D6B1CC();
      v71 = v376;
      v72 = sub_226D6B1BC();
      if (v71)
      {
        if (qword_28105F6A0 != -1)
        {
          swift_once();
        }

        v73 = sub_226D6E07C();
        __swift_project_value_buffer(v73, qword_28105F6A8);
        v74 = v71;
        v75 = sub_226D6E05C();
        v76 = sub_226D6E9CC();

        if (!os_log_type_enabled(v75, v76))
        {

          return;
        }

        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v77 = 138412290;
        v79 = v71;
        v80 = _swift_stdlib_bridgeErrorToNSError();
        *(v77 + 4) = v80;
        *v78 = v80;
        _os_log_impl(&dword_226AB4000, v75, v76, "Failed to fetch extracted order object with error: %@", v77, 0xCu);
        sub_226AC47B0(v78, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v78, -1, -1);
        MEMORY[0x22AA8BEE0](v77, -1, -1);

        v81 = v71;
        goto LABEL_18;
      }

      v375 = v70;
      v148 = v72;
      sub_226D696FC();
      sub_226AC40E8(v59, v56, &qword_27D7A7980, &qword_226D75B58);
      v149 = v368;
      v150 = v369;
      if ((v368[6])(v56, 1, v369) == 1)
      {
        sub_226AC47B0(v56, &qword_27D7A7980, &qword_226D75B58);
        if (qword_28105F6A0 != -1)
        {
          swift_once();
        }

        v151 = sub_226D6E07C();
        __swift_project_value_buffer(v151, qword_28105F6A8);
        v152 = sub_226D6E05C();
        v153 = sub_226D6E9CC();
        v154 = os_log_type_enabled(v152, v153);
        v155 = v375;
        if (v154)
        {
          v156 = swift_slowAlloc();
          *v156 = 0;
          _os_log_impl(&dword_226AB4000, v152, v153, "Failed to create a cascade order from a managed cascade order", v156, 2u);
          MEMORY[0x22AA8BEE0](v156, -1, -1);
        }

LABEL_52:
        sub_226AC47B0(v59, &qword_27D7A7980, &qword_226D75B58);
        return;
      }

      v372 = v148;
      v371 = v59;
      v172 = v364;
      (v149[4])(v364, v56, v150);
      (v149[2])(v51, v172, v150);
      v173 = v365;
      sub_226D677CC();
      sub_226AC40E8(v173, v47, &qword_27D7A6640, &qword_226D75B50);
      v174 = v367;
      v175 = v366;
      if ((*(v367 + 48))(v47, 1, v366) == 1)
      {
        sub_226AC47B0(v47, &qword_27D7A6640, &qword_226D75B50);
        if (qword_28105F6A0 != -1)
        {
          swift_once();
        }

        v176 = sub_226D6E07C();
        __swift_project_value_buffer(v176, qword_28105F6A8);
        v177 = sub_226D6E05C();
        v178 = sub_226D6E9CC();
        v179 = os_log_type_enabled(v177, v178);
        v180 = v365;
        v181 = v364;
        v59 = v371;
        v182 = v372;
        v183 = v375;
        if (v179)
        {
          v184 = swift_slowAlloc();
          *v184 = 0;
          _os_log_impl(&dword_226AB4000, v177, v178, "Failed to create an extracted order from a cascade order", v184, 2u);
          MEMORY[0x22AA8BEE0](v184, -1, -1);
        }

        sub_226AC47B0(v180, &qword_27D7A6640, &qword_226D75B50);
        (v368[1])(v181, v369);
        goto LABEL_52;
      }

      v376 = 0;
      (*(v174 + 32))(v63, v47, v175);
      v189 = *(v174 + 16);
      v325 = v174 + 16;
      v324 = v189;
      v189(v363, v63, v175);
      sub_226D693FC();
      v362 = sub_226D67B0C();

      v190 = *(v174 + 8);
      v367 = v174 + 8;
      v326 = v190;
      v190(v63, v175);
      sub_226AC47B0(v173, &qword_27D7A6640, &qword_226D75B50);
      (v149[1])(v172, v150);
      sub_226AC47B0(v371, &qword_27D7A7980, &qword_226D75B58);
      if (qword_28105F6A0 != -1)
      {
        swift_once();
      }

      v191 = sub_226D6E07C();
      v192 = __swift_project_value_buffer(v191, qword_28105F6A8);
      v193 = v375;
      v371 = v192;
      v194 = sub_226D6E05C();
      v195 = sub_226D6E9EC();

      if (os_log_type_enabled(v194, v195))
      {
        v196 = swift_slowAlloc();
        v197 = swift_slowAlloc();
        *v196 = 138412290;
        *(v196 + 4) = v193;
        *v197 = v193;
        v198 = v193;
        _os_log_impl(&dword_226AB4000, v194, v195, "Tracking a cascade order: %@", v196, 0xCu);
        sub_226AC47B0(v197, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v197, -1, -1);
        MEMORY[0x22AA8BEE0](v196, -1, -1);
      }

      v375 = v193;

      v199 = v370;
      sub_226AE532C((v370 + 7), &v379);
      sub_226AE532C((v199 + 12), &v378);
      v200 = v360;
      sub_226B836E0(&v379, &v378);
      v201 = v361;
      sub_226BB2630((v199 + 2), v361);
      v202 = *(v359 + 20);
      sub_226BC4428(v200, v201 + v202, _s21NotificationSchedulerVMa);
      v357[7](v201 + v202, 0, 1, v358);
      v203 = v363;
      sub_226D677DC();
      sub_226D6990C();
      v204 = v373;
      v205 = v376;
      v206 = sub_226D6986C();
      v376 = v205;
      if (v205)
      {

        sub_226BC4490(v201, type metadata accessor for ManagedExtractedOrderTracker);
        sub_226BC4490(v200, _s21NotificationSchedulerVMa);
        v207 = v372;
        v208 = v376;
        goto LABEL_74;
      }

      v221 = v206;

      sub_226D6B31C();
      v324(v342, v203, v366);
      v222 = v204;
      v223 = sub_226D6B2CC();
      v382 = 0u;
      v383 = 0u;
      v380 = 0u;
      v381 = 0u;
      v379 = 0u;
      v207 = v372;
      if (v221)
      {
        v224 = v221;
        v373 = [v224 orderContent];
        v225 = v343;
        sub_226D6D46C();
        v226 = v344;
        sub_226D6D66C();
        v227 = v345;
        sub_226D6D70C();
        sub_226D6982C();
        (v348[1])(v227, v349);
        (*(v346 + 8))(v226, v347);
        (*(v374 + 8))(v225, v377);
        sub_226D677DC();
        v228 = sub_226D6E36C();

        [v224 setTrackedOrderIdentifier_];

        [v207 setExtractedOrder_];
        v229 = v361;
        v230 = v376;
        sub_226B4EFDC(v224, v362, v222);
        if (v230)
        {

          sub_226AFD62C(&v379);
          sub_226BC4490(v229, type metadata accessor for ManagedExtractedOrderTracker);
          sub_226BC4490(v360, _s21NotificationSchedulerVMa);
          v203 = v363;
          v208 = v230;
          v207 = v372;
          goto LABEL_74;
        }

        v242 = v373;
        v358 = v223;

        sub_226B42120(v224, v222);
        v255 = v242;
        v256 = v242;
        v257 = v222;
        v258 = v256;
        v259 = v330;
        sub_226D6B2EC();
        (*(v335 + 56))(v259, 0, 1, v336);
        v260 = v358;
        v261 = v332;
        sub_226D6B2EC();
        v262 = v261;
        v263 = v257;
        sub_226D1F888(v255, 1, v259, v260, 1, v262, v334);
        [v257 deleteObject_];

        sub_226AFD62C(&v379);
        v264 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840) + 48);
        v265 = v331;
        *v331 = v224;
        sub_226BC5B18(v334, v265 + v264, _s7ChangesVMa);
        swift_storeEnumTagMultiPayload();
        v266 = v366;
        v203 = v363;
        v207 = v372;
        goto LABEL_111;
      }

      v231 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      v232 = v343;
      sub_226D6D46C();
      v233 = v344;
      sub_226D6D66C();
      v234 = v345;
      sub_226D6D70C();
      sub_226D6982C();
      (v348[1])(v234, v349);
      (*(v346 + 8))(v233, v347);
      (*(v374 + 8))(v232, v377);
      sub_226D677DC();
      v235 = sub_226D6E36C();

      [v231 setTrackedOrderIdentifier_];

      sub_226D6A72C();
      v236 = v338;
      *v338 = v231;
      (*(v337 + 104))(v236, *MEMORY[0x277CC7C58], v339);
      v237 = v222;
      v238 = v231;
      v239 = sub_226D6A6CC();
      [v238 setDashboardItem_];

      [v207 setExtractedOrder_];
      v240 = v361;
      v241 = v376;
      sub_226B4EFDC(v238, v362, v237);
      if (v241)
      {

        sub_226AFD62C(&v379);
        sub_226BC4490(v240, type metadata accessor for ManagedExtractedOrderTracker);
        sub_226BC4490(v360, _s21NotificationSchedulerVMa);
        v203 = v363;
        v208 = v241;
        goto LABEL_74;
      }

      v358 = v223;

      sub_226B42120(v238, v237);
      v349 = v238;
      v357 = v222;
      (*(v335 + 56))(v333, 1, 1, v336);
      sub_226D6B2EC();
      v267 = MEMORY[0x277D84F90];
      v348 = sub_226B22808(MEMORY[0x277D84F90]);
      v268 = sub_226D6B30C();
      v269 = sub_226B22808(v267);
      v270 = v268;
      if (v268 >> 62)
      {
        v271 = sub_226D6EDFC();
        v270 = v268;
      }

      else
      {
        v271 = *((v268 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v266 = v366;
      if (!v271)
      {
LABEL_110:

        v314 = v330;
        sub_226AC40E8(v333, v330, &qword_27D7A6690, &qword_226D74720);
        v315 = v335;
        v316 = v332;
        v317 = v328;
        v318 = v336;
        (*(v335 + 16))(v332, v328, v336);
        sub_226D20CB0(v348, 0, v314, v269, 1, v316, v327);

        (*(v315 + 8))(v317, v318);
        sub_226AC47B0(v333, &qword_27D7A6690, &qword_226D74720);
        sub_226AFD62C(&v379);
        v319 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840) + 48);
        v265 = v331;
        *v331 = v349;
        sub_226BC5B18(v327, v265 + v319, _s7ChangesVMa);
        swift_storeEnumTagMultiPayload();
        v207 = v372;
        v203 = v363;
        v263 = v357;
LABEL_111:
        *&v379 = 0;
        if ([v263 save_])
        {
          v320 = v379;
          v321 = v361;
          sub_226B4E744(v265);

          sub_226BC4490(v265, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
          sub_226BC4490(v321, type metadata accessor for ManagedExtractedOrderTracker);
          sub_226BC4490(v360, _s21NotificationSchedulerVMa);
          v253 = v203;
          v254 = v266;
LABEL_77:
          v326(v253, v254);
          return;
        }

        v322 = v379;
        v208 = sub_226D6D04C();

        swift_willThrow();
        sub_226BC4490(v265, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
        sub_226BC4490(v361, type metadata accessor for ManagedExtractedOrderTracker);
        sub_226BC4490(v360, _s21NotificationSchedulerVMa);
LABEL_74:
        v243 = v375;
        v244 = v208;
        v245 = sub_226D6E05C();
        v246 = sub_226D6E9CC();

        if (os_log_type_enabled(v245, v246))
        {
          v247 = swift_slowAlloc();
          v248 = swift_slowAlloc();
          *v247 = 138412546;
          *(v247 + 4) = v243;
          *v248 = v243;
          *(v247 + 12) = 2112;
          v249 = v243;
          v250 = v208;
          v251 = _swift_stdlib_bridgeErrorToNSError();
          *(v247 + 14) = v251;
          v248[1] = v251;
          _os_log_impl(&dword_226AB4000, v245, v246, "Failed to track cascade order %@ with error: %@", v247, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FB0, &qword_226D70870);
          swift_arrayDestroy();
          v252 = v248;
          v203 = v363;
          MEMORY[0x22AA8BEE0](v252, -1, -1);
          MEMORY[0x22AA8BEE0](v247, -1, -1);
        }

        v253 = v203;
        v254 = v366;
        goto LABEL_77;
      }

      v272 = 0;
      v368 = (v270 & 0xC000000000000001);
      v365 = (v270 & 0xFFFFFFFFFFFFFF8);
      v369 = (v341 + 56);
      v364 = (v341 + 48);
      v362 = v270;
      v359 = v271;
      v376 = 0;
      while (1)
      {
        if (v368)
        {
          v275 = MEMORY[0x22AA8AFD0](v272, v270);
        }

        else
        {
          if (v272 >= *(v365 + 2))
          {
            goto LABEL_115;
          }

          v275 = *(v270 + 8 * v272 + 32);
        }

        v276 = v275;
        if (__OFADD__(v272, 1))
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
        }

        v277 = [v275 trackingNumber];
        v377 = v269;
        v370 = (v272 + 1);
        if (v277)
        {
          v278 = v277;
          v373 = sub_226D6E39C();
          v374 = v279;
        }

        else
        {
          v373 = 0;
          v374 = 0;
        }

        v280 = v356;
        v281 = *(v356 + 20);
        v282 = sub_226D6763C();
        v283 = v352;
        (*(*(v282 - 8) + 56))(&v352[v281], 1, 1, v282);
        v284 = *(v280 + 24);
        v285 = sub_226D6760C();
        (*(*(v285 - 8) + 56))(v283 + v284, 1, 1, v285);
        v286 = *(v280 + 28);
        v287 = sub_226D6762C();
        (*(*(v287 - 8) + 56))(v283 + v286, 1, 1, v287);
        v288 = v276;
        sub_226D6C6AC();
        v289 = v353;
        sub_226D6C68C();
        sub_226AFD680(v289, v283 + v281, &qword_27D7A6680, &unk_226D74710);
        v290 = v354;
        sub_226D6C66C();
        sub_226AFD680(v290, v283 + v284, &qword_27D7A6678, &unk_226D71890);
        v291 = v355;
        sub_226D6C67C();

        sub_226AFD680(v291, v283 + v286, &qword_27D7A6670, &qword_226D71888);
        v292 = v351;
        sub_226BC4428(v283, v351, _s7ChangesV11FulfillmentVMa);
        v293 = *v369;
        (*v369)(v292, 0, 1, v280);
        sub_226BC4490(v283, _s7ChangesV11FulfillmentVMa);
        if ((*v364)(v292, 1, v280) == 1)
        {
          sub_226AC47B0(v292, &qword_27D7A6688, &unk_226D718A0);
          v269 = v377;
          v294 = sub_226C2FD40(v373, v374);
          v296 = v295;

          if (v296)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v378 = v269;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_226C3788C();
              v269 = v378;
            }

            v274 = v340;
            sub_226BC5B18(v269[7] + *(v341 + 72) * v294, v340, _s7ChangesV11FulfillmentVMa);
            sub_226D4A50C(v294, v269);

            v273 = 0;
          }

          else
          {

            v273 = 1;
            v274 = v340;
          }

          v293(v274, v273, 1, v356);
          sub_226AC47B0(v274, &qword_27D7A6688, &unk_226D718A0);
          v266 = v366;
          goto LABEL_84;
        }

        sub_226BC5B18(v292, v350, _s7ChangesV11FulfillmentVMa);
        v298 = v377;
        v299 = swift_isUniquelyReferenced_nonNull_native();
        v378 = v298;
        v301 = v373;
        v300 = v374;
        v303 = sub_226C2FD40(v373, v374);
        v304 = v298[2];
        v305 = (v302 & 1) == 0;
        v306 = v304 + v305;
        if (__OFADD__(v304, v305))
        {
          goto LABEL_116;
        }

        v307 = v302;
        if (v298[3] >= v306)
        {
          if (v299)
          {
            if ((v302 & 1) == 0)
            {
              goto LABEL_101;
            }
          }

          else
          {
            sub_226C3788C();
            if ((v307 & 1) == 0)
            {
              goto LABEL_101;
            }
          }
        }

        else
        {
          sub_226C30E60(v306, v299);
          v308 = sub_226C2FD40(v301, v300);
          if ((v307 & 1) != (v309 & 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6698, &unk_226D718B0);
            sub_226D6F25C();
            __break(1u);
            return;
          }

          v303 = v308;
          if ((v307 & 1) == 0)
          {
LABEL_101:
            v269 = v378;
            v378[(v303 >> 6) + 8] |= 1 << v303;
            v310 = (v269[6] + 16 * v303);
            *v310 = v301;
            v310[1] = v300;
            sub_226BC5B18(v350, v269[7] + *(v341 + 72) * v303, _s7ChangesV11FulfillmentVMa);

            v311 = v269[2];
            v312 = __OFADD__(v311, 1);
            v313 = v311 + 1;
            if (v312)
            {
              goto LABEL_117;
            }

            v269[2] = v313;
            goto LABEL_106;
          }
        }

        v269 = v378;
        sub_226AFD6E8(v350, v378[7] + *(v341 + 72) * v303);

LABEL_106:
        v266 = v366;
LABEL_84:
        v270 = v362;
        ++v272;
        if (v370 == v359)
        {
          goto LABEL_110;
        }
      }
    }

    v103 = *v68;
    sub_226D6990C();
    v104 = v373;
    v105 = v376;
    v106 = sub_226D698AC();
    if (v105)
    {
      if (qword_28105F6A0 != -1)
      {
        swift_once();
      }

      v107 = sub_226D6E07C();
      __swift_project_value_buffer(v107, qword_28105F6A8);
      v108 = v105;
      v109 = sub_226D6E05C();
      v110 = sub_226D6E9CC();

      if (!os_log_type_enabled(v109, v110))
      {

        return;
      }

      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *v111 = 138412290;
      v113 = v105;
      v114 = _swift_stdlib_bridgeErrorToNSError();
      *(v111 + 4) = v114;
      *v112 = v114;
      _os_log_impl(&dword_226AB4000, v109, v110, "Failed to fetch extracted order object with error: %@", v111, 0xCu);
      sub_226AC47B0(v112, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v112, -1, -1);
      MEMORY[0x22AA8BEE0](v111, -1, -1);

      v81 = v105;
LABEL_18:

      return;
    }

    v157 = qword_28105F6A0;
    v158 = v106;
    if (v157 != -1)
    {
      swift_once();
    }

    v159 = sub_226D6E07C();
    __swift_project_value_buffer(v159, qword_28105F6A8);
    v160 = v103;
    v161 = sub_226D6E05C();
    v162 = sub_226D6E9EC();

    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      *v163 = 138412290;
      *(v163 + 4) = v160;
      *v164 = v160;
      v165 = v160;
      _os_log_impl(&dword_226AB4000, v161, v162, "Deleting an extracted order: %@", v163, 0xCu);
      sub_226AC47B0(v164, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v164, -1, -1);
      v166 = v163;
      v104 = v373;
      MEMORY[0x22AA8BEE0](v166, -1, -1);
    }

    *&v381 = 0;
    v379 = 0u;
    v380 = 0u;
    sub_226AC47B0(&v379, &unk_27D7A7660, &unk_226D7B420);
    sub_226BB2630((v370 + 2), &v379);
    v167 = sub_226CCAA84(v158, v104);
    v186 = v185;
    v187 = v167;

    v378 = 0;
    if ([v104 save_])
    {
      v188 = v378;
      sub_226CCAC20(v187, v186);

      sub_226AFBB78(&v379);
    }

    else
    {
      v211 = v378;

      v212 = sub_226D6D04C();

      swift_willThrow();
      sub_226AFBB78(&v379);
      v213 = v160;
      v214 = v212;
      v215 = sub_226D6E05C();
      v216 = sub_226D6E9CC();

      if (os_log_type_enabled(v215, v216))
      {
        v217 = swift_slowAlloc();
        v218 = swift_slowAlloc();
        *v217 = 138412546;
        *(v217 + 4) = v213;
        *v218 = v213;
        *(v217 + 12) = 2112;
        v213 = v213;
        v219 = v212;
        v220 = _swift_stdlib_bridgeErrorToNSError();
        *(v217 + 14) = v220;
        v218[1] = v220;
        _os_log_impl(&dword_226AB4000, v215, v216, "Failed to delete extracted order %@, error: %@", v217, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FB0, &qword_226D70870);
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v218, -1, -1);
        MEMORY[0x22AA8BEE0](v217, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_226BC417C()
{
  sub_226B4FC54(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  return swift_deallocClassInstance();
}

id sub_226BC41E8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_226BC5B80(a2);
  *a1 = result;
  return result;
}

id sub_226BC4218@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

uint64_t sub_226BC4248@<X0>(void **a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>)
{
  result = sub_226BC5C9C(*a1, a3);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

unint64_t sub_226BC4304()
{
  result = qword_27D7A7968;
  if (!qword_27D7A7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7968);
  }

  return result;
}

uint64_t sub_226BC4358(uint64_t a1, uint64_t a2)
{
  result = sub_226BC7A6C(&qword_27D7A7970, a2, type metadata accessor for ExtractedOrderUserEventMappingModel, &unk_226D75AA4);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226BC43B4()
{
  result = qword_27D7A7978;
  if (!qword_27D7A7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7978);
  }

  return result;
}

uint64_t sub_226BC4428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226BC4490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226BC44F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v72 = v4;
  v73 = v5;
  MEMORY[0x28223BE20](v4);
  v68 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = &v68 - v8;
  MEMORY[0x28223BE20](v9);
  v70 = &v68 - v10;
  MEMORY[0x28223BE20](v11);
  v71 = &v68 - v12;
  v13 = type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v68 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = (&v68 - v20);
  MEMORY[0x28223BE20](v22);
  v24 = (&v68 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A08, &qword_226D75D00);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v68 - v26;
  v29 = &v68 + *(v28 + 56) - v26;
  sub_226BC4428(a1, &v68 - v26, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
  sub_226BC4428(a2, v29, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_226BC4428(v27, v21, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
      v31 = *v21;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_11:
        v46 = *v29;
        sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
        v47 = sub_226D6EC3C();

LABEL_24:
        sub_226BC4490(v27, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
        return v47 & 1;
      }
    }

    else
    {
      sub_226BC4428(v27, v24, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
      v31 = *v24;
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_11;
      }
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_226BC4428(v27, v15, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7988, &qword_226D75B60) + 48);
    v49 = swift_getEnumCaseMultiPayload();
    v50 = v73;
    if (v49 != 3)
    {
      (*(v73 + 8))(&v15[v48], v72);
      goto LABEL_18;
    }

    v51 = *v15;
    v52 = *v29;
    v53 = *(v73 + 32);
    v54 = &v15[v48];
    v55 = v69;
    v56 = v72;
    v53(v69, v54, v72);
    v57 = &v29[v48];
    v58 = v56;
    v59 = v68;
    v53(v68, v57, v58);
    if (v51 == v52)
    {
      v47 = sub_226D6D44C();
      v62 = *(v50 + 8);
      v62(v59, v58);
      v62(v55, v58);
      goto LABEL_24;
    }

    v60 = *(v50 + 8);
    v60(v59, v58);
    v60(v55, v58);
LABEL_20:
    sub_226BC4490(v27, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
    goto LABEL_21;
  }

  sub_226BC4428(v27, v18, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
  v31 = *v18;
  v32 = v18[8];
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7990, &qword_226D75B68) + 64);
  v34 = swift_getEnumCaseMultiPayload();
  v35 = v73;
  if (v34 == 2)
  {
    LODWORD(v69) = v32;
    v36 = *v29;
    LODWORD(v68) = v29[8];
    v37 = *(v73 + 32);
    v38 = &v18[v33];
    v40 = v71;
    v39 = v72;
    v37(v71, v38, v72);
    v41 = &v29[v33];
    v42 = v39;
    v43 = v70;
    v37(v70, v41, v42);
    sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
    v44 = sub_226D6EC3C();

    if (v44)
    {
      if (v69 == v68)
      {
        v63 = v71;
        v64 = sub_226D6D44C();
        v65 = v43;
        v47 = v64;
        v66 = *(v73 + 8);
        v66(v65, v42);
        v66(v63, v42);
        goto LABEL_24;
      }

      v45 = *(v73 + 8);
      v45(v43, v42);
      v45(v71, v42);
    }

    else
    {
      v61 = *(v35 + 8);
      v61(v43, v42);
      v61(v40, v42);
    }

    goto LABEL_20;
  }

  (*(v73 + 8))(&v18[v33], v72);
LABEL_16:

LABEL_18:
  sub_226AC47B0(v27, &qword_27D7A7A08, &qword_226D75D00);
LABEL_21:
  v47 = 0;
  return v47 & 1;
}

BOOL sub_226BC4B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v51 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v50 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v44[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  MEMORY[0x28223BE20](v12);
  v14 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v44[-v16];
  v18 = *a1;
  v19 = *a2;
  if (*a1)
  {
    if (!v19)
    {
      return 0;
    }

    v49 = v4;
    sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
    v20 = v19;
    v21 = v18;
    v22 = sub_226D6EC3C();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v49 = v4;
    if (v19)
    {
      return 0;
    }
  }

  v23 = *(a1 + 8);
  v24 = *(a2 + 8);
  if (v23)
  {
    if (!v24)
    {
      return 0;
    }

    sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
    v25 = v24;
    v26 = v23;
    v27 = sub_226D6EC3C();

    if ((v27 & 1) == 0)
    {
      return 0;
    }

LABEL_11:
    if (*(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }

    v28 = type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata(0);
    if ((_s10FinanceKit22ManagedCloudOrderEventC0A6DaemonE14TrackingStatusO2eeoiySbAF_AFtFZ_0(a1 + v28[7], a2 + v28[7]) & 1) == 0 || *(a1 + v28[8]) != *(a2 + v28[8]))
    {
      return 0;
    }

    v47 = v28;
    v29 = v28[9];
    v30 = *(v12 + 48);
    sub_226AC40E8(a1 + v29, v17, &qword_27D7A8BE0, &unk_226D718F0);
    v48 = v30;
    sub_226AC40E8(a2 + v29, &v30[v17], &qword_27D7A8BE0, &unk_226D718F0);
    v31 = *(v51 + 48);
    v32 = v49;
    if (v31(v17, 1, v49) == 1)
    {
      if (v31(&v48[v17], 1, v32) == 1)
      {
        v46 = v31;
        v33 = v32;
        sub_226AC47B0(v17, &qword_27D7A8BE0, &unk_226D718F0);
LABEL_22:
        if (*(a1 + v47[10]) != *(a2 + v47[10]))
        {
          return 0;
        }

        v37 = v47[11];
        v38 = *(v12 + 48);
        sub_226AC40E8(a1 + v37, v14, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226AC40E8(a2 + v37, &v14[v38], &qword_27D7A8BE0, &unk_226D718F0);
        v39 = v46;
        if (v46(v14, 1, v33) == 1)
        {
          if (v39(&v14[v38], 1, v33) == 1)
          {
            sub_226AC47B0(v14, &qword_27D7A8BE0, &unk_226D718F0);
            return 1;
          }
        }

        else
        {
          sub_226AC40E8(v14, v8, &qword_27D7A8BE0, &unk_226D718F0);
          if (v39(&v14[v38], 1, v33) != 1)
          {
            v41 = v50;
            v40 = v51;
            (*(v51 + 32))(v50, &v14[v38], v33);
            sub_226BC7A6C(&qword_27D7A6C38, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
            v42 = sub_226D6E35C();
            v43 = *(v40 + 8);
            v43(v41, v33);
            v43(v8, v33);
            sub_226AC47B0(v14, &qword_27D7A8BE0, &unk_226D718F0);
            return (v42 & 1) != 0;
          }

          (*(v51 + 8))(v8, v33);
        }

        v34 = v14;
        goto LABEL_20;
      }
    }

    else
    {
      sub_226AC40E8(v17, v11, &qword_27D7A8BE0, &unk_226D718F0);
      if (v31(&v48[v17], 1, v32) != 1)
      {
        v46 = v31;
        (*(v51 + 32))(v50, &v48[v17], v32);
        sub_226BC7A6C(&qword_27D7A6C38, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v45 = sub_226D6E35C();
        v48 = *(v51 + 8);
        (v48)(v50, v32);
        v35 = v11;
        v33 = v32;
        (v48)(v35, v32);
        sub_226AC47B0(v17, &qword_27D7A8BE0, &unk_226D718F0);
        if ((v45 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_22;
      }

      (*(v51 + 8))(v11, v32);
    }

    v34 = v17;
LABEL_20:
    sub_226AC47B0(v34, &qword_27D7A6C30, &unk_226D74330);
    return 0;
  }

  if (!v24)
  {
    goto LABEL_11;
  }

  return 0;
}

BOOL sub_226BC520C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v37[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v18 = &v37[-v17];
  if (*a1 != *a2)
  {
    return 0;
  }

  v39 = v10;
  v40 = v16;
  v42 = v7;
  v19 = type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata(0);
  v43 = v5;
  v41 = v19;
  v20 = *(v19 + 20);
  v21 = *(v14 + 48);
  sub_226AC40E8(&a1[v20], v18, &qword_27D7A8BE0, &unk_226D718F0);
  v22 = &a2[v20];
  v23 = v43;
  sub_226AC40E8(v22, &v18[v21], &qword_27D7A8BE0, &unk_226D718F0);
  v24 = *(v23 + 48);
  if (v24(v18, 1, v4) == 1)
  {
    if (v24(&v18[v21], 1, v4) == 1)
    {
      sub_226AC47B0(v18, &qword_27D7A8BE0, &unk_226D718F0);
LABEL_10:
      if (a1[*(v41 + 24)] != a2[*(v41 + 24)])
      {
        return 0;
      }

      v28 = *(v41 + 28);
      v29 = *(v14 + 48);
      v30 = &a1[v28];
      v31 = v40;
      sub_226AC40E8(v30, v40, &qword_27D7A8BE0, &unk_226D718F0);
      sub_226AC40E8(&a2[v28], v31 + v29, &qword_27D7A8BE0, &unk_226D718F0);
      if (v24(v31, 1, v4) == 1)
      {
        if (v24(v31 + v29, 1, v4) == 1)
        {
          sub_226AC47B0(v31, &qword_27D7A8BE0, &unk_226D718F0);
          return 1;
        }
      }

      else
      {
        v32 = v39;
        sub_226AC40E8(v31, v39, &qword_27D7A8BE0, &unk_226D718F0);
        if (v24(v31 + v29, 1, v4) != 1)
        {
          v34 = v42;
          v33 = v43;
          (*(v43 + 32))(v42, v31 + v29, v4);
          sub_226BC7A6C(&qword_27D7A6C38, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
          v35 = sub_226D6E35C();
          v36 = *(v33 + 8);
          v36(v34, v4);
          v36(v32, v4);
          sub_226AC47B0(v31, &qword_27D7A8BE0, &unk_226D718F0);
          return (v35 & 1) != 0;
        }

        (*(v43 + 8))(v32, v4);
      }

      v25 = v31;
      goto LABEL_8;
    }
  }

  else
  {
    sub_226AC40E8(v18, v13, &qword_27D7A8BE0, &unk_226D718F0);
    if (v24(&v18[v21], 1, v4) != 1)
    {
      (*(v23 + 32))(v42, &v18[v21], v4);
      sub_226BC7A6C(&qword_27D7A6C38, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v38 = sub_226D6E35C();
      v26 = *(v23 + 8);
      v26(v42, v4);
      v26(v13, v4);
      sub_226AC47B0(v18, &qword_27D7A8BE0, &unk_226D718F0);
      if ((v38 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v23 + 8))(v13, v4);
  }

  v25 = v18;
LABEL_8:
  sub_226AC47B0(v25, &qword_27D7A6C30, &unk_226D74330);
  return 0;
}

BOOL sub_226BC57AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A10, &qword_226D75D08);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  v20 = *(v19 + 56);
  sub_226BC4428(a1, &v27 - v17, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
  sub_226BC4428(a2, &v18[v20], type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_226BC4428(v18, v12, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_226BC5B18(&v18[v20], v6, type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata);
      v21 = sub_226BC4B5C(v12, v6);
      sub_226BC4490(v6, type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata);
      v22 = v12;
      v23 = type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata;
LABEL_9:
      sub_226BC4490(v22, v23);
      sub_226BC4490(v18, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
      return v21;
    }

    v24 = type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata;
    v25 = v12;
  }

  else
  {
    sub_226BC4428(v18, v15, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_226BC5B18(&v18[v20], v9, type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata);
      v21 = sub_226BC520C(v15, v9);
      sub_226BC4490(v9, type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata);
      v22 = v15;
      v23 = type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata;
      goto LABEL_9;
    }

    v24 = type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata;
    v25 = v15;
  }

  sub_226BC4490(v25, v24);
  sub_226AC47B0(v18, &qword_27D7A7A10, &qword_226D75D08);
  return 0;
}

uint64_t sub_226BC5B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_226BC5B80(void *a1)
{
  if ([a1 changeType])
  {
    return 0;
  }

  v3 = [a1 changedObjectID];
  v4 = [v3 entity];
  v5 = [v4 name];

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = sub_226D6E39C();
  v8 = v7;

  if (v6 == 0x64724F64756F6C43 && v8 == 0xEF746E6576457265)
  {
  }

  else
  {
    v10 = sub_226D6F21C();

    if ((v10 & 1) == 0)
    {
LABEL_9:

      return 0;
    }
  }

  return v3;
}

uint64_t sub_226BC5C9C(void *a1, uint64_t a2)
{
  v3 = sub_226D6708C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6898, &unk_226D75B90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27[-v8];
  v10 = sub_226D670CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226D69D0C();
  v14 = sub_226D69CCC();
  sub_226D69C8C();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_226AC47B0(v9, &qword_27D7A6898, &unk_226D75B90);
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v15 = sub_226D6E07C();
    __swift_project_value_buffer(v15, qword_28105F6A8);
    v16 = a1;
    v17 = sub_226D6E05C();
    v18 = sub_226D6E9CC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&dword_226AB4000, v17, v18, "Skipping invalid user event: %@", v19, 0xCu);
      sub_226AC47B0(v20, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v20, -1, -1);
      MEMORY[0x22AA8BEE0](v19, -1, -1);
    }

    return 0;
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_226D670AC();
  v23 = (*(v4 + 88))(v6, v3);
  if (v23 == *MEMORY[0x277CC6AC8] || v23 == *MEMORY[0x277CC6AB8] || v23 == *MEMORY[0x277CC6AC0])
  {
    goto LABEL_11;
  }

  if (v23 == *MEMORY[0x277CC6AD0])
  {
    (*(v11 + 8))(v13, v10);

    (*(v4 + 96))(v6, v3);
    v24 = *v6;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66B8, &unk_226D718D0) + 64);
    v26 = sub_226D6B49C();
    (*(*(v26 - 8) + 8))(&v6[v25], v26);
    return v24;
  }

  if (v23 == *MEMORY[0x277CC6AB0] || v23 == *MEMORY[0x277CC6AA8])
  {
LABEL_11:
    (*(v11 + 8))(v13, v10);

    (*(v4 + 96))(v6, v3);
    return *v6;
  }

  if (v23 == *MEMORY[0x277CC6AA0])
  {
    (*(v11 + 8))(v13, v10);

    (*(v4 + 96))(v6, v3);
    v24 = *v6;

    return v24;
  }

  if (v23 == *MEMORY[0x277CC6AE0] || v23 == *MEMORY[0x277CC6AD8] || v23 == *MEMORY[0x277CC6AF0] || v23 == *MEMORY[0x277CC6B08] || v23 == *MEMORY[0x277CC6A98] || v23 == *MEMORY[0x277CC6AE8] || v23 == *MEMORY[0x277CC6AF8] || v23 == *MEMORY[0x277CC6A88] || v23 == *MEMORY[0x277CC6A90] || v23 == *MEMORY[0x277CC6B00])
  {
    (*(v11 + 8))(v13, v10);

    (*(v4 + 8))(v6, v3);
    return 0;
  }

  if (v23 == *MEMORY[0x277CC6B10] || v23 == *MEMORY[0x277CC6B18])
  {
    (*(v11 + 8))(v13, v10);

    return 0;
  }

  else
  {
    result = sub_226D6F0AC();
    __break(1u);
  }

  return result;
}

void *sub_226BC6498(void *a1)
{
  v134 = a1;
  v1 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus(0);
  MEMORY[0x28223BE20](v1 - 8);
  v125 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata(0);
  MEMORY[0x28223BE20](v127);
  v129 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation(0);
  v5 = *(v4 - 8);
  v122 = v4;
  v123 = v5;
  MEMORY[0x28223BE20](v4);
  v117 = (&v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v114 = (&v112 - v8);
  MEMORY[0x28223BE20](v9);
  v118 = (&v112 - v10);
  MEMORY[0x28223BE20](v11);
  v119 = &v112 - v12;
  v13 = sub_226D6D4AC();
  v132 = *(v13 - 8);
  v133 = v13;
  MEMORY[0x28223BE20](v13);
  v116 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v124 = &v112 - v16;
  MEMORY[0x28223BE20](v17);
  v120 = &v112 - v18;
  MEMORY[0x28223BE20](v19);
  v126 = &v112 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v21 - 8);
  v115 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v121 = &v112 - v24;
  MEMORY[0x28223BE20](v25);
  v128 = &v112 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v112 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v112 - v31;
  MEMORY[0x28223BE20](v33);
  v130 = &v112 - v34;
  v35 = type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata(0);
  MEMORY[0x28223BE20](v35);
  v131 = &v112 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7998, &unk_226D75B70);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v112 - v38;
  v40 = type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata(0);
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v112 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = &v112 - v45;
  sub_226AC40E8(v134, v39, &qword_27D7A7998, &unk_226D75B70);
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
    v47 = &qword_27D7A7998;
    v48 = &unk_226D75B70;
    v49 = v39;
LABEL_3:
    sub_226AC47B0(v49, v47, v48);
    return MEMORY[0x277D84F90];
  }

  sub_226BC5B18(v39, v46, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
  sub_226BC4428(v46, v43, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
  v52 = v46;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = v129;
    sub_226BC5B18(v43, v129, type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata);
    v54 = *(v53 + 8);
    v55 = v127;
    v56 = v125;
    sub_226BC4428(v53 + *(v127 + 28), v125, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    v58 = (*(*(v57 - 8) + 48))(v56, 4, v57);
    v59 = v133;
    v113 = v52;
    if (v58 <= 1)
    {
      if (v58)
      {
LABEL_27:
        v50 = MEMORY[0x277D84F90];
        if (v54)
        {
LABEL_28:
          v77 = v59;
          v134 = v54;
          goto LABEL_38;
        }

LABEL_36:
        sub_226BC4490(v113, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
        sub_226BC4490(v53, type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata);
        return v50;
      }

      v72 = sub_226D6B49C();
      (*(*(v72 - 8) + 8))(v56, v72);
    }

    else if ((v58 - 2) < 2)
    {
      v60 = *v53;
      if (*v53 && (*(v53 + 16) & 1) == 0)
      {
        v61 = v114;
        *v114 = v60;
        swift_storeEnumTagMultiPayload();
        v62 = v60;
        v50 = sub_226BBB8C0(0, 1, 1, MEMORY[0x277D84F90]);
        v64 = v50[2];
        v63 = v50[3];
        if (v64 >= v63 >> 1)
        {
          v50 = sub_226BBB8C0((v63 > 1), v64 + 1, 1, v50);
        }

        v50[2] = v64 + 1;
        sub_226BC5B18(v61, v50 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v64, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
        if (!v54)
        {
          goto LABEL_36;
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (v54)
    {
      v73 = *(v53 + 16);
      v134 = v54;
      if (v73 == 1)
      {
        *v118 = v54;
        swift_storeEnumTagMultiPayload();
        v74 = v54;
        v50 = sub_226BBB8C0(0, 1, 1, MEMORY[0x277D84F90]);
        v76 = v50[2];
        v75 = v50[3];
        if (v76 >= v75 >> 1)
        {
          v50 = sub_226BBB8C0((v75 > 1), v76 + 1, 1, v50);
        }

        v77 = v59;
        v131 = v74;

        v50[2] = v76 + 1;
        sub_226BC5B18(v118, v50 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v76, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
LABEL_39:
        v86 = v55[11];
        v87 = *(v53 + v55[10]);
        v88 = v55[9];
        v89 = *(v53 + v55[8]);
        v90 = v128;
        sub_226AC40E8(v53 + v88, v128, &qword_27D7A8BE0, &unk_226D718F0);
        v91 = v121;
        sub_226AC40E8(v53 + v86, v121, &qword_27D7A8BE0, &unk_226D718F0);
        v92 = v132;
        v93 = *(v132 + 48);
        if (v93(v91, 1, v77) == 1)
        {
          sub_226AC47B0(v90, &qword_27D7A8BE0, &unk_226D718F0);
          sub_226BC4490(v113, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
          sub_226BC4490(v53, type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata);
          sub_226AC47B0(v91, &qword_27D7A8BE0, &unk_226D718F0);
          return v50;
        }

        v94 = *(v92 + 32);
        v94(v124, v91, v77);
        if (v87 == v89)
        {
          LODWORD(v130) = v87;
          v99 = v115;
          sub_226AC40E8(v128, v115, &qword_27D7A8BE0, &unk_226D718F0);
          v100 = v93(v99, 1, v77);
          v96 = v131;
          if (v100 == 1)
          {
            v101 = v134;
            v102 = v116;
            sub_226D6D39C();
            if (v93(v99, 1, v77) != 1)
            {
              sub_226AC47B0(v99, &qword_27D7A8BE0, &unk_226D718F0);
            }
          }

          else
          {
            v102 = v116;
            v94(v116, v99, v77);
            v103 = v134;
          }

          v98 = v124;
          v104 = sub_226D6D3FC();
          v97 = v132;
          v105 = *(v132 + 8);
          v105(v102, v77);
          LOBYTE(v87) = v130;
          v95 = v134;
          if ((v104 & 1) == 0)
          {

            v105(v98, v77);
            sub_226AC47B0(v128, &qword_27D7A8BE0, &unk_226D718F0);
            sub_226BC4490(v113, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
LABEL_54:
            sub_226BC4490(v129, type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata);
            return v50;
          }
        }

        else
        {
          v95 = v134;
          v96 = v131;
          v97 = v132;
          v98 = v124;
        }

        v106 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7990, &qword_226D75B68) + 64);
        v107 = v117;
        *v117 = v96;
        *(v107 + 8) = v87;
        (*(v97 + 16))(v107 + v106, v98, v77);
        swift_storeEnumTagMultiPayload();
        v108 = v95;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_226BBB8C0(0, v50[2] + 1, 1, v50);
        }

        v109 = v128;
        v111 = v50[2];
        v110 = v50[3];
        if (v111 >= v110 >> 1)
        {
          v50 = sub_226BBB8C0((v110 > 1), v111 + 1, 1, v50);
        }

        (*(v97 + 8))(v124, v77);
        sub_226AC47B0(v109, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226BC4490(v113, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
        v50[2] = v111 + 1;
        sub_226BC5B18(v107, v50 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v111, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
        goto LABEL_54;
      }

      v77 = v59;
      v50 = MEMORY[0x277D84F90];
LABEL_38:
      v131 = v54;
      goto LABEL_39;
    }

    v50 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v65 = v131;
  sub_226BC5B18(v43, v131, type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata);
  LODWORD(v134) = *v65;
  v66 = v130;
  sub_226AC40E8(&v65[*(v35 + 28)], v130, &qword_27D7A8BE0, &unk_226D718F0);
  sub_226AC40E8(&v65[*(v35 + 20)], v32, &qword_27D7A8BE0, &unk_226D718F0);
  v68 = v132;
  v67 = v133;
  v69 = *(v132 + 48);
  if (v69(v32, 1, v133) == 1)
  {
    sub_226AC47B0(v66, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226BC4490(v65, type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata);
    sub_226BC4490(v52, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
    v49 = v32;
    v47 = &qword_27D7A8BE0;
    v48 = &unk_226D718F0;
    goto LABEL_3;
  }

  v70 = *(v68 + 32);
  v70(v126, v32, v67);
  sub_226AC40E8(v66, v29, &qword_27D7A8BE0, &unk_226D718F0);
  if (v69(v29, 1, v67) == 1)
  {
    v71 = v120;
    sub_226D6D39C();
    if (v69(v29, 1, v67) != 1)
    {
      sub_226AC47B0(v29, &qword_27D7A8BE0, &unk_226D718F0);
    }
  }

  else
  {
    v71 = v120;
    v70(v120, v29, v67);
  }

  v78 = v126;
  v79 = sub_226D6D3FC();
  v80 = *(v68 + 8);
  v80(v71, v67);
  if ((v79 & 1) == 0)
  {
    v80(v78, v67);
    sub_226AC47B0(v130, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226BC4490(v131, type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata);
    sub_226BC4490(v52, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
    return MEMORY[0x277D84F90];
  }

  v81 = v52;
  v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7988, &qword_226D75B60) + 48);
  v83 = v119;
  *v119 = v134;
  (*(v68 + 16))(v83 + v82, v78, v67);
  swift_storeEnumTagMultiPayload();
  v50 = sub_226BBB8C0(0, 1, 1, MEMORY[0x277D84F90]);
  v85 = v50[2];
  v84 = v50[3];
  if (v85 >= v84 >> 1)
  {
    v50 = sub_226BBB8C0((v84 > 1), v85 + 1, 1, v50);
  }

  v80(v78, v67);
  sub_226AC47B0(v130, &qword_27D7A8BE0, &unk_226D718F0);
  sub_226BC4490(v131, type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata);
  sub_226BC4490(v81, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
  v50[2] = v85 + 1;
  sub_226BC5B18(v83, v50 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v85, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
  return v50;
}

void sub_226BC7598(uint64_t a1)
{
  sub_226B20350(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_226BC7644(uint64_t a1)
{
  sub_226BC76F8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ManagedCloudOrderEvent.TrackingStatus(319);
    if (v2 <= 0x3F)
    {
      sub_226B20350(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_226BC76F8(uint64_t a1)
{
  if (!qword_27D7A79C0)
  {
    sub_226AE59B4(255, &qword_27D7A6370, 0x277CBE448);
    v1 = sub_226D6EC9C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7A79C0);
    }
  }
}

void sub_226BC7760(uint64_t a1)
{
  sub_226B76634(319, &qword_27D7A79D8);
  if (v1 <= 0x3F)
  {
    sub_226B76634(319, &qword_27D7A79E0);
    if (v2 <= 0x3F)
    {
      sub_226BC780C(319);
      if (v3 <= 0x3F)
      {
        sub_226BC7898(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_226BC780C(uint64_t a1)
{
  if (!qword_27D7A79E8)
  {
    sub_226AE59B4(255, &qword_27D7A6370, 0x277CBE448);
    sub_226D6D4AC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D7A79E8);
    }
  }
}

void sub_226BC7898(uint64_t a1)
{
  if (!qword_27D7A79F0)
  {
    sub_226D6D4AC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D7A79F0);
    }
  }
}

uint64_t sub_226BC7904(uint64_t a1)
{
  result = type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FinanceDaemon35ExtractedOrderUserEventMappingModelC0F10IdentifierO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_226BC7990(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_226BC79E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_226BC7A38(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_226BC7A6C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226BC7AB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226BC7AFC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_226BC7B60(void *a1)
{
  v35 = a1;
  v3 = sub_226D6DA1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6B49C();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D66DBC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v1;
  if (sub_226BC7F2C())
  {
    v29 = v6;
    v30 = v4;
    v28 = v3;
    v31 = v2;
    v14 = *MEMORY[0x277CC6508];
    v15 = *(v11 + 104);
    v15(v13, v14, v10);
    v16 = sub_226D66D6C();
    v17 = *(v11 + 8);
    v17(v13, v10);
    if (v16)
    {
      v18 = [v35 ecommerceOrderContent];
      if (v18)
      {
        v27 = v18;
        sub_226D6740C();
        v15(v13, v14, v10);
        v19 = sub_226D66D6C();
        v17(v13, v10);
        if (v19)
        {
          v20 = v34;
          v21 = __swift_project_boxed_opaque_existential_1(v34, v34[3]);
          MEMORY[0x28223BE20](v21);
          *(&v27 - 2) = v9;
          v22 = v31;
          sub_226BC89EC(sub_226B5BE00, (&v27 - 4));
          v24 = v29;
          v23 = v30;
          if (v22)
          {

            (*(v32 + 8))(v9, v33);
            return;
          }
        }

        else
        {
          v23 = v30;
          v24 = v29;
          v20 = v34;
        }

        (*(v32 + 8))(v9, v33);
        v25 = v35;
        v26 = v27;
        sub_226BC822C(v25, v26, v24);
        __swift_project_boxed_opaque_existential_1(v20, v20[3]);
        sub_226BC8954(v24);
        (*(v23 + 8))(v24, v28);
      }
    }
  }
}

BOOL sub_226BC7F2C()
{
  v1 = sub_226D67F1C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18[-1] - v6;
  sub_226BC9078(v0 + 40, v18);
  if (!v19)
  {
    sub_226AC47B0(v18, &qword_27D7A7A20, &unk_226D75DB0);
    v20 = 0u;
    v21 = 0u;
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(v18, v19);
  sub_226D69A4C();
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  if (!*(&v21 + 1))
  {
LABEL_7:
    sub_226AC47B0(&v20, &unk_27D7A8BB0, &unk_226D74340);
LABEL_8:
    v8 = MEMORY[0x277D84F90];
    v9 = *(MEMORY[0x277D84F90] + 16);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = v18[0];
  v9 = *(v18[0] + 16);
  if (!v9)
  {
LABEL_5:

    v10 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

LABEL_9:
  v17 = v7;
  v18[0] = MEMORY[0x277D84F90];
  sub_226AE23C4(0, v9, 0);
  v10 = v18[0];
  v11 = v8 + 40;
  do
  {

    sub_226D67EFC();
    v18[0] = v10;
    v13 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_226AE23C4((v12 > 1), v13 + 1, 1);
      v10 = v18[0];
    }

    *(v10 + 16) = v13 + 1;
    (*(v2 + 32))(v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13, v4, v1);
    v11 += 16;
    --v9;
  }

  while (v9);

  v7 = v17;
LABEL_14:
  v14 = sub_226AE49A4(v10);

  sub_226D67E6C();
  v15 = sub_226D4DF34(v7, v14);

  (*(v2 + 8))(v7, v1);
  return (v15 & 1) == 0;
}

void sub_226BC822C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_226D6D8FC();
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A18, &unk_226D75DA0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v50 - v13;
  v15 = sub_226D6D9DC();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v50 - v17;
  sub_226D6DA0C();
  v19 = [a1 orderTypeIdentifier];
  sub_226D6E39C();

  sub_226D6D91C();
  v20 = [a1 orderIdentifier];
  sub_226D6E39C();

  sub_226D6D8BC();
  v21 = [a2 orderNumber];
  if (v21)
  {
    v22 = v21;
    sub_226D6E39C();
  }

  sub_226D6D89C();
  v23 = [a2 createdDate];
  sub_226D6D45C();

  v24 = sub_226D6D4AC();
  (*(*(v24 - 8) + 56))(v18, 0, 1, v24);
  sub_226D6D9FC();
  v25 = [a2 merchant];
  sub_226D6D9CC();
  v26 = [v25 displayName];
  sub_226D67C2C();

  sub_226D6D9BC();
  sub_226D6D9EC();
  v27 = sub_226D6B26C();
  if (v27 >> 62)
  {
    v46 = v27;
    v28 = sub_226D6EDFC();
    v27 = v46;
    if (v28)
    {
      goto LABEL_5;
    }

LABEL_19:

    goto LABEL_20;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
    goto LABEL_19;
  }

LABEL_5:
  v29 = v27;
  v58 = MEMORY[0x277D84F90];
  sub_226AE2408(0, v28 & ~(v28 >> 63), 0);
  if (v28 < 0)
  {
    __break(1u);
    return;
  }

  v50[0] = v14;
  v50[1] = a3;
  v51 = a1;
  v52 = a2;
  v30 = 0;
  v31 = v29;
  v53 = v29 & 0xC000000000000001;
  v54 = v29;
  v32 = v58;
  v33 = (v57 + 32);
  do
  {
    v34 = v28;
    if (v53)
    {
      v35 = MEMORY[0x22AA8AFD0](v30, v31);
    }

    else
    {
      v35 = *(v31 + 8 * v30 + 32);
    }

    v36 = v35;
    sub_226D6D8EC();
    v37 = [v36 trackingNumber];
    if (v37)
    {
      v38 = v37;
      sub_226D6E39C();
    }

    sub_226D6D8DC();
    v39 = [v36 carrier];
    if (v39)
    {
      v40 = v39;
      sub_226D6E39C();
    }

    sub_226D6D8CC();

    v41 = *v33;
    v43 = v55;
    v42 = v56;
    (*v33)(v55, v9, v56);
    v58 = v32;
    v45 = *(v32 + 16);
    v44 = *(v32 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_226AE2408((v44 > 1), v45 + 1, 1);
      v42 = v56;
      v32 = v58;
    }

    ++v30;
    *(v32 + 16) = v45 + 1;
    v41((v32 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v45), v43, v42);
    v28 = v34;
    v31 = v54;
  }

  while (v34 != v30);

  a1 = v51;
  a2 = v52;
  v14 = v50[0];
LABEL_20:
  sub_226D6D92C();
  v47 = [a2 payment];
  if (v47)
  {
    sub_226BC8A8C(v47, v14);
    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  v49 = sub_226D6D99C();
  (*(*(v49 - 8) + 56))(v14, v48, 1, v49);
  sub_226D6D9AC();
}

uint64_t sub_226BC8848()
{
  v0 = sub_226D6D90C();
  v2 = v1;
  if (v0 == sub_226D6B46C() && v2 == v3)
  {
  }

  else
  {
    v4 = sub_226D6F21C();

    v5 = 0;
    if ((v4 & 1) == 0)
    {
      return v5 & 1;
    }
  }

  v6 = sub_226D6D8AC();
  v8 = v7;
  if (v6 == sub_226D6B44C() && v8 == v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_226D6F21C();
  }

  return v5 & 1;
}

void *sub_226BC8954(uint64_t a1)
{
  sub_226D6D7EC();
  sub_226BC90F8();
  result = sub_226D6D81C();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_226D6DF9C();
    return __swift_destroy_boxed_opaque_existential_0Tm(v3);
  }

  return result;
}

void *sub_226BC89EC(uint64_t a1, uint64_t a2)
{
  sub_226D6D7EC();
  sub_226BC90F8();
  result = sub_226D6D80C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_226D6DF8C();
    return __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  return result;
}

void *sub_226BC8A8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_226D6D88C();
  v5 = *(v4 - 8);
  v63 = v4;
  v64 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v65 = sub_226D677AC();
  v11 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v54 - v14;
  sub_226D6D98C();
  sub_226D68F7C();
  sub_226D6779C();
  sub_226D6EC6C();
  sub_226D6D93C();
  v55 = v15;
  sub_226D6778C();
  sub_226D6D96C();
  v16 = [a1 paymentMethods];
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v18 = v16;
    sub_226D6E5EC();
  }

  sub_226D6D95C();
  v19 = sub_226D68F6C();
  v20 = v19;
  if (v19 >> 62)
  {
    v21 = sub_226D6EDFC();
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v62 = v10;
  v57 = a2;
  v58 = a1;
  v56 = v11;
  if (v21)
  {
    v67[0] = v17;
    result = sub_226AE1D68(0, v21 & ~(v21 >> 63), 0);
    if (v21 < 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    v23 = 0;
    v24 = v67[0];
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x22AA8AFD0](v23, v20);
      }

      else
      {
        v25 = *(v20 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = [v26 value];
      v28 = sub_226D6E39C();
      v30 = v29;

      v67[0] = v24;
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_226AE1D68((v31 > 1), v32 + 1, 1);
        v24 = v67[0];
      }

      ++v23;
      *(v24 + 16) = v32 + 1;
      v33 = v24 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
    }

    while (v21 != v23);

    a1 = v58;
    v11 = v56;
    v17 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  sub_226D6D97C();
  v34 = sub_226D68F5C();
  if (!(v34 >> 62))
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_18;
    }

LABEL_31:

LABEL_32:
    sub_226D6D94C();

    return (*(v11 + 8))(v55, v65);
  }

  v53 = v34;
  v35 = sub_226D6EDFC();
  v34 = v53;
  if (!v35)
  {
    goto LABEL_31;
  }

LABEL_18:
  v36 = v34;
  v68 = v17;
  result = sub_226AE2724(0, v35 & ~(v35 >> 63), 0);
  if ((v35 & 0x8000000000000000) == 0)
  {
    v37 = 0;
    v38 = v36;
    v59 = v36 & 0xC000000000000001;
    v60 = v35;
    v39 = v68;
    v40 = (v11 + 8);
    v41 = (v64 + 32);
    v61 = v36;
    do
    {
      if (v59)
      {
        v42 = MEMORY[0x22AA8AFD0](v37, v38);
      }

      else
      {
        v42 = *(v38 + 8 * v37 + 32);
      }

      v43 = v42;
      sub_226D6D87C();
      sub_226D6B78C();
      sub_226D6779C();
      sub_226D6EC6C();
      sub_226D6D86C();
      sub_226D6778C();
      sub_226D6D83C();
      v44 = [v43 paymentMethodDisplayName];
      sub_226D67C2C();

      v45 = sub_226D6D85C();
      sub_226D6D84C();
      v45(v67, 0);
      v46 = [v43 applePayTransactionIdentifier];
      if (v46)
      {
        v47 = v46;
        sub_226D6E39C();
      }

      sub_226D6D82C();

      (*v40)(v66, v65);
      v48 = *v41;
      v50 = v62;
      v49 = v63;
      (*v41)(v62, v7, v63);
      v68 = v39;
      v52 = *(v39 + 16);
      v51 = *(v39 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_226AE2724((v51 > 1), v52 + 1, 1);
        v49 = v63;
        v39 = v68;
      }

      ++v37;
      *(v39 + 16) = v52 + 1;
      v48((v39 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v52), v50, v49);
      v38 = v61;
    }

    while (v60 != v37);

    a1 = v58;
    v11 = v56;
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_226BC9078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A20, &unk_226D75DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_226BC90F8()
{
  result = qword_27D7A7A28;
  if (!qword_27D7A7A28)
  {
    sub_226D6D7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7A28);
  }

  return result;
}

uint64_t sub_226BC9150(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v70 = a7;
  v71 = a2;
  v72 = a5;
  v73 = a6;
  v76 = a4;
  v79 = sub_226D6916C();
  v65 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6B49C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v78 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - v15;
  sub_226D691CC();
  sub_226D6740C();
  v17 = a3;
  v37 = sub_226D691BC();
  v38 = v76;
  v39 = v65;
  v64 = v17;
  v41 = *(v11 + 8);
  v40 = v11 + 8;
  v68 = v41;
  v41(v16, v10);
  v81 = MEMORY[0x277D84F90];
  if (v37 >> 62)
  {
    v42 = sub_226D6EDFC();
    if (v42)
    {
LABEL_6:
      v43 = v38;
      v44 = 0;
      v77 = (v37 & 0xFFFFFFFFFFFFFF8);
      v78 = (v37 & 0xC000000000000001);
      v75 = (v39 + 11);
      v76 = v42;
      v74 = *v43;
      v66 = v39 + 1;
      v67 = v40;
      v65 = v39 + 12;
      v46 = v72;
      v45 = v73;
      v69 = v10;
      while (1)
      {
        if (v78)
        {
          v47 = MEMORY[0x22AA8AFD0](v44, v37);
        }

        else
        {
          if (v44 >= v77[2])
          {
            goto LABEL_24;
          }

          v47 = *(v37 + 8 * v44 + 32);
        }

        v39 = v47;
        v48 = (v44 + 1);
        if (__OFADD__(v44, 1))
        {
          break;
        }

        v40 = v37;
        sub_226D6918C();
        v49 = v79;
        v50 = (*v75)(v9, v79);
        if (v50 == v74)
        {
          (*v65)(v9, v49);
          v51 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(v46, v45) + 48)];
          v52 = *v51;
          v53 = v51[1];
          v54 = v70;
          v55 = v68(v9, v10);
          v80[0] = v52;
          v80[1] = v53;
          MEMORY[0x28223BE20](v55);
          *(&v63 - 2) = v80;
          LOBYTE(v52) = sub_226CCB428(v54, (&v63 - 4), v71);

          if (v52)
          {
            sub_226D6EF6C();
            sub_226D6EF9C();
            sub_226D6EFAC();
            sub_226D6EF7C();
          }

          else
          {
          }

          v10 = v69;
          v46 = v72;
          v45 = v73;
        }

        else
        {

          (*v66)(v9, v49);
        }

        v37 = v40;
        ++v44;
        if (v48 == v76)
        {
          v57 = v81;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
      swift_once();
      v18 = sub_226D6E07C();
      __swift_project_value_buffer(v18, qword_28105F5C0);
      v19 = v78;
      (*(v40 + 16))(v78, v45, v10);
      v20 = 0;
      v21 = sub_226D6E05C();
      v22 = sub_226D6E9CC();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v69 = v10;
        v24 = v23;
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v80[0] = v77;
        *v24 = 136315394;
        sub_226BCA48C();
        v25 = v69;
        v26 = sub_226D6F1CC();
        v79 = v45;
        v27 = v26;
        v29 = v28;
        (v39)(v19, v25);
        v30 = sub_226AC4530(v27, v29, v80);

        *(v24 + 4) = v30;
        *(v24 + 12) = 2112;
        v31 = 0;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 14) = v32;
        v33 = v76;
        *v76 = v32;
        _os_log_impl(&dword_226AB4000, v21, v22, "Failed to remove Wallet messages for order %s with error: %@", v24, 0x16u);
        sub_226B17298(v33);
        MEMORY[0x22AA8BEE0](v33, -1, -1);
        v34 = v77;
        __swift_destroy_boxed_opaque_existential_0Tm(v77);
        MEMORY[0x22AA8BEE0](v34, -1, -1);
        MEMORY[0x22AA8BEE0](v24, -1, -1);

        v35 = v79;
        v36 = v25;
      }

      else
      {

        (v39)(v19, v10);
        v35 = v45;
        v36 = v10;
      }

      (v39)(v35, v36);
      return 0;
    }
  }

  else
  {
    v42 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_6;
    }
  }

  v57 = MEMORY[0x277D84F90];
LABEL_27:

  v58 = v64;
  if ((v57 & 0x8000000000000000) == 0 && (v57 & 0x4000000000000000) == 0)
  {
    v59 = *(v57 + 16);
    if (v59)
    {
      goto LABEL_30;
    }

LABEL_39:

    return 0;
  }

  result = sub_226D6EDFC();
  v59 = result;
  if (!result)
  {
    goto LABEL_39;
  }

LABEL_30:
  if (v59 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v59; ++i)
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x22AA8AFD0](i, v57);
      }

      else
      {
        v61 = *(v57 + 8 * i + 32);
      }

      v62 = v61;
      [v58 deleteObject_];
    }

    return 1;
  }

  return result;
}

void sub_226BC9838(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v37 = a4;
  v38 = a3;
  v36 = a1;
  v4 = sub_226D6D4AC();
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_226D6916C();
  v30 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6B20C();
  v9 = v8;
  v10 = *(v8 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = 0;
    v32 = *(v8 + 16);
    v33 = v8 + 32;
    v29 = v10 - 1;
    do
    {
      v31 = v11;
      v13 = v12;
      while (1)
      {
        if (v13 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_21;
        }

        v14 = *(v33 + 8 * v13);
        v12 = v13 + 1;
        v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
        v39[0] = sub_226D6A27C();
        v39[1] = v16;
        MEMORY[0x28223BE20](v39[0]);
        *(&v29 - 2) = v39;
        v17 = sub_226CCB428(sub_226BAE5A0, (&v29 - 4), v38);

        if (v17)
        {
          break;
        }

        ++v13;
        if (v32 == v12)
        {
          v11 = v31;
          goto LABEL_13;
        }
      }

      v11 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_226AE2384(0, *(v11 + 16) + 1, 1);
        v11 = v40;
      }

      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_226AE2384((v19 > 1), v20 + 1, 1);
        v11 = v40;
      }

      *(v11 + 16) = v20 + 1;
      *(v11 + 8 * v20 + 32) = v14;
    }

    while (v29 != v13);
  }

LABEL_13:

  v39[0] = MEMORY[0x277D84F90];
  v38 = *(v11 + 16);
  if (v38)
  {
    v21 = 0;
    v33 = v11 + 32;
    v22 = *MEMORY[0x277CC77D8];
    v23 = (v30 + 104);
    while (v21 < *(v11 + 16))
    {
      v24 = *(v33 + 8 * v21);
      sub_226D691CC();
      v25 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A9660, &qword_226D7E590) + 48)];
      v26 = (v24 & 0x7FFFFFFFFFFFFFFFLL);
      sub_226D6740C();
      *v25 = sub_226D6A27C();
      v25[1] = v27;
      (*v23)(v7, v22, v34);
      sub_226D6D46C();
      v28 = v37;
      sub_226D6917C();

      MEMORY[0x22AA8A610]();
      if (*((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_226D6E61C();
      }

      ++v21;
      sub_226D6E65C();
      if (v38 == v21)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_19:
  }
}

uint64_t sub_226BC9C08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a1;
  v39 = a4;
  v42 = a3;
  v4 = sub_226D6D4AC();
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_226D6916C();
  v6 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6B29C();
  v9 = v8;
  v44 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {
    v11 = MEMORY[0x277D84F90];
    if (i)
    {
      v34 = v6;
      v6 = 0;
      v40 = v9 & 0xFFFFFFFFFFFFFF8;
      v41 = v9 & 0xC000000000000001;
      while (1)
      {
        if (v41)
        {
          v12 = MEMORY[0x22AA8AFD0](v6, v9);
        }

        else
        {
          if (v6 >= *(v40 + 16))
          {
            goto LABEL_30;
          }

          v12 = *(v9 + 8 * v6 + 32);
        }

        v13 = v12;
        v14 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v15 = [v12 returnIdentifier];
        v16 = sub_226D6E39C();
        v18 = v17;

        v43[0] = v16;
        v43[1] = v18;
        MEMORY[0x28223BE20](v19);
        *(&v33 - 2) = v43;
        LOBYTE(v15) = sub_226CCB428(sub_226BAE190, (&v33 - 4), v42);

        if (v15)
        {
          sub_226D6EF6C();
          sub_226D6EF9C();
          sub_226D6EFAC();
          sub_226D6EF7C();
        }

        else
        {
        }

        ++v6;
        if (v14 == i)
        {
          v42 = v44;
          v6 = v34;
          v11 = MEMORY[0x277D84F90];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v42 = MEMORY[0x277D84F90];
LABEL_16:

    v43[0] = v11;
    if ((v42 & 0x8000000000000000) == 0 && (v42 & 0x4000000000000000) == 0)
    {
      v20 = *(v42 + 16);
      if (!v20)
      {
        break;
      }

      goto LABEL_19;
    }

    v20 = sub_226D6EDFC();
    if (!v20)
    {
      break;
    }

LABEL_19:
    v21 = 0;
    v41 = v42 & 0xC000000000000001;
    LODWORD(v40) = *MEMORY[0x277CC77D0];
    v34 = (v6 + 104);
    v22 = v35;
    while (1)
    {
      if (v41)
      {
        v23 = MEMORY[0x22AA8AFD0](v21, v42);
      }

      else
      {
        if (v21 >= *(v42 + 16))
        {
          goto LABEL_32;
        }

        v23 = *(v42 + 8 * v21 + 32);
      }

      v24 = v23;
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      sub_226D691CC();
      v25 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A30, &qword_226D75DF8) + 48)];
      sub_226D6740C();
      v26 = [v24 returnIdentifier];
      v27 = sub_226D6E39C();
      v29 = v28;

      *v25 = v27;
      v25[1] = v29;
      (*v34)(v22, v40, v36);
      sub_226D6D46C();
      v30 = v39;
      v6 = sub_226D6917C();

      MEMORY[0x22AA8A610]();
      if (*((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_226D6E61C();
      }

      sub_226D6E65C();
      ++v21;
      if (v9 == v20)
      {
        v31 = v43[0];
        goto LABEL_36;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v31 = MEMORY[0x277D84F90];
LABEL_36:

  return v31;
}

uint64_t sub_226BCA084(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_226D675BC();
  v8 = sub_226BC9150(a1, v7, a4, MEMORY[0x277CC77D8], &unk_27D7A9660, &qword_226D7E590, sub_226BAE5A0);

  v9 = sub_226D6759C();
  v10 = sub_226BC9150(a1, v9, a4, MEMORY[0x277CC77D0], &qword_27D7A7A30, &qword_226D75DF8, sub_226BAE5A0);

  v11 = sub_226D675AC();
  sub_226BC9838(a1, a2, v11, a4);
  v13 = v12;

  v34 = v13;
  v14 = sub_226D6758C();
  v15 = sub_226BC9C08(a1, a2, v14, a4);

  sub_226CEE0E0(v15);
  if (v13 >> 62)
  {
    v16 = sub_226D6EDFC();
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_11:

    v22 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v16 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_11;
  }

LABEL_3:
  v33 = MEMORY[0x277D84F90];
  result = sub_226D6EF8C();
  if (v16 < 0)
  {
    __break(1u);
    return result;
  }

  v18 = 0;
  do
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x22AA8AFD0](v18, v13);
    }

    else
    {
      v19 = *(v13 + 8 * v18 + 32);
    }

    v20 = v19;
    ++v18;
    v21 = [v19 objectID];

    sub_226D6EF6C();
    sub_226D6EF9C();
    sub_226D6EFAC();
    sub_226D6EF7C();
  }

  while (v16 != v18);

  v22 = v33;
LABEL_12:
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v23 = sub_226D6E07C();
  __swift_project_value_buffer(v23, qword_28105F5C0);

  v24 = sub_226D6E05C();
  v25 = sub_226D6E9AC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136315138;
    v28 = sub_226BCA440();
    v29 = MEMORY[0x22AA8A6A0](v22, v28);
    v31 = sub_226AC4530(v29, v30, &v33);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_226AB4000, v24, v25, "Created order messages with IDs: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x22AA8BEE0](v27, -1, -1);
    MEMORY[0x22AA8BEE0](v26, -1, -1);
  }

  if (v22 >> 62)
  {
    v32 = sub_226D6EDFC();
  }

  else
  {
    v32 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return (v8 | v10) & 1 | (v32 != 0);
}

unint64_t sub_226BCA440()
{
  result = qword_27D7A6370;
  if (!qword_27D7A6370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A6370);
  }

  return result;
}

unint64_t sub_226BCA48C()
{
  result = qword_27D7A6658;
  if (!qword_27D7A6658)
  {
    sub_226D6B49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6658);
  }

  return result;
}

uint64_t ExtractedOrderConfigurationProvider.__allocating_init(trialProvider:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_226BCDF14(v8, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

uint64_t ExtractedOrderConfigurationProvider.init(trialProvider:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_226BCDF14(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

uint64_t ExtractedOrderConfigurationProvider.configurations.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7090, &unk_226D75E10);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_226D6A1FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v0 + OBJC_IVAR____TtC13FinanceDaemon35ExtractedOrderConfigurationProvider_cachedAllowList);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC13FinanceDaemon35ExtractedOrderConfigurationProvider_cachedAllowList));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7098, &qword_226D740D8) + 28);
  sub_226BCE0F0(v8 + v9, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_226AC47B0(v8 + v9, &qword_27D7A7090, &unk_226D75E10);
    sub_226AC47B0(v3, &qword_27D7A7090, &unk_226D75E10);
    sub_226BCBEAC(v7);
    (*(v5 + 16))(v8 + v9, v7, v4);
    (*(v5 + 56))(v8 + v9, 0, 1, v4);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
  }

  os_unfair_lock_unlock(v8);
  v10 = sub_226D6A14C();
  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t ExtractedOrderConfigurationProvider.defaultBehavior.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7090, &unk_226D75E10);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_226D6A1FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v0 + OBJC_IVAR____TtC13FinanceDaemon35ExtractedOrderConfigurationProvider_cachedAllowList);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC13FinanceDaemon35ExtractedOrderConfigurationProvider_cachedAllowList));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7098, &qword_226D740D8) + 28);
  sub_226BCE0F0(v8 + v9, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_226AC47B0(v8 + v9, &qword_27D7A7090, &unk_226D75E10);
    sub_226AC47B0(v3, &qword_27D7A7090, &unk_226D75E10);
    sub_226BCBEAC(v7);
    (*(v5 + 16))(v8 + v9, v7, v4);
    (*(v5 + 56))(v8 + v9, 0, 1, v4);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
  }

  os_unfair_lock_unlock(v8);
  sub_226D6A16C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t ExtractedOrderConfigurationProvider.isOrderExtractionSupported(forLocale:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_226D6D5DC();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D66E3C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A38, &qword_226D75E20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - v12;
  sub_226D6D59C();
  v14 = sub_226D6D58C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_226AC47B0(v13, &qword_27D7A7A38, &qword_226D75E20);
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v16 = sub_226D6E07C();
    __swift_project_value_buffer(v16, qword_28105F6A8);
    v17 = v29;
    (*(v29 + 16))(v6, a1, v4);
    v18 = sub_226D6E05C();
    v19 = sub_226D6E9CC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315138;
      sub_226BCE2E0(&qword_27D7A7A40, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
      v22 = sub_226D6F1CC();
      v24 = v23;
      (*(v17 + 8))(v6, v4);
      v25 = sub_226AC4530(v22, v24, &v30);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_226AB4000, v18, v19, "No region code for locale %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x22AA8BEE0](v21, -1, -1);
      MEMORY[0x22AA8BEE0](v20, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v6, v4);
    }

    v27 = 0;
  }

  else
  {
    sub_226D6D57C();
    (*(v15 + 8))(v13, v14);
    __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    if (qword_281062C40 != -1)
    {
      swift_once();
    }

    v26 = sub_226D66DDC();
    __swift_project_value_buffer(v26, qword_281064560);
    (*(v8 + 104))(v10, *MEMORY[0x277CC6550], v7);
    v27 = sub_226D66E5C();

    (*(v8 + 8))(v10, v7);
  }

  return v27 & 1;
}

void sub_226BCAFF0(unint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66C0, &unk_226D75EC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v82 = &v79 - v11;
  v12 = sub_226D6A1EC();
  v96 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v83 = &v79 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v79 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v79 - v20;
  MEMORY[0x28223BE20](v22);
  v90 = &v79 - v23;
  MEMORY[0x28223BE20](v24);
  v92 = &v79 - v25;
  v26 = objc_allocWithZone(MEMORY[0x277D07080]);
  v27 = sub_226D6E36C();
  v28 = [v26 initWithString_];

  v100 = v28;
  if (!v28)
  {
    if (qword_28105F6A0 == -1)
    {
LABEL_19:
      v45 = sub_226D6E07C();
      __swift_project_value_buffer(v45, qword_28105F6A8);

      v46 = sub_226D6E05C();
      v47 = sub_226D6E9CC();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v103[0] = v49;
        *v48 = 136380675;
        *(v48 + 4) = sub_226AC4530(a1, a2, v103);
        _os_log_impl(&dword_226AB4000, v46, v47, "Invalid email address supplied: %{private}s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v49);
        MEMORY[0x22AA8BEE0](v49, -1, -1);
        MEMORY[0x22AA8BEE0](v48, -1, -1);
      }

      v50 = *(v96 + 56);

      v50(a3, 1, 1, v12);
      return;
    }

LABEL_47:
    swift_once();
    goto LABEL_19;
  }

  v80 = v21;
  v81 = v18;
  v85 = v9;
  v86 = v3;
  v87 = a3;
  v29 = ExtractedOrderConfigurationProvider.configurations.getter();
  v95 = *(v29 + 16);
  if (v95)
  {
    a1 = 0;
    v30 = v96;
    v94 = v96 + 16;
    v88 = (v96 + 32);
    v91 = (v96 + 8);
    a3 = MEMORY[0x277D84F90];
    v31 = v92;
    v89 = v12;
    v93 = v29;
    while (a1 < *(v29 + 16))
    {
      v99 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v98 = *(v30 + 72);
      (*(v30 + 16))(v31, v29 + v99 + v98 * a1, v12);
      v32 = sub_226D6A1BC();
      if (v32)
      {
        v33 = v32;
        v97 = a3;
        v34 = (v32 + 40);
        v35 = -*(v32 + 16);
        v12 = -1;
        do
        {
          if (v35 + v12 == -1)
          {

            v31 = v92;
            v12 = v89;
            (*v91)(v92, v89);
            a3 = v97;
            goto LABEL_5;
          }

          if (++v12 >= *(v33 + 16))
          {
            __break(1u);
            goto LABEL_46;
          }

          a2 = (v34 + 2);
          a3 = *v34;
          v103[0] = *(v34 - 1);
          v103[1] = a3;

          v36 = [v100 stringValue];
          v37 = sub_226D6E39C();
          v39 = v38;

          v101 = v37;
          v102 = v39;
          sub_226AEEF6C();
          v40 = sub_226D6ECFC();

          v34 = a2;
        }

        while (v40);

        v12 = v89;
        v41 = *v88;
        v31 = v92;
        (*v88)(v90, v92, v89);
        a3 = v97;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v104 = a3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226AE1EFC(0, *(a3 + 2) + 1, 1);
          a3 = v104;
        }

        v44 = *(a3 + 2);
        v43 = *(a3 + 3);
        if (v44 >= v43 >> 1)
        {
          sub_226AE1EFC((v43 > 1), v44 + 1, 1);
          a3 = v104;
        }

        *(a3 + 2) = v44 + 1;
        v41(&a3[v99 + v44 * v98], v90, v12);
      }

      else
      {
        (*v91)(v31, v12);
      }

LABEL_5:
      ++a1;
      v30 = v96;
      v29 = v93;
      if (a1 == v95)
      {
        goto LABEL_25;
      }
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  a3 = MEMORY[0x277D84F90];
LABEL_25:

  v51 = a3;
  if (*(a3 + 2))
  {
    v52 = v87;
    v53 = v85;
  }

  else
  {
    v54 = [v100 domain];
    v52 = v87;
    v53 = v85;
    if (v54)
    {
      v55 = v54;
      v56 = sub_226D6E39C();
      v58 = v57;

      v59 = v82;
      sub_226BCB99C(v56, v58, v82);

      if ((*(v96 + 48))(v59, 1, v12) == 1)
      {
        sub_226AC47B0(v59, &qword_27D7A66C0, &unk_226D75EC0);
      }

      else
      {
        v65 = *(v96 + 32);
        v66 = v80;
        v65(v80, v59, v12);
        (*(v96 + 16))(v81, v66, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_226BBB1C8(0, *(v51 + 2) + 1, 1, v51);
        }

        v68 = *(v51 + 2);
        v67 = *(v51 + 3);
        v69 = v96;
        if (v68 >= v67 >> 1)
        {
          v77 = sub_226BBB1C8((v67 > 1), v68 + 1, 1, v51);
          v69 = v96;
          v51 = v77;
        }

        v70 = v69 + 8;
        (*(v69 + 8))(v80, v12);
        *(v51 + 2) = v68 + 1;
        v65(&v51[((*(v70 + 72) + 32) & ~*(v70 + 72)) + *(v70 + 64) * v68], v81, v12);
      }
    }
  }

  if (!*(v51 + 2))
  {
    v60 = [v100 highLevelDomain];
    if (v60)
    {
      v61 = v60;
      v62 = sub_226D6E39C();
      v64 = v63;

      sub_226BCB99C(v62, v64, v53);

      if ((*(v96 + 48))(v53, 1, v12) == 1)
      {
        sub_226AC47B0(v53, &qword_27D7A66C0, &unk_226D75EC0);
      }

      else
      {
        v71 = *(v96 + 32);
        v72 = v83;
        v71(v83, v53, v12);
        (*(v96 + 16))(v84, v72, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_226BBB1C8(0, *(v51 + 2) + 1, 1, v51);
        }

        v74 = *(v51 + 2);
        v73 = *(v51 + 3);
        v75 = v96;
        if (v74 >= v73 >> 1)
        {
          v78 = sub_226BBB1C8((v73 > 1), v74 + 1, 1, v51);
          v75 = v96;
          v51 = v78;
        }

        v76 = *(v75 + 8);
        v96 = v75 + 8;
        v76(v83, v12);
        *(v51 + 2) = v74 + 1;
        v71(&v51[((*(v96 + 72) + 32) & ~*(v96 + 72)) + *(v96 + 64) * v74], v84, v12);
      }
    }
  }

  sub_226BCBC6C(v51, v52);
}

uint64_t sub_226BCB99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v28 = sub_226D6A1EC();
  v6 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v32 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v27 = v3;
  result = ExtractedOrderConfigurationProvider.configurations.getter();
  v36 = *(result + 16);
  if (v36)
  {
    v12 = 0;
    v34 = v6 + 16;
    v35 = a1;
    v30 = (v6 + 8);
    v31 = (v6 + 32);
    v13 = a2;
    v14 = MEMORY[0x277D84F90];
    v15 = v13;
    v29 = v13;
    v16 = v28;
    v33 = result;
    while (v12 < *(result + 16))
    {
      v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v18 = *(v6 + 72);
      (*(v6 + 16))(v10, result + v17 + v18 * v12, v16);
      v19 = v16;
      v39 = sub_226D6A1AC();
      v40 = v20;
      v37 = v35;
      v38 = v15;
      sub_226AEEF6C();
      v21 = sub_226D6ECFC();

      if (v21)
      {
        (*v30)(v10, v19);
        v16 = v19;
      }

      else
      {
        v22 = *v31;
        (*v31)(v32, v10, v19);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v14;
        if (isUniquelyReferenced_nonNull_native)
        {
          v16 = v19;
        }

        else
        {
          sub_226AE1EFC(0, *(v14 + 16) + 1, 1);
          v16 = v28;
          v14 = v41;
        }

        v25 = *(v14 + 16);
        v24 = *(v14 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_226AE1EFC((v24 > 1), v25 + 1, 1);
          v16 = v28;
          v14 = v41;
        }

        *(v14 + 16) = v25 + 1;
        v22((v14 + v17 + v25 * v18), v32, v16);
        v15 = v29;
      }

      ++v12;
      result = v33;
      if (v36 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_14:

    sub_226BCBC6C(v14, v26);
  }

  return result;
}

uint64_t sub_226BCBC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a1;

  sub_226BCC60C(&v12);
  v3 = v12;
  if (*(v12 + 16))
  {
    v4 = sub_226D6A1EC();
    v11 = *(v4 - 8);
    (*(v11 + 16))(a2, v3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v4);

    v5 = *(v11 + 56);
    v6 = a2;
    v7 = 0;
    v8 = v4;
  }

  else
  {

    v9 = sub_226D6A1EC();
    v5 = *(*(v9 - 8) + 56);
    v8 = v9;
    v6 = a2;
    v7 = 1;
  }

  return v5(v6, v7, 1, v8);
}

uint64_t sub_226BCBDC8(uint64_t a1)
{
  if ((sub_226D6A18C() & 1) != 0 || (sub_226D6A19C() & 1) != 0 || (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0)
  {
    if ((sub_226D6A18C() & 1) != 0 || (sub_226D6A19C() & 1) != 0 || (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0)
    {
      v1 = sub_226D6A18C() & 1;
      if (v1 == (sub_226D6A18C() & 1))
      {
        v2 = sub_226D6A19C();
      }

      else
      {
        v2 = sub_226D6A18C();
      }

      v3 = v2 ^ 1;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_226BCBEAC@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v25 = sub_226D6A15C();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_226D6D1AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D66E3C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  if (qword_281062C50 != -1)
  {
    swift_once();
  }

  v11 = sub_226D66DDC();
  __swift_project_value_buffer(v11, qword_281064578);
  (*(v8 + 104))(v10, *MEMORY[0x277CC6550], v7);
  sub_226D66E4C();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  if (v13)
  {
    sub_226D6D0BC();

    v18 = sub_226D6D1BC();
    v20 = v19;
    sub_226D6CC1C();
    swift_allocObject();
    sub_226D6CC0C();
    sub_226D6A1FC();
    sub_226BCE2E0(&qword_281062BA0, MEMORY[0x277CC7B20], MEMORY[0x277CC7B28]);
    sub_226D6CBFC();
    (*(v4 + 8))(v6, v3);

    return sub_226B11B98(v18, v20);
  }

  else
  {
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v14 = sub_226D6E07C();
    __swift_project_value_buffer(v14, qword_28105F6A8);
    v15 = sub_226D6E05C();
    v16 = sub_226D6E9CC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_226AB4000, v15, v16, "No order allow list found in Trial", v17, 2u);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
    }

    (*(v23 + 104))(v24, *MEMORY[0x277CC7AF0], v25);
    return sub_226D6A13C();
  }
}

uint64_t ExtractedOrderConfigurationProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = v0 + OBJC_IVAR____TtC13FinanceDaemon35ExtractedOrderConfigurationProvider_cachedAllowList;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7098, &qword_226D740D8);
  sub_226AC47B0(v1 + *(v2 + 28), &qword_27D7A7090, &unk_226D75E10);
  return v0;
}

uint64_t ExtractedOrderConfigurationProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = v0 + OBJC_IVAR____TtC13FinanceDaemon35ExtractedOrderConfigurationProvider_cachedAllowList;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7098, &qword_226D740D8);
  sub_226AC47B0(v1 + *(v2 + 28), &qword_27D7A7090, &unk_226D75E10);

  return swift_deallocClassInstance();
}

uint64_t sub_226BCC5A8()
{
  v0 = sub_226D66DDC();
  __swift_allocate_value_buffer(v0, qword_281064578);
  __swift_project_value_buffer(v0, qword_281064578);
  return sub_226D66DCC();
}

void sub_226BCC60C(uint64_t *a1)
{
  v2 = *(sub_226D6A1EC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_226C694A0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_226BCC6B4(v5);
  *a1 = v3;
}

void sub_226BCC6B4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_226D6F1BC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_226D6A1EC();
        v6 = sub_226D6E63C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_226D6A1EC() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_226BCCB50(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_226BCC7E0(0, v2, 1, a1);
  }
}

void sub_226BCC7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_226D6A1EC();
  MEMORY[0x28223BE20](v8);
  v47 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v15.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v39 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v14 + 16);
    v19 = v14 + 16;
    v21 = *(v19 + 56);
    v48 = (v19 - 8);
    v49 = v20;
    v50 = v19;
    v45 = (v19 + 16);
    v46 = v18;
    v22 = (v18 + v21 * (a3 - 1));
    v44 = -v21;
    v23 = a1 - a3;
    v38 = v21;
    v24 = v18 + v21 * a3;
LABEL_6:
    v42 = v22;
    v43 = a3;
    v40 = v24;
    v41 = v23;
    v26 = v23;
    v27 = v22;
    while (1)
    {
      v28 = v49;
      (v49)(v17, v24, v8, v15);
      v28(v12, v27, v8);
      if ((sub_226D6A18C() & 1) != 0 || (sub_226D6A19C() & 1) != 0 || (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0)
      {
        if (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0 && ((sub_226D6A18C() & 1) != 0 || (sub_226D6A19C()))
        {
          v25 = *v48;
          (*v48)(v12, v8);
          v25(v17, v8);
LABEL_5:
          a3 = v43 + 1;
          v22 = &v42[v38];
          v23 = v41 - 1;
          v24 = v40 + v38;
          if (v43 + 1 == v39)
          {
            return;
          }

          goto LABEL_6;
        }

        v29 = sub_226D6A18C();
        if ((v29 ^ sub_226D6A18C()))
        {
          v30 = sub_226D6A18C();
        }

        else
        {
          v30 = sub_226D6A19C();
        }

        v31 = v30;
        v32 = *v48;
        (*v48)(v12, v8);
        v32(v17, v8);
        if (v31)
        {
          goto LABEL_5;
        }

        if (!v46)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v36 = *v48;
        (*v48)(v12, v8);
        v36(v17, v8);
        if (!v46)
        {
LABEL_24:
          __break(1u);
          return;
        }
      }

      v33 = *v45;
      v34 = v47;
      (*v45)(v47, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v33(v27, v34, v8);
      v27 += v44;
      v24 += v44;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_226BCCB50(char **a1, uint64_t a2, char *a3, unint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v8 = sub_226D6A1EC();
  MEMORY[0x28223BE20](v8);
  v141 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v153 = &v132 - v11;
  MEMORY[0x28223BE20](v12);
  v158 = &v132 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v132 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v132 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v132 - v21;
  MEMORY[0x28223BE20](v23);
  v28.n128_f64[0] = MEMORY[0x28223BE20](v24);
  v29 = *(a3 + 1);
  v147 = v26;
  if (v29 < 1)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_127:
    a4 = *v137;
    if (!*v137)
    {
      goto LABEL_169;
    }

    v22 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v147;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_163;
    }

    v124 = v22;
LABEL_130:
    v159 = v124;
    v22 = *(v124 + 2);
    if (v22 >= 2)
    {
      do
      {
        v125 = *a3;
        if (!*a3)
        {
          goto LABEL_167;
        }

        v126 = a3;
        v127 = *&v124[16 * v22];
        a3 = v124;
        v128 = *&v124[16 * v22 + 24];
        sub_226BCD7CC(&v125[*(v8 + 72) * v127], &v125[*(v8 + 72) * *&v124[16 * v22 + 16]], &v125[*(v8 + 72) * v128], a4);
        if (v5)
        {
          break;
        }

        if (v128 < v127)
        {
          goto LABEL_156;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v129 = a3;
        }

        else
        {
          v129 = sub_226C69374(a3);
        }

        if (v22 - 2 >= *(v129 + 2))
        {
          goto LABEL_157;
        }

        a3 = v126;
        v130 = &v129[16 * v22];
        *v130 = v127;
        *(v130 + 1) = v128;
        v159 = v129;
        sub_226C692E8(v22 - 1);
        v124 = v159;
        v22 = *(v159 + 2);
      }

      while (v22 > 1);
    }

LABEL_140:

    return;
  }

  v134 = &v132 - v25;
  v133 = v27;
  v30 = 0;
  v156 = (v26 + 8);
  v157 = v26 + 16;
  v155 = (v26 + 32);
  v31 = MEMORY[0x277D84F90];
  v139 = a3;
  v136 = a4;
  v143 = v19;
  v149 = v22;
  v154 = v16;
  while (1)
  {
    v142 = v31;
    if (v30 + 1 >= v29)
    {
      v48 = v30 + 1;
      goto LABEL_40;
    }

    v150 = v29;
    v32 = *a3;
    v33 = *(v147 + 72);
    v138 = v30;
    v34 = &v32[v33 * (v30 + 1)];
    v148 = *(v147 + 16);
    v148(v134, v34, v8, v28);
    v151 = v33;
    v152 = v32;
    v35 = &v32[v33 * v138];
    v36 = v133;
    (v148)(v133, v35, v8);
    v37 = v134;
    LODWORD(v146) = sub_226BCBDC8(v134);
    if (v5)
    {
      v131 = *v156;
      (*v156)(v36, v8);
      (v131)(v37, v8);
      goto LABEL_140;
    }

    v135 = 0;
    v38 = *v156;
    (*v156)(v36, v8);
    v145 = v38;
    (v38)(v37, v8);
    v39 = v138 + 2;
    v40 = v151;
    v41 = &v152[v151 * (v138 + 2)];
    while (1)
    {
      v48 = v150;
      if (v150 == v39)
      {
        break;
      }

      v49 = v148;
      (v148)(v22, v41, v8);
      v49(v19, v34, v8);
      v50 = sub_226D6A18C();
      v152 = v34;
      if ((v50 & 1) != 0 || (sub_226D6A19C() & 1) != 0 || (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0)
      {
        if (sub_226D6A18C() & 1) != 0 || (sub_226D6A19C())
        {
LABEL_15:
          v51 = v149;
          v52 = sub_226D6A18C();
          if ((v52 ^ sub_226D6A18C()))
          {
            v42 = sub_226D6A18C();
          }

          else
          {
            v42 = sub_226D6A19C();
          }

          v43 = v42;
          v19 = v143;
          goto LABEL_9;
        }

        v51 = v149;
        if (sub_226D6A18C())
        {
          v43 = 1;
        }

        else
        {
          if ((sub_226D6A19C() & 1) == 0)
          {
            goto LABEL_15;
          }

          v43 = 1;
          v51 = v149;
        }
      }

      else
      {
        v43 = 0;
        v51 = v149;
      }

LABEL_9:
      v44 = v19;
      v45 = v19;
      v46 = v145;
      (v145)(v44, v8);
      (v46)(v51, v8);
      v19 = v45;
      v47 = v146 ^ v43;
      ++v39;
      v40 = v151;
      v41 += v151;
      v34 = &v152[v151];
      v22 = v51;
      if ((v47 & 1) == 0)
      {
        v48 = v39 - 1;
        break;
      }
    }

    v5 = v135;
    v30 = v138;
    a3 = v139;
    v53 = v142;
    a4 = v136;
    if ((v146 & 1) == 0)
    {
      goto LABEL_40;
    }

    if (v48 < v138)
    {
      goto LABEL_162;
    }

    if (v138 < v48)
    {
      v22 = v40 * (v48 - 1);
      v54 = v48 * v40;
      v150 = v48;
      v55 = v48;
      v56 = v138;
      v57 = v138 * v40;
      do
      {
        if (v56 != --v55)
        {
          v58 = *a3;
          if (!v58)
          {
            goto LABEL_166;
          }

          v152 = *v155;
          (v152)(v141, &v58[v57], v8, v53);
          if (v57 < v22 || &v58[v57] >= &v58[v54])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v57 != v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          (v152)(&v58[v22], v141, v8);
          a3 = v139;
          v53 = v142;
          v40 = v151;
        }

        ++v56;
        v22 -= v40;
        v54 -= v40;
        v57 += v40;
      }

      while (v56 < v55);
      v5 = v135;
      a4 = v136;
      v30 = v138;
      v48 = v150;
    }

LABEL_40:
    v59 = *(a3 + 1);
    if (v48 >= v59)
    {
      goto LABEL_49;
    }

    if (__OFSUB__(v48, v30))
    {
      goto LABEL_159;
    }

    if (v48 - v30 >= a4)
    {
LABEL_49:
      v22 = v48;
      if (v48 < v30)
      {
        goto LABEL_158;
      }

      goto LABEL_50;
    }

    if (__OFADD__(v30, a4))
    {
      goto LABEL_160;
    }

    if ((v30 + a4) >= v59)
    {
      v22 = *(a3 + 1);
    }

    else
    {
      v22 = v30 + a4;
    }

    a4 = v158;
    if (v22 < v30)
    {
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      v124 = sub_226C69374(v22);
      goto LABEL_130;
    }

    if (v48 == v22)
    {
      goto LABEL_49;
    }

    v135 = v5;
    v107 = *a3;
    v108 = *(v147 + 72);
    v109 = *(v147 + 16);
    v110 = *a3 + v108 * (v48 - 1);
    v150 = v48;
    v151 = -v108;
    v138 = v30;
    v111 = v30 - v48;
    v152 = v107;
    v140 = v108;
    v112 = &v107[v48 * v108];
    v144 = v22;
LABEL_103:
    v145 = v112;
    v146 = v111;
    v148 = v110;
LABEL_104:
    v109(v16, v112, v8, v28);
    (v109)(a4, v110, v8);
    if (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0 && ((sub_226D6A18C() & 1) != 0 || (sub_226D6A19C()))
    {
      break;
    }

    if ((sub_226D6A18C() & 1) != 0 || (sub_226D6A19C() & 1) != 0 || (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0)
    {
      v113 = sub_226D6A18C();
      if ((v113 ^ sub_226D6A18C()))
      {
        v114 = sub_226D6A18C();
      }

      else
      {
        v114 = sub_226D6A19C();
      }

      v115 = v114;
      v116 = *v156;
      (*v156)(v158, v8);
      (v116)(v16, v8);
      if (v115)
      {
        a4 = v158;
        v16 = v154;
        goto LABEL_102;
      }

      if (!v152)
      {
        goto LABEL_164;
      }

      goto LABEL_115;
    }

    v122 = *v156;
    (*v156)(v158, v8);
    (v122)(v16, v8);
    a4 = v158;
LABEL_102:
    v110 = v148 + v140;
    v111 = v146 - 1;
    v112 = &v145[v140];
    ++v150;
    v22 = v144;
    if (v150 != v144)
    {
      goto LABEL_103;
    }

    v5 = v135;
    v30 = v138;
    a3 = v139;
    if (v144 < v138)
    {
      goto LABEL_158;
    }

LABEL_50:
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v144 = v22;
    if (v60)
    {
      v31 = v142;
    }

    else
    {
      v31 = sub_226BBB0C4(0, *(v142 + 2) + 1, 1, v142);
    }

    a4 = *(v31 + 2);
    v61 = *(v31 + 3);
    v22 = a4 + 1;
    if (a4 >= v61 >> 1)
    {
      v31 = sub_226BBB0C4((v61 > 1), a4 + 1, 1, v31);
    }

    *(v31 + 2) = v22;
    v62 = &v31[16 * a4];
    v63 = v144;
    *(v62 + 4) = v30;
    *(v62 + 5) = v63;
    v152 = *v137;
    if (!v152)
    {
      goto LABEL_168;
    }

    if (a4)
    {
      while (1)
      {
        v64 = v22 - 1;
        if (v22 >= 4)
        {
          break;
        }

        if (v22 == 3)
        {
          v65 = *(v31 + 4);
          v66 = *(v31 + 5);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_69:
          if (v68)
          {
            goto LABEL_147;
          }

          v81 = &v31[16 * v22];
          v83 = *v81;
          v82 = *(v81 + 1);
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_150;
          }

          v87 = &v31[16 * v64 + 32];
          v89 = *v87;
          v88 = *(v87 + 1);
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_153;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_154;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v64 = v22 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        v91 = &v31[16 * v22];
        v93 = *v91;
        v92 = *(v91 + 1);
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_83:
        if (v86)
        {
          goto LABEL_149;
        }

        v94 = &v31[16 * v64];
        v96 = *(v94 + 4);
        v95 = *(v94 + 5);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_152;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_90:
        a4 = v64 - 1;
        if (v64 - 1 >= v22)
        {
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
          goto LABEL_161;
        }

        v102 = *a3;
        if (!*a3)
        {
          goto LABEL_165;
        }

        v103 = a3;
        a3 = v31;
        v22 = *&v31[16 * a4 + 32];
        v104 = *&v31[16 * v64 + 40];
        sub_226BCD7CC(&v102[*(v147 + 72) * v22], &v102[*(v147 + 72) * *&v31[16 * v64 + 32]], &v102[*(v147 + 72) * v104], v152);
        if (v5)
        {
          goto LABEL_140;
        }

        if (v104 < v22)
        {
          goto LABEL_143;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v105 = a3;
        }

        else
        {
          v105 = sub_226C69374(a3);
        }

        if (a4 >= *(v105 + 2))
        {
          goto LABEL_144;
        }

        a3 = v103;
        v106 = &v105[16 * a4];
        *(v106 + 4) = v22;
        *(v106 + 5) = v104;
        v159 = v105;
        sub_226C692E8(v64);
        v31 = v159;
        v22 = *(v159 + 2);
        if (v22 <= 1)
        {
          goto LABEL_3;
        }
      }

      v69 = &v31[16 * v22 + 32];
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_145;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_146;
      }

      v76 = &v31[16 * v22];
      v78 = *v76;
      v77 = *(v76 + 1);
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_148;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_151;
      }

      if (v80 >= v72)
      {
        v98 = &v31[16 * v64 + 32];
        v100 = *v98;
        v99 = *(v98 + 1);
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_155;
        }

        if (v67 < v101)
        {
          v64 = v22 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

LABEL_3:
    v29 = *(a3 + 1);
    v19 = v143;
    v30 = v144;
    a4 = v136;
    v22 = v149;
    if (v144 >= v29)
    {
      goto LABEL_127;
    }
  }

  v120 = a4;
  v121 = *v156;
  (*v156)(v120, v8);
  (v121)(v16, v8);
  if (v152)
  {
LABEL_115:
    v117 = *v155;
    v118 = v153;
    (*v155)(v153, v112, v8);
    swift_arrayInitWithTakeFrontToBack();
    (v117)(v110, v118, v8);
    v110 += v151;
    v112 += v151;
    v119 = __CFADD__(v111++, 1);
    a4 = v158;
    v16 = v154;
    if (v119)
    {
      goto LABEL_102;
    }

    goto LABEL_104;
  }

LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
}

void sub_226BCD7CC(char *a1, char *a2, unint64_t a3, char *a4)
{
  v56 = a4;
  v7 = sub_226D6A1EC();
  v60 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v62 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_90;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_91;
  }

  v21 = (a2 - a1) / v19;
  v65 = a1;
  v22 = v56;
  v64 = v56;
  v61 = v19;
  if (v21 >= v20 / v19)
  {
    v25 = v20 / v19 * v19;
    if (v56 < a2 || &a2[v25] <= v56)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v56 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39 = &v22[v25];
    if (v25 >= 1)
    {
      v40 = -v61;
      v57 = (v60 + 16);
      v55 = (v60 + 8);
      v41 = &v22[v25];
      v61 = -v61;
      do
      {
        v53 = v39;
        v42 = a2;
        v43 = &a2[v40];
        v58 = v42;
        v59 = v43;
        while (1)
        {
          if (v42 <= a1)
          {
            v65 = v42;
            v63 = v53;
            goto LABEL_88;
          }

          v45 = a3;
          v54 = v39;
          v46 = *v57;
          v60 = v41 + v40;
          (v46)(v11);
          (v46)(v62, v43, v7);
          if ((sub_226D6A18C() & 1) != 0 || (sub_226D6A19C() & 1) != 0 || (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0)
          {
            if ((sub_226D6A18C() & 1) != 0 || (sub_226D6A19C() & 1) != 0 || (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0)
            {
              v47 = sub_226D6A18C();
              v48 = ((v47 ^ sub_226D6A18C()) & 1) != 0 ? sub_226D6A18C() : sub_226D6A19C();
              v49 = v48 ^ 1;
            }

            else
            {
              v49 = 0;
            }
          }

          else
          {
            v49 = 1;
          }

          a3 = v45 + v61;
          v50 = *v55;
          (*v55)(v62, v7);
          v50(v11, v7);
          if (v49)
          {
            break;
          }

          v43 = v59;
          v51 = v60;
          v39 = v60;
          if (v45 < v41 || a3 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v45 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v41 = v39;
          v44 = v51 > v56;
          v40 = v61;
          v42 = v58;
          if (!v44)
          {
            a2 = v58;
            goto LABEL_87;
          }
        }

        a2 = v59;
        if (v45 < v58 || a3 >= v58)
        {
          swift_arrayInitWithTakeFrontToBack();
          v39 = v54;
          v40 = v61;
        }

        else
        {
          v39 = v54;
          v40 = v61;
          if (v45 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v41 > v56);
    }

LABEL_87:
    v65 = a2;
    v63 = v39;
  }

  else
  {
    v23 = v21 * v19;
    v24 = v56;
    if (v56 < a1 || &a1[v23] <= v56)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v56 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = &v22[v23];
    v63 = &v22[v23];
    if (v23 >= 1 && a2 < a3)
    {
      v27 = *(v60 + 16);
      v60 += 16;
      v57 = (v60 - 8);
      v58 = v27;
      v62 = v14;
      do
      {
        v28 = v58;
        (v58)(v17, a2, v7);
        (v28)(v14, v24, v7);
        if ((sub_226D6A18C() & 1) != 0 || (sub_226D6A19C() & 1) != 0 || (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0)
        {
          if (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0 && ((sub_226D6A18C() & 1) != 0 || (sub_226D6A19C()))
          {
            v38 = *v57;
            (*v57)(v14, v7);
            v38(v17, v7);
            v36 = v61;
LABEL_42:
            if (a1 < v24 || a1 >= &v24[v36])
            {
              swift_arrayInitWithTakeFrontToBack();
              v14 = v62;
            }

            else
            {
              v14 = v62;
              if (a1 != v24)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v64 = &v24[v36];
            v24 += v36;
            goto LABEL_48;
          }

          v29 = a2;
          v30 = a3;
          v31 = v24;
          v32 = sub_226D6A18C();
          if ((v32 ^ sub_226D6A18C()))
          {
            v33 = sub_226D6A18C();
          }

          else
          {
            v33 = sub_226D6A19C();
          }

          v34 = v33;
          v35 = *v57;
          (*v57)(v62, v7);
          v35(v17, v7);
          v24 = v31;
          a3 = v30;
          a2 = v29;
          v36 = v61;
          if (v34)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v37 = *v57;
          (*v57)(v14, v7);
          v37(v17, v7);
          v36 = v61;
        }

        if (a1 < a2 || a1 >= &a2[v36])
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 += v36;
          v14 = v62;
        }

        else
        {
          v14 = v62;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v36;
        }

LABEL_48:
        a1 += v36;
        v65 = a1;
      }

      while (v24 < v59 && a2 < a3);
    }
  }

LABEL_88:
  sub_226C69388(&v65, &v64, &v63);
}

uint64_t sub_226BCDF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7090, &unk_226D75E10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22[-1] - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7098, &qword_226D740D8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v22[-1] - v14);
  v22[3] = a3;
  v22[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  sub_226AE532C(v22, a2 + 16);
  v17 = sub_226D6A1FC();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  *v15 = 0;
  v18 = *(v12 + 36);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A70A0, &qword_226D75ED0);
  bzero(v15 + v18, *(*(v19 - 8) + 64));
  sub_226B6AFA4(v10, v15 + v18);
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  memcpy((a2 + OBJC_IVAR____TtC13FinanceDaemon35ExtractedOrderConfigurationProvider_cachedAllowList), v15, v13);
  return a2;
}

uint64_t sub_226BCE0F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7090, &unk_226D75E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ExtractedOrderConfigurationProvider(uint64_t a1)
{
  result = qword_2810601E8;
  if (!qword_2810601E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226BCE1B4(uint64_t a1)
{
  sub_226BCE27C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_226BCE27C(uint64_t a1)
{
  if (!qword_28105F730[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A7090, &unk_226D75E10);
    v1 = sub_226D6D7AC();
    if (!v2)
    {
      atomic_store(v1, qword_28105F730);
    }
  }
}

uint64_t sub_226BCE2E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t NotificationAttachmentStore.__allocating_init(notificationAttachmentDirectory:)(uint64_t a1)
{
  v2 = swift_allocObject();
  NotificationAttachmentStore.init(notificationAttachmentDirectory:)(a1);
  return v2;
}

uint64_t NotificationAttachmentStoreError.hashValue.getter()
{
  sub_226D6F2FC();
  MEMORY[0x22AA8B3B0](0);
  return sub_226D6F35C();
}

uint64_t NotificationAttachmentStore.init(notificationAttachmentDirectory:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_226D6D1AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  sub_226B60178(a1, v5);
  v10 = *(v7 + 48);
  if (v10(v5, 1, v6) == 1)
  {
    type metadata accessor for NotificationAttachmentStore(0);
    sub_226BCE684();
    sub_226B601E8(a1);
    if (v10(v5, 1, v6) != 1)
    {
      sub_226B601E8(v5);
    }
  }

  else
  {
    sub_226B601E8(a1);
    (*(v7 + 32))(v9, v5, v6);
  }

  (*(v7 + 32))(v1 + OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory, v9, v6);
  return v1;
}

uint64_t type metadata accessor for NotificationAttachmentStore(uint64_t a1)
{
  result = qword_27D7A7A58;
  if (!qword_27D7A7A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_226BCE684()
{
  v0 = sub_226D6D1AC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v14 = result;
    v15 = sub_226D6E39C();
    v17 = v16;

    v20[0] = v15;
    v20[1] = v17;
    MEMORY[0x22AA8A510](0x7972617262694C2FLL, 0xE800000000000000);
    sub_226D6D0BC();

    v18 = *(v1 + 32);
    v18(v6, v3, v0);
    sub_226D6D0FC();
    v19 = *(v1 + 8);
    v19(v6, v0);
    v18(v12, v9, v0);
    sub_226D6D0FC();
    return (v19)(v12, v0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226BCE8B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_226D6D1AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_226D6D14C();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_226BCE99C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v27 = a1;
  v28 = a2;
  v25 = a5;
  v8 = sub_226D6D1AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v24 = &v22 - v17;
  v29 = v5;
  v26 = v9;
  if (a4)
  {
    strcpy(v30, "fulfillment_");
    BYTE5(v30[1]) = 0;
    HIWORD(v30[1]) = -5120;
    MEMORY[0x22AA8A510](a3, a4, v16);
    v18 = v30[1];
    v23 = v30[0];
    sub_226D6B46C();
    (*(v9 + 16))(v11, v5 + OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory, v8);
    sub_226D6D0EC();

    sub_226D6B44C();
    sub_226D6D0FC();

    v19 = *(v9 + 8);
    v19(v11, v8);
    v30[0] = v23;
    v30[1] = v18;

    MEMORY[0x22AA8A510](1735290926, 0xE400000000000000);
    v20 = v24;
    sub_226D6D0FC();

    v19(v14, v8);
  }

  else
  {
    sub_226D6B46C();
    (*(v9 + 16))(v11, v5 + OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory, v8);
    sub_226D6D0EC();

    sub_226D6B44C();
    sub_226D6D0FC();

    v19 = *(v9 + 8);
    v19(v11, v8);
    v30[0] = 0x6567616D69;
    v30[1] = 0xE500000000000000;
    MEMORY[0x22AA8A510](1735290926, 0xE400000000000000);
    v20 = v24;
    sub_226D6D0FC();

    v19(v14, v8);
  }

  sub_226BCEF88(v27, v28, v20, v25);
  return (v19)(v20, v8);
}

uint64_t sub_226BCED20@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v25 = a2;
  v23 = a5;
  v24 = a1;
  v7 = sub_226D6D1AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v21 - v16;
  v26 = 0x5F6E7275746572;
  v27 = 0xE700000000000000;
  MEMORY[0x22AA8A510](a3, a4, v15);
  v18 = v27;
  v22 = v26;
  sub_226D6B46C();
  (*(v8 + 16))(v10, v28 + OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory, v7);
  sub_226D6D0EC();

  sub_226D6B44C();
  sub_226D6D0FC();

  v19 = *(v8 + 8);
  v19(v10, v7);
  v26 = v22;
  v27 = v18;

  MEMORY[0x22AA8A510](1735290926, 0xE400000000000000);
  sub_226D6D0FC();

  v19(v13, v7);

  sub_226BCEF88(v24, v25, v17, v23);
  return (v19)(v17, v7);
}

void sub_226BCEF88(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a2;
  v24 = a4;
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = sub_226D6D1AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  v29[0] = 0;
  v27 = *(v4 + 16);
  sub_226D6D12C();
  v12 = sub_226D6D0DC();
  v22 = v8;
  v23 = v7;
  (*(v8 + 8))(v10, v7);
  v25 = a3;
  v13 = sub_226D6D0DC();
  v14 = swift_allocObject();
  v14[2] = v11;
  v14[3] = a1;
  v15 = v26;
  v14[4] = v26;
  v14[5] = v29;
  v16 = swift_allocObject();
  v16[2] = sub_226BD0168;
  v16[3] = v14;
  aBlock[4] = sub_226BD0174;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226BCF3F8;
  aBlock[3] = &block_descriptor_42;
  v17 = _Block_copy(aBlock);
  v18 = v11;

  sub_226B11B44(a1, v15);

  aBlock[0] = 0;
  v19 = v27;
  [v27 coordinateWritingItemAtURL:v12 options:0 writingItemAtURL:v13 options:8 error:aBlock byAccessor:v17];
  _Block_release(v17);

  v20 = aBlock[0];
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  if (v20)
  {
  }

  else if (!v29[0])
  {

    (*(v22 + 16))(v24, v25, v23);

    return;
  }

  sub_226BD0114();
  swift_allocError();
  swift_willThrow();
}

void sub_226BCF2F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void **a6)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v8 = sub_226D6D0DC();
  v13[0] = 0;
  LODWORD(a3) = [a3 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:v13];

  if (a3)
  {
    v9 = v13[0];
    sub_226D6D22C();
  }

  else
  {
    v10 = v13[0];
    v11 = sub_226D6D04C();

    swift_willThrow();
    v12 = *a6;
    *a6 = v11;
  }
}

uint64_t sub_226BCF3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_226D6D1AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = *(a1 + 32);
  sub_226D6D14C();
  sub_226D6D14C();
  v11(v10, v7);
  v12 = *(v5 + 8);
  v12(v7, v4);
  return (v12)(v10, v4);
}

void sub_226BCF534()
{
  v42[1] = *MEMORY[0x277D85DE8];
  v0 = sub_226D6D1AC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v35 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = v29 - v4;
  MEMORY[0x28223BE20](v6);
  v33 = v29 - v7;
  sub_226D6B46C();
  v32 = OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory;
  v8 = *(v1 + 16);
  (v8)(v5, v34 + OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory, v0);
  sub_226D6D0EC();

  sub_226D6B44C();
  sub_226D6D0FC();

  v30 = *(v1 + 8);
  v31 = v1 + 8;
  v30(v5, v0);
  sub_226D6B46C();
  v9 = v34;
  v32 = v0;
  v8();
  sub_226D6D0EC();

  v10 = [objc_opt_self() defaultManager];
  v42[0] = 0;
  v11 = *(v9 + 16);
  v12 = sub_226D6D0DC();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v42;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_226BD00C4;
  *(v14 + 24) = v13;
  v40 = sub_226BD00CC;
  v41 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_226BCE8B8;
  v39 = &block_descriptor_9;
  v15 = _Block_copy(&aBlock);
  v16 = v10;

  aBlock = 0;
  [v11 coordinateWritingItemAtURL:v12 options:1 error:&aBlock byAccessor:v15];
  _Block_release(v15);

  v17 = aBlock;
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v29[1] = v13;
  v18 = *(v9 + 16);
  v19 = sub_226D6D0DC();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v42;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_226BD010C;
  *(v21 + 24) = v20;
  v40 = sub_226BD01AC;
  v41 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_226BCE8B8;
  v39 = &block_descriptor_33_0;
  v22 = _Block_copy(&aBlock);
  v23 = v16;

  aBlock = v17;
  [v18 &selRef_brandObject];
  _Block_release(v22);

  v24 = aBlock;
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    goto LABEL_9;
  }

  if (v24)
  {

LABEL_6:
    sub_226BD0114();
    swift_allocError();
    swift_willThrow();

    v25 = v32;
    v26 = v30;
    v30(v35, v32);
    v26(v33, v25);

    return;
  }

  if (v42[0])
  {
    goto LABEL_6;
  }

  v27 = v32;
  v28 = v30;
  v30(v35, v32);
  v28(v33, v27);
}

void sub_226BCFB2C(uint64_t a1, void *a2, void **a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6D0DC();
  v12[0] = 0;
  LODWORD(a2) = [a2 removeItemAtURL:v5 error:v12];

  v6 = v12[0];
  if (a2)
  {

    v7 = v6;
  }

  else
  {
    v8 = v12[0];
    v9 = sub_226D6D04C();

    swift_willThrow();
    sub_226BD0114();
    v10 = swift_allocError();

    v11 = *a3;
    *a3 = v10;
  }
}

void sub_226BCFC58(uint64_t a1, void *a2, void **a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6D0DC();
  v19[0] = 0;
  v6 = [a2 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:4 error:v19];

  v7 = v19[0];
  if (!v6)
  {
    goto LABEL_7;
  }

  v18 = v19[0];
  sub_226D6D1AC();
  v8 = sub_226D6E5EC();
  v9 = v18;

  v10 = *(v8 + 16);

  if (v10)
  {
    return;
  }

  v11 = sub_226D6D0DC();
  v19[0] = 0;
  v12 = [a2 removeItemAtURL:v11 error:v19];

  v7 = v19[0];
  if (v12)
  {

    v13 = v7;
  }

  else
  {
LABEL_7:
    v14 = v7;
    v15 = sub_226D6D04C();

    swift_willThrow();
    sub_226BD0114();
    v16 = swift_allocError();

    v17 = *a3;
    *a3 = v16;
  }
}

uint64_t NotificationAttachmentStore.deinit()
{
  v1 = OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory;
  v2 = sub_226D6D1AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NotificationAttachmentStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory;
  v2 = sub_226D6D1AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_226BCFF1C()
{
  result = qword_27D7A7A50;
  if (!qword_27D7A7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7A50);
  }

  return result;
}

uint64_t sub_226BCFF88(uint64_t a1)
{
  result = sub_226D6D1AC();
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

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_226BD0114()
{
  result = qword_27D7A7A68;
  if (!qword_27D7A7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7A68);
  }

  return result;
}

uint64_t sub_226BD01B0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (!v4)
  {
    return !v5;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = a2[1];
  v7 = a1[1];
  if ((sub_226B2E674(v4, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_226B2E6D0(v7, v6);
}

unint64_t sub_226BD0228(uint64_t a1, unint64_t a2)
{
  v74 = a2;
  v3 = sub_226D6C38C();
  v76 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v75 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v71 - v6;
  v8 = sub_226D6B49C();
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x28223BE20](v8);
  v71 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D675EC();
  v11 = *(v10 - 8);
  v79 = v10;
  v80 = v11;
  MEMORY[0x28223BE20](v10);
  v78 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7798, &unk_226D75570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v81 = &v71 - v17;
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult(0);
  MEMORY[0x28223BE20](updated);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v71 - v22);
  MEMORY[0x28223BE20](v24);
  v26 = (&v71 - v25);
  sub_226BB8488(a1, &v71 - v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v28 = *v26;
  if (EnumCaseMultiPayload <= 1)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
    sub_226AC47B0(v26 + *(v29 + 48), &qword_27D7A7798, &unk_226D75570);
  }

  sub_226BB8488(a1, v23);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_226BB84EC(v23);
    v31 = v79;
    (*(v80 + 56))(v81, 1, 1, v79);
  }

  else
  {

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
    sub_226BBEFE8(v23 + *(v30 + 48), v81);
    v31 = v79;
  }

  sub_226BB8488(a1, v20);
  v32 = swift_getEnumCaseMultiPayload();
  v33 = *v20;
  if (v32 > 1)
  {
    v36 = v20[8];
    v37 = v20[9];
  }

  else
  {

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
    v35 = &v20[*(v34 + 64)];
    v36 = *v35;
    v37 = v35[1];
    sub_226AC47B0(&v20[*(v34 + 48)], &qword_27D7A7798, &unk_226D75570);
  }

  v38 = [v28 ecommerceOrderContent];
  v39 = v80;
  if (!v38)
  {
    sub_226AC47B0(v81, &qword_27D7A7798, &unk_226D75570);

    return 0;
  }

  v40 = v38;
  v77 = v28;
  v41 = v7;
  v42 = v3;
  v43 = v81;
  sub_226AC40E8(v81, v15, &qword_27D7A7798, &unk_226D75570);
  if ((*(v39 + 48))(v15, 1, v31) == 1)
  {
    sub_226AC47B0(v43, &qword_27D7A7798, &unk_226D75570);

    sub_226AC47B0(v15, &qword_27D7A7798, &unk_226D75570);
    return 0;
  }

  (*(v39 + 32))(v78, v15, v31);
  v44 = MEMORY[0x277D84F90];
  v84 = MEMORY[0x277D84F90];
  if (v36)
  {
    v45 = sub_226BD0BA0(v77, v40, v78, v74);
    sub_226CEE0C8(v45);
  }

  v46 = v42;
  v47 = v41;
  v48 = v77;
  if (v37)
  {
    v49 = v71;
    sub_226D6740C();
    v50 = sub_226BD1218(v49);
    (*(v72 + 8))(v49, v73);
    if (v50)
    {
      v51 = v50;
      MEMORY[0x22AA8A610]();
      if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_226D6E61C();
      }

      sub_226D6E65C();

      v48 = v77;
    }
  }

  v74 = v84;
  if (!(v84 >> 62))
  {
    if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

LABEL_37:

    (*(v39 + 8))(v78, v79);
    sub_226AC47B0(v81, &qword_27D7A7798, &unk_226D75570);

    return 0;
  }

  if (!sub_226D6EDFC())
  {
    goto LABEL_37;
  }

LABEL_22:
  sub_226D6B23C();
  v53 = v75;
  v52 = v76;
  (*(v76 + 16))(v75, v47, v46);
  v54 = (*(v52 + 88))(v53, v46);
  if (v54 == *MEMORY[0x277CC8250])
  {

    v55 = v79;
    v56 = v81;
LABEL_44:
    (*(v76 + 8))(v47, v46);
    (*(v39 + 8))(v78, v55);
    sub_226AC47B0(v56, &qword_27D7A7798, &unk_226D75570);
    return v74;
  }

  v57 = v77;
  if (v54 != *MEMORY[0x277CC8248])
  {
    goto LABEL_46;
  }

  v58 = sub_226D6B27C();
  v59 = v58;
  if (v58 >> 62)
  {
    v60 = sub_226D6EDFC();
    if (v60)
    {
      goto LABEL_27;
    }

LABEL_40:

LABEL_41:
    v69 = [v40 associatedApplicationIdentifiers];
    v39 = v80;
    if (v69)
    {
      v70 = v69;
      sub_226D6E5EC();

      v40 = v57;
      v57 = v70;
    }

    v55 = v79;
    v56 = v81;

    goto LABEL_44;
  }

  v60 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v60)
  {
    goto LABEL_40;
  }

LABEL_27:
  v73 = v47;
  v75 = v46;
  v82 = v44;
  sub_226AE23A4(0, v60 & ~(v60 >> 63), 0);
  if ((v60 & 0x8000000000000000) == 0)
  {
    v61 = 0;
    v62 = v82;
    do
    {
      if ((v59 & 0xC000000000000001) != 0)
      {
        v63 = MEMORY[0x22AA8AFD0](v61, v59);
      }

      else
      {
        v63 = *(v59 + 8 * v61 + 32);
      }

      v64 = v63;
      v65 = [v63 storeIdentifier];

      v82 = v62;
      v67 = *(v62 + 16);
      v66 = *(v62 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_226AE23A4((v66 > 1), v67 + 1, 1);
        v62 = v82;
      }

      ++v61;
      *(v62 + 16) = v67 + 1;
      *(v62 + 8 * v67 + 32) = v65;
    }

    while (v60 != v61);

    v46 = v75;
    v47 = v73;
    v57 = v77;
    goto LABEL_41;
  }

  __break(1u);
LABEL_46:
  v82 = 0;
  v83 = 0xE000000000000000;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD00000000000002DLL, 0x8000000226D82610);
  sub_226D6EFBC();
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}