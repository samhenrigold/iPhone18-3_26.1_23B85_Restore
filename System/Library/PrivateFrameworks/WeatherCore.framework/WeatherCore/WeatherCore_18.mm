uint64_t LocationsConfiguration.locationsOfInterestSupportURLiOS.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocationsConfiguration(0) + 32);
  sub_1C96A4764();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t LocationsConfiguration.locationsOfInterestSupportURLmacOS.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocationsConfiguration(0) + 36);
  sub_1C96A4764();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t LocationsConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7100, &qword_1C96BCD30);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947EF84();
  sub_1C96A7F54();
  v18[4] = 0;
  OUTLINED_FUNCTION_0_59();
  sub_1C96A7D54();
  if (!v2)
  {
    v18[3] = 1;
    OUTLINED_FUNCTION_0_59();
    sub_1C96A7D54();
    v18[2] = 2;
    OUTLINED_FUNCTION_0_59();
    sub_1C96A7D54();
    v18[1] = 3;
    OUTLINED_FUNCTION_0_59();
    sub_1C96A7D54();
    v11 = type metadata accessor for LocationsConfiguration(0);
    v12 = *(v11 + 32);
    v18[0] = 4;
    sub_1C96A4764();
    sub_1C96058F0();
    OUTLINED_FUNCTION_10_33(v3 + v12, v18);
    v13 = *(v11 + 36);
    v17 = 5;
    OUTLINED_FUNCTION_10_33(v3 + v13, &v17);
    v16 = 6;
    OUTLINED_FUNCTION_0_59();
    sub_1C96A7D34();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1C96058F0()
{
  result = qword_1EDB7FD80;
  if (!qword_1EDB7FD80)
  {
    sub_1C96A4764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FD80);
  }

  return result;
}

unint64_t sub_1C9605948(uint64_t a1)
{
  v1 = sub_1C96A7BE4();

  if (v1 >= 7)
  {
    return 7;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1C96059C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C9605948(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C96059F0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C947EFF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C9605A1C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C9605994(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C9605A44(uint64_t a1)
{
  v2 = sub_1C947EF84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9605A80(uint64_t a1)
{
  v2 = sub_1C947EF84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C9605ADC()
{
  result = qword_1EC3A7108;
  if (!qword_1EC3A7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7108);
  }

  return result;
}

char *sub_1C9605B48(unint64_t a1, void (*a2)(char *, BOOL, uint64_t))
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v5 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      a2(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v5 + 32);
      }
    }

    return MEMORY[0x1CCA8D440](v5, a1);
  }

  result = sub_1C96A7BB4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1C9605BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_1C96A5CF4();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_1C96A5CF4();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t PrecipitationNotificationPolicyHandler.policy(for:with:configuration:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v573 = a2;
  v567 = a4;
  v527 = type metadata accessor for PrecipitationNotification(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_6_36(v8);
  v533 = sub_1C96A5CB4();
  OUTLINED_FUNCTION_1();
  v532 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_6_36(v11);
  v542 = sub_1C96A5DD4();
  OUTLINED_FUNCTION_1();
  v541 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_6_36(v15);
  v16 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v550 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_6_36(v21);
  v571 = sub_1C96A5CF4();
  OUTLINED_FUNCTION_1();
  v568 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_51_0();
  v561 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7110, &unk_1C96BCF50);
  MEMORY[0x1EEE9AC00](v32 - 8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_51_0();
  v570 = v37;
  v565 = sub_1C96A4A94();
  OUTLINED_FUNCTION_1();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_37_0();
  v563 = v41;
  v554 = sub_1C96A5FF4();
  OUTLINED_FUNCTION_1();
  v557 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_37_0();
  v556 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  MEMORY[0x1EEE9AC00](v45 - 8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_51_0();
  v48 = OUTLINED_FUNCTION_6_36(v47);
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule(v48);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_51_0();
  v575 = v51;
  v52 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v52 - 8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_18_1();
  v560 = v66;
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_18_1();
  v574 = v69;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v520[-v71];
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v73 = sub_1C96A6154();
  v74 = __swift_project_value_buffer(v73, qword_1EDB7AC90);
  OUTLINED_FUNCTION_1_58();
  sub_1C960A530(a1, v72, v75);
  v576 = v74;
  v76 = sub_1C96A6134();
  v77 = sub_1C96A76A4();
  v78 = os_log_type_enabled(v76, v77);
  v566 = v16;
  v572 = a1;
  v569 = a3;
  if (v78)
  {
    v79 = OUTLINED_FUNCTION_102();
    v80 = OUTLINED_FUNCTION_8_4();
    v577 = v80;
    *v79 = 141558275;
    *(v79 + 4) = 1752392040;
    OUTLINED_FUNCTION_9_33();
    v564 = v39;
    v82 = v81;
    v83 = v574;
    sub_1C960A530(v72, v574, v81);
    v84 = *v83;
    v85 = v83[1];
    sub_1C96A53C4();
    sub_1C960A590(v83, v82);
    v86 = sub_1C9484164(v84, v85, &v577);
    a1 = v572;

    *(v79 + 14) = v86;
    v87 = v82;
    v39 = v564;
    sub_1C960A590(v72, v87);
    OUTLINED_FUNCTION_60_4(&dword_1C945E000, v88, v77, "Evaluating notification policy for subscription: %{private,mask.hash}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    OUTLINED_FUNCTION_26();
    v16 = v566;
    OUTLINED_FUNCTION_26();
  }

  else
  {

    OUTLINED_FUNCTION_0_85();
    sub_1C960A590(v72, v89);
  }

  v90 = Schedule;
  v91 = v575;
  sub_1C960A530(a1, v575 + *(Schedule + 20), type metadata accessor for NotificationSubscription);
  v92 = v556;
  sub_1C96A5D54();
  v93 = v555;
  sub_1C96A5FA4();
  (*(v557 + 1))(v92, v554);
  __swift_storeEnumTagSinglePayload(v93, 0, 1, v16);
  v556 = *(v90 + 24);
  PrecipitationNotificationConfiguration.reschedulingDate(from:)(v93, v91 + v556);
  sub_1C9470AFC(v93, &unk_1EC3A5430, &unk_1C96AAB30);
  v94 = v563;
  sub_1C96A4A84();
  v95 = sub_1C96A4A64();
  v97 = v96;
  v98 = *(v39 + 8);
  v564 = v39 + 8;
  v557 = v98;
  (v98)(v94, v565);
  *v91 = v95;
  v91[1] = v97;
  *(v91 + *(v90 + 28)) = 0x408C200000000000;
  v99 = v91;
  v100 = v16;
  v101 = v559;
  sub_1C960A530(v99, v559, type metadata accessor for PrecipitationNotificationFetchSchedule);
  v102 = a1;
  v103 = v558;
  sub_1C960A530(a1, v558, type metadata accessor for NotificationSubscription);
  v104 = sub_1C96A6134();
  v105 = sub_1C96A76A4();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = OUTLINED_FUNCTION_8_4();
    v107 = OUTLINED_FUNCTION_58_3();
    OUTLINED_FUNCTION_65_4(v107);
    *v106 = 136446723;
    OUTLINED_FUNCTION_11_31();
    sub_1C960A6AC(v108, v109, MEMORY[0x1E6969570]);
    v110 = sub_1C96A7DB4();
    v112 = sub_1C9484164(v110, v111, &v577);

    *(v106 + 4) = v112;
    OUTLINED_FUNCTION_5_42();
    sub_1C960A590(v101, v113);
    *(v106 + 12) = 2160;
    OUTLINED_FUNCTION_25();
    *(v106 + 14) = v114;
    *(v106 + 22) = 2081;
    v90 = v574;
    sub_1C960A530(v103, v574, type metadata accessor for NotificationSubscription);
    v115 = *v90;
    v116 = *(v90 + 8);
    sub_1C96A53C4();
    sub_1C960A590(v90, type metadata accessor for NotificationSubscription);
    v117 = sub_1C9484164(v115, v116, &v577);

    *(v106 + 24) = v117;
    sub_1C960A590(v103, type metadata accessor for NotificationSubscription);
    _os_log_impl(&dword_1C945E000, v104, v105, "Determine next scheduling opportunity: %{public}s for subscription: %{private,mask.hash}s", v106, 0x20u);
    swift_arrayDestroy();
    v102 = v572;
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  else
  {

    OUTLINED_FUNCTION_5_42();
    sub_1C960A590(v101, v118);
    OUTLINED_FUNCTION_0_85();
    sub_1C960A590(v103, v119);
  }

  v120 = v571;
  v121 = v560;
  v122 = sub_1C96A5D34();
  v123 = v122;
  if (!*(v122 + 16))
  {
    v560 = v122;
    OUTLINED_FUNCTION_1_58();
    v138 = v551;
    sub_1C960A530(v102, v551, v139);
    v140 = v576;
    v141 = sub_1C96A6134();
    v142 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_30_0(v142))
    {
      OUTLINED_FUNCTION_102();
      v143 = OUTLINED_FUNCTION_23_20();
      v577 = v143;
      OUTLINED_FUNCTION_2_57(7.2225e-34);
      sub_1C960A530(v138, v574, v144);
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_59_3();
      OUTLINED_FUNCTION_22_21();
      OUTLINED_FUNCTION_34_9();

      *(v140 + 14) = v90;

      sub_1C960A590(v138, v102);
      _os_log_impl(&dword_1C945E000, v141, v142, "Rescheduling notification for subscription: %{private,mask.hash}s due to insufficient summaries", v140, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v143);
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_20();
    }

    else
    {

      OUTLINED_FUNCTION_0_85();
      sub_1C960A590(v138, v182);
    }

LABEL_23:
    OUTLINED_FUNCTION_3_42();
    sub_1C960A64C(v575, v567, v184);
    v185 = type metadata accessor for PrecipitationNotificationPolicy(0);
    return OUTLINED_FUNCTION_32_5(v185);
  }

  OUTLINED_FUNCTION_1_58();
  sub_1C960A530(v102, v121, v124);
  sub_1C96A53C4();
  v125 = v576;
  v126 = sub_1C96A6134();
  v127 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_28_15(v127))
  {
    OUTLINED_FUNCTION_8_4();
    v128 = OUTLINED_FUNCTION_23_20();
    OUTLINED_FUNCTION_44_6(v128);
    *v125 = 134349571;
    *(v125 + 4) = v123[2];

    *(v125 + 6) = 2160;
    OUTLINED_FUNCTION_25();
    *(v125 + 14) = v129;
    *(v125 + 11) = 2081;
    v100 = v574;
    sub_1C960A530(v121, v574, type metadata accessor for NotificationSubscription);
    OUTLINED_FUNCTION_61_2();
    OUTLINED_FUNCTION_59_3();
    OUTLINED_FUNCTION_22_21();
    OUTLINED_FUNCTION_34_9();

    v125[3] = v90;
    v130 = OUTLINED_FUNCTION_63_4();
    v102 = v572;
    sub_1C960A590(v130, v131);
    OUTLINED_FUNCTION_15_28();
    _os_log_impl(v132, v133, v134, v135, v136, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v123);
    v120 = v571;
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_20();
  }

  else
  {

    OUTLINED_FUNCTION_0_85();
    v137 = sub_1C960A590(v121, v145);
  }

  v146 = v561;
  v147 = v568;
  MEMORY[0x1EEE9AC00](v137);
  *&v520[-16] = v148;
  v149 = v570;
  sub_1C95F6F2C(sub_1C960A480, v123, v570);
  v150 = v553;
  sub_1C960A4A0(v149, v553);
  if (__swift_getEnumTagSinglePayload(v150, 1, v120) == 1)
  {
    sub_1C9470AFC(v150, &qword_1EC3A7110, &unk_1C96BCF50);
    OUTLINED_FUNCTION_1_58();
    v151 = v546;
    sub_1C960A530(v102, v546, v152);
    v153 = v576;
    v154 = sub_1C96A6134();
    v155 = sub_1C96A7684();
    if (OUTLINED_FUNCTION_28_15(v155))
    {
      OUTLINED_FUNCTION_102();
      v156 = OUTLINED_FUNCTION_23_20();
      OUTLINED_FUNCTION_44_6(v156);
      OUTLINED_FUNCTION_2_57(7.2225e-34);
      sub_1C960A530(v151, v574, v157);
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_59_3();
      OUTLINED_FUNCTION_22_21();
      OUTLINED_FUNCTION_34_9();

      *(v153 + 14) = v146;

      sub_1C960A590(v151, &off_1C96AA000);
      OUTLINED_FUNCTION_15_28();
      _os_log_impl(v158, v159, v160, v161, v162, 0x16u);
      OUTLINED_FUNCTION_19_24();
      OUTLINED_FUNCTION_20();
    }

    else
    {

      OUTLINED_FUNCTION_0_85();
      sub_1C960A590(v151, v183);
    }

    sub_1C9470AFC(v570, &qword_1EC3A7110, &unk_1C96BCF50);
    goto LABEL_23;
  }

  v163 = *(v147 + 32);
  v554 = v147 + 32;
  v553 = v163;
  v163(v146, v150, v120);
  v164 = *(v147 + 16);
  v165 = v547;
  v558 = v147 + 16;
  v555 = v164;
  (v164)(v547, v146, v120);
  OUTLINED_FUNCTION_1_58();
  OUTLINED_FUNCTION_62_4(v102, &v577, v166);
  v167 = sub_1C96A6134();
  v168 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_30_0(v168))
  {
    v169 = OUTLINED_FUNCTION_8_4();
    v560 = v123;
    v170 = v169;
    v577 = OUTLINED_FUNCTION_58_3();
    *v170 = 136446723;
    OUTLINED_FUNCTION_26_12();
    sub_1C960A6AC(v171, v172, MEMORY[0x1E69E1900]);
    v173 = v165;
    v174 = sub_1C96A7DB4();
    OUTLINED_FUNCTION_71_3(v174, v175);
    OUTLINED_FUNCTION_69_3();
    *(v170 + 4) = v147;
    v176 = OUTLINED_FUNCTION_57_3(v568);
    v177(v176);
    *(v170 + 12) = 2160;
    OUTLINED_FUNCTION_25();
    *(v170 + 14) = v178;
    *(v170 + 22) = 2081;
    OUTLINED_FUNCTION_6_44();
    v179 = v574;
    sub_1C960A530(v100, v574, v180);
    v181 = *v179;
    v120 = v179[1];
    sub_1C96A53C4();
    sub_1C960A590(v179, v173);
    OUTLINED_FUNCTION_48_7();
    OUTLINED_FUNCTION_47_3();
    *(v170 + 24) = v181;
    OUTLINED_FUNCTION_70_1();
    _os_log_impl(&dword_1C945E000, v167, v168, "Current summary: %{public}s for subscription: %{private,mask.hash}s", v170, 0x20u);
    swift_arrayDestroy();
    v146 = v561;
    OUTLINED_FUNCTION_26();
    v123 = v560;
    OUTLINED_FUNCTION_26();
  }

  else
  {

    v187 = OUTLINED_FUNCTION_57_3(v147);
    v188(v187);
    OUTLINED_FUNCTION_0_85();
    sub_1C960A590(v100, v189);
  }

  v190 = v548;
  sub_1C96A5C84();
  v191 = v566;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v190, 1, v566);
  v193 = v572;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C9470AFC(v190, &unk_1EC3A5430, &unk_1C96AAB30);
    OUTLINED_FUNCTION_1_58();
    OUTLINED_FUNCTION_62_4(v193, &v574, v194);
    v195 = sub_1C96A6134();
    v196 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_28_15(v196))
    {
      OUTLINED_FUNCTION_102();
      v197 = OUTLINED_FUNCTION_23_20();
      OUTLINED_FUNCTION_44_6(v197);
      OUTLINED_FUNCTION_2_57(7.2225e-34);
      sub_1C960A530(v100, v574, v198);
      sub_1C96A53C4();
      v199 = OUTLINED_FUNCTION_63_4();
      sub_1C960A590(v199, v200);
      OUTLINED_FUNCTION_22_21();
      OUTLINED_FUNCTION_34_9();

      OUTLINED_FUNCTION_67_5();
      OUTLINED_FUNCTION_59_3();
      OUTLINED_FUNCTION_15_28();
      _os_log_impl(v201, v202, v203, v204, v205, 0x16u);
      OUTLINED_FUNCTION_19_24();
      OUTLINED_FUNCTION_20();
    }

    else
    {

      OUTLINED_FUNCTION_0_85();
      sub_1C960A590(v100, v224);
    }

    sub_1C9470AFC(v570, &qword_1EC3A7110, &unk_1C96BCF50);
    v225 = v567;
    OUTLINED_FUNCTION_3_42();
    sub_1C960A64C(v226, v225, v227);
    v228 = type metadata accessor for PrecipitationNotificationPolicy(0);
    OUTLINED_FUNCTION_32_5(v228);
LABEL_37:
    OUTLINED_FUNCTION_52_5();
    return v255();
  }

  OUTLINED_FUNCTION_31_6();
  v207 = v552;
  v208 = (*(v206 + 32))(v552, v190, v191);
  MEMORY[0x1EEE9AC00](v208);
  *&v520[-16] = v146;
  *&v520[-8] = v207;
  v209 = v549;
  sub_1C95F6F2C(sub_1C960A510, v123, v549);
  v210 = v209;
  v211 = v544;
  sub_1C960A4A0(v210, v544);
  if (__swift_getEnumTagSinglePayload(v211, 1, v120) == 1)
  {
    sub_1C9470AFC(v211, &qword_1EC3A7110, &unk_1C96BCF50);
    OUTLINED_FUNCTION_1_58();
    OUTLINED_FUNCTION_62_4(v193, &v566, v212);
    v213 = sub_1C96A6134();
    v214 = sub_1C96A7684();
    if (OUTLINED_FUNCTION_28_15(v214))
    {
      OUTLINED_FUNCTION_102();
      v215 = OUTLINED_FUNCTION_23_20();
      OUTLINED_FUNCTION_44_6(v215);
      OUTLINED_FUNCTION_2_57(7.2225e-34);
      sub_1C960A530(v100, v574, v216);
      sub_1C96A53C4();
      v217 = OUTLINED_FUNCTION_63_4();
      sub_1C960A590(v217, v218);
      OUTLINED_FUNCTION_22_21();
      OUTLINED_FUNCTION_34_9();

      OUTLINED_FUNCTION_67_5();
      OUTLINED_FUNCTION_59_3();
      OUTLINED_FUNCTION_15_28();
      _os_log_impl(v219, v220, v221, v222, v223, 0x16u);
      OUTLINED_FUNCTION_19_24();
      OUTLINED_FUNCTION_20();
    }

    else
    {

      OUTLINED_FUNCTION_0_85();
      sub_1C960A590(v100, v248);
    }

    v249 = OUTLINED_FUNCTION_30_10();
    OUTLINED_FUNCTION_53_2(v249);
    OUTLINED_FUNCTION_53_2(v570);
    v250 = v567;
    v251 = v550;
    OUTLINED_FUNCTION_3_42();
    sub_1C960A64C(v252, v250, v253);
    v254 = type metadata accessor for PrecipitationNotificationPolicy(0);
    OUTLINED_FUNCTION_32_5(v254);
    (*(v251 + 8))(v552, v566);
    goto LABEL_37;
  }

  v560 = v123;
  v553(v545, v211, v120);
  v229 = OUTLINED_FUNCTION_55_4(&v568);
  v555(v229);
  OUTLINED_FUNCTION_1_58();
  v230 = v538;
  sub_1C960A530(v193, v538, v231);
  v232 = sub_1C96A6134();
  v233 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_30_0(v233))
  {
    v234 = v230;
    v235 = OUTLINED_FUNCTION_8_4();
    v236 = OUTLINED_FUNCTION_58_3();
    OUTLINED_FUNCTION_65_4(v236);
    *v235 = 136446723;
    OUTLINED_FUNCTION_26_12();
    sub_1C960A6AC(v237, v238, MEMORY[0x1E69E1900]);
    v239 = sub_1C96A7DB4();
    v241 = OUTLINED_FUNCTION_71_3(v239, v240);

    *(v235 + 4) = v241;
    OUTLINED_FUNCTION_52_5();
    v242();
    *(v235 + 12) = 2160;
    OUTLINED_FUNCTION_25();
    *(v235 + 14) = v243;
    *(v235 + 22) = 2081;
    OUTLINED_FUNCTION_6_44();
    v244 = v234;
    v245 = v574;
    sub_1C960A530(v244, v574, v246);
    v247 = *v245;
    sub_1C96A53C4();
    sub_1C960A590(v245, v100);
    OUTLINED_FUNCTION_22_21();
    OUTLINED_FUNCTION_34_9();

    *(v235 + 24) = v247;
    v146 = v561;
    OUTLINED_FUNCTION_70_1();
    _os_log_impl(&dword_1C945E000, v232, v233, "Next summary: %{public}s for subscription: %{private,mask.hash}s", v235, 0x20u);
    swift_arrayDestroy();
    v193 = v572;
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_38_0();
  }

  else
  {

    OUTLINED_FUNCTION_52_5();
    v256();
    OUTLINED_FUNCTION_0_85();
    sub_1C960A590(v230, v257);
  }

  v258 = v569;
  v259 = v539;
  sub_1C96A5CC4();
  v260 = sub_1C96A5DC4() & 1;
  v261 = *(v541 + 8);
  v262 = v259;
  v263 = v542;
  v261(v262, v542);
  v264 = v540;
  sub_1C96A5CC4();
  v265 = sub_1C96A5DC4() & 1;
  v261(v264, v263);
  v266 = v567;
  v267 = v575;
  if (v260 == v265)
  {
    OUTLINED_FUNCTION_1_58();
    OUTLINED_FUNCTION_62_4(v193, &v565, v287);
    v288 = v576;
    v289 = sub_1C96A6134();
    v290 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_28_15(v290))
    {
      OUTLINED_FUNCTION_102();
      v576 = OUTLINED_FUNCTION_23_20();
      v577 = v576;
      OUTLINED_FUNCTION_2_57(7.2225e-34);
      sub_1C960A530(v264, v574, v291);
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_59_3();
      OUTLINED_FUNCTION_22_21();
      OUTLINED_FUNCTION_34_9();

      *(v288 + 14) = v146;
      v146 = v561;

      sub_1C960A590(v537, v193);
      OUTLINED_FUNCTION_15_28();
      _os_log_impl(v292, v293, v294, v295, v296, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v576);
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_20();
    }

    else
    {

      OUTLINED_FUNCTION_0_85();
      sub_1C960A590(v264, v321);
    }

    v322 = OUTLINED_FUNCTION_64_4();
    v324 = *(v323 - 256);
    v324(v322);
    v325 = OUTLINED_FUNCTION_30_10();
    OUTLINED_FUNCTION_53_2(v325);
    OUTLINED_FUNCTION_53_2(v570);
    v326 = v550;
    OUTLINED_FUNCTION_3_42();
    sub_1C960A64C(v267, v266, v327);
    type metadata accessor for PrecipitationNotificationPolicy(0);
    swift_storeEnumTagMultiPayload();
    (*(v326 + 8))(v552, v566);
    return (v324)(v146, v120);
  }

  v554 = type metadata accessor for PrecipitationNotificationConfiguration(0);
  v268 = v543;
  sub_1C96A4974();
  v269 = *(v550 + 16);
  v270 = v535;
  v551 = v550 + 16;
  v548 = v269;
  v269(v535, v268, v566);
  OUTLINED_FUNCTION_1_58();
  v271 = v193;
  v272 = v534;
  sub_1C960A530(v271, v534, v273);
  v274 = sub_1C96A6134();
  v275 = sub_1C96A76A4();
  if (os_log_type_enabled(v274, v275))
  {
    v276 = OUTLINED_FUNCTION_8_4();
    v577 = OUTLINED_FUNCTION_58_3();
    *v276 = 136446723;
    OUTLINED_FUNCTION_11_31();
    sub_1C960A6AC(v277, v278, MEMORY[0x1E6969570]);
    LODWORD(v547) = v275;
    v279 = sub_1C96A7DB4();
    OUTLINED_FUNCTION_71_3(v279, v280);
    OUTLINED_FUNCTION_69_3();
    *(v276 + 4) = v266;
    v281 = OUTLINED_FUNCTION_43_12();
    v282(v281);
    *(v276 + 12) = 2160;
    OUTLINED_FUNCTION_25();
    *(v276 + 14) = v283;
    *(v276 + 22) = 2081;
    OUTLINED_FUNCTION_6_44();
    v284 = v574;
    sub_1C960A530(v272, v574, v285);
    v286 = *v284;
    v120 = v284[1];
    sub_1C96A53C4();
    OUTLINED_FUNCTION_70_1();
    OUTLINED_FUNCTION_48_7();
    OUTLINED_FUNCTION_47_3();
    *(v276 + 24) = v286;
    sub_1C960A590(v272, v270);
    _os_log_impl(&dword_1C945E000, v274, v547, "Notification should be send after: %{public}s for subscription: %{private,mask.hash}s", v276, 0x20u);
    swift_arrayDestroy();
    v146 = v561;
    OUTLINED_FUNCTION_26();
    v258 = v569;
    OUTLINED_FUNCTION_26();
  }

  else
  {

    v297 = OUTLINED_FUNCTION_43_12();
    v298(v297);
    OUTLINED_FUNCTION_0_85();
    sub_1C960A590(v272, v299);
  }

  v300 = &off_1C96AA000;
  v301 = *(v554 + 20);
  OUTLINED_FUNCTION_11_31();
  sub_1C960A6AC(v302, v303, MEMORY[0x1E6969548]);
  OUTLINED_FUNCTION_49_6();
  v304 = sub_1C96A6F64();
  v305 = v258;
  v306 = v572;
  v307 = v575;
  if (v304)
  {
    OUTLINED_FUNCTION_1_58();
    v308 = v306;
    v309 = v529;
    sub_1C960A530(v308, v529, v310);
    v311 = v576;
    v312 = sub_1C96A6134();
    v313 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_28_15(v313))
    {
      OUTLINED_FUNCTION_102();
      v314 = OUTLINED_FUNCTION_23_20();
      OUTLINED_FUNCTION_44_6(v314);
      OUTLINED_FUNCTION_2_57(7.2225e-34);
      v300 = v574;
      sub_1C960A530(v309, v574, v315);
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_59_3();
      OUTLINED_FUNCTION_22_21();
      OUTLINED_FUNCTION_34_9();

      *(v311 + 14) = v146;
      v146 = v561;

      v307 = v575;
      sub_1C960A590(v309, v305);
      OUTLINED_FUNCTION_15_28();
      _os_log_impl(v316, v317, v318, v319, v320, 0x16u);
      OUTLINED_FUNCTION_19_24();
      OUTLINED_FUNCTION_20();
    }

    else
    {

      OUTLINED_FUNCTION_0_85();
      sub_1C960A590(v309, v361);
    }

    v362 = OUTLINED_FUNCTION_4_53();
    (v300)(v362);
    v363 = OUTLINED_FUNCTION_64_4();
    v365 = *(v364 - 256);
    v365(v363);
    v366 = OUTLINED_FUNCTION_30_10();
    OUTLINED_FUNCTION_53_2(v366);
    OUTLINED_FUNCTION_53_2(v570);
    OUTLINED_FUNCTION_3_42();
    sub_1C960A64C(v307, v567, v367);
    v368 = type metadata accessor for PrecipitationNotificationPolicy(0);
    OUTLINED_FUNCTION_32_5(v368);
    v369 = OUTLINED_FUNCTION_49_6();
    (v300)(v369, v305);
    return (v365)(v146, v120);
  }

  v328 = v536;
  v329 = v545;
  sub_1C9608D68(v560, v545, v305, v536);
  sub_1C960970C(v328, v329, v306, v146, v305, &v577);
  v330 = v577;
  if ((sub_1C95495CC(v577, 0) & 1) != 0 && !ForecastSummary.meetsNotificationThresholds(with:)(v305))
  {
    v399 = v523;
    v400 = v555;
    (v555)(v523, v329, v120);
    v401 = OUTLINED_FUNCTION_55_4(&v551);
    v400(v401);
    v402 = sub_1C96A6134();
    v403 = sub_1C96A76A4();
    if (os_log_type_enabled(v402, v403))
    {
      v404 = v399;
      v405 = OUTLINED_FUNCTION_102();
      v574 = OUTLINED_FUNCTION_58_3();
      v578 = v574;
      *v405 = 136446466;
      LODWORD(v573) = v403;
      v406 = sub_1C96A5C24();
      OUTLINED_FUNCTION_29_10(v406, v407);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57C0, &qword_1C96B03B8);
      v408 = OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_72_1(v408, v409);
      OUTLINED_FUNCTION_69_3();
      OUTLINED_FUNCTION_46_3();
      v301 = v559;
      v559(v404, v571);
      *(v405 + 12) = 2082;
      v410 = sub_1C96A5C14();
      OUTLINED_FUNCTION_29_10(v410, v411);
      v412 = OUTLINED_FUNCTION_68_2();
      v414 = OUTLINED_FUNCTION_72_1(v412, v413);

      *(v405 + 14) = v414;
      v146 = v561;

      (v301)(&off_1C96AA000, v571);
      _os_log_impl(&dword_1C945E000, v402, v573, "Rescheduling precipitation starting notification due to forecast summary threshold %{public}s - %{public}s", v405, 0x16u);
      OUTLINED_FUNCTION_66_4();
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_38_0();

      v415 = OUTLINED_FUNCTION_39_6();
      sub_1C9470AFC(v415, &qword_1EC3A7110, &unk_1C96BCF50);
      v416 = OUTLINED_FUNCTION_4_53();
      (off_1C96AA000)(v416);
      (v301)(v329, v571);
      v120 = v571;
      v417 = OUTLINED_FUNCTION_30_10();
      sub_1C9470AFC(v417, &qword_1EC3A7110, &unk_1C96BCF50);
      v418 = v570;
LABEL_81:
      sub_1C9470AFC(v418, &qword_1EC3A7110, &unk_1C96BCF50);
      OUTLINED_FUNCTION_3_42();
      sub_1C960A64C(v307, v567, v493);
      v494 = type metadata accessor for PrecipitationNotificationPolicy(0);
      OUTLINED_FUNCTION_32_5(v494);
      v495 = OUTLINED_FUNCTION_49_6();
      (v300)(v495, v402);
      return (v301)(v146, v120);
    }

    v466 = OUTLINED_FUNCTION_35_7();
    (v301)(v466);
    (v301)(v399, v120);

    v467 = OUTLINED_FUNCTION_39_6();
    sub_1C9470AFC(v467, v468, &unk_1C96BCF50);
    v469 = OUTLINED_FUNCTION_4_53();
    (off_1C96AA000)(v469);
    (v301)(v329, v120);
    v470 = OUTLINED_FUNCTION_30_10();
LABEL_80:
    OUTLINED_FUNCTION_53_2(v470);
    v418 = v570;
    goto LABEL_81;
  }

  if ((sub_1C95495CC(v330, 1) & 1) != 0 && !ForecastSummary.meetsNotificationThresholds(with:)(v569))
  {
    v402 = v521;
    v434 = v555;
    (v555)(v521, v146, v120);
    v300 = v522;
    v434(v522, v146, v120);
    v435 = sub_1C96A6134();
    v436 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_30_0(v436))
    {
      v437 = OUTLINED_FUNCTION_102();
      v574 = OUTLINED_FUNCTION_58_3();
      v578 = v574;
      *v437 = 136446466;
      v438 = sub_1C96A5C24();
      OUTLINED_FUNCTION_29_10(v438, v439);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57C0, &qword_1C96B03B8);
      v440 = OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_72_1(v440, v441);
      OUTLINED_FUNCTION_69_3();
      OUTLINED_FUNCTION_46_3();
      v301 = v559;
      v559(v402, v571);
      *(v437 + 12) = 2082;
      v442 = sub_1C96A5C14();
      OUTLINED_FUNCTION_29_10(v442, v443);
      v444 = OUTLINED_FUNCTION_68_2();
      v446 = OUTLINED_FUNCTION_72_1(v444, v445);

      *(v437 + 14) = v446;
      v146 = v561;

      (v301)(v300, v571);
      _os_log_impl(&dword_1C945E000, v435, v436, "Rescheduling precipitation stopping notification due to forecast summary threshold %{public}s - %{public}s", v437, 0x16u);
      OUTLINED_FUNCTION_66_4();
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_38_0();

      v447 = OUTLINED_FUNCTION_39_6();
      OUTLINED_FUNCTION_53_2(v447);
      v448 = OUTLINED_FUNCTION_4_53();
      (v300)(v448);
      (v301)(v545, v571);
      v120 = v571;
    }

    else
    {

      v490 = OUTLINED_FUNCTION_35_7();
      (v301)(v490);
      (v301)(v402, v120);

      v491 = OUTLINED_FUNCTION_39_6();
      OUTLINED_FUNCTION_53_2(v491);
      v492 = OUTLINED_FUNCTION_4_53();
      (v300)(v492);
      (v301)(v545, v120);
    }

    v470 = OUTLINED_FUNCTION_30_10();
    goto LABEL_80;
  }

  v558 = v301;
  v331 = v530;
  v332 = v573;
  sub_1C9609F68(v330, v573, v545, v146, v530);
  v333 = v527;
  v334 = v531;
  sub_1C96A5CC4();
  sub_1C96A5CC4();
  (*(v532 + 16))(v334 + *(v333 + 32), v331, v533);
  v335 = *(v333 + 36);
  sub_1C96A5D64();
  OUTLINED_FUNCTION_6();
  (*(v336 + 16))(v334 + v335, v332);
  OUTLINED_FUNCTION_33_9();
  v337();
  sub_1C96A5C84();
  sub_1C96A4A84();
  v338 = sub_1C96A4A64();
  v340 = v339;
  OUTLINED_FUNCTION_51_5();
  v341();
  *v334 = v338;
  *(v334 + 8) = v340;
  v342 = v572;
  *(v334 + 16) = v330;
  OUTLINED_FUNCTION_24_17();
  v343 = v528;
  sub_1C960A530(v334, v528, v344);
  OUTLINED_FUNCTION_1_58();
  v345 = v525;
  sub_1C960A530(v342, v525, v346);
  v347 = sub_1C96A6134();
  v348 = sub_1C96A76A4();
  if (os_log_type_enabled(v347, v348))
  {
    v349 = OUTLINED_FUNCTION_8_4();
    v577 = OUTLINED_FUNCTION_58_3();
    *v349 = 136446723;
    v350 = v343;
    v351 = PrecipitationNotification.description.getter();
    v353 = OUTLINED_FUNCTION_71_3(v351, v352);

    *(v349 + 4) = v353;
    OUTLINED_FUNCTION_10_34();
    sub_1C960A590(v343, v354);
    *(v349 + 12) = 2160;
    OUTLINED_FUNCTION_25();
    *(v349 + 14) = v355;
    *(v349 + 22) = 2081;
    OUTLINED_FUNCTION_6_44();
    v356 = v574;
    sub_1C960A530(v345, v574, v357);
    v359 = *v356;
    v358 = v356[1];
    sub_1C96A53C4();
    OUTLINED_FUNCTION_70_1();
    v360 = sub_1C9484164(v359, v358, &v577);

    *(v349 + 24) = v360;
    v120 = v571;
    sub_1C960A590(v345, v350);
    _os_log_impl(&dword_1C945E000, v347, v348, "Constructed notification: %{public}s for subscription: %{private,mask.hash}s", v349, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    v342 = v572;
    OUTLINED_FUNCTION_26();
  }

  else
  {

    OUTLINED_FUNCTION_10_34();
    sub_1C960A590(v343, v370);
    OUTLINED_FUNCTION_0_85();
    sub_1C960A590(v345, v371);
  }

  v372 = v526;
  v373 = v543;
  v374 = sub_1C96A6F64();
  v375 = v557;
  if ((v374 & 1) == 0)
  {
    OUTLINED_FUNCTION_1_58();
    v387 = v524;
    sub_1C960A530(v342, v524, v388);
    v389 = sub_1C96A6134();
    v390 = sub_1C96A76A4();
    if (os_log_type_enabled(v389, v390))
    {
      v391 = OUTLINED_FUNCTION_102();
      v392 = OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_65_4(v392);
      *v391 = 141558275;
      OUTLINED_FUNCTION_25();
      *(v391 + 4) = v393;
      OUTLINED_FUNCTION_9_33();
      v395 = v394;
      v396 = v574;
      sub_1C960A530(v387, v574, v394);
      v397 = *v396;
      v120 = v396[1];
      sub_1C96A53C4();
      sub_1C960A590(v396, v395);
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_47_3();
      *(v391 + 14) = v397;

      sub_1C960A590(v387, v395);
      OUTLINED_FUNCTION_60_4(&dword_1C945E000, v398, v390, "Notification date is before the current date; notifying for subscription: %{private,mask.hash}s");
      __swift_destroy_boxed_opaque_existential_1Tm(v342);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_38_0();
    }

    else
    {

      OUTLINED_FUNCTION_0_85();
      sub_1C960A590(v387, v449);
    }

    v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7118, &unk_1C96BCF60);
    v451 = v567 + *(v450 + 48);
    v452 = v567 + *(v450 + 64);
    v453 = v531;
    sub_1C960A530(v531, v567, type metadata accessor for PrecipitationNotification);
    OUTLINED_FUNCTION_25_17();
    v454 = v572;
    sub_1C960A530(v572, v451, v455);
    v456 = type metadata accessor for PrecipitationNotificationDeliverySchedule(0);
    v375 = v566;
    __swift_storeEnumTagSinglePayload(v451 + *(v456 + 20), 1, 1, v566);
    sub_1C960A530(v454, &v452[*(Schedule + 20)], v390);
    OUTLINED_FUNCTION_41_9();
    sub_1C96A49B4();
    sub_1C96A4A84();
    v576 = sub_1C96A4A64();
    v574 = v457;
    OUTLINED_FUNCTION_51_5();
    v458();
    sub_1C960A590(v453, type metadata accessor for PrecipitationNotification);
    v459 = OUTLINED_FUNCTION_14_27();
    v460(v459);
    OUTLINED_FUNCTION_36_5(&v564);
    OUTLINED_FUNCTION_31_6();
    v461 = v553;
    (v553)(v543, v375);
    v462 = OUTLINED_FUNCTION_17_28();
    v375(v462);
    v463 = OUTLINED_FUNCTION_30_10();
    OUTLINED_FUNCTION_54_6(v463);
    OUTLINED_FUNCTION_54_6(v570);
    OUTLINED_FUNCTION_5_42();
    sub_1C960A590(v575, v464);
    OUTLINED_FUNCTION_56_3(v574);
    swift_storeEnumTagMultiPayload();
    v465 = OUTLINED_FUNCTION_49_6();
    v461(v465, v375);
    return (v375)(v561, v120);
  }

  if (sub_1C96A4994() & 1) != 0 && (sub_1C96A49A4())
  {
    OUTLINED_FUNCTION_1_58();
    OUTLINED_FUNCTION_62_4(v342, &v547, v376);
    v377 = sub_1C96A6134();
    v378 = sub_1C96A76A4();
    if (os_log_type_enabled(v377, v378))
    {
      v379 = OUTLINED_FUNCTION_102();
      v380 = OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_65_4(v380);
      *v379 = 141558275;
      OUTLINED_FUNCTION_25();
      *(v379 + 4) = v381;
      OUTLINED_FUNCTION_9_33();
      v383 = v382;
      v384 = v574;
      sub_1C960A530(v375, v574, v382);
      v385 = *v384;
      v120 = v384[1];
      sub_1C96A53C4();
      sub_1C960A590(v384, v383);
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_47_3();
      *(v379 + 14) = v385;

      sub_1C960A590(v375, v383);
      OUTLINED_FUNCTION_60_4(&dword_1C945E000, v386, v378, "Notification date is after backoff timer, but before next scheduling opportunity; notifying for subscription: %{private,mask.hash}s");
      __swift_destroy_boxed_opaque_existential_1Tm(v342);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_38_0();
    }

    else
    {

      OUTLINED_FUNCTION_0_85();
      sub_1C960A590(v375, v496);
    }

    v497 = v567;
    v498 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7118, &unk_1C96BCF60);
    v499 = v497 + *(v498 + 48);
    v500 = v497 + *(v498 + 64);
    OUTLINED_FUNCTION_24_17();
    v576 = v501;
    v502 = OUTLINED_FUNCTION_55_4(&v559);
    sub_1C960A530(v502, v503, v504);
    OUTLINED_FUNCTION_25_17();
    v505 = v572;
    sub_1C960A530(v572, v499, v506);
    v507 = *(type metadata accessor for PrecipitationNotificationDeliverySchedule(0) + 20);
    v508 = v566;
    OUTLINED_FUNCTION_33_9();
    v509();
    __swift_storeEnumTagSinglePayload(v499 + v507, 0, 1, v508);
    sub_1C960A530(v505, &v500[*(Schedule + 20)], v378);
    OUTLINED_FUNCTION_41_9();
    sub_1C96A4974();
    sub_1C96A4A84();
    v510 = sub_1C96A4A64();
    v573 = v511;
    v574 = v510;
    OUTLINED_FUNCTION_51_5();
    v512();
    sub_1C960A590(v375, v576);
    v513 = OUTLINED_FUNCTION_14_27();
    v514(v513);
    OUTLINED_FUNCTION_36_5(&v564);
    OUTLINED_FUNCTION_31_6();
    v515 = v553;
    (v553)();
    v516 = OUTLINED_FUNCTION_17_28();
    v375(v516);
    v517 = OUTLINED_FUNCTION_30_10();
    OUTLINED_FUNCTION_54_6(v517);
    OUTLINED_FUNCTION_54_6(v570);
    OUTLINED_FUNCTION_5_42();
    sub_1C960A590(v575, v518);
    OUTLINED_FUNCTION_56_3(v573);
    swift_storeEnumTagMultiPayload();
    v519 = OUTLINED_FUNCTION_49_6();
    v515(v519, v508);
    return (v375)(v561, v120);
  }

  OUTLINED_FUNCTION_1_58();
  sub_1C960A530(v342, v372, v419);
  v420 = v576;
  v421 = sub_1C96A6134();
  v422 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_28_15(v422))
  {
    OUTLINED_FUNCTION_102();
    v423 = OUTLINED_FUNCTION_23_20();
    OUTLINED_FUNCTION_44_6(v423);
    OUTLINED_FUNCTION_2_57(7.2225e-34);
    v424 = v574;
    sub_1C960A530(v372, v574, v425);
    OUTLINED_FUNCTION_61_2();
    v426 = v424;
    v375 = v557;
    sub_1C960A590(v426, v342);
    OUTLINED_FUNCTION_22_21();
    OUTLINED_FUNCTION_34_9();

    *(v420 + 14) = v373;
    v373 = v543;

    v427 = OUTLINED_FUNCTION_63_4();
    v342 = v572;
    sub_1C960A590(v427, v428);
    OUTLINED_FUNCTION_15_28();
    _os_log_impl(v429, v430, v431, v432, v433, 0x16u);
    OUTLINED_FUNCTION_19_24();
    OUTLINED_FUNCTION_20();
  }

  else
  {

    OUTLINED_FUNCTION_0_85();
    sub_1C960A590(v372, v471);
  }

  v472 = v567;
  OUTLINED_FUNCTION_1_58();
  sub_1C960A530(v342, v472 + v473, v474);
  v475 = v575;
  v476 = v566;
  OUTLINED_FUNCTION_33_9();
  v477();
  v478 = v563;
  sub_1C96A4A84();
  v576 = sub_1C96A4A64();
  v574 = v479;
  (v375)(v478, v565);
  OUTLINED_FUNCTION_10_34();
  sub_1C960A590(v531, v480);
  v481 = OUTLINED_FUNCTION_14_27();
  v482(v481);
  OUTLINED_FUNCTION_36_5(&v564);
  OUTLINED_FUNCTION_31_6();
  v483 = v553;
  (v553)(v373, v476);
  v484 = OUTLINED_FUNCTION_17_28();
  v375(v484);
  v485 = OUTLINED_FUNCTION_30_10();
  OUTLINED_FUNCTION_54_6(v485);
  OUTLINED_FUNCTION_54_6(v570);
  OUTLINED_FUNCTION_5_42();
  sub_1C960A590(v475, v486);
  v487 = v574;
  *v472 = v576;
  v472[1] = v487;
  *(v472 + *(Schedule + 28)) = 0;
  v488 = type metadata accessor for PrecipitationNotificationPolicy(0);
  OUTLINED_FUNCTION_32_5(v488);
  v489 = OUTLINED_FUNCTION_49_6();
  v483(v489, v476);
  return (v375)(v561, v120);
}

uint64_t sub_1C96089C4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v11 - v3;
  v5 = sub_1C96A4A54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A5C84();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1C9470AFC(v4, &unk_1EC3A5430, &unk_1C96AAB30);
    v9 = 1;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = sub_1C96A4994();
    (*(v6 + 8))(v8, v5);
  }

  return v9 & 1;
}

uint64_t sub_1C9608B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v12 - v4;
  v6 = sub_1C96A4A54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A5CF4();
  sub_1C960A6AC(&qword_1EC3A7130, MEMORY[0x1E69E18F0], MEMORY[0x1E69E18F8]);
  if (sub_1C96A6F94())
  {
    v10 = 0;
  }

  else
  {
    sub_1C96A5C84();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_1C9470AFC(v5, &unk_1EC3A5430, &unk_1C96AAB30);
      v10 = 1;
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      v10 = sub_1C96A4994();
      (*(v7 + 8))(v9, v6);
    }
  }

  return v10 & 1;
}

uint64_t sub_1C9608D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a3;
  v78 = a4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v63[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v63[-v8];
  v74 = sub_1C96A4A54();
  v69 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v68 = &v63[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v63[-v11];
  v12 = sub_1C96A5CF4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v63[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7128, &qword_1C96BCFE8);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v63[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7110, &unk_1C96BCF50);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v63[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v63[-v26];
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v63[-v29];
  v76 = a1;
  sub_1C9605BE4(a1, &v63[-v29]);
  v77 = v13;
  v72 = *(v13 + 16);
  v72(v27, a2, v12);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v12);
  v31 = *(v19 + 56);
  sub_1C960A4A0(v30, v21);
  sub_1C960A4A0(v27, &v21[v31]);
  if (__swift_getEnumTagSinglePayload(v21, 1, v12) == 1)
  {
    sub_1C9470AFC(v27, &qword_1EC3A7110, &unk_1C96BCF50);
    sub_1C9470AFC(v30, &qword_1EC3A7110, &unk_1C96BCF50);
    if (__swift_getEnumTagSinglePayload(&v21[v31], 1, v12) == 1)
    {
      sub_1C9470AFC(v21, &qword_1EC3A7110, &unk_1C96BCF50);
      v32 = 1;
      v33 = v78;
      return __swift_storeEnumTagSinglePayload(v33, v32, 1, v12);
    }

    goto LABEL_6;
  }

  sub_1C960A4A0(v21, v24);
  if (__swift_getEnumTagSinglePayload(&v21[v31], 1, v12) == 1)
  {
    sub_1C9470AFC(v27, &qword_1EC3A7110, &unk_1C96BCF50);
    sub_1C9470AFC(v30, &qword_1EC3A7110, &unk_1C96BCF50);
    (*(v77 + 8))(v24, v12);
LABEL_6:
    sub_1C9470AFC(v21, &qword_1EC3A7128, &qword_1C96BCFE8);
    v33 = v78;
    goto LABEL_7;
  }

  v65 = a2;
  v42 = v77;
  (*(v77 + 32))(v17, &v21[v31], v12);
  sub_1C960A6AC(&qword_1EC3A7130, MEMORY[0x1E69E18F0], MEMORY[0x1E69E18F8]);
  v64 = sub_1C96A6F94();
  v43 = *(v42 + 8);
  v43(v17, v12);
  sub_1C9470AFC(v27, &qword_1EC3A7110, &unk_1C96BCF50);
  sub_1C9470AFC(v30, &qword_1EC3A7110, &unk_1C96BCF50);
  v43(v24, v12);
  a2 = v65;
  v33 = v78;
  sub_1C9470AFC(v21, &qword_1EC3A7110, &unk_1C96BCF50);
  if (v64)
  {
    goto LABEL_11;
  }

LABEL_7:
  v34 = v76;
  v35 = sub_1C96095F0(a2, v76);
  if (v36)
  {
LABEL_11:
    v32 = 1;
    return __swift_storeEnumTagSinglePayload(v33, v32, 1, v12);
  }

  v37 = v35;
  v38 = v73;
  sub_1C96A5C84();
  v39 = v74;
  if (__swift_getEnumTagSinglePayload(v38, 1, v74) == 1)
  {
    v40 = v33;
    sub_1C9470AFC(v38, &unk_1EC3A5430, &unk_1C96AAB30);
    v41 = v75;
LABEL_18:
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v54 = sub_1C96A6154();
    __swift_project_value_buffer(v54, qword_1EDB7AC90);
    v72(v41, a2, v12);
    v55 = sub_1C96A6134();
    v56 = sub_1C96A76A4();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v79 = v58;
      *v57 = 136446210;
      sub_1C96A5C84();
      v59 = sub_1C96A70A4();
      v61 = v60;
      (*(v77 + 8))(v41, v12);
      v62 = sub_1C9484164(v59, v61, &v79);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_1C945E000, v55, v56, "Next forecast period summary does not expire before next fetch opportunity %{public}s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x1CCA8E3D0](v58, -1, -1);
      MEMORY[0x1CCA8E3D0](v57, -1, -1);
    }

    else
    {

      (*(v77 + 8))(v41, v12);
    }

    v32 = 1;
    v33 = v40;
    return __swift_storeEnumTagSinglePayload(v33, v32, 1, v12);
  }

  v44 = v38;
  v45 = v69;
  v46 = v71;
  (*(v69 + 32))(v71, v44, v39);
  v47 = v68;
  v65 = a2;
  sub_1C96A5CE4();
  sub_1C96A4964();
  v49 = v48;
  v50 = *(v45 + 8);
  v50(v47, v39);
  result = type metadata accessor for PrecipitationNotificationConfiguration(0);
  v41 = v75;
  if (v49 >= *(v70 + *(result + 32)))
  {
    v50(v46, v39);
    v40 = v78;
    a2 = v65;
    goto LABEL_18;
  }

  v52 = v37 + 1;
  if (__OFADD__(v37, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v53 = v71;
  if ((v52 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v52 < *(v34 + 16))
  {
    v33 = v78;
    v72(v78, v34 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v52, v12);
    v50(v53, v39);
    v32 = 0;
    return __swift_storeEnumTagSinglePayload(v33, v32, 1, v12);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C96095F0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (1)
  {
    if (v3 == v2)
    {
      return 0;
    }

    sub_1C96A5CF4();
    sub_1C960A6AC(&qword_1EC3A7130, MEMORY[0x1E69E18F0], MEMORY[0x1E69E18F8]);
    if (sub_1C96A6F94())
    {
      break;
    }

    ++v2;
  }

  return v2;
}

uint64_t sub_1C960970C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_BYTE *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v78 = a5;
  v82 = a4;
  v80 = a3;
  v85 = a2;
  v8 = sub_1C96A5DD4();
  v9 = *(v8 - 8);
  v83 = v8;
  v84 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v70[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v70[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v70[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70[-v16];
  v18 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v70[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v70[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7110, &unk_1C96BCF50);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v70[-v25];
  v27 = sub_1C96A5CF4();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v70[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v70[-v32];
  sub_1C960A4A0(a1, v26);
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_1C9470AFC(v26, &qword_1EC3A7110, &unk_1C96BCF50);
    v34 = v83;
    v35 = a6;
LABEL_18:
    sub_1C96A5CC4();
    v69 = sub_1C96A5DC4();
    result = (*(v84 + 8))(v17, v34);
    v62 = v69 & 1;
    goto LABEL_19;
  }

  v75 = a6;
  v36 = *(v28 + 32);
  v79 = v33;
  v36(v33, v26, v27);
  v37 = v28;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v38 = sub_1C96A6154();
  __swift_project_value_buffer(v38, qword_1EDB7AC90);
  (*(v28 + 16))(v30, v85, v27);
  sub_1C960A530(v80, v23, type metadata accessor for NotificationSubscription);
  v39 = sub_1C96A6134();
  v40 = sub_1C96A76A4();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v81;
  v74 = v37;
  if (v41)
  {
    v43 = swift_slowAlloc();
    v72 = v39;
    v44 = v43;
    v73 = swift_slowAlloc();
    v86 = v73;
    *v44 = 136446723;
    sub_1C960A6AC(&qword_1EC3A7120, MEMORY[0x1E69E18F0], MEMORY[0x1E69E1900]);
    v71 = v40;
    v45 = sub_1C96A7DB4();
    v47 = v46;
    v80 = *(v37 + 8);
    v80(v30, v27);
    v48 = sub_1C9484164(v45, v47, &v86);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2160;
    *(v44 + 14) = 1752392040;
    *(v44 + 22) = 2081;
    sub_1C960A64C(v23, v20, type metadata accessor for NotificationSubscription);
    v49 = *v20;
    v50 = v20[1];
    sub_1C96A53C4();
    sub_1C960A590(v20, type metadata accessor for NotificationSubscription);
    v51 = sub_1C9484164(v49, v50, &v86);

    *(v44 + 24) = v51;
    v52 = v72;
    _os_log_impl(&dword_1C945E000, v72, v71, "After next summary: %{public}s for subscription: %{private,mask.hash}s", v44, 0x20u);
    v53 = v73;
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v53, -1, -1);
    MEMORY[0x1CCA8E3D0](v44, -1, -1);
  }

  else
  {

    sub_1C960A590(v23, type metadata accessor for NotificationSubscription);
    v80 = *(v37 + 8);
    v80(v30, v27);
  }

  sub_1C96A5CC4();
  v54 = sub_1C96A5DC4() & 1;
  v34 = v83;
  v55 = *(v84 + 8);
  v55(v17, v83);
  sub_1C96A5CC4();
  v56 = sub_1C96A5DC4() & 1;
  v55(v42, v34);
  v35 = v75;
  if (v54 == v56)
  {
    goto LABEL_17;
  }

  sub_1C96A5CC4();
  v57 = sub_1C96A5DC4() & 1;
  v55(v17, v34);
  sub_1C96A5CC4();
  v58 = sub_1C96A5DC4() & 1;
  v55(v42, v34);
  if (v57 == v58)
  {
    goto LABEL_17;
  }

  v59 = v77;
  sub_1C96A5CC4();
  v60 = sub_1C96A5DC4();
  v55(v59, v34);
  if ((v60 & 1) != 0 && ForecastSummary.meetsNotificationThresholds(with:)(v78))
  {
    result = (v80)(v79, v27);
    v62 = 2;
    goto LABEL_19;
  }

  v63 = v76;
  sub_1C96A5CC4();
  v64 = sub_1C96A5DC4();
  v65 = v63;
  v66 = v78;
  v55(v65, v34);
  if ((v64 & 1) == 0 || !ForecastSummary.meetsNotificationThresholds(with:)(v66))
  {
LABEL_17:
    v80(v79, v27);
    goto LABEL_18;
  }

  v67 = v79;
  v68 = ForecastSummary.meetsNotificationThresholds(with:)(v66);
  result = (v80)(v67, v27);
  if (!v68)
  {
    goto LABEL_18;
  }

  v62 = 3;
LABEL_19:
  *v35 = v62;
  return result;
}

BOOL ForecastSummary.meetsNotificationThresholds(with:)(uint64_t a1)
{
  v2 = sub_1C96A5C14();
  if (v3)
  {
    return 0;
  }

  v4 = *&v2;
  v5 = sub_1C96A5C24();
  if (v6)
  {
    return 0;
  }

  v7 = *&v5;
  v8 = type metadata accessor for PrecipitationNotificationConfiguration(0);
  return *(a1 + v8[10]) <= v4 && (*(a1 + v8[11]) <= v4 || *(a1 + v8[12]) <= v7) && *(a1 + v8[13]) < v4 * v7;
}

uint64_t sub_1C9609F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v36 = sub_1C96A5B84();
  v11 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = "anguageTag";
  switch(v9)
  {
    case 2u:
      goto LABEL_3;
    case 3u:
      v14 = "starting-stopping";
LABEL_3:
      if (0x80000001C96CB7E0 != (v14 | 0x8000000000000000))
      {
        goto LABEL_5;
      }

      goto LABEL_6;
    default:
LABEL_5:
      v15 = sub_1C96A7DE4();

      if (v15)
      {
LABEL_6:
        v16 = *MEMORY[0x1E69E18D0];
        v17 = sub_1C96A5CB4();
        v18 = *(*(v17 - 8) + 104);

        return v18(a5, v16, v17);
      }

      else
      {
        v20 = sub_1C960A2C0(v9, a2, a3, a4);
        v21 = *(v20 + 16);
        if (v21)
        {
          v34[2] = a5;
          v37 = MEMORY[0x1E69E7CC0];
          sub_1C9522E00(0, v21, 0);
          v22 = v37;
          v24 = *(v11 + 16);
          v23 = v11 + 16;
          v35 = v24;
          v25 = *(v23 + 64);
          v34[1] = v20;
          v26 = v20 + ((v25 + 32) & ~v25);
          v27 = *(v23 + 56);
          v28 = (v23 - 8);
          do
          {
            v29 = v36;
            v35(v13, v26, v36);
            sub_1C96A5B64();
            v31 = v30;
            (*v28)(v13, v29);
            v37 = v22;
            v33 = *(v22 + 16);
            v32 = *(v22 + 24);
            if (v33 >= v32 >> 1)
            {
              sub_1C9522E00((v32 > 1), v33 + 1, 1);
              v22 = v37;
            }

            *(v22 + 16) = v33 + 1;
            *(v22 + 8 * v33 + 32) = v31;
            v26 += v27;
            --v21;
          }

          while (v21);
        }

        else
        {

          v22 = MEMORY[0x1E69E7CC0];
        }

        sub_1C960A424(v22);

        return sub_1C96A5CA4();
      }
  }
}

uint64_t sub_1C960A2C0(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(a1)
  {
    case 1u:
    case 2u:
    case 3u:
      v5 = sub_1C96A7DE4();

      if ((v5 & 1) == 0)
      {
        if (a1 != 1)
        {
          v6 = a1 == 2 ? "anguageTag" : "starting-stopping";
          if (0x80000001C96CB7C0 == (v6 | 0x8000000000000000))
          {
            goto LABEL_8;
          }
        }

        sub_1C96A7DE4();
      }

      break;
    default:
LABEL_8:

      break;
  }

  return sub_1C96A5D24();
}

uint64_t sub_1C960A424(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1C960A4A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7110, &unk_1C96BCF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C960A530(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C960A590(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C960A64C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C960A6AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_56_3@<X0>(uint64_t a1@<X8>)
{
  *v2 = v1;
  v2[1] = a1;
  *(v2 + *(v3 + 28)) = 0x408C200000000000;

  return type metadata accessor for PrecipitationNotificationPolicy(0);
}

uint64_t OUTLINED_FUNCTION_68_2()
{

  return sub_1C96A70A4();
}

uint64_t sub_1C960A770()
{
  sub_1C96A3D04();
  sub_1C96A55D4();

  return v1;
}

uint64_t sub_1C960A7B4()
{
  sub_1C96A3D04();
  sub_1C96A55D4();

  return v1;
}

uint64_t sub_1C960A7F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
  __swift_allocate_value_buffer(v0, qword_1EC3C3DB0);
  v1 = OUTLINED_FUNCTION_11();
  v3 = __swift_project_value_buffer(v1, v2);
  return sub_1C960A84C(v3);
}

uint64_t sub_1C960A84C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1C96A4764();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 URLsForDirectory:5 inDomains:1];

  sub_1C96A72A4();
  sub_1C9492F8C();

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1C94BE204(v4, &qword_1EC3A4A70, &qword_1C96B05D0);
    v11 = 1;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1C96A4704();
    (*(v6 + 8))(v8, v5);
    v11 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v11, 1, v5);
}

WeatherCore::StubPPTWeatherDataManager::CoordinateString __swiftcall StubPPTWeatherDataManager.CoordinateString.init(latitude:longitude:)(Swift::String latitude, Swift::String longitude)
{
  *v2 = latitude;
  v2[1] = longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

uint64_t static StubPPTWeatherDataManager.CoordinateString.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1C96A7DE4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_11();

      return sub_1C96A7DE4();
    }
  }

  return result;
}

uint64_t StubPPTWeatherDataManager.CoordinateString.hash(into:)(uint64_t a1)
{
  sub_1C96A7144();

  return sub_1C96A7144();
}

uint64_t StubPPTWeatherDataManager.CoordinateString.hashValue.getter()
{
  sub_1C96A7EE4();
  sub_1C96A7144();
  sub_1C96A7144();
  return sub_1C96A7F24();
}

uint64_t StubPPTWeatherDataManager.__allocating_init()()
{
  v0 = swift_allocObject();
  StubPPTWeatherDataManager.init()();
  return v0;
}

Swift::Bool __swiftcall StubPPTWeatherDataManager.isServiceAvailable()()
{
  v1 = sub_1C96A7084();
  v2 = OUTLINED_FUNCTION_7(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v49 - v8;
  v10 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7140, &qword_1C96BD008);
  v18 = OUTLINED_FUNCTION_7(v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v49 - v19;
  v21 = sub_1C96A43B4();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  v27 = v26 - v25;
  sub_1C96A4394();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    v28 = &qword_1EC3A7140;
    v29 = &qword_1C96BD008;
    v30 = v20;
LABEL_3:
    sub_1C94BE204(v30, v28, v29);
    goto LABEL_10;
  }

  v49[0] = v0;
  v49[1] = v5;
  v50 = v12;
  (*(v23 + 32))(v27, v20, v21);
  sub_1C96A50D4();
  sub_1C96A50C4();
  v31 = sub_1C96A5074();
  v33 = v32;

  if ((v33 & 1) == 0 && !v31)
  {
    v34 = OUTLINED_FUNCTION_3_43();
    v35(v34);
    goto LABEL_10;
  }

  sub_1C96A50C4();
  sub_1C96A5074();

  sub_1C96A4374();
  sub_1C96A4344();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    v36 = OUTLINED_FUNCTION_3_43();
    v37(v36);
    v28 = &qword_1EC3A4A70;
    v29 = &qword_1C96B05D0;
    v30 = v9;
    goto LABEL_3;
  }

  v38 = v50;
  (*(v50 + 32))(v16, v9, v10);
  sub_1C96A47B4();
  sub_1C96A7074();
  OUTLINED_FUNCTION_15_29();
  v40 = sub_1C96A7044();
  if (v41)
  {
    if (*(v49[0] + 72) != v40 || v41 != *(v49[0] + 80))
    {
      sub_1C96A7DE4();
    }

    v43 = OUTLINED_FUNCTION_15_29();
    sub_1C9482F3C(v43, v44);
  }

  else
  {
    v45 = OUTLINED_FUNCTION_15_29();
    sub_1C9482F3C(v45, v46);
  }

  (*(v38 + 8))(v16, v10);
  v47 = OUTLINED_FUNCTION_3_43();
  v48(v47);
LABEL_10:
  OUTLINED_FUNCTION_101();
  return result;
}

uint64_t sub_1C960B088@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1C96A7084();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    v17 = *MEMORY[0x1E69D6480];
    goto LABEL_9;
  }

  if (qword_1EDB7ACB0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C96A6154();
  __swift_project_value_buffer(v7, qword_1EDB7ACB8);
  v8 = sub_1C96A6134();
  v9 = sub_1C96A76A4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C945E000, v8, v9, "Response to ping", v10, 2u);
    MEMORY[0x1CCA8E3D0](v10, -1, -1);
  }

  sub_1C96A7074();
  v11 = sub_1C96A7034();
  v13 = v12;
  result = (*(v4 + 8))(v6, v3);
  if (v13 >> 60 != 15)
  {

    *a2 = v11;
    a2[1] = v13;
    v15 = *MEMORY[0x1E69D6478];
    v16 = sub_1C96A5234();
    (*(*(v16 - 8) + 104))(a2, v15, v16);
    v17 = *MEMORY[0x1E69D6468];
LABEL_9:
    v18 = sub_1C96A5244();
    return (*(*(v18 - 8) + 104))(a2, v17, v18);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C960B318@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1C96A5BE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_1EDB7ACB0 != -1)
    {
      swift_once();
    }

    v9 = sub_1C96A6154();
    v10 = __swift_project_value_buffer(v9, qword_1EDB7ACB8);
    sub_1C96A3D04();
    v44[2] = v10;
    v11 = sub_1C96A6134();
    v12 = sub_1C96A76A4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v45 = v14;
      *v13 = 136446210;
      v15 = (*(v8 + 48) + OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder_aqiScaleName);
      v44[1] = v8;
      v16 = v6;
      v17 = v3;
      v18 = v4;
      v19 = a2;
      v21 = *v15;
      v20 = v15[1];
      sub_1C96A53C4();
      v22 = sub_1C9484164(v21, v20, &v45);

      *(v13 + 4) = v22;
      a2 = v19;
      v4 = v18;
      v3 = v17;
      v6 = v16;
      _os_log_impl(&dword_1C945E000, v11, v12, "Response to v3 airQualityScale for %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1CCA8E3D0](v14, -1, -1);
      MEMORY[0x1CCA8E3D0](v13, -1, -1);
    }

    v23 = sub_1C960A7B4();
    if (v24 >> 60 == 15)
    {
      sub_1C96A3D04();
      sub_1C9640920();

      sub_1C94AF7BC(&qword_1EDB77EC8, 255, MEMORY[0x1E69E18C0], MEMORY[0x1E69E18C8]);
      v33 = sub_1C96A41E4();
      v35 = v34;
      (*(v4 + 8))(v6, v3);
      v36 = sub_1C96A6134();
      v37 = sub_1C96A76A4();
      if (os_log_type_enabled(v36, v37))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1C945E000, v36, v37, "Serve air quality data", v39, 2u);
        MEMORY[0x1CCA8E3D0](v39, -1, -1);
      }

      sub_1C94874C0(v33, v35);
      sub_1C94B0888(v33, v35);

      *a2 = v33;
      a2[1] = v35;
    }

    else
    {
      v28 = v23;
      v29 = v24;
      v30 = sub_1C96A6134();
      v31 = sub_1C96A76A4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1C945E000, v30, v31, "Serve cached air quality data", v32, 2u);
        MEMORY[0x1CCA8E3D0](v32, -1, -1);
      }

      *a2 = v28;
      a2[1] = v29;
    }

    v40 = *MEMORY[0x1E69D6478];
    v41 = sub_1C96A5234();
    (*(*(v41 - 8) + 104))(a2, v40, v41);
    v42 = *MEMORY[0x1E69D6468];
    v43 = sub_1C96A5244();
    return (*(*(v43 - 8) + 104))(a2, v42, v43);
  }

  else
  {
    v25 = *MEMORY[0x1E69D6480];
    v26 = sub_1C96A5244();
    return (*(*(v26 - 8) + 104))(a2, v25, v26);
  }
}

uint64_t sub_1C960B898@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C96A7084();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A7074();
  v6 = sub_1C96A7034();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a1 = v6;
    a1[1] = v8;
    v10 = *MEMORY[0x1E69D6478];
    v11 = sub_1C96A5234();
    (*(*(v11 - 8) + 104))(a1, v10, v11);
    v12 = *MEMORY[0x1E69D6468];
    v13 = sub_1C96A5244();
    return (*(*(v13 - 8) + 104))(a1, v12, v13);
  }

  return result;
}

void StubPPTWeatherDataManager.setupStubData(for:defaultCondition:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v48 = a2;
  v50 = a1;
  v49 = sub_1C96A5AD4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C96A41C4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  v15 = v14 - v13;
  if (qword_1EDB7ACB0 != -1)
  {
    OUTLINED_FUNCTION_1_59(&qword_1EDB7ACB0);
  }

  v16 = sub_1C96A6154();
  __swift_project_value_buffer(v16, qword_1EDB7ACB8);
  v17 = sub_1C96A6134();
  v18 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_21(v18))
  {
    v19 = OUTLINED_FUNCTION_29();
    *v19 = 0;
    OUTLINED_FUNCTION_69();
    _os_log_impl(v20, v21, v22, v23, v19, 2u);
    OUTLINED_FUNCTION_26();
  }

  v24 = *(v3 + 16);
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v24 >> 16)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_1C96A5094();
  (*(v11 + 104))(v15, *MEMORY[0x1E6967FA8], v9);
  sub_1C96A41D4();
  v25 = sub_1C96A6134();
  v26 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_21(v26))
  {
    v27 = OUTLINED_FUNCTION_29();
    *v27 = 0;
    OUTLINED_FUNCTION_69();
    _os_log_impl(v28, v29, v30, v31, v27, 2u);
    OUTLINED_FUNCTION_26();
  }

  v46 = *(v3 + 48);
  *(v46 + 81) = *(v3 + 64);
  OUTLINED_FUNCTION_8_3();
  v32 = *(v3 + 32);
  v33 = *(v3 + 40);
  v51 = 0xD00000000000002DLL;
  v52 = v34;
  MEMORY[0x1CCA8CB00](v32, v33);
  v45 = v51;
  OUTLINED_FUNCTION_23_0();
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_10_35(v35);
  v36 = v47;
  v37 = v49;
  (*(v5 + 16))(v47, v48, v49);
  v38 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v39 = swift_allocObject();
  v40 = v50;
  *(v39 + 16) = v35;
  *(v39 + 24) = v40;
  (*(v5 + 32))(v39 + v38, v36, v37);
  sub_1C96A3D04();
  sub_1C96A53C4();
  sub_1C96A5084();

  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1C96A7A94();

  OUTLINED_FUNCTION_8_3();
  v51 = 0xD00000000000001FLL;
  v52 = v41;
  v42 = *(v46 + OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder_aqiScaleName);
  v43 = *(v46 + OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder_aqiScaleName + 8);
  sub_1C96A53C4();
  MEMORY[0x1CCA8CB00](v42, v43);

  OUTLINED_FUNCTION_23_0();
  v44 = swift_allocObject();
  OUTLINED_FUNCTION_10_35(v44);
  sub_1C96A3D04();
  sub_1C96A5084();

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C960BF70@<X0>(uint64_t a1@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v74 = a4;
  v9 = sub_1C96A5814();
  v75 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7158, &qword_1C96BD1A8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v70 - v13;
  v15 = sub_1C96A5AD4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v70 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v72 = v16;
    v23 = sub_1C94C9408(0x656475746974616CLL, 0xE800000000000000, a1);
    if (v24)
    {
      v25 = v23;
      v26 = a1;
      v27 = v24;
      v70 = v26;
      v71 = a5;
      v28 = sub_1C94C9408(0x64757469676E6F6CLL, 0xE900000000000065, v26);
      if (v29)
      {
        sub_1C94FA8B8(a3, v14, v25, v27, v28, v29);

        if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
        {
          sub_1C94BE204(v14, &qword_1EC3A7158, &qword_1C96BD1A8);
          v30 = *(v22 + 48);
          v31 = OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder_currentWeatherCondition;
          swift_beginAccess();
          v32 = *(v72 + 24);
          sub_1C96A3D04();
          v32(v30 + v31, v74, v15);
        }

        else
        {
          v37 = v72;
          (*(v72 + 32))(v20, v14, v15);
          v38 = *(v22 + 48);
          v39 = OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder_currentWeatherCondition;
          swift_beginAccess();
          v40 = *(v37 + 40);
          sub_1C96A3D04();
          v40(v38 + v39, v20, v15);
        }

        swift_endAccess();

        sub_1C96A3D04();
        sub_1C94C9628(v11);

        sub_1C94AF7BC(&qword_1EDB77ED0, 255, MEMORY[0x1E69E17E8], MEMORY[0x1E69E17F0]);
        v41 = sub_1C96A41E4();
        a5 = v71;
        v46 = v41;
        v74 = v47;
        (*(v75 + 8))(v11, v9);
        if (qword_1EDB7ACB0 != -1)
        {
          swift_once();
        }

        v48 = sub_1C96A6154();
        __swift_project_value_buffer(v48, qword_1EDB7ACB8);
        sub_1C96A53C4();
        sub_1C96A3D04();
        v49 = sub_1C96A6134();
        v50 = sub_1C96A76A4();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v76[0] = v75;
          *v51 = 136446466;
          v52 = sub_1C96A6EE4();
          v54 = sub_1C9484164(v52, v53, v76);

          *(v51 + 4) = v54;
          *(v51 + 12) = 2080;
          v55 = *(v22 + 48);
          v56 = OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder_currentWeatherCondition;
          swift_beginAccess();
          v57 = v72;
          v58 = v55 + v56;
          v59 = v73;
          (*(v72 + 16))(v73, v58, v15);
          v60 = v46;
          v61 = sub_1C96A5AC4();
          v63 = v62;
          (*(v57 + 8))(v59, v15);
          v64 = v61;
          v46 = v60;
          v65 = sub_1C9484164(v64, v63, v76);
          a5 = v71;

          *(v51 + 14) = v65;
          _os_log_impl(&dword_1C945E000, v49, v50, "Serve data with param:%{public}s with condition:%s", v51, 0x16u);
          v66 = v75;
          swift_arrayDestroy();
          MEMORY[0x1CCA8E3D0](v66, -1, -1);
          MEMORY[0x1CCA8E3D0](v51, -1, -1);
        }

        v67 = v74;
        *a5 = v46;
        a5[1] = v67;
        v68 = *MEMORY[0x1E69D6478];
        v69 = sub_1C96A5234();
        (*(*(v69 - 8) + 104))(a5, v68, v69);
        v42 = MEMORY[0x1E69D6468];
        goto LABEL_15;
      }

      a5 = v71;
    }

    else
    {
    }
  }

  if (qword_1EDB7ACB0 != -1)
  {
    swift_once();
  }

  v33 = sub_1C96A6154();
  __swift_project_value_buffer(v33, qword_1EDB7ACB8);
  v34 = sub_1C96A6134();
  v35 = sub_1C96A7684();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1C945E000, v34, v35, "Failed to generate JSON weather data. Invalid path.", v36, 2u);
    MEMORY[0x1CCA8E3D0](v36, -1, -1);
  }

  v42 = MEMORY[0x1E69D6480];
LABEL_15:
  v43 = *v42;
  v44 = sub_1C96A5244();
  return (*(*(v44 - 8) + 104))(a5, v43, v44);
}

uint64_t sub_1C960C7AC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1C96A5BE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C96A3D04();
    sub_1C9640920();

    sub_1C94AF7BC(&qword_1EDB77EC8, 255, MEMORY[0x1E69E18C0], MEMORY[0x1E69E18C8]);
    v12 = sub_1C96A41E4();
    v14 = v13;
    (*(v4 + 8))(v6, v3);
    if (qword_1EDB7ACB0 != -1)
    {
      swift_once();
    }

    v15 = sub_1C96A6154();
    __swift_project_value_buffer(v15, qword_1EDB7ACB8);
    v16 = sub_1C96A6134();
    v17 = sub_1C96A76A4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1C945E000, v16, v17, "Serve air quality data", v18, 2u);
      MEMORY[0x1CCA8E3D0](v18, -1, -1);
    }

    *a2 = v12;
    a2[1] = v14;
    v19 = *MEMORY[0x1E69D6478];
    v20 = sub_1C96A5234();
    (*(*(v20 - 8) + 104))(a2, v19, v20);
    v11 = MEMORY[0x1E69D6468];
  }

  else
  {
    if (qword_1EDB7ACB0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C96A6154();
    __swift_project_value_buffer(v7, qword_1EDB7ACB8);
    v8 = sub_1C96A6134();
    v9 = sub_1C96A7684();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C945E000, v8, v9, "Failed to generate JSON air quality data", v10, 2u);
      MEMORY[0x1CCA8E3D0](v10, -1, -1);
    }

    v11 = MEMORY[0x1E69D6480];
  }

  v21 = *v11;
  v22 = sub_1C96A5244();
  return (*(*(v22 - 8) + 104))(a2, v21, v22);
}

uint64_t StubPPTWeatherDataManager.deinit()
{

  return v0;
}

uint64_t StubPPTWeatherDataManager.__deallocating_deinit()
{
  StubPPTWeatherDataManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t sub_1C960CC30@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_1C96A5AD4();
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_1C960BF70(a1, v7, v8, a2);
}

unint64_t sub_1C960CCD4()
{
  result = qword_1EC3A7148;
  if (!qword_1EC3A7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7148);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutomationTestDataLocator(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C960CE40(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000016;
  }
}

unint64_t sub_1C960CE84()
{
  result = qword_1EC3A7168;
  if (!qword_1EC3A7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7168);
  }

  return result;
}

void NSUbiquitousKeyValueStore.set<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C96A7DD4();
  v6 = sub_1C96A7004();
  [v4 setObject:v5 forKey:v6];
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall NSUbiquitousKeyValueStore.remove(for:)(Swift::String a1)
{
  v2 = sub_1C96A7004();
  [v1 removeObjectForKey_];
}

uint64_t sub_1C960D038(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v10 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A30, &unk_1C96B89B0);
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  sub_1C96A5104();
  sub_1C960FAFC(&qword_1EDB7D0A8, 255, MEMORY[0x1E69D6388], MEMORY[0x1E69D6390]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A38, &qword_1C96AA2D0);
  sub_1C946C9C4();
  sub_1C96A79E4();
  sub_1C96A5134();
  swift_allocObject();
  *(v5 + 16) = sub_1C96A5124();
  sub_1C94670AC(a1, v5 + 24);
  sub_1C94670AC(a2, v5 + 64);
  sub_1C94670AC(a3, v5 + 104);
  sub_1C94670AC(a4, v5 + 144);
  sub_1C94670AC(a5, v5 + 184);
  return v5;
}

uint64_t sub_1C960D244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C96A5134();
  sub_1C96A3D04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6128, &unk_1C96B6CD0);
  sub_1C96A5554();

  return v4;
}

uint64_t sub_1C960D2E8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90, &qword_1C96B31A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  if (qword_1EDB7D038 != -1)
  {
    swift_once();
  }

  v13 = sub_1C96A6154();
  __swift_project_value_buffer(v13, qword_1EDB7D040);
  v14 = sub_1C96A6134();
  v15 = sub_1C96A76A4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1C945E000, v14, v15, "Attempting app location list migration to Coherence", v16, 2u);
    MEMORY[0x1CCA8E3D0](v16, -1, -1);
  }

  sub_1C960D69C(a2, v12);
  v17 = a1[26];
  v18 = a1[27];
  __swift_project_boxed_opaque_existential_1(a1 + 23, v17);
  if (((*(v18 + 8))(v17, v18) & 1) == 0)
  {
    v29 = sub_1C96A6134();
    v30 = sub_1C96A76A4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1C945E000, v29, v30, "Not signed signed into iCloud. Can't migrate the remote store at this point in time.", v31, 2u);
      MEMORY[0x1CCA8E3D0](v31, -1, -1);
    }

    goto LABEL_14;
  }

  if (!a4)
  {
    sub_1C960DB98(a3, v12);
LABEL_14:
    LOBYTE(v34) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6128, &unk_1C96B6CD0);
    swift_allocObject();
    v28 = sub_1C96A56A4();
    goto LABEL_15;
  }

  v19 = a4;
  v20 = sub_1C96A6134();
  v21 = sub_1C96A76A4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33 = a4;
    v34 = v23;
    *v22 = 136446210;
    v24 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380, &qword_1C96AA2F0);
    v25 = sub_1C96A70A4();
    v27 = sub_1C9484164(v25, v26, &v34);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_1C945E000, v20, v21, "We encountered an error synchronizing with the store. Can't migrate it. Error=%{public}s.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1CCA8E3D0](v23, -1, -1);
    MEMORY[0x1CCA8E3D0](v22, -1, -1);
  }

  LOBYTE(v34) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6128, &unk_1C96B6CD0);
  swift_allocObject();
  v28 = sub_1C96A56A4();

LABEL_15:
  result = sub_1C94BE204(v12, &unk_1EC3A5F90, &qword_1C96B31A0);
  *a5 = v28;
  return result;
}

uint64_t sub_1C960D69C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90, &qword_1C96B31A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v42 - v6;
  v8 = type metadata accessor for SyncedData(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  if (qword_1EDB7D038 != -1)
  {
    swift_once();
  }

  v14 = sub_1C96A6154();
  __swift_project_value_buffer(v14, qword_1EDB7D040);
  v15 = sub_1C96A6134();
  v16 = sub_1C96A76A4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1C945E000, v15, v16, "About to attempt migrating the local location list store to Coherence.", v17, 2u);
    MEMORY[0x1CCA8E3D0](v17, -1, -1);
  }

  v18 = v3[11];
  v19 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v18);
  (*(v19 + 40))(v18, v19);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    sub_1C960FB44(v7, v13, type metadata accessor for SyncedData);
    v29 = sub_1C96A6134();
    v30 = sub_1C96A76A4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1C945E000, v29, v30, "Local store migration (to Coherence) is not required because it has already happened - aborting.", v31, 2u);
      MEMORY[0x1CCA8E3D0](v31, -1, -1);
    }

    v32 = v13;
    goto LABEL_21;
  }

  sub_1C94BE204(v7, &unk_1EC3A5F90, &qword_1C96B31A0);
  v20 = v3[11];
  v21 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v20);
  (*(v21 + 56))(v20, v21);
  if (!sub_1C960F13C(a1))
  {
    v33 = sub_1C96A6134();
    v34 = sub_1C96A76A4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1C945E000, v33, v34, "Local store did not contain any locations.  Moving on to the remote store migration", v35, 2u);
      MEMORY[0x1CCA8E3D0](v35, -1, -1);
    }

    goto LABEL_17;
  }

  SyncedData.init(locationDataModels:)();
  v22 = v3[11];
  v23 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v22);
  v24 = (*(v23 + 48))(v10, v22, v23);
  if (v25 >> 60 != 15)
  {
    sub_1C9485BFC(v24, v25);
    v38 = sub_1C96A6134();
    v39 = sub_1C96A76A4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1C945E000, v38, v39, "Successfully migrated the local location list store to Coherence.", v40, 2u);
      MEMORY[0x1CCA8E3D0](v40, -1, -1);
    }

    v32 = v10;
LABEL_21:
    v37 = v43;
    sub_1C960FB44(v32, v43, type metadata accessor for SyncedData);
    v36 = 0;
    return __swift_storeEnumTagSinglePayload(v37, v36, 1, v8);
  }

  v26 = sub_1C96A6134();
  v27 = sub_1C96A7684();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1C945E000, v26, v27, "Error serializing synced data to disk - aborting local migration to Coherence.", v28, 2u);
    MEMORY[0x1CCA8E3D0](v28, -1, -1);
  }

  sub_1C9573AC8(v10);
LABEL_17:
  v36 = 1;
  v37 = v43;
  return __swift_storeEnumTagSinglePayload(v37, v36, 1, v8);
}

void sub_1C960DB98(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8, &unk_1C96BEA90);
  v85 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v77 - v7;
  v8 = sub_1C96A6AE4();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for SyncedData(0);
  MEMORY[0x1EEE9AC00](v80);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v77 - v13;
  if (qword_1EDB7D038 != -1)
  {
    swift_once();
  }

  v86 = sub_1C96A6154();
  v15 = __swift_project_value_buffer(v86, qword_1EDB7D040);
  v16 = sub_1C96A6134();
  v17 = sub_1C96A76A4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1C945E000, v16, v17, "About to attempt migrating the remote location list store to Coherence.", v18, 2u);
    MEMORY[0x1CCA8E3D0](v18, -1, -1);
  }

  if (sub_1C960E4F8(a1))
  {
    v19 = v3[6];
    v20 = v3[7];
    __swift_project_boxed_opaque_existential_1(v3 + 3, v19);
    if ((*(v20 + 24))(a1, v19, v20))
    {
      SyncedData.init(locationDataModels:)();
      sub_1C960EED4(a2, v11);
      v21 = v3[16];
      v22 = v3[17];
      __swift_project_boxed_opaque_existential_1(v3 + 13, v21);
      v23 = (*(v22 + 24))(v11, v21, v22);
      v24 = sub_1C96A6134();
      v25 = sub_1C96A76A4();
      v26 = os_log_type_enabled(v24, v25);
      v27 = &unk_1C96BC000;
      v79 = v15;
      if (v26)
      {
        v28 = swift_slowAlloc();
        v78 = a1;
        v29 = v28;
        v77 = swift_slowAlloc();
        v87[0] = v77;
        *v29 = 134349571;
        *(v29 + 4) = *(v23 + 16);
        *(v29 + 12) = 2160;
        *(v29 + 14) = 1752392040;
        *(v29 + 22) = 2081;
        v30 = type metadata accessor for LocationDataModel(0);
        v31 = MEMORY[0x1CCA8CC40](v23, v30);
        v32 = v6;
        v33 = v14;
        v34 = v11;
        v36 = v35;

        v37 = sub_1C9484164(v31, v36, v87);
        v11 = v34;
        v14 = v33;
        v6 = v32;
        v27 = &unk_1C96BC000;

        *(v29 + 24) = v37;
        _os_log_impl(&dword_1C945E000, v24, v25, "Saved Locations before migration merge: count=%{public}ld locations=%{private,mask.hash}s", v29, 0x20u);
        v38 = v77;
        __swift_destroy_boxed_opaque_existential_1Tm(v77);
        MEMORY[0x1CCA8E3D0](v38, -1, -1);
        v39 = v29;
        a1 = v78;
        MEMORY[0x1CCA8E3D0](v39, -1, -1);
      }

      else
      {
      }

      static SyncedData.== infix(_:_:)();
      if ((v44 & 1) == 0)
      {
        sub_1C960FAFC(&qword_1EDB7A5D8, 255, type metadata accessor for SyncedData, &protocol conformance descriptor for SyncedData);
        v45 = v81;
        sub_1C96A6924();
        (*(v82 + 8))(v45, v83);
        v46 = v84;
        sub_1C95C8040();
        (*(v85 + 5))(v11, v46, v6);
      }

      v47 = v3[16];
      v48 = v3[17];
      __swift_project_boxed_opaque_existential_1(v3 + 13, v47);
      v49 = *(v48 + 24);
      v85 = v11;
      v50 = v49(v11, v47, v48);
      if (qword_1EDB7D060 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v86, qword_1EDB7D068);
      sub_1C96A53C4();
      v51 = sub_1C96A6134();
      v52 = sub_1C96A76A4();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v87[0] = v54;
        *v53 = v27[489];
        *(v53 + 4) = *(v50 + 16);

        *(v53 + 12) = 2160;
        *(v53 + 14) = 1752392040;
        *(v53 + 22) = 2081;
        v55 = type metadata accessor for LocationDataModel(0);
        v56 = MEMORY[0x1CCA8CC40](v50, v55);
        v58 = v57;

        v59 = sub_1C9484164(v56, v58, v87);

        *(v53 + 24) = v59;
        _os_log_impl(&dword_1C945E000, v51, v52, "Saved Locations after migration merge: count=%{public}ld locations=%{private,mask.hash}s", v53, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x1CCA8E3D0](v54, -1, -1);
        MEMORY[0x1CCA8E3D0](v53, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v60 = v3[11];
      v61 = v3[12];
      __swift_project_boxed_opaque_existential_1(v3 + 8, v60);
      v62 = v85;
      v63 = (*(v61 + 48))(v85, v60, v61);
      if (v64 >> 60 == 15)
      {
        v65 = sub_1C96A6134();
        v66 = sub_1C96A7684();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_1C945E000, v65, v66, "Error serializing synced data to disk - aborting remote migration to Coherence", v67, 2u);
          MEMORY[0x1CCA8E3D0](v67, -1, -1);
        }
      }

      else
      {
        v68 = v63;
        v69 = v64;
        v70 = a1[3];
        v71 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v70);
        v87[0] = v68;
        v87[1] = v69;
        (*(v71 + 16))(v87, 0x61446465636E7973, 0xEA00000000006174, MEMORY[0x1E6969080], v70, v71);
        v72 = a1[3];
        v73 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v72);
        (*(v73 + 32))(v72, v73);
        v74 = sub_1C96A6134();
        v75 = sub_1C96A76A4();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&dword_1C945E000, v74, v75, "Successfully migrated the remote location list store to Coherence.", v76, 2u);
          MEMORY[0x1CCA8E3D0](v76, -1, -1);
        }

        sub_1C9485BFC(v68, v69);
      }

      sub_1C9573AC8(v14);
      sub_1C9573AC8(v62);
      return;
    }

    v40 = sub_1C96A6134();
    v41 = sub_1C96A76A4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "Legacy locations object not found so a migration is not possible - aborting";
      goto LABEL_13;
    }
  }

  else
  {
    v40 = sub_1C96A6134();
    v41 = sub_1C96A76A4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "Remote KVS migration (to Coherence) is not required because it happened already - exiting";
LABEL_13:
      _os_log_impl(&dword_1C945E000, v40, v41, v43, v42, 2u);
      MEMORY[0x1CCA8E3D0](v42, -1, -1);
    }
  }

  sub_1C960E664(a2, a1);
}

BOOL sub_1C960E4F8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 8))(&v11, 0x61446465636E7973, 0xEA00000000006174, MEMORY[0x1E6969080], v1, v2);
  v3 = v11;
  v4 = v12;
  v5 = v12 >> 60;
  if (v12 >> 60 == 15)
  {
    if (qword_1EDB7D038 != -1)
    {
      swift_once();
    }

    v6 = sub_1C96A6154();
    __swift_project_value_buffer(v6, qword_1EDB7D040);
    v7 = sub_1C96A6134();
    v8 = sub_1C96A76A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C945E000, v7, v8, "No mergeable synced data object found - migration required", v9, 2u);
      MEMORY[0x1CCA8E3D0](v9, -1, -1);
      sub_1C9485BFC(v3, v4);
    }
  }

  else
  {
    sub_1C9485BFC(v11, v12);
  }

  return v5 > 0xE;
}

void sub_1C960E664(uint64_t a1, void *a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8, &unk_1C96BEA90);
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v67 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90, &qword_1C96B31A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v67 - v7;
  v9 = type metadata accessor for SyncedData(0);
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v67 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v74 = &v67 - v18;
  if (qword_1EDB7D038 != -1)
  {
    swift_once();
  }

  v19 = sub_1C96A6154();
  __swift_project_value_buffer(v19, qword_1EDB7D040);
  v20 = sub_1C96A6134();
  v21 = sub_1C96A76A4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = v13;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1C945E000, v20, v21, "About to attempt removing duplicate locations.", v23, 2u);
    v24 = v23;
    v13 = v22;
    MEMORY[0x1CCA8E3D0](v24, -1, -1);
  }

  sub_1C9573924(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    v28 = v74;
    sub_1C960FB44(v8, v74, type metadata accessor for SyncedData);
    sub_1C95F5AE8(v28, v16);
    v29 = sub_1C96A6134();
    v30 = sub_1C96A76A4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v68 = v13;
      v33 = v32;
      v75[0] = v32;
      *v31 = 141558275;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      sub_1C960FAFC(&unk_1EC3A6160, 255, type metadata accessor for SyncedData, &protocol conformance descriptor for SyncedData);
      v34 = sub_1C96A7DB4();
      v36 = v35;
      sub_1C9573AC8(v16);
      v37 = sub_1C9484164(v34, v36, v75);

      *(v31 + 14) = v37;
      _os_log_impl(&dword_1C945E000, v29, v30, "Removing duplicate locations from: %{private,mask.hash}s", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      v38 = v33;
      v13 = v68;
      MEMORY[0x1CCA8E3D0](v38, -1, -1);
      MEMORY[0x1CCA8E3D0](v31, -1, -1);
    }

    else
    {

      sub_1C9573AC8(v16);
    }

    sub_1C95F5AE8(v74, v13);
    sub_1C95C8040();
    (*(v72 + 40))(v13, v5, v73);
    static SyncedData.== infix(_:_:)();
    if (v39)
    {
      v40 = sub_1C96A6134();
      v41 = sub_1C96A76A4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1C945E000, v40, v41, "No duplicates were removed - no need to commit.", v42, 2u);
        MEMORY[0x1CCA8E3D0](v42, -1, -1);
      }
    }

    else
    {
      v43 = v70;
      sub_1C95F5AE8(v13, v70);
      v44 = sub_1C96A6134();
      v45 = sub_1C96A76A4();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v75[0] = v47;
        *v46 = 141558275;
        *(v46 + 4) = 1752392040;
        *(v46 + 12) = 2081;
        sub_1C960FAFC(&unk_1EC3A6160, 255, type metadata accessor for SyncedData, &protocol conformance descriptor for SyncedData);
        v48 = sub_1C96A7DB4();
        v50 = v49;
        sub_1C9573AC8(v43);
        v51 = sub_1C9484164(v48, v50, v75);

        *(v46 + 14) = v51;
        _os_log_impl(&dword_1C945E000, v44, v45, "Commiting unique synced data. %{private,mask.hash}s", v46, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x1CCA8E3D0](v47, -1, -1);
        MEMORY[0x1CCA8E3D0](v46, -1, -1);
      }

      else
      {

        sub_1C9573AC8(v43);
      }

      v52 = v71[11];
      v53 = v71[12];
      __swift_project_boxed_opaque_existential_1(v71 + 8, v52);
      v54 = (*(v53 + 48))(v13, v52, v53);
      if (v55 >> 60 == 15)
      {
        v56 = sub_1C96A6134();
        v57 = sub_1C96A7684();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          v59 = "Error serializing unique synced data to disk";
LABEL_25:
          _os_log_impl(&dword_1C945E000, v56, v57, v59, v58, 2u);
          MEMORY[0x1CCA8E3D0](v58, -1, -1);
        }

LABEL_26:

        sub_1C9573AC8(v74);
        sub_1C9573AC8(v13);
        return;
      }

      v60 = v54;
      v61 = v55;
      v62 = v69;
      v63 = v69[3];
      v64 = v69[4];
      __swift_project_boxed_opaque_existential_1(v69, v63);
      v75[0] = v60;
      v75[1] = v61;
      (*(v64 + 16))(v75, 0x61446465636E7973, 0xEA00000000006174, MEMORY[0x1E6969080], v63, v64);
      v65 = v62[3];
      v66 = v62[4];
      __swift_project_boxed_opaque_existential_1(v62, v65);
      (*(v66 + 32))(v65, v66);
      sub_1C9485BFC(v60, v61);
    }

    v56 = sub_1C96A6134();
    v57 = sub_1C96A76A4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      v59 = "Successfully removed duplicates";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  sub_1C94BE204(v8, &unk_1EC3A5F90, &qword_1C96B31A0);
  v25 = sub_1C96A6134();
  v26 = sub_1C96A76A4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1C945E000, v25, v26, "Unable to remove duplicates: no data.", v27, 2u);
    MEMORY[0x1CCA8E3D0](v27, -1, -1);
  }
}

uint64_t sub_1C960EED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90, &qword_1C96B31A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  sub_1C9573924(a1, &v13 - v5);
  v7 = type metadata accessor for SyncedData(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    return sub_1C960FB44(v6, a2, type metadata accessor for SyncedData);
  }

  sub_1C94BE204(v6, &unk_1EC3A5F90, &qword_1C96B31A0);
  if (qword_1EDB7D038 != -1)
  {
    swift_once();
  }

  v8 = sub_1C96A6154();
  __swift_project_value_buffer(v8, qword_1EDB7D040);
  v9 = sub_1C96A6134();
  v10 = sub_1C96A76A4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C945E000, v9, v10, "No synced data object found locally. Creating a new one.", v11, 2u);
    MEMORY[0x1CCA8E3D0](v11, -1, -1);
  }

  sub_1C94947B4();
  sub_1C94948B8();
  sub_1C9494964();
  sub_1C9494A68();
  sub_1C96A6CC4();
  type metadata accessor for SyncedLocationDisplayContext(0);
  sub_1C960FAFC(&qword_1EDB7D730, 255, type metadata accessor for SyncedLocationDisplayContext, &protocol conformance descriptor for SyncedLocationDisplayContext);
  result = sub_1C96A6BE4();
  *(a2 + *(v7 + 24)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1C960F13C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6138, &qword_1C96BD3B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v49 - v5;
  v7 = type metadata accessor for LocationDataModel(0);
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v49 - v10;
  if (qword_1EDB7D038 != -1)
  {
LABEL_25:
    swift_once();
  }

  v11 = sub_1C96A6154();
  v12 = __swift_project_value_buffer(v11, qword_1EDB7D040);
  v13 = sub_1C96A6134();
  v14 = sub_1C96A76A4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1C945E000, v13, v14, "Attempting to fetch legacy locations last saved in the local cache", v15, 2u);
    MEMORY[0x1CCA8E3D0](v15, -1, -1);
  }

  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = *(v17 + 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60F8, &qword_1C96B4430);
  v18(v58, 0x736569746943, 0xE600000000000000, v19, v16, v17);
  v20 = v58[0];
  if (v58[0])
  {
    v53 = v12;
    v21 = 0;
    a1 = 0;
    v22 = *(v58[0] + 16);
    v23 = v58[0] + 32;
    v57 = MEMORY[0x1E69E7CC0];
    v52 = v58[0] + 32;
LABEL_6:
    v24 = v23 + 32 * v21;
    while (v22 != v21)
    {
      if (v21 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      sub_1C9484328(v24, v58);
      sub_1C960F72C(v58, v2, v6);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
      {
        v51 = v2;
        v25 = v54;
        sub_1C960FB44(v6, v54, type metadata accessor for LocationDataModel);
        sub_1C960FB44(v25, v56, type metadata accessor for LocationDataModel);
        v26 = v57;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C94FB930();
          v26 = v32;
        }

        v27 = v26;
        v28 = *(v26 + 16);
        v57 = v27;
        v29 = v28 + 1;
        v2 = v51;
        if (v28 >= *(v27 + 24) >> 1)
        {
          v50 = v28 + 1;
          sub_1C94FB930();
          v29 = v50;
          v57 = v33;
        }

        ++v21;
        v30 = v56;
        v31 = v57;
        *(v57 + 16) = v29;
        sub_1C960FB44(v30, v31 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v28, type metadata accessor for LocationDataModel);
        v23 = v52;
        goto LABEL_6;
      }

      sub_1C94BE204(v6, &qword_1EC3A6138, &qword_1C96BD3B0);
      v24 += 32;
      ++v21;
    }

    v34 = v57;
    sub_1C96A53C4();
    v35 = sub_1C96A6134();
    v36 = sub_1C96A76A4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v58[0] = v38;
      *v37 = 134218499;
      *(v37 + 4) = *(v34 + 16);

      *(v37 + 12) = 2160;
      *(v37 + 14) = 1752392040;
      *(v37 + 22) = 2081;
      v39 = MEMORY[0x1CCA8CC40](v34, v7);
      v41 = sub_1C9484164(v39, v40, v58);

      *(v37 + 24) = v41;
      _os_log_impl(&dword_1C945E000, v35, v36, "Successfully fetched locations from the local key value store. Location count = %ld. Locations=%{private,mask.hash}s", v37, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1CCA8E3D0](v38, -1, -1);
      MEMORY[0x1CCA8E3D0](v37, -1, -1);
    }

    else
    {
    }

    v46 = v2[21];
    v47 = v2[22];
    __swift_project_boxed_opaque_existential_1(v2 + 18, v46);
    v45 = (*(v47 + 24))(v34, v46, v47);
  }

  else
  {
    v42 = sub_1C96A6134();
    v43 = sub_1C96A76A4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1C945E000, v42, v43, "No local locations list object found - returning nil", v44, 2u);
      MEMORY[0x1CCA8E3D0](v44, -1, -1);
    }

    return 0;
  }

  return v45;
}

uint64_t sub_1C960F72C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[16];
  v7 = a2[17];
  __swift_project_boxed_opaque_existential_1(a2 + 13, v6);
  (*(v7 + 8))(a1, v6, v7);
  if (v3)
  {
    if (qword_1EDB7D038 != -1)
    {
      swift_once();
    }

    v8 = sub_1C96A6154();
    __swift_project_value_buffer(v8, qword_1EDB7D040);
    sub_1C9484328(a1, v26);
    v9 = v3;
    v10 = sub_1C96A6134();
    v11 = sub_1C96A7684();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v13;
      *v12 = 136446723;
      v25 = v3;
      v14 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380, &qword_1C96AA2F0);
      v15 = sub_1C96A70A4();
      v17 = sub_1C9484164(v15, v16, &v27);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      *(v12 + 22) = 2081;
      sub_1C9484328(v26, &v25);
      v18 = sub_1C96A70A4();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v21 = sub_1C9484164(v18, v20, &v27);

      *(v12 + 24) = v21;
      _os_log_impl(&dword_1C945E000, v10, v11, "Skipping a local location after an unexpected parsing error: %{public}s, localLocation: %{private,mask.hash}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v13, -1, -1);
      MEMORY[0x1CCA8E3D0](v12, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }

    v24 = type metadata accessor for LocationDataModel(0);
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v24);
  }

  else
  {
    v22 = type metadata accessor for LocationDataModel(0);
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v22);
  }
}

void *sub_1C960F9E4()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 23);
  return v0;
}

uint64_t sub_1C960FA2C()
{
  sub_1C960F9E4();

  return MEMORY[0x1EEE6BDC0](v0, 224, 7);
}

uint64_t sub_1C960FAFC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1C960FB44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CachedIdentityService.__allocating_init()()
{
  v0 = swift_allocObject();
  CachedIdentityService.init()();
  return v0;
}

uint64_t CachedIdentityService.init()()
{
  if (qword_1EDB7CDE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_1EDB7CDE8;
  *(v0 + 16) = qword_1EDB7CDE8;
  v2 = OBJC_IVAR____TtC11WeatherCore21CachedIdentityService____lazy_storage___identity;
  v3 = type metadata accessor for UserIdentity(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = v1;
  return v0;
}

uint64_t CachedIdentityService.identity.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6538, &qword_1C96B6B70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC11WeatherCore21CachedIdentityService____lazy_storage___identity;
  swift_beginAccess();
  sub_1C94C895C(v1 + v9, v8);
  v10 = type metadata accessor for UserIdentity(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return sub_1C956CAA4(v8, a1);
  }

  sub_1C9600814(v8);
  sub_1C960FF50(a1);
  sub_1C956CA40(a1, v5);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1C9610464(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1C960FDF0(uint64_t a1)
{
  v2 = type metadata accessor for UserIdentity(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C956CA40(a1, v4);
  return CachedIdentityService.identity.setter(v4);
}

uint64_t CachedIdentityService.identity.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6538, &qword_1C96B6B70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1C956CAA4(a1, &v9 - v4);
  v6 = type metadata accessor for UserIdentity(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC11WeatherCore21CachedIdentityService____lazy_storage___identity;
  swift_beginAccess();
  sub_1C9610464(v5, v1 + v7);
  return swift_endAccess();
}

uint64_t sub_1C960FF50@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6538, &qword_1C96B6B70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for UserIdentity(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  sub_1C94B2FFC();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1C9600814(v4);
    if (qword_1EDB7CF60 != -1)
    {
      swift_once();
    }

    v11 = sub_1C96A6154();
    __swift_project_value_buffer(v11, qword_1EDB7CF68);
    v12 = sub_1C96A6134();
    v13 = sub_1C96A76A4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C945E000, v12, v13, "Creating user identity due to lacking cached variant", v14, 2u);
      MEMORY[0x1CCA8E3D0](v14, -1, -1);
    }

    return sub_1C956BE78(a1);
  }

  else
  {
    sub_1C956CAA4(v4, v10);
    if (qword_1EDB7CF60 != -1)
    {
      swift_once();
    }

    v16 = sub_1C96A6154();
    __swift_project_value_buffer(v16, qword_1EDB7CF68);
    sub_1C956CA40(v10, v7);
    v17 = sub_1C96A6134();
    v18 = sub_1C96A76A4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136446210;
      v21 = *v7;
      v22 = v7[1];
      sub_1C96A53C4();
      sub_1C94B648C(v7);
      v23 = sub_1C9484164(v21, v22, &v25);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1C945E000, v17, v18, "Using cached user identity with identifier: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1CCA8E3D0](v20, -1, -1);
      MEMORY[0x1CCA8E3D0](v19, -1, -1);
    }

    else
    {

      sub_1C94B648C(v7);
    }

    return sub_1C956CAA4(v10, a1);
  }
}

void (*CachedIdentityService.identity.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for UserIdentity(0) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v4 = __swift_coroFrameAllocStub(v3);
  a1[2] = v4;
  CachedIdentityService.identity.getter(v4);
  return sub_1C9610320;
}

void sub_1C9610320(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1C956CA40(v3, v2);
    CachedIdentityService.identity.setter(v2);
    sub_1C94B648C(v3);
  }

  else
  {
    CachedIdentityService.identity.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t CachedIdentityService.__deallocating_deinit()
{
  sub_1C9600814(v0 + OBJC_IVAR____TtC11WeatherCore21CachedIdentityService____lazy_storage___identity);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C9610464(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6538, &qword_1C96B6B70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CachedIdentityService(uint64_t a1)
{
  result = qword_1EDB797A8;
  if (!qword_1EDB797A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C9610528(uint64_t a1)
{
  sub_1C9469F0C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t Throttler.__allocating_init(interval:queue:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  Throttler.init(interval:queue:)(a1, a2);
  return v4;
}

uint64_t Throttler.init(interval:queue:)(uint64_t a1, double a2)
{
  v5 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_14();
  *(v2 + 32) = 0;
  sub_1C96A4954();
  v6 = OBJC_IVAR____TtC11WeatherCore9Throttler_lock;
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  *(v2 + v6) = sub_1C96A5124();
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t Throttler.execute(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C96A6604();
  OUTLINED_FUNCTION_1();
  v36 = v7;
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v34 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v35 = v32 - v10;
  v33 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v32 - v17;
  v19 = sub_1C96A6564();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  v32[1] = OBJC_IVAR____TtC11WeatherCore9Throttler_lock;
  sub_1C96A3D04();
  sub_1C96A50E4();

  if (*(v2 + 32))
  {
    sub_1C96A3D04();
    sub_1C96A6644();
  }

  *(v2 + 32) = 0;

  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a1;
  v21[4] = a2;
  aBlock[4] = sub_1C9610D10;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C946FCF8;
  aBlock[3] = &block_descriptor_15;
  _Block_copy(aBlock);
  v38 = MEMORY[0x1E69E7CC0];
  sub_1C94D19D8();
  sub_1C96A3D04();
  sub_1C96A3D04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
  sub_1C94D1A34();
  sub_1C96A79E4();
  sub_1C96A6654();
  swift_allocObject();
  v22 = sub_1C96A6634();

  *(v2 + 32) = v22;
  sub_1C96A3D04();

  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v23 = OBJC_IVAR____TtC11WeatherCore9Throttler_previousRun;
  swift_beginAccess();
  v24 = v33;
  (*(v12 + 16))(v15, v3 + v23, v33);
  sub_1C96A4964();
  v25 = *(v12 + 8);
  v25(v15, v24);
  v25(v18, v24);
  v26 = v34;
  sub_1C96A65F4();
  v27 = v35;
  sub_1C96A6684();
  v28 = *(v36 + 8);
  v29 = v26;
  v30 = v37;
  v28(v29, v37);
  sub_1C96A7744();

  v28(v27, v30);
  sub_1C96A3D04();
  sub_1C96A50F4();
}

uint64_t sub_1C9610B98(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = sub_1C96A4A54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_1C96A3D04();
    sub_1C96A50E4();

    sub_1C96A4A14();
    v9 = OBJC_IVAR____TtC11WeatherCore9Throttler_previousRun;
    swift_beginAccess();
    (*(v4 + 40))(v8 + v9, v6, v3);
    swift_endAccess();
    sub_1C96A3D04();
    sub_1C96A50F4();

    a2(v10);
  }

  return result;
}

Swift::Void __swiftcall Throttler.reset()()
{
  v1 = v0;
  v2 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  sub_1C96A3D04();
  sub_1C96A50E4();

  if (*(v0 + 32))
  {
    sub_1C96A3D04();
    sub_1C96A6644();
  }

  *(v0 + 32) = 0;

  sub_1C96A4A14();
  v9 = OBJC_IVAR____TtC11WeatherCore9Throttler_previousRun;
  swift_beginAccess();
  (*(v4 + 40))(v1 + v9, v8, v2);
  swift_endAccess();
  sub_1C96A3D04();
  sub_1C96A50F4();
}

uint64_t Throttler.deinit()
{

  v1 = OBJC_IVAR____TtC11WeatherCore9Throttler_previousRun;
  v2 = sub_1C96A4A54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t Throttler.__deallocating_deinit()
{
  Throttler.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for Throttler(uint64_t a1)
{
  result = qword_1EC3A7188;
  if (!qword_1EC3A7188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9610F94(uint64_t a1)
{
  result = sub_1C96A4A54();
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

uint64_t UnitDefaults.init(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C96A4C14();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

id sub_1C9611120(void (*a1)(__n128))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5670, &unk_1C96BD450);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_71();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  a1(v7);
  v10 = sub_1C94A4584(v1, v9);
  (*(v5 + 8))(v9, v3);
  return v10;
}

uint64_t UnitDefaults.pressure.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5668, &unk_1C96AF670);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_44();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_3();
  sub_1C946B5D0(0, &qword_1EDB7FD98, 0x1E696B070);
  v3 = OUTLINED_FUNCTION_2_58();
  v4(v3);
  sub_1C96A4654();
  OUTLINED_FUNCTION_6_45();
  return sub_1C96A76C4();
}

uint64_t UnitDefaults.temperature.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5660, &unk_1C96BD460);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_44();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_3();
  sub_1C946B5D0(0, &qword_1EDB80068, 0x1E696B080);
  v3 = OUTLINED_FUNCTION_2_58();
  v4(v3);
  sub_1C96A4664();
  OUTLINED_FUNCTION_6_45();
  return sub_1C96A76F4();
}

uint64_t UnitDefaults.windGust.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5658, &unk_1C96AF660);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_44();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_3();
  sub_1C946B5D0(0, &qword_1EDB80070, 0x1E696B078);
  v3 = OUTLINED_FUNCTION_2_58();
  v4(v3);
  sub_1C96A4614();
  OUTLINED_FUNCTION_6_45();
  return sub_1C96A7644();
}

uint64_t sub_1C96114E4(uint64_t a1)
{
  sub_1C96A4C14();
  sub_1C94A49F8(&qword_1EDB80048, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1C96A6F34();
  type metadata accessor for UnitDefaults.UnitLengthCacheKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5670, &unk_1C96BD450);
  sub_1C94A4B68();
  return sub_1C96A6F34();
}

uint64_t sub_1C9611598()
{
  sub_1C96A7EE4();
  sub_1C96A4C14();
  sub_1C94A49F8(&qword_1EDB80048, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1C96A6F34();
  type metadata accessor for UnitDefaults.UnitLengthCacheKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5670, &unk_1C96BD450);
  sub_1C94A4B68();
  sub_1C96A6F34();
  return sub_1C96A7F24();
}

uint64_t UnitDefaults.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C96A4C14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t dispatch thunk of PredictedLocationsServiceProxyType.sendNotificationsForPredictedLocations()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

uint64_t dispatch thunk of PredictedLocationsServiceProxyType.demoSendNotificationsForPredictedLocationsAfterFeatureEnablement()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

uint64_t dispatch thunk of PredictedLocationsServiceProxyType.reschedulePredictedLocationsRefreshForNotifications()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

uint64_t dispatch thunk of PredictedLocationsServiceProxyType.cancelScheduledPredictedLocationsRefreshForNotifications()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

uint64_t dispatch thunk of PredictedLocationsServiceProxyType.donateIntentsForPredictedLocations()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

uint64_t dispatch thunk of PredictedLocationsServiceProxyType.reschedulePredictedLocationsRefreshForIntentDonations()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

uint64_t dispatch thunk of PredictedLocationsServiceProxyType.cancelScheduledPredictedLocationsRefreshForIntentDonations()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

id sub_1C9611DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1C96A7004();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

uint64_t sub_1C9611E34(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380, &qword_1C96AA2F0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1C9611EC8(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_1C96A5294();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9611F88, 0, 0);
}

uint64_t sub_1C9611F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_42_10();
  if (qword_1EDB7C728 != -1)
  {
    OUTLINED_FUNCTION_7_36(&qword_1EDB7C728);
  }

  v20 = OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_40_8(v20, qword_1EDB7C730);
  v21 = OUTLINED_FUNCTION_48_8();
  v23 = OUTLINED_FUNCTION_45_8(v21, v22);
  OUTLINED_FUNCTION_21_23(v23);
  sub_1C96A5284();
  v24 = OUTLINED_FUNCTION_10_36();
  v26 = v25(v24);
  OUTLINED_FUNCTION_35_8(v26, sel_setRemoteObjectInterface_);

  OUTLINED_FUNCTION_5_44();
  v16[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_1_60();
  v16[4] = v27;
  v16[5] = &block_descriptor_108;
  v28 = _Block_copy(v15);
  OUTLINED_FUNCTION_35_8(v28, sel_setInterruptionHandler_);
  _Block_release(v28);
  OUTLINED_FUNCTION_4_54();
  v16[8] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_86();
  v16[10] = v29;
  v16[11] = &block_descriptor_111_0;
  v30 = _Block_copy(v14);
  OUTLINED_FUNCTION_35_8(v30, sel_setInvalidationHandler_);
  _Block_release(v30);
  v31 = OUTLINED_FUNCTION_49_7(v17);
  OUTLINED_FUNCTION_47_4(v31);
  if (v15)
  {

    OUTLINED_FUNCTION_13_36();
    OUTLINED_FUNCTION_12_30();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDB7AC40 != -1)
    {
      OUTLINED_FUNCTION_0_75(&qword_1EDB7AC40);
    }

    v41 = OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_41_10(v41, qword_1EDB7AC48);
    v42 = sub_1C96A6134();
    sub_1C96A76A4();
    OUTLINED_FUNCTION_51_6();
    if (OUTLINED_FUNCTION_50_4())
    {
      OUTLINED_FUNCTION_32_6();
      OUTLINED_FUNCTION_30_11();
      OUTLINED_FUNCTION_39_7();
      *(v19 + 4) = OUTLINED_FUNCTION_22_22(4.8751e-34, v43, v44);
      OUTLINED_FUNCTION_20_22(&dword_1C945E000, v45, v46, "Will connect to predicted locations XPC service on weatherd to %{public}s");
      OUTLINED_FUNCTION_14_28();
      OUTLINED_FUNCTION_28_16();
    }

    v47 = swift_task_alloc();
    v48 = OUTLINED_FUNCTION_37_8(v47);
    *v48 = v49;
    OUTLINED_FUNCTION_15_30(v48);
    OUTLINED_FUNCTION_12_30();

    return sub_1C9613830(v50);
  }
}

uint64_t sub_1C96121E8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_25_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_15();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C96122E0(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_1C96A5294();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C96123A0, 0, 0);
}

uint64_t sub_1C96123A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_42_10();
  if (qword_1EDB7C728 != -1)
  {
    OUTLINED_FUNCTION_7_36(&qword_1EDB7C728);
  }

  v20 = OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_40_8(v20, qword_1EDB7C730);
  v21 = OUTLINED_FUNCTION_48_8();
  v23 = OUTLINED_FUNCTION_45_8(v21, v22);
  OUTLINED_FUNCTION_21_23(v23);
  sub_1C96A5284();
  v24 = OUTLINED_FUNCTION_10_36();
  v26 = v25(v24);
  OUTLINED_FUNCTION_35_8(v26, sel_setRemoteObjectInterface_);

  OUTLINED_FUNCTION_5_44();
  v16[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_1_60();
  v16[4] = v27;
  v16[5] = &block_descriptor_92;
  v28 = _Block_copy(v15);
  OUTLINED_FUNCTION_35_8(v28, sel_setInterruptionHandler_);
  _Block_release(v28);
  OUTLINED_FUNCTION_4_54();
  v16[8] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_86();
  v16[10] = v29;
  v16[11] = &block_descriptor_95;
  v30 = _Block_copy(v14);
  OUTLINED_FUNCTION_35_8(v30, sel_setInvalidationHandler_);
  _Block_release(v30);
  v31 = OUTLINED_FUNCTION_49_7(v17);
  OUTLINED_FUNCTION_47_4(v31);
  if (v15)
  {

    OUTLINED_FUNCTION_13_36();
    OUTLINED_FUNCTION_12_30();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDB7AC40 != -1)
    {
      OUTLINED_FUNCTION_0_75(&qword_1EDB7AC40);
    }

    v41 = OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_41_10(v41, qword_1EDB7AC48);
    v42 = sub_1C96A6134();
    sub_1C96A76A4();
    OUTLINED_FUNCTION_51_6();
    if (OUTLINED_FUNCTION_50_4())
    {
      OUTLINED_FUNCTION_32_6();
      OUTLINED_FUNCTION_30_11();
      OUTLINED_FUNCTION_39_7();
      *(v19 + 4) = OUTLINED_FUNCTION_22_22(4.8751e-34, v43, v44);
      OUTLINED_FUNCTION_20_22(&dword_1C945E000, v45, v46, "Will connect to predicted locations XPC service on weatherd to %{public}s");
      OUTLINED_FUNCTION_14_28();
      OUTLINED_FUNCTION_28_16();
    }

    v47 = swift_task_alloc();
    v48 = OUTLINED_FUNCTION_37_8(v47);
    *v48 = v49;
    OUTLINED_FUNCTION_15_30(v48);
    OUTLINED_FUNCTION_12_30();

    return sub_1C9613B0C(v50);
  }
}

uint64_t sub_1C9612600(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_1C96A5294();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C96126C0, 0, 0);
}

uint64_t sub_1C96126C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_42_10();
  if (qword_1EDB7C728 != -1)
  {
    OUTLINED_FUNCTION_7_36(&qword_1EDB7C728);
  }

  v20 = OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_40_8(v20, qword_1EDB7C730);
  v21 = OUTLINED_FUNCTION_48_8();
  v23 = OUTLINED_FUNCTION_45_8(v21, v22);
  OUTLINED_FUNCTION_21_23(v23);
  sub_1C96A5284();
  v24 = OUTLINED_FUNCTION_10_36();
  v26 = v25(v24);
  OUTLINED_FUNCTION_35_8(v26, sel_setRemoteObjectInterface_);

  OUTLINED_FUNCTION_5_44();
  v16[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_1_60();
  v16[4] = v27;
  v16[5] = &block_descriptor_76;
  v28 = _Block_copy(v15);
  OUTLINED_FUNCTION_35_8(v28, sel_setInterruptionHandler_);
  _Block_release(v28);
  OUTLINED_FUNCTION_4_54();
  v16[8] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_86();
  v16[10] = v29;
  v16[11] = &block_descriptor_79;
  v30 = _Block_copy(v14);
  OUTLINED_FUNCTION_35_8(v30, sel_setInvalidationHandler_);
  _Block_release(v30);
  v31 = OUTLINED_FUNCTION_49_7(v17);
  OUTLINED_FUNCTION_47_4(v31);
  if (v15)
  {

    OUTLINED_FUNCTION_13_36();
    OUTLINED_FUNCTION_12_30();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDB7AC40 != -1)
    {
      OUTLINED_FUNCTION_0_75(&qword_1EDB7AC40);
    }

    v41 = OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_41_10(v41, qword_1EDB7AC48);
    v42 = sub_1C96A6134();
    sub_1C96A76A4();
    OUTLINED_FUNCTION_51_6();
    if (OUTLINED_FUNCTION_50_4())
    {
      OUTLINED_FUNCTION_32_6();
      OUTLINED_FUNCTION_30_11();
      OUTLINED_FUNCTION_39_7();
      *(v19 + 4) = OUTLINED_FUNCTION_22_22(4.8751e-34, v43, v44);
      OUTLINED_FUNCTION_20_22(&dword_1C945E000, v45, v46, "Will connect to predicted locations XPC service on weatherd to %{public}s");
      OUTLINED_FUNCTION_14_28();
      OUTLINED_FUNCTION_28_16();
    }

    v47 = swift_task_alloc();
    v48 = OUTLINED_FUNCTION_37_8(v47);
    *v48 = v49;
    OUTLINED_FUNCTION_15_30(v48);
    OUTLINED_FUNCTION_12_30();

    return sub_1C9613C88(v50);
  }
}

uint64_t sub_1C9612920(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_1C96A5294();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C96129E0, 0, 0);
}

uint64_t sub_1C96129E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_42_10();
  if (qword_1EDB7C728 != -1)
  {
    OUTLINED_FUNCTION_7_36(&qword_1EDB7C728);
  }

  v20 = OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_40_8(v20, qword_1EDB7C730);
  v21 = OUTLINED_FUNCTION_48_8();
  v23 = OUTLINED_FUNCTION_45_8(v21, v22);
  OUTLINED_FUNCTION_21_23(v23);
  sub_1C96A5284();
  v24 = OUTLINED_FUNCTION_10_36();
  v26 = v25(v24);
  OUTLINED_FUNCTION_35_8(v26, sel_setRemoteObjectInterface_);

  OUTLINED_FUNCTION_5_44();
  v16[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_1_60();
  v16[4] = v27;
  v16[5] = &block_descriptor_60;
  v28 = _Block_copy(v15);
  OUTLINED_FUNCTION_35_8(v28, sel_setInterruptionHandler_);
  _Block_release(v28);
  OUTLINED_FUNCTION_4_54();
  v16[8] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_86();
  v16[10] = v29;
  v16[11] = &block_descriptor_63_0;
  v30 = _Block_copy(v14);
  OUTLINED_FUNCTION_35_8(v30, sel_setInvalidationHandler_);
  _Block_release(v30);
  v31 = OUTLINED_FUNCTION_49_7(v17);
  OUTLINED_FUNCTION_47_4(v31);
  if (v15)
  {

    OUTLINED_FUNCTION_13_36();
    OUTLINED_FUNCTION_12_30();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDB7AC40 != -1)
    {
      OUTLINED_FUNCTION_0_75(&qword_1EDB7AC40);
    }

    v41 = OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_41_10(v41, qword_1EDB7AC48);
    v42 = sub_1C96A6134();
    sub_1C96A76A4();
    OUTLINED_FUNCTION_51_6();
    if (OUTLINED_FUNCTION_50_4())
    {
      OUTLINED_FUNCTION_32_6();
      OUTLINED_FUNCTION_30_11();
      OUTLINED_FUNCTION_39_7();
      *(v19 + 4) = OUTLINED_FUNCTION_22_22(4.8751e-34, v43, v44);
      OUTLINED_FUNCTION_20_22(&dword_1C945E000, v45, v46, "Will connect to predicted locations XPC service on weatherd to %{public}s");
      OUTLINED_FUNCTION_14_28();
      OUTLINED_FUNCTION_28_16();
    }

    v47 = swift_task_alloc();
    v48 = OUTLINED_FUNCTION_37_8(v47);
    *v48 = v49;
    OUTLINED_FUNCTION_15_30(v48);
    OUTLINED_FUNCTION_12_30();

    return sub_1C9613F88(v50);
  }
}

uint64_t sub_1C9612C40(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_1C96A5294();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9612D00, 0, 0);
}

uint64_t sub_1C9612D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_42_10();
  if (qword_1EDB7C728 != -1)
  {
    OUTLINED_FUNCTION_7_36(&qword_1EDB7C728);
  }

  v20 = OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_40_8(v20, qword_1EDB7C730);
  v21 = OUTLINED_FUNCTION_48_8();
  v23 = OUTLINED_FUNCTION_45_8(v21, v22);
  OUTLINED_FUNCTION_21_23(v23);
  sub_1C96A5284();
  v24 = OUTLINED_FUNCTION_10_36();
  v26 = v25(v24);
  OUTLINED_FUNCTION_35_8(v26, sel_setRemoteObjectInterface_);

  OUTLINED_FUNCTION_5_44();
  v16[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_1_60();
  v16[4] = v27;
  v16[5] = &block_descriptor_44;
  v28 = _Block_copy(v15);
  OUTLINED_FUNCTION_35_8(v28, sel_setInterruptionHandler_);
  _Block_release(v28);
  OUTLINED_FUNCTION_4_54();
  v16[8] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_86();
  v16[10] = v29;
  v16[11] = &block_descriptor_47;
  v30 = _Block_copy(v14);
  OUTLINED_FUNCTION_35_8(v30, sel_setInvalidationHandler_);
  _Block_release(v30);
  v31 = OUTLINED_FUNCTION_49_7(v17);
  OUTLINED_FUNCTION_47_4(v31);
  if (v15)
  {

    OUTLINED_FUNCTION_13_36();
    OUTLINED_FUNCTION_12_30();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDB7AC40 != -1)
    {
      OUTLINED_FUNCTION_0_75(&qword_1EDB7AC40);
    }

    v41 = OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_41_10(v41, qword_1EDB7AC48);
    v42 = sub_1C96A6134();
    sub_1C96A76A4();
    OUTLINED_FUNCTION_51_6();
    if (OUTLINED_FUNCTION_50_4())
    {
      OUTLINED_FUNCTION_32_6();
      OUTLINED_FUNCTION_30_11();
      OUTLINED_FUNCTION_39_7();
      *(v19 + 4) = OUTLINED_FUNCTION_22_22(4.8751e-34, v43, v44);
      OUTLINED_FUNCTION_20_22(&dword_1C945E000, v45, v46, "Will connect to predicted locations XPC service on weatherd to %{public}s");
      OUTLINED_FUNCTION_14_28();
      OUTLINED_FUNCTION_28_16();
    }

    v47 = swift_task_alloc();
    v48 = OUTLINED_FUNCTION_37_8(v47);
    *v48 = v49;
    OUTLINED_FUNCTION_15_30(v48);
    OUTLINED_FUNCTION_12_30();

    return sub_1C9614104(v50);
  }
}

uint64_t sub_1C9612F60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_25_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_15();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9613058()
{
  OUTLINED_FUNCTION_30();
  v1 = *(v0 + 152);
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_1C96130E0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 152);
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_1C961315C(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_1C96A5294();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C961321C, 0, 0);
}

uint64_t sub_1C961321C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_42_10();
  if (qword_1EDB7C728 != -1)
  {
    OUTLINED_FUNCTION_7_36(&qword_1EDB7C728);
  }

  v20 = OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_40_8(v20, qword_1EDB7C730);
  v21 = OUTLINED_FUNCTION_48_8();
  v23 = OUTLINED_FUNCTION_45_8(v21, v22);
  OUTLINED_FUNCTION_21_23(v23);
  sub_1C96A5284();
  v24 = OUTLINED_FUNCTION_10_36();
  v26 = v25(v24);
  OUTLINED_FUNCTION_35_8(v26, sel_setRemoteObjectInterface_);

  OUTLINED_FUNCTION_5_44();
  v16[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_1_60();
  v16[4] = v27;
  v16[5] = &block_descriptor_28;
  v28 = _Block_copy(v15);
  OUTLINED_FUNCTION_35_8(v28, sel_setInterruptionHandler_);
  _Block_release(v28);
  OUTLINED_FUNCTION_4_54();
  v16[8] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_86();
  v16[10] = v29;
  v16[11] = &block_descriptor_31_0;
  v30 = _Block_copy(v14);
  OUTLINED_FUNCTION_35_8(v30, sel_setInvalidationHandler_);
  _Block_release(v30);
  v31 = OUTLINED_FUNCTION_49_7(v17);
  OUTLINED_FUNCTION_47_4(v31);
  if (v15)
  {

    OUTLINED_FUNCTION_13_36();
    OUTLINED_FUNCTION_12_30();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDB7AC40 != -1)
    {
      OUTLINED_FUNCTION_0_75(&qword_1EDB7AC40);
    }

    v41 = OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_41_10(v41, qword_1EDB7AC48);
    v42 = sub_1C96A6134();
    sub_1C96A76A4();
    OUTLINED_FUNCTION_51_6();
    if (OUTLINED_FUNCTION_50_4())
    {
      OUTLINED_FUNCTION_32_6();
      OUTLINED_FUNCTION_30_11();
      OUTLINED_FUNCTION_39_7();
      *(v19 + 4) = OUTLINED_FUNCTION_22_22(4.8751e-34, v43, v44);
      OUTLINED_FUNCTION_20_22(&dword_1C945E000, v45, v46, "Will connect to predicted locations XPC service on weatherd to %{public}s");
      OUTLINED_FUNCTION_14_28();
      OUTLINED_FUNCTION_28_16();
    }

    v47 = swift_task_alloc();
    v48 = OUTLINED_FUNCTION_37_8(v47);
    *v48 = v49;
    OUTLINED_FUNCTION_15_30(v48);
    OUTLINED_FUNCTION_12_30();

    return sub_1C9614280(v50);
  }
}

uint64_t sub_1C961347C(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_1C96A5294();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C961353C, 0, 0);
}

uint64_t sub_1C961353C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_42_10();
  if (qword_1EDB7C728 != -1)
  {
    OUTLINED_FUNCTION_7_36(&qword_1EDB7C728);
  }

  v20 = OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_40_8(v20, qword_1EDB7C730);
  v21 = OUTLINED_FUNCTION_48_8();
  v23 = OUTLINED_FUNCTION_45_8(v21, v22);
  OUTLINED_FUNCTION_21_23(v23);
  sub_1C96A5284();
  v24 = OUTLINED_FUNCTION_10_36();
  v26 = v25(v24);
  OUTLINED_FUNCTION_35_8(v26, sel_setRemoteObjectInterface_);

  OUTLINED_FUNCTION_5_44();
  v16[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_1_60();
  v16[4] = v27;
  v16[5] = &block_descriptor_16;
  v28 = _Block_copy(v15);
  OUTLINED_FUNCTION_35_8(v28, sel_setInterruptionHandler_);
  _Block_release(v28);
  OUTLINED_FUNCTION_4_54();
  v16[8] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_86();
  v16[10] = v29;
  v16[11] = &block_descriptor_15_1;
  v30 = _Block_copy(v14);
  OUTLINED_FUNCTION_35_8(v30, sel_setInvalidationHandler_);
  _Block_release(v30);
  v31 = OUTLINED_FUNCTION_49_7(v17);
  OUTLINED_FUNCTION_47_4(v31);
  if (v15)
  {

    OUTLINED_FUNCTION_13_36();
    OUTLINED_FUNCTION_12_30();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDB7AC40 != -1)
    {
      OUTLINED_FUNCTION_0_75(&qword_1EDB7AC40);
    }

    v41 = OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_41_10(v41, qword_1EDB7AC48);
    v42 = sub_1C96A6134();
    sub_1C96A76A4();
    OUTLINED_FUNCTION_51_6();
    if (OUTLINED_FUNCTION_50_4())
    {
      OUTLINED_FUNCTION_32_6();
      OUTLINED_FUNCTION_30_11();
      OUTLINED_FUNCTION_39_7();
      *(v19 + 4) = OUTLINED_FUNCTION_22_22(4.8751e-34, v43, v44);
      OUTLINED_FUNCTION_20_22(&dword_1C945E000, v45, v46, "Will connect to predicted locations XPC service on weatherd to %{public}s");
      OUTLINED_FUNCTION_14_28();
      OUTLINED_FUNCTION_28_16();
    }

    v47 = swift_task_alloc();
    v48 = OUTLINED_FUNCTION_37_8(v47);
    *v48 = v49;
    OUTLINED_FUNCTION_15_30(v48);
    OUTLINED_FUNCTION_12_30();

    return sub_1C96143FC(v50);
  }
}

uint64_t sub_1C961379C()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_37(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_28(v1);
  v3 = OUTLINED_FUNCTION_38_5(42);

  return sub_1C9611EC8(v3, v4);
}

uint64_t sub_1C9613850()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17_29();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_29_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A71A0, &unk_1C96BD600);
  OUTLINED_FUNCTION_3_45(v3);
  OUTLINED_FUNCTION_36_6(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_46_4(v4, sel_sendNotificationsForPredictedLocationsWithCompletionHandler_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C9613918()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_25_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = *(v3 + 48);
  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C9613A14(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    return sub_1C9611E34(v3, a2);
  }

  return j__swift_continuation_throwingResume();
}

uint64_t sub_1C9613A78()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_37(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_28(v1);
  v3 = OUTLINED_FUNCTION_38_5(67);

  return sub_1C96122E0(v3, v4);
}

uint64_t sub_1C9613B2C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17_29();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_29_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A71A0, &unk_1C96BD600);
  OUTLINED_FUNCTION_3_45(v3);
  OUTLINED_FUNCTION_36_6(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_46_4(v4, sel_demoSendNotificationsForPredictedLocationsAfterFeatureEnablementWithCompletionHandler_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C9613BF4()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_37(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_28(v1);
  v3 = OUTLINED_FUNCTION_38_5(31);

  return sub_1C9612600(v3, v4);
}

uint64_t sub_1C9613CA8()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17_29();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_29_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A71A0, &unk_1C96BD600);
  OUTLINED_FUNCTION_3_45(v3);
  OUTLINED_FUNCTION_36_6(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_46_4(v4, sel_reschedulePredictedLocationsRefreshForNotificationsWithCompletionHandler_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C9613D70()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_25_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = *(v3 + 48);
  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C9613E90()
{
  OUTLINED_FUNCTION_30();
  swift_willThrow();
  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1C9613EF4()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_37(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_28(v1);
  v3 = OUTLINED_FUNCTION_38_5(39);

  return sub_1C9612920(v3, v4);
}

uint64_t sub_1C9613FA8()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17_29();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_29_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A71A0, &unk_1C96BD600);
  OUTLINED_FUNCTION_3_45(v3);
  OUTLINED_FUNCTION_36_6(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_46_4(v4, sel_cancelScheduledPredictedLocationsRefreshForNotificationsWithCompletionHandler_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C9614070()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_37(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_28(v1);
  v3 = OUTLINED_FUNCTION_38_5(38);

  return sub_1C9612C40(v3, v4);
}

uint64_t sub_1C9614124()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17_29();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_29_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A71A0, &unk_1C96BD600);
  OUTLINED_FUNCTION_3_45(v3);
  OUTLINED_FUNCTION_36_6(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_46_4(v4, sel_donateIntentsForPredictedLocationsWithCompletionHandler_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C96141EC()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_37(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_28(v1);
  v3 = OUTLINED_FUNCTION_38_5(49);

  return sub_1C961315C(v3, v4);
}

uint64_t sub_1C96142A0()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17_29();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_29_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A71A0, &unk_1C96BD600);
  OUTLINED_FUNCTION_3_45(v3);
  OUTLINED_FUNCTION_36_6(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_46_4(v4, sel_reschedulePredictedLocationsRefreshForIntentDonationsWithCompletionHandler_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C9614368()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_37(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_28(v1);
  v3 = OUTLINED_FUNCTION_38_5(57);

  return sub_1C961347C(v3, v4);
}

uint64_t sub_1C961441C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17_29();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_29_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A71A0, &unk_1C96BD600);
  OUTLINED_FUNCTION_3_45(v3);
  OUTLINED_FUNCTION_36_6(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_46_4(v4, sel_cancelScheduledPredictedLocationsRefreshForIntentDonationsWithCompletionHandler_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C96144E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return sub_1C961379C();
}

uint64_t sub_1C9614574()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return sub_1C9613A78();
}

uint64_t sub_1C9614604()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return sub_1C9613BF4();
}

uint64_t sub_1C9614694()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return sub_1C9613EF4();
}

uint64_t sub_1C9614724()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return sub_1C9614070();
}

uint64_t sub_1C96147B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return sub_1C96141EC();
}

uint64_t sub_1C9614844()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return sub_1C9614368();
}

void **OUTLINED_FUNCTION_49_7(void *a1)
{

  return sub_1C95D7A0C(a1);
}

uint64_t OUTLINED_FUNCTION_51_6()
{
}

void Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_23_21();
  OUTLINED_FUNCTION_18_26();
  v37 = v21;
  v38 = v22;
  swift_bridgeObjectRetain_n();
  sub_1C96A53C4();
  v23 = OUTLINED_FUNCTION_43_13();
  MEMORY[0x1CCA8CB00](v23);
  MEMORY[0x1CCA8CB00](v18, v17);

  if (v20 == v14 && v19 == 0xE700000000000000)
  {

    v25 = 1;
  }

  else
  {
    v25 = OUTLINED_FUNCTION_39_8();
  }

  v26 = type metadata accessor for Location(0);
  v27 = OUTLINED_FUNCTION_28_17(v26);
  *(v15 + 48) = v25 & 1;
  *(v15 + 56) = v37;
  *(v15 + 64) = v38;
  v28 = *(v27 + 20);
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  (*(v29 + 32))(v15 + v28, v16);
  sub_1C948E818(a6, v15 + *(v25 + 24));
  OUTLINED_FUNCTION_25_18((v15 + *(v25 + 28)), v32, v33, v34);
  *v30 = v35;
  v30[1] = a12;
  v31 = (v15 + *(v25 + 40));
  *v31 = a13;
  v31[1] = a14;
}

uint64_t Location.inlineName.getter()
{
  v1 = (v0 + *(type metadata accessor for Location(0) + 40));
  v2 = v1[1];
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (!v2)
  {
    goto LABEL_13;
  }

  v5 = *v1;
  v6 = *v1 == v4 && v2 == v3;
  if (v6 || (sub_1C96A7DE4() & 1) != 0)
  {
    goto LABEL_13;
  }

  v7 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_13:
    sub_1C96A53C4();
  }

  else
  {
    v8 = qword_1EDB7AB08;
    sub_1C96A53C4();
    if (v8 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EDB7AB08);
    }

    v9 = qword_1EDB94A58;
    OUTLINED_FUNCTION_38_6();
    sub_1C96A4534();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50, &qword_1C96ADB00);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C96AEF50;
    v11 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1C94CF210();
    *(v10 + 32) = v4;
    *(v10 + 40) = v3;
    *(v10 + 96) = v11;
    *(v10 + 104) = v12;
    *(v10 + 64) = v12;
    *(v10 + 72) = v5;
    *(v10 + 80) = v2;
    sub_1C96A53C4();
    v4 = sub_1C96A7014();
  }

  return v4;
}

uint64_t Location.init(locationDataModel:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_90();
  v51 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60, &qword_1C96AD6B0);
  OUTLINED_FUNCTION_7(v8);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_42();
  v10 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v20 = type metadata accessor for LocationDataModel(0);
  sub_1C9470AA0(a1 + v20[5], v2, &unk_1EC3A5F60, &qword_1C96AD6B0);
  v21 = OUTLINED_FUNCTION_44_7();
  OUTLINED_FUNCTION_23_1(v21, v22, v10);
  if (v23)
  {
    OUTLINED_FUNCTION_19_25();
    sub_1C9470AFC(v2, &unk_1EC3A5F60, &qword_1C96AD6B0);
    v45 = type metadata accessor for Location(0);
    v42 = a2;
    v43 = 1;
    v44 = 1;
  }

  else
  {
    v24 = *(v12 + 32);
    v24(v19, v2, v10);
    OUTLINED_FUNCTION_50_5(__src);
    v24(v16, v19, v10);
    v25 = sub_1C96A4A54();
    __swift_storeEnumTagSinglePayload(v51, 1, 1, v25);
    v26 = (a1 + v20[8]);
    v27 = *v26;
    v28 = v26[1];
    v29 = (a1 + v20[9]);
    v30 = *v29;
    v31 = v29[1];
    v49 = v27;
    v50 = v30;
    v32 = v20[11];
    v33 = (a1 + v20[10]);
    v34 = v33[1];
    v47 = *v33;
    v35 = *(a1 + v32 + 8);
    v48 = *(a1 + v32);
    sub_1C95087DC(__src, v52);
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    OUTLINED_FUNCTION_19_25();
    v36 = type metadata accessor for Location(0);
    *&a2[v36[11]] = 0;
    memcpy(a2, __src, 0x48uLL);
    v24(&a2[v36[5]], v16, v10);
    sub_1C948E818(v51, &a2[v36[6]]);
    v37 = &a2[v36[7]];
    v38 = v50;
    *v37 = v49;
    *(v37 + 1) = v28;
    v39 = &a2[v36[8]];
    *v39 = v38;
    *(v39 + 1) = v31;
    v40 = &a2[v36[9]];
    *v40 = v47;
    *(v40 + 1) = v34;
    v41 = &a2[v36[10]];
    *v41 = v48;
    *(v41 + 1) = v35;
    v42 = OUTLINED_FUNCTION_1_7();
    v45 = v36;
  }

  return __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
}

void Location.init(identifier:timeZone:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_26_13();
  v16 = type metadata accessor for Location(0);
  OUTLINED_FUNCTION_34_10(v16);
  v17 = v15[5];
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  (*(v18 + 32))(v14 + v17, v13);
  sub_1C948E818(v12, v14 + v15[6]);
  OUTLINED_FUNCTION_37_9();
  *v19 = v11;
  v19[1] = a7;
  v20 = (v14 + v15[9]);
  *v20 = a8;
  v20[1] = a9;
  v21 = (v14 + v15[10]);
  *v21 = a10;
  v21[1] = a11;
}

void Location.clLocation.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Location(0) + 44);

  *(v1 + v3) = a1;
}

uint64_t static Location.sanitizedSecondaryName(_:name:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a1 != a3 || a4 != a2)
    {
      OUTLINED_FUNCTION_11();
      if ((sub_1C96A7DE4() & 1) == 0)
      {
        v7 = HIBYTE(a2) & 0xF;
        if ((a2 & 0x2000000000000000) == 0)
        {
          v7 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (v7)
        {
          sub_1C96A53C4();
        }
      }
    }
  }

  return OUTLINED_FUNCTION_11();
}

uint64_t Location.searchTitle.getter()
{
  type metadata accessor for Location(0);
  OUTLINED_FUNCTION_27_0();
  return OUTLINED_FUNCTION_11();
}

uint64_t Location.searchSubtitle.getter()
{
  type metadata accessor for Location(0);
  OUTLINED_FUNCTION_27_0();
  return OUTLINED_FUNCTION_11();
}

uint64_t Location.preciseName.getter()
{
  type metadata accessor for Location(0);
  OUTLINED_FUNCTION_27_0();
  return OUTLINED_FUNCTION_11();
}

uint64_t Location.secondaryName.getter()
{
  type metadata accessor for Location(0);
  OUTLINED_FUNCTION_27_0();
  return OUTLINED_FUNCTION_11();
}

void (*Location.clLocation.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Location(0) + 44);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v1 + 32) longitude:*(v1 + 40)];
    v4 = 0;
  }

  *(a1 + 16) = v4;
  *a1 = v5;
  v6 = v4;
  return sub_1C9615334;
}

void sub_1C9615334(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a1;
  if (a2)
  {
    v6 = v5;

    *(v3 + v4) = v6;
  }

  else
  {

    *(v3 + v4) = v5;
  }
}

void Location.init(identifier:timeZone:lastRefreshDate:searchTitle:searchSubtitle:preciseName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_26_13();
  v15 = type metadata accessor for Location(0);
  OUTLINED_FUNCTION_34_10(v15);
  v16 = v13[5];
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  (*(v17 + 32))(v12 + v16, v11);
  sub_1C948E818(v10, v12 + v13[6]);
  OUTLINED_FUNCTION_37_9();
  *v18 = v9;
  v18[1] = a7;
  v19 = (v12 + v13[9]);
  *v19 = a8;
  v19[1] = a9;
  v20 = (v12 + v13[10]);
  *v20 = 0;
  v20[1] = 0;
  OUTLINED_FUNCTION_30_12();
}

void Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_23_21();
  OUTLINED_FUNCTION_18_26();
  v35 = v19;
  v36 = v20;
  swift_bridgeObjectRetain_n();
  sub_1C96A53C4();
  v21 = OUTLINED_FUNCTION_43_13();
  MEMORY[0x1CCA8CB00](v21);
  MEMORY[0x1CCA8CB00](v16, v15);

  if (v18 == v12 && v17 == 0xE700000000000000)
  {

    v23 = 1;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_39_8();
  }

  v24 = type metadata accessor for Location(0);
  v25 = OUTLINED_FUNCTION_28_17(v24);
  *(v13 + 48) = v23 & 1;
  *(v13 + 56) = v35;
  *(v13 + 64) = v36;
  v26 = *(v25 + 20);
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  (*(v27 + 32))(v13 + v26, v14);
  sub_1C948E818(a6, v13 + *(v23 + 24));
  OUTLINED_FUNCTION_25_18((v13 + *(v23 + 28)), v30, v31, v32);
  *v28 = v33;
  v28[1] = a12;
  v29 = (v13 + *(v23 + 40));
  *v29 = 0;
  v29[1] = 0;
}

id Location.with(identifier:timeZone:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:clLocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  OUTLINED_FUNCTION_19();
  v98 = v13;
  v99 = v14;
  v89 = v15;
  v17 = v16;
  v88 = v18;
  v20 = v19;
  v86 = v21;
  v82 = v22;
  v24 = v23;
  v26 = v25;
  v85 = v27;
  v95 = a12;
  v87 = a10;
  v94 = a9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  v29 = OUTLINED_FUNCTION_7(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_57(&v81 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60, &qword_1C96AD6B0);
  OUTLINED_FUNCTION_7(v35);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v81 - v37;
  v92 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_1();
  v91 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_57(v42 - v41);
  v43 = type metadata accessor for Location(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_14();
  v47 = v46 - v45;
  memcpy(v97, v26, sizeof(v97));
  if (v97[1])
  {
    v84 = v97[1];
    v83 = v97[0];
    OUTLINED_FUNCTION_8_39(v97[3]);
    v48 = v97[4];
    v49 = v97[5];
    OUTLINED_FUNCTION_7_37(v97[8]);
    OUTLINED_FUNCTION_47_5(LOBYTE(v97[6]));
  }

  else
  {
    memcpy(v96, v12, sizeof(v96));
    OUTLINED_FUNCTION_7_37(v96[8]);
    OUTLINED_FUNCTION_47_5(LOBYTE(v96[6]));
    v48 = v96[4];
    v49 = v96[5];
    OUTLINED_FUNCTION_8_39(v96[3]);
    OUTLINED_FUNCTION_29_12();
  }

  sub_1C9470AA0(v24, v38, &unk_1EC3A5F60, &qword_1C96AD6B0);
  v50 = v92;
  OUTLINED_FUNCTION_23_1(v38, 1, v92);
  if (v51)
  {
    (*(v91 + 16))(v90, &v12[v43[5]], v50);
    v52 = OUTLINED_FUNCTION_23_1(v38, 1, v50);
    if (!v51)
    {
      OUTLINED_FUNCTION_51_7(v52, v53, &qword_1EC3A71A8, &qword_1C96BD6B0);
      sub_1C9470AFC(v38, &unk_1EC3A5F60, &qword_1C96AD6B0);
      goto LABEL_9;
    }
  }

  else
  {
    v52 = (*(v91 + 32))(v90, v38, v50);
  }

  OUTLINED_FUNCTION_51_7(v52, v53, &qword_1EC3A71A8, &qword_1C96BD6B0);
LABEL_9:
  sub_1C9470AA0(v82, v32, &unk_1EC3A5430, &unk_1C96AAB30);
  v54 = sub_1C96A4A54();
  OUTLINED_FUNCTION_23_1(v32, 1, v54);
  if (v51)
  {
    sub_1C9470AA0(&v12[v43[6]], v93, &unk_1EC3A5430, &unk_1C96AAB30);
    OUTLINED_FUNCTION_23_1(v32, 1, v54);
    if (!v51)
    {
      sub_1C9470AFC(v32, &unk_1EC3A5430, &unk_1C96AAB30);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    v56 = v93;
    (*(v55 + 32))(v93, v32, v54);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v54);
  }

  v57 = v20;
  if (!v20)
  {
    v58 = &v12[v43[7]];
    v57 = *(v58 + 1);
    v86 = *v58;
    sub_1C96A53C4();
  }

  v59 = v17;
  if (!v17)
  {
    v60 = &v12[v43[8]];
    v59 = *(v60 + 1);
    v88 = *v60;
    sub_1C96A53C4();
  }

  v61 = v94;
  if (!v94)
  {
    v62 = &v12[v43[9]];
    v61 = *(v62 + 1);
    v89 = *v62;
    sub_1C96A53C4();
  }

  v63 = a11;
  if (!a11)
  {
    v64 = &v12[v43[10]];
    v63 = v64[1];
    v87 = *v64;
    sub_1C96A53C4();
  }

  v82 = v12;
  v65 = v43[11];
  *(v47 + v65) = 0;
  OUTLINED_FUNCTION_49_8();
  *v47 = v67;
  *(v47 + 8) = v66;
  OUTLINED_FUNCTION_48_9();
  *(v47 + 16) = v69;
  *(v47 + 24) = v68;
  *(v47 + 32) = v48;
  *(v47 + 40) = v49;
  *(v47 + 48) = v70;
  OUTLINED_FUNCTION_41_11();
  *(v47 + 56) = v72;
  *(v47 + 64) = v71;
  (*(v91 + 32))(v47 + v43[5], v90, v92);
  sub_1C948E818(v93, v47 + v43[6]);
  v73 = (v47 + v43[7]);
  *v73 = v86;
  v73[1] = v57;
  v74 = (v47 + v43[8]);
  *v74 = v88;
  v74[1] = v59;
  v75 = (v47 + v43[9]);
  *v75 = v89;
  v75[1] = v61;
  v76 = (v47 + v43[10]);
  *v76 = v87;
  v76[1] = v63;
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  v77 = v95;
  if (!v95)
  {
    v77 = Location.clLocation.getter();
  }

  *(v47 + v65) = v77;
  sub_1C94898C4(v47, v85);
  OUTLINED_FUNCTION_30_12();

  return v78;
}

uint64_t Location.hashValue.getter()
{
  sub_1C96A7EE4();
  memcpy(v2, v0, sizeof(v2));
  Location.Identifier.hash(into:)(v3);
  return sub_1C96A7F24();
}

uint64_t sub_1C9615C80@<X0>(uint64_t *a1@<X8>)
{
  result = Location.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C9615CA8(uint64_t a1)
{
  v1 = sub_1C96A7BE4();

  if (v1 >= 9)
  {
    return 9;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1C9615D20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C9615CA8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C9615D50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C9489414(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C9615D7C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C9615CF4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C9615DA4(uint64_t a1)
{
  v2 = sub_1C94893C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9615DE0(uint64_t a1)
{
  v2 = sub_1C94893C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Location.preciseInlineName.getter()
{
  v1 = (v0 + *(type metadata accessor for Location(0) + 36));
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    v5 = Location.sanitizedSecondaryName.getter();
    if (v4)
    {
      v6 = v4;
      v7 = qword_1EDB7AB08;
      sub_1C96A53C4();
      if (v7 != -1)
      {
        OUTLINED_FUNCTION_0_2(&qword_1EDB7AB08);
      }

      v8 = qword_1EDB94A58;
      sub_1C96A4534();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50, &qword_1C96ADB00);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C96AB910;
      v10 = MEMORY[0x1E69E6158];
      *(v9 + 56) = MEMORY[0x1E69E6158];
      v11 = sub_1C94CF210();
      *(v9 + 32) = v3;
      *(v9 + 40) = v2;
      v13 = *(v0 + 16);
      v12 = *(v0 + 24);
      *(v9 + 96) = v10;
      *(v9 + 104) = v11;
      *(v9 + 64) = v11;
      *(v9 + 72) = v13;
      *(v9 + 80) = v12;
      *(v9 + 136) = v10;
      *(v9 + 144) = v11;
      *(v9 + 112) = v5;
      *(v9 + 120) = v6;
      sub_1C96A53C4();
      sub_1C96A7014();
    }

    else
    {
      v15 = qword_1EDB7AB08;
      sub_1C96A53C4();
      if (v15 != -1)
      {
        OUTLINED_FUNCTION_0_2(&qword_1EDB7AB08);
      }

      v16 = qword_1EDB94A58;
      OUTLINED_FUNCTION_38_6();
      sub_1C96A4534();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50, &qword_1C96ADB00);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1C96AEF50;
      v18 = MEMORY[0x1E69E6158];
      *(v17 + 56) = MEMORY[0x1E69E6158];
      v19 = sub_1C94CF210();
      *(v17 + 32) = v3;
      *(v17 + 40) = v2;
      v21 = *(v0 + 16);
      v20 = *(v0 + 24);
      *(v17 + 96) = v18;
      *(v17 + 104) = v19;
      *(v17 + 64) = v19;
      *(v17 + 72) = v21;
      *(v17 + 80) = v20;
      sub_1C96A53C4();
      sub_1C96A7014();
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_30_12();
  }

  else
  {
    OUTLINED_FUNCTION_30_12();

    Location.inlineName.getter();
  }
}

id Location.preservingName(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  if (!a2 || (*(v3 + 16) == a1 ? (v8 = *(v3 + 24) == a2) : (v8 = 0), v8 || (sub_1C96A7DE4() & 1) != 0))
  {

    return sub_1C9489760(v3, a3);
  }

  else
  {
    OUTLINED_FUNCTION_50_5(v27);
    OUTLINED_FUNCTION_50_5(__src);
    sub_1C95087DC(v27, v29);
    Location.Identifier.with(id:name:coordinate:)(0.0, 0, a1, a2, 0.0, 0.0, 1, v29);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1C953AEDC(__dst);
    v10 = type metadata accessor for Location(0);
    v11 = v10[5];
    sub_1C96A4DF4();
    OUTLINED_FUNCTION_6();
    (*(v12 + 16))(&a3[v11], v4 + v11);
    sub_1C9470AA0(v4 + v10[6], &a3[v10[6]], &unk_1EC3A5430, &unk_1C96AAB30);
    v13 = v10[8];
    v14 = (v4 + v10[7]);
    v16 = *v14;
    v15 = v14[1];
    v18 = *(v4 + v13);
    v17 = *(v4 + v13 + 8);
    v19 = (v4 + v10[9]);
    v21 = *v19;
    v20 = v19[1];
    v22 = v10[11];
    *&a3[v22] = 0;
    memcpy(a3, v29, 0x48uLL);
    v23 = &a3[v10[7]];
    *v23 = v16;
    *(v23 + 1) = v15;
    v24 = &a3[v10[8]];
    *v24 = v18;
    *(v24 + 1) = v17;
    v25 = &a3[v10[9]];
    *v25 = v21;
    *(v25 + 1) = v20;
    OUTLINED_FUNCTION_14_11(v10[10]);
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    result = Location.clLocation.getter();
    *&a3[v22] = result;
  }

  return result;
}

void sub_1C96162DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C96A7934();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C9616334()
{
  result = qword_1EC3A71C8;
  if (!qword_1EC3A71C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A71C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_39_8()
{

  return sub_1C96A7DE4();
}

uint64_t OUTLINED_FUNCTION_51_7(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1C9470AA0(v4 - 176, v4 - 248, a3, a4);
}

uint64_t DataProtectionError.hashValue.getter()
{
  v1 = *v0;
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](v1);
  return sub_1C96A7F24();
}

unint64_t sub_1C9616470()
{
  result = qword_1EC3A71D0;
  if (!qword_1EC3A71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A71D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataProtectionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t static WidgetUtilities.reloadWidget(reason:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C954DFD0();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = objc_allocWithZone(MEMORY[0x1E6994360]);
      swift_bridgeObjectRetain_n();
      v9 = sub_1C9616898(0xD000000000000018, 0x80000001C96D5080, v6, v7);
      v10 = sub_1C96A7004();
      v11 = [v9 reloadTimelineWithReason_];

      if (v11)
      {
        if (qword_1EC3A47B8 != -1)
        {
          swift_once();
        }

        v12 = sub_1C96A6154();
        __swift_project_value_buffer(v12, qword_1EC3A7490);
        sub_1C96A53C4();
        v13 = v11;
        v14 = sub_1C96A6134();
        v15 = sub_1C96A76A4();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = a2;
          v18 = swift_slowAlloc();
          v26 = v18;
          *v16 = 136315394;
          v19 = sub_1C9484164(v6, v7, &v26);

          *(v16 + 4) = v19;
          *(v16 + 12) = 2080;
          v20 = v13;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380, &qword_1C96AA2F0);
          v21 = sub_1C96A70A4();
          v23 = sub_1C9484164(v21, v22, &v26);

          *(v16 + 14) = v23;
          _os_log_impl(&dword_1C945E000, v14, v15, "reloadWidget: %s: error:%s", v16, 0x16u);
          swift_arrayDestroy();
          v24 = v18;
          a2 = v17;
          MEMORY[0x1CCA8E3D0](v24, -1, -1);
          MEMORY[0x1CCA8E3D0](v16, -1, -1);
        }

        else
        {
        }
      }

      else
      {
      }

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

id sub_1C9616898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C96A7004();

  v6 = sub_1C96A7004();

  v7 = [v4 initWithExtensionBundleIdentifier:v5 kind:v6];

  return v7;
}

_BYTE *storeEnumTagSinglePayload for WidgetUtilities(_BYTE *result, int a2, int a3)
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

void sub_1C96169CC()
{
  OUTLINED_FUNCTION_30_1();
  v0 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  v7 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  if (qword_1EDB80020 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_1EDB80020);
  }

  __swift_project_value_buffer(v7, qword_1EDB80028);
  v9 = OUTLINED_FUNCTION_5_1();
  v10(v9);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6E88], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0, &unk_1C96B1390);
  swift_allocObject();
  qword_1EC3A71D8 = sub_1C96A4F74();
  OUTLINED_FUNCTION_20_4();
}

void sub_1C9616BA8()
{
  OUTLINED_FUNCTION_30_1();
  v0 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  v7 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v13 = v12 - v11;
  type metadata accessor for Settings.Notifications.Precipitation.Overrides(0);
  (*(v9 + 104))(v13, *MEMORY[0x1E69D6E90], v7);
  if (qword_1EDB80020 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_1EDB80020);
  }

  v14 = __swift_project_value_buffer(v0, qword_1EDB80028);
  (*(v2 + 16))(v6, v14, v0);
  qword_1EC3A71E0 = sub_1C96A4E74();
  OUTLINED_FUNCTION_20_4();
}

uint64_t sub_1C9616D74()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72F0, &qword_1C96BDFE8);
  v16 = 0;
  *v7 = 0xD00000000000001ALL;
  v7[1] = 0x80000001C96D2580;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72F8, &qword_1C96BDFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7300, &qword_1C96BDFF8);
  *(swift_allocObject() + 16) = xmmword_1C96BA7C0;
  v15 = 0;
  sub_1C96A4F44();
  v14 = 1;
  sub_1C96A4F44();
  v13 = 2;
  sub_1C96A4F44();
  v12 = 3;
  sub_1C96A4F44();
  v11 = 4;
  sub_1C96A4F44();
  v10 = 5;
  sub_1C96A4F44();
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  sub_1C961B100();
  result = sub_1C96A4F54();
  qword_1EC3A71E8 = result;
  return result;
}

uint64_t sub_1C96171A4()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72D0, &qword_1C96BDFD0);
  v9[15] = 0;
  *v7 = 0xD00000000000001ALL;
  v7[1] = 0x80000001C96D2580;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72D8, &qword_1C96BDFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72E0, &qword_1C96BDFE0);
  *(swift_allocObject() + 16) = xmmword_1C96B20F0;
  v9[14] = 0;
  sub_1C96A4F44();
  v9[13] = 1;
  sub_1C96A4F44();
  v9[12] = 2;
  sub_1C96A4F44();
  v9[11] = 3;
  sub_1C96A4F44();
  v9[10] = 4;
  sub_1C96A4F44();
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  sub_1C961B0AC();
  result = sub_1C96A4F54();
  qword_1EC3A71F0 = result;
  return result;
}

uint64_t sub_1C961754C()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72D0, &qword_1C96BDFD0);
  v15 = 1;
  *v7 = 0xD00000000000001ALL;
  v7[1] = 0x80000001C96D2580;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72D8, &qword_1C96BDFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72E0, &qword_1C96BDFE0);
  *(swift_allocObject() + 16) = xmmword_1C96B20F0;
  v14 = 0;
  sub_1C96A4F44();
  v13 = 1;
  sub_1C96A4F44();
  v12 = 2;
  sub_1C96A4F44();
  v11 = 3;
  sub_1C96A4F44();
  v10 = 4;
  sub_1C96A4F44();
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  sub_1C961B0AC();
  result = sub_1C96A4F54();
  qword_1EC3A71F8 = result;
  return result;
}

uint64_t sub_1C96178F4()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72B0, &qword_1C96BDFB8);
  v9[15] = 0;
  *v7 = 0xD00000000000001ALL;
  v7[1] = 0x80000001C96D2580;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72B8, &qword_1C96BDFC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72C0, &qword_1C96BDFC8);
  *(swift_allocObject() + 16) = xmmword_1C96AB910;
  v9[14] = 0;
  sub_1C96A4F44();
  v9[13] = 1;
  sub_1C96A4F44();
  v9[12] = 2;
  sub_1C96A4F44();
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  sub_1C961B058();
  result = sub_1C96A4F54();
  qword_1EC3A7200 = result;
  return result;
}

uint64_t sub_1C9617C48()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7290, &qword_1C96BDFA0);
  v10[1] = "tions.severe.debug";
  v10[2] = v8;
  v18 = 3;
  *v7 = 0xD00000000000001ALL;
  v7[1] = 0x80000001C96D2580;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7298, &qword_1C96BDFA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72A0, &qword_1C96BDFB0);
  *(swift_allocObject() + 16) = xmmword_1C96AE890;
  v17 = 0;
  sub_1C96A4F44();
  v16 = 1;
  sub_1C96A4F44();
  v15 = 2;
  sub_1C96A4F44();
  v14 = 3;
  sub_1C96A4F44();
  v13 = 4;
  sub_1C96A4F44();
  v12 = 5;
  sub_1C96A4F44();
  v11 = 6;
  sub_1C96A4F44();
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  sub_1C961B004();
  result = sub_1C96A4F54();
  qword_1EC3A7208 = result;
  return result;
}

uint64_t Settings.Notifications.Precipitation.Overrides.Location.rawValue.getter()
{
  result = 0x615020656C707041;
  switch(*v0)
  {
    case 1:
      result = 0x7469685720656854;
      break;
    case 2:
      result = 0x696E69615220744DLL;
      break;
    case 3:
    case 4:
      result = 0x6E616C726564654ELL;
      break;
    case 5:
      result = 0x746E6572727543;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C9618150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_30_1();
  a17 = v20;
  a18 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60, &qword_1C96AD6B0);
  v25 = OUTLINED_FUNCTION_7(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_20_23();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &a9 - v37;
  switch(*v18)
  {
    case 1:
      sub_1C96A4D64();
      v39 = sub_1C96A4DF4();
      OUTLINED_FUNCTION_25_1(v35);
      if (!v40)
      {
        OUTLINED_FUNCTION_5_3();
        v48 = *(v49 + 32);
        v46 = v23;
        v47 = v35;
        goto LABEL_26;
      }

      sub_1C96A4DE4();
      OUTLINED_FUNCTION_25_1(v35);
      if (v40)
      {
        goto LABEL_27;
      }

      v41 = v35;
      goto LABEL_21;
    case 2:
      sub_1C96A4D64();
      v39 = sub_1C96A4DF4();
      OUTLINED_FUNCTION_25_1(v32);
      if (!v40)
      {
        OUTLINED_FUNCTION_5_3();
        v48 = *(v44 + 32);
        v46 = v23;
        v47 = v32;
        goto LABEL_26;
      }

      sub_1C96A4DE4();
      OUTLINED_FUNCTION_25_1(v32);
      if (v40)
      {
        goto LABEL_27;
      }

      v41 = v32;
      goto LABEL_21;
    case 3:
      OUTLINED_FUNCTION_15_31();
      sub_1C96A4D64();
      v39 = sub_1C96A4DF4();
      OUTLINED_FUNCTION_25_1(v19);
      if (!v40)
      {
        OUTLINED_FUNCTION_5_3();
        v48 = *(v45 + 32);
        v46 = v23;
        v47 = v19;
        goto LABEL_26;
      }

      sub_1C96A4DE4();
      OUTLINED_FUNCTION_25_1(v19);
      if (v40)
      {
        goto LABEL_27;
      }

      v41 = v19;
      goto LABEL_21;
    case 4:
      OUTLINED_FUNCTION_15_31();
      sub_1C96A4D64();
      v42 = sub_1C96A4DF4();
      if (__swift_getEnumTagSinglePayload(v28, 1, v42) != 1)
      {
        (*(*(v42 - 8) + 32))(v23, v28, v42);
        goto LABEL_27;
      }

      sub_1C96A4DE4();
      if (__swift_getEnumTagSinglePayload(v28, 1, v42) == 1)
      {
        goto LABEL_27;
      }

      v41 = v28;
      goto LABEL_21;
    case 5:
      OUTLINED_FUNCTION_20_4();

      sub_1C96A4DE4();
      return;
    default:
      sub_1C96A4D64();
      v39 = sub_1C96A4DF4();
      OUTLINED_FUNCTION_25_1(v38);
      if (v40)
      {
        sub_1C96A4DE4();
        OUTLINED_FUNCTION_25_1(v38);
        if (!v40)
        {
          v41 = v38;
LABEL_21:
          sub_1C94BE204(v41, &unk_1EC3A5F60, &qword_1C96AD6B0);
        }
      }

      else
      {
        OUTLINED_FUNCTION_5_3();
        v46 = OUTLINED_FUNCTION_74_0();
LABEL_26:
        v48(v46, v47, v39);
      }

LABEL_27:
      OUTLINED_FUNCTION_20_4();
      return;
  }
}

uint64_t Settings.Notifications.Precipitation.Overrides.Location.init(rawValue:)()
{
  OUTLINED_FUNCTION_5_45();
  sub_1C96A7BE4();
  result = OUTLINED_FUNCTION_23_22();
  v3 = 6;
  if (v1 < 6)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1C96185C8@<X0>(uint64_t *a1@<X8>)
{
  result = Settings.Notifications.Precipitation.Overrides.Location.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C96185F0(uint64_t a1)
{
  v2 = sub_1C961AFB0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1C9618644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C961AFB0();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1C96186A0(uint64_t a1)
{
  v2 = sub_1C961AFB0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t Settings.Notifications.Precipitation.Overrides.Conditions.init(rawValue:)()
{
  OUTLINED_FUNCTION_5_45();
  sub_1C96A7BE4();
  result = OUTLINED_FUNCTION_23_22();
  v3 = 5;
  if (v1 < 5)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

uint64_t Settings.Notifications.Precipitation.Overrides.Conditions.rawValue.getter()
{
  result = 0x7261656C63;
  switch(*v0)
  {
    case 1:
      result = 1852399986;
      break;
    case 2:
      result = 1818845544;
      break;
    case 3:
      result = 0x7465656C73;
      break;
    case 4:
      result = 2003791475;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C96187E4@<X0>(uint64_t *a1@<X8>)
{
  result = Settings.Notifications.Precipitation.Overrides.Conditions.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C961880C(uint64_t a1)
{
  v2 = sub_1C961AF5C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1C9618860(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C961AF5C();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1C96188BC(uint64_t a1)
{
  v2 = sub_1C961AF5C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t Settings.Notifications.Precipitation.Overrides.Intensity.init(rawValue:)()
{
  OUTLINED_FUNCTION_5_45();
  sub_1C96A7BE4();
  result = OUTLINED_FUNCTION_23_22();
  v3 = 3;
  if (v1 < 3)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

uint64_t Settings.Notifications.Precipitation.Overrides.Intensity.rawValue.getter()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x7976616568;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_1C96189DC@<X0>(uint64_t *a1@<X8>)
{
  result = Settings.Notifications.Precipitation.Overrides.Intensity.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C9618A04(uint64_t a1)
{
  v2 = sub_1C961AF08();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1C9618A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C961AF08();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1C9618AB4(uint64_t a1)
{
  v2 = sub_1C961AF08();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t Settings.Notifications.Precipitation.Overrides.EventDate.init(rawValue:)()
{
  OUTLINED_FUNCTION_5_45();
  sub_1C96A7BE4();
  result = OUTLINED_FUNCTION_23_22();
  v3 = 7;
  if (v1 < 7)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

unint64_t Settings.Notifications.Precipitation.Overrides.EventDate.rawValue.getter()
{
  result = 7827310;
  switch(*v0)
  {
    case 1:
      result = 0x756E694D65766966;
      break;
    case 2:
      result = 0x74756E694D6E6574;
      break;
    case 3:
      result = 0x4D6E656574666966;
      break;
    case 4:
      result = 0x694D797472696874;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6E694D7974786973;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C9618C74@<X0>(unint64_t *a1@<X8>)
{
  result = Settings.Notifications.Precipitation.Overrides.EventDate.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C9618C9C(uint64_t a1)
{
  v2 = sub_1C961AEB4();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1C9618CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C961AEB4();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1C9618D4C(uint64_t a1)
{
  v2 = sub_1C961AEB4();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

void Settings.Notifications.Precipitation.Overrides.__allocating_init(key:defaultValue:access:)()
{
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_6_29();
  v2(v1);
  OUTLINED_FUNCTION_11_18();
  v3 = OUTLINED_FUNCTION_74_0();
  v4(v3);
  OUTLINED_FUNCTION_20_4();
}

void Settings.Notifications.Precipitation.Overrides.init(key:defaultValue:access:)()
{
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_6_29();
  v2(v1);
  OUTLINED_FUNCTION_11_18();
  v3 = OUTLINED_FUNCTION_74_0();
  v4(v3);
  OUTLINED_FUNCTION_20_4();
}

uint64_t Settings.Notifications.Precipitation.Overrides.__deallocating_deinit()
{
  v0 = _s11TeaSettings0B0C11WeatherCoreE8LocationV21ForceDefaultLocationsCfd_0();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C9618F68()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0, &unk_1C96B1390);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EC3A7210 = result;
  return result;
}

uint64_t sub_1C96191B4()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0, &unk_1C96B1390);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EC3A7218 = result;
  return result;
}

uint64_t sub_1C96193E0()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0, &unk_1C96B1390);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EC3A7220 = result;
  return result;
}

uint64_t Settings.Notifications.Precipitation.Overrides.subscription.getter@<X0>(void *a1@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450, &qword_1C96AD580);
  OUTLINED_FUNCTION_7(v6);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v87 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  OUTLINED_FUNCTION_7(v10);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v87 - v12;
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_1();
  v87 = v14;
  v88 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  v17 = v16 - v15;
  v18 = type metadata accessor for Location(0);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  v21 = v20 - v19;
  if (qword_1EC3A4750 != -1)
  {
    swift_once();
  }

  v22 = qword_1EC3A71E8;
  type metadata accessor for Settings.Notifications.Precipitation.Overrides(0);
  v23 = sub_1C96A4E44();
  v89 = v9;
  v90 = a1;
  switch(v92)
  {
    case 1:
      v3 = 0x404371EB851EB852;
      v4 = 0xC05341EB851EB852;
      OUTLINED_FUNCTION_11_32();
      sub_1C96A7844();
      OUTLINED_FUNCTION_12_32();
      OUTLINED_FUNCTION_7_38(1, v65, v66, v67, v68, v69, v70, v71, v72, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      OUTLINED_FUNCTION_11_32();
      OUTLINED_FUNCTION_10_37();
      v22 = 0x7469685720656854;
      v39 = 0xEF6573756F482065;
      break;
    case 2:
      v3 = 0x40476CCCCCCCCCCDLL;
      v4 = 0xC05E70A3D70A3D71;
      OUTLINED_FUNCTION_11_32();
      sub_1C96A7844();
      OUTLINED_FUNCTION_12_32();
      OUTLINED_FUNCTION_7_38(2, v49, v50, v51, v52, v53, v54, v55, v56, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      OUTLINED_FUNCTION_11_32();
      OUTLINED_FUNCTION_10_37();
      v39 = 0xEA00000000007265;
      v22 = 0x696E69615220744DLL;
      break;
    case 3:
      OUTLINED_FUNCTION_21_24();
      v3 = 0x4043FAE147AE147BLL;
      v4 = 0xC05A60A3D70A3D71;
      OUTLINED_FUNCTION_11_32();
      sub_1C96A7844();
      OUTLINED_FUNCTION_12_32();
      OUTLINED_FUNCTION_7_38(3, v57, v58, v59, v60, v61, v62, v63, v64, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      OUTLINED_FUNCTION_11_32();
      OUTLINED_FUNCTION_10_37();
      v48 = 0x4F43202C64;
      goto LABEL_8;
    case 4:
      OUTLINED_FUNCTION_21_24();
      v3 = 0x403DF851EB851EB8;
      v4 = 0xC0577F5C28F5C28FLL;
      OUTLINED_FUNCTION_11_32();
      sub_1C96A7844();
      OUTLINED_FUNCTION_12_32();
      OUTLINED_FUNCTION_7_38(4, v40, v41, v42, v43, v44, v45, v46, v47, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      OUTLINED_FUNCTION_11_32();
      OUTLINED_FUNCTION_10_37();
      v48 = 0x5854202C64;
LABEL_8:
      v39 = v48 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 5:
      OUTLINED_FUNCTION_7_38(5, v23, v24, v25, v26, v27, v28, v29, v30, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      CLLocationCoordinate2DMake(0.0, 0.0);
      OUTLINED_FUNCTION_10_37();
      v1 = 0x746E6572727563;
      v22 = 0x746E6572727543;
      v2 = 0xE700000000000000;
      v39 = 0xE700000000000000;
      break;
    default:
      v3 = 0x404287AE147AE148;
      v4 = 0xC05E37AE147AE148;
      OUTLINED_FUNCTION_11_32();
      sub_1C96A7844();
      OUTLINED_FUNCTION_12_32();
      HIBYTE(v94) = 0;
      sub_1C9618150(v31, v32, v33, v34, v35, v36, v37, v38, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      OUTLINED_FUNCTION_11_32();
      OUTLINED_FUNCTION_10_37();
      v22 = 0x615020656C707041;
      v39 = 0xEA00000000006B72;
      break;
  }

  sub_1C96A4A54();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  v92 = v1;
  v93 = v2;
  swift_bridgeObjectRetain_n();
  sub_1C96A53C4();
  MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
  v77 = OUTLINED_FUNCTION_74_0();
  MEMORY[0x1CCA8CB00](v77);

  v79 = v92;
  v78 = v93;
  if (v1 == 0x746E6572727563 && v2 == 0xE700000000000000)
  {

    v81 = 1;
  }

  else
  {
    v81 = sub_1C96A7DE4();
  }

  *(v21 + v18[11]) = 0;
  *v21 = v1;
  *(v21 + 8) = v2;
  *(v21 + 16) = v22;
  *(v21 + 24) = v39;
  *(v21 + 32) = v3;
  *(v21 + 40) = v4;
  *(v21 + 48) = v81 & 1;
  *(v21 + 56) = v79;
  *(v21 + 64) = v78;
  (*(v87 + 32))(v21 + v18[5], v17, v88);
  sub_1C948E818(v91, v21 + v18[6]);
  OUTLINED_FUNCTION_34_1(v18[7]);
  OUTLINED_FUNCTION_34_1(v18[8]);
  OUTLINED_FUNCTION_34_1(v18[9]);
  OUTLINED_FUNCTION_34_1(v18[10]);
  v82 = v89;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v18);
  return NotificationSubscription.init(location:locationOverride:precipitation:severe:)(v21, v82, 1, 1, v90);
}

uint64_t type metadata accessor for Settings.Notifications.Precipitation.Overrides(uint64_t a1)
{
  result = qword_1EC3A7260;
  if (!qword_1EC3A7260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Settings.Notifications.Precipitation.Overrides.forecast.getter@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7228, &qword_1C96BDAF0);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v66 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7230, &qword_1C96C0500);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  v8 = OUTLINED_FUNCTION_7(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v76 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v66 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v66 - v14;
  sub_1C96A5FF4();
  OUTLINED_FUNCTION_1();
  v83 = v15;
  v84 = v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v82 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v66 - v20;
  v77 = sub_1C96A5CB4();
  OUTLINED_FUNCTION_1();
  v75 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14();
  v25 = v24 - v23;
  v70 = v24 - v23;
  v26 = sub_1C96A5CF4();
  v68 = *(v26 - 8);
  v69 = v26;
  v79 = v68;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2();
  v66 = (v27 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v81 = &v66 - v30;
  v31 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v74 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_20_23();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v66 - v36;
  v72 = &v66 - v36;
  sub_1C961A208();
  sub_1C961A31C(v1, v37);
  sub_1C961A5A4(v25);
  sub_1C961A67C();
  sub_1C96A5954();
  sub_1C96A5944();
  sub_1C96A49B4();
  v38 = v67;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v31);
  sub_1C96A5FC4();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  sub_1C96A59B4();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  v50 = v80;
  sub_1C96A5FD4();
  (*(v84 + 16))(v82, v50, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7238, &qword_1C96C0510);
  v51 = *(v68 + 72);
  v52 = v79;
  v53 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1C96AEF50;
  v55 = v54 + v53;
  v56 = *(v52 + 16);
  v57 = v69;
  v56(v55, v81, v69);
  v58 = v66;
  v56(v55 + v51, v66, v57);
  sub_1C96A5944();
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v31);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51E0, &unk_1C96AD360);
  sub_1C96A5B84();
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  v62 = v76;
  sub_1C96A5944();
  __swift_storeEnumTagSinglePayload(v62, 0, 1, v31);
  v63 = v70;
  sub_1C96A5C94();
  sub_1C96A5B74();
  sub_1C96A5D44();
  (*(v84 + 8))(v80, v83);
  v64 = *(v79 + 8);
  v64(v58, v57);
  (*(v75 + 8))(v63, v77);
  v64(v81, v57);
  return (*(v74 + 8))(v72, v31);
}

void sub_1C961A208()
{
  if (qword_1EC3A4770 != -1)
  {
    swift_once();
  }

  type metadata accessor for Settings.Notifications.Precipitation.Overrides(0);
  sub_1C96A4E44();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      sub_1C96A49B4();
      break;
    default:
      sub_1C96A5954();
      sub_1C96A5944();
      break;
  }
}

uint64_t sub_1C961A31C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C96A4A54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12[-v8];
  if (qword_1EC3A4758 != -1)
  {
    swift_once();
  }

  type metadata accessor for Settings.Notifications.Precipitation.Overrides(0);
  sub_1C96A4E44();
  v10 = v12[15];
  (*(v4 + 16))(v9, a2, v3);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v3);
  sub_1C96A4954();
  switch(v10)
  {
    case 1:
      sub_1C96A5C44();
      break;
    case 2:
      sub_1C96A5C34();
      break;
    case 3:
      sub_1C96A5C74();
      break;
    case 4:
      sub_1C96A5C54();
      break;
    default:
      sub_1C96A5C64();
      break;
  }

  (*(v4 + 8))(v6, v3);
  return sub_1C94BE204(v9, &unk_1EC3A5430, &unk_1C96AAB30);
}

uint64_t sub_1C961A5A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC3A4768 != -1)
  {
    swift_once();
  }

  type metadata accessor for Settings.Notifications.Precipitation.Overrides(0);
  sub_1C96A4E44();
  v2 = sub_1C96A5CB4();
  return (*(*(v2 - 8) + 104))(a1, **(&unk_1E8340E48 + v4), v2);
}

uint64_t sub_1C961A67C()
{
  v0 = sub_1C96A4A54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  if (qword_1EC3A4760 != -1)
  {
    swift_once();
  }

  type metadata accessor for Settings.Notifications.Precipitation.Overrides(0);
  sub_1C96A4E44();
  v7 = v9[15];
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v0);
  sub_1C96A4954();
  switch(v7)
  {
    case 1:
      sub_1C96A5C44();
      break;
    case 2:
      sub_1C96A5C34();
      break;
    case 3:
      sub_1C96A5C74();
      break;
    case 4:
      sub_1C96A5C54();
      break;
    default:
      sub_1C96A5C64();
      break;
  }

  (*(v1 + 8))(v3, v0);
  return sub_1C94BE204(v6, &unk_1EC3A5430, &unk_1C96AAB30);
}

unint64_t sub_1C961A8E0()
{
  result = qword_1EC3A7240;
  if (!qword_1EC3A7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7240);
  }

  return result;
}

unint64_t sub_1C961A934()
{
  result = qword_1EC3A7248;
  if (!qword_1EC3A7248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7248);
  }

  return result;
}

unint64_t sub_1C961A988()
{
  result = qword_1EC3A7250;
  if (!qword_1EC3A7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7250);
  }

  return result;
}

unint64_t sub_1C961A9DC()
{
  result = qword_1EC3A7258;
  if (!qword_1EC3A7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7258);
  }

  return result;
}

_BYTE *_s13NotificationsV13PrecipitationV9OverridesC8LocationOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s13NotificationsV13PrecipitationV9OverridesC10ConditionsOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s13NotificationsV13PrecipitationV9OverridesC9IntensityOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s13NotificationsV13PrecipitationV9OverridesC9EventDateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C961AE08(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C961AEB4()
{
  result = qword_1EC3A7270;
  if (!qword_1EC3A7270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7270);
  }

  return result;
}

unint64_t sub_1C961AF08()
{
  result = qword_1EC3A7278;
  if (!qword_1EC3A7278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7278);
  }

  return result;
}

unint64_t sub_1C961AF5C()
{
  result = qword_1EC3A7280;
  if (!qword_1EC3A7280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7280);
  }

  return result;
}

unint64_t sub_1C961AFB0()
{
  result = qword_1EC3A7288;
  if (!qword_1EC3A7288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7288);
  }

  return result;
}

unint64_t sub_1C961B004()
{
  result = qword_1EC3A72A8;
  if (!qword_1EC3A72A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A72A8);
  }

  return result;
}

unint64_t sub_1C961B058()
{
  result = qword_1EC3A72C8;
  if (!qword_1EC3A72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A72C8);
  }

  return result;
}

unint64_t sub_1C961B0AC()
{
  result = qword_1EC3A72E8;
  if (!qword_1EC3A72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A72E8);
  }

  return result;
}

unint64_t sub_1C961B100()
{
  result = qword_1EC3A7308;
  if (!qword_1EC3A7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7308);
  }

  return result;
}

uint64_t CLLocationCoordinate2D.intentIdentifier.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  OUTLINED_FUNCTION_2_60(a9, a1, a2, a3, a4, a5, a6, a7, a8, 0);
  OUTLINED_FUNCTION_3_46();
  OUTLINED_FUNCTION_0_87(v17, v9, v10, v11, v12, v13, v14, v15, v16, v19);
  return v20;
}

uint64_t Location.intentIdentifier.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  if (*(v9 + 48))
  {
    return OUTLINED_FUNCTION_1_62();
  }

  a9.n128_u64[0] = *(v9 + 32);
  OUTLINED_FUNCTION_2_60(a9, a1, a2, a3, a4, a5, a6, a7, a8, 0);
  OUTLINED_FUNCTION_3_46();
  OUTLINED_FUNCTION_0_87(v19, v11, v12, v13, v14, v15, v16, v17, v18, v20);
  return v21;
}

id sub_1C961B254(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C96A7004();

  v4 = [v2 initWithDescription_];

  return v4;
}

id PrecipitationNotificationsManager.init(weatherDataService:policyHandler:notificationContentFactory:notificationDeliveryScheduler:notificationFetchScheduler:notificationSubscriptionManager:notificationConfigurationProvider:notificationAuthorizationStatusProvider:locationManager:locationComparator:notificationsEnablementTracker:notificationAccuracyTracker:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090, &qword_1C96AD060);
  OUTLINED_FUNCTION_7(v14);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_94_2(v16);
  sub_1C96A5404();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14();
  v18 = OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_operationQueue;
  sub_1C946B5D0(0, &qword_1EDB77CF0, 0x1E696ADC8);
  *&v12[v18] = sub_1C96A76D4();
  v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_observingCurrentLocation] = 0;
  v19 = OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_scheduleDeduper;
  v43 = MEMORY[0x1E69E7CC0];
  sub_1C94D7CBC(&unk_1EDB7D088, MEMORY[0x1E69D67A0], MEMORY[0x1E69D67A8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6390, &qword_1C96AA310);
  OUTLINED_FUNCTION_12_33();
  sub_1C9469CB4(v20, &unk_1EC3A6390, &qword_1C96AA310, v21);
  sub_1C96A79E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7328, &qword_1C96BE010);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  *&v12[v19] = sub_1C96A5314();
  *&v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_weatherDataService] = a1;
  sub_1C9469B6C(a2, &v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_policyHandler]);
  sub_1C9469B6C(a3, &v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationContentFactory]);
  sub_1C9469B6C(a4, &v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationDeliveryScheduler]);
  sub_1C9469B6C(a5, &v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler]);
  sub_1C9469B6C(a6, &v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationSubscriptionManager]);
  sub_1C9469B6C(a7, &v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationConfigurationProvider]);
  sub_1C9469B6C(a8, &v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationAuthorizationStatusProvider]);
  sub_1C9469B6C(a9, &v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager]);
  sub_1C9469B6C(a10, &v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationComparator]);
  *&v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_lazyNotificationsEnablementTracker] = a11;
  *&v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_lazyNotificationAccuracyTracker] = a12;
  v42.receiver = v12;
  v42.super_class = ObjectType;
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  v22 = objc_msgSendSuper2(&v42, sel_init);
  sub_1C96A7414();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = v22;
  v28 = sub_1C96A5E34();
  OUTLINED_FUNCTION_1_63();
  v31 = sub_1C94D7CBC(v29, v30, MEMORY[0x1E69E1948]);
  v32 = swift_allocObject();
  v32[2] = v28;
  v32[3] = v31;
  v32[4] = v27;
  OUTLINED_FUNCTION_104();
  sub_1C951C258();

  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  __swift_destroy_boxed_opaque_existential_1Tm(a8);
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v27;
}

uint64_t sub_1C961B778(__n128 a1)
{
  *(v1 + 16) = sub_1C96A5E34();
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C961B810;

  return sub_1C961BA44();
}

uint64_t sub_1C961B810()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  sub_1C96A5E24();
  OUTLINED_FUNCTION_1_63();
  sub_1C94D7CBC(v3, v4, MEMORY[0x1E69E1948]);
  v6 = sub_1C96A7374();

  return MEMORY[0x1EEE6DFA0](sub_1C961B954, v6, v5);
}

uint64_t sub_1C961B954()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1C961B9AC()
{
  OUTLINED_FUNCTION_30();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_9_32(v1);

  return sub_1C961B778(v3);
}

uint64_t sub_1C961BA44()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0, &qword_1C96C9D90);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for NotificationSubscription(0);
  v1[5] = swift_task_alloc();
  v1[6] = sub_1C96A5E34();
  sub_1C96A5E24();
  sub_1C94D7CBC(&qword_1EDB7ACD0, MEMORY[0x1E69E1940], MEMORY[0x1E69E1948]);
  v3 = sub_1C96A7374();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C961BB70, v3, v2);
}

uint64_t sub_1C961BB70()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_65_5((*(v0 + 16) + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationAuthorizationStatusProvider));
  v1 = OUTLINED_FUNCTION_44_8();
  if (v2(v1))
  {
    OUTLINED_FUNCTION_33_10((*(v0 + 16) + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationSubscriptionManager));
    OUTLINED_FUNCTION_42();
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_29_13(v3);

    return v5(v4);
  }

  else
  {

    v8 = sub_1C961C00C(v7);
    OUTLINED_FUNCTION_86_0(v8, v9, v10, v11, v12, v13);

    OUTLINED_FUNCTION_17();

    return v14();
  }
}

uint64_t sub_1C961BCF8()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_7_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_15();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_1C961BF7C;
  }

  else
  {
    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_1C961BE08;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C961BE08()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_106_2();
  if (__swift_getEnumTagSinglePayload(v0, 1, v1) == 1)
  {
    sub_1C9470AFC(v2[3], &qword_1EC3A58D0, &qword_1C96C9D90);
LABEL_8:
    v10 = sub_1C961C00C(v3);
    goto LABEL_9;
  }

  v4 = v2[4];
  v5 = v2[5];
  OUTLINED_FUNCTION_4_56();
  sub_1C96287F0();
  v6 = *(v5 + *(v4 + 24));
  if (v6 == 2 || (v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_3_47();
    sub_1C948EA44(v16, v17);
    goto LABEL_8;
  }

  v7 = v2[2];
  v8 = OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_observingCurrentLocation;
  v9 = v2[5];
  if (*(v7 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_observingCurrentLocation))
  {
    v10 = sub_1C948EA44(v2[5], type metadata accessor for NotificationSubscription);
  }

  else
  {
    v20 = *(v7 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager + 24);
    v21 = *(v7 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager + 32);
    __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager), v20);
    (*(v21 + 64))(v7, &protocol witness table for PrecipitationNotificationsManager, v20, v21);
    OUTLINED_FUNCTION_3_47();
    v10 = sub_1C948EA44(v9, v22);
    *(v7 + v8) = 1;
  }

LABEL_9:
  OUTLINED_FUNCTION_86_0(v10, v11, v12, v13, v14, v15);

  OUTLINED_FUNCTION_17();

  return v18();
}

uint64_t sub_1C961BF7C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_106_2();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v0);
  sub_1C9470AFC(*(v1 + 24), &qword_1EC3A58D0, &qword_1C96C9D90);
  v6 = sub_1C961C00C(v5);
  OUTLINED_FUNCTION_86_0(v6, v7, v8, v9, v10, v11);

  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_1C961C00C(__n128 a1)
{
  v2 = v1;
  v3 = sub_1C96A6664();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C946B5D0(0, &qword_1EDB7CDB0, 0x1E69E9610);
  *v6 = sub_1C96A7704();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = sub_1C96A66A4();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_observingCurrentLocation;
    if (*(v2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_observingCurrentLocation) == 1)
    {
      v10 = *(v2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager + 24);
      v11 = *(v2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager + 32);
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager), v10);
      result = (*(v11 + 72))(v2, &protocol witness table for PrecipitationNotificationsManager, v10, v11);
      *(v2 + v9) = 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C961C18C()
{
  v1 = v0;
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule(0);
  v33 = *(Schedule - 8);
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](Schedule);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NotificationSubscription(0);
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  sub_1C9489AA0();
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v13 = sub_1C96A6154();
  __swift_project_value_buffer(v13, qword_1EDB7AC90);
  sub_1C9489AA0();
  v14 = sub_1C96A6134();
  v15 = sub_1C96A76A4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v35[0] = v18;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    sub_1C96287F0();
    v30 = v12;
    v20 = *v6;
    v19 = v6[1];
    sub_1C96A53C4();
    sub_1C948EA44(v6, type metadata accessor for NotificationSubscription);
    v21 = sub_1C9484164(v20, v19, v35);
    v12 = v30;

    *(v17 + 14) = v21;
    _os_log_impl(&dword_1C945E000, v14, v15, "Evaluating notification subscription: %{private,mask.hash}s", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1CCA8E3D0](v18, -1, -1);
    v22 = v17;
    v1 = v31;
    MEMORY[0x1CCA8E3D0](v22, -1, -1);
  }

  else
  {

    sub_1C948EA44(v9, type metadata accessor for NotificationSubscription);
  }

  sub_1C96A5444(v35);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  sub_1C9489AA0();
  sub_1C9489AA0();
  *(swift_allocObject() + 16) = v1;
  sub_1C96287F0();
  sub_1C96287F0();
  v23 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73C8, &qword_1C96BE228));
  v24 = v1;
  v25 = sub_1C96A53E4();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73A0, &unk_1C96BE048);
  MEMORY[0x1EEE9AC00](v26);
  *(&v30 - 2) = v24;
  v27 = v25;
  v28 = sub_1C96A5754();

  sub_1C948EA44(v12, type metadata accessor for NotificationSubscription);
  return v28;
}

uint64_t sub_1C961C6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule(0);
  v13 = *(Schedule - 8);
  v12[3] = *(v13 + 64);
  MEMORY[0x1EEE9AC00](Schedule);
  v12[1] = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NotificationSubscription(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v14 = v5;
  v12[0] = sub_1C946B5D0(0, &qword_1EDB7CDB0, 0x1E69E9610);
  v6 = sub_1C96A7704();
  v15 = type metadata accessor for NotificationSubscription;
  sub_1C9489AA0();
  swift_allocObject();
  v12[2] = type metadata accessor for NotificationSubscription;
  sub_1C96287F0();
  type metadata accessor for PrecipitationNotificationConfiguration(0);
  type metadata accessor for PrecipitationNotificationsManager();
  sub_1C96A5774();

  v7 = sub_1C96A7704();
  sub_1C9489AA0();
  swift_allocObject();
  sub_1C96287F0();
  type metadata accessor for PrecipitationNotificationPolicy(0);
  sub_1C96A5654();

  v8 = sub_1C96A7704();
  sub_1C9489AA0();
  swift_allocObject();
  sub_1C96287F0();
  sub_1C96A5654();

  v9 = sub_1C96A55A4();
  v10 = sub_1C96A56C4();

  return v10;
}

uint64_t sub_1C961CA70(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v10 = sub_1C96A6154();
  __swift_project_value_buffer(v10, qword_1EDB7AC90);
  sub_1C9489AA0();
  v11 = sub_1C96A6134();
  v12 = sub_1C96A76A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1C96287F0();
    v15 = *v6;
    v16 = v6[1];
    sub_1C96A53C4();
    sub_1C948EA44(v6, type metadata accessor for NotificationSubscription);
    v17 = sub_1C9484164(v15, v16, &v23);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_1C945E000, v11, v12, "Constructing configuration for subscription: %{private,mask.hash}s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1CCA8E3D0](v14, -1, -1);
    MEMORY[0x1CCA8E3D0](v13, -1, -1);
  }

  else
  {

    sub_1C948EA44(v9, type metadata accessor for NotificationSubscription);
  }

  v18 = (v2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationConfigurationProvider);
  v19 = *(v2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationConfigurationProvider + 24);
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v19);
  return (*(v20 + 8))(a1, v19, v20);
}

uint64_t sub_1C961CD04(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  ObjectType = swift_getObjectType();
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule(0);
  v41 = *(Schedule - 8);
  MEMORY[0x1EEE9AC00](Schedule);
  v42 = v4;
  v43 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PrecipitationNotificationConfiguration(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = v7;
  v45 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NotificationSubscription(0);
  v49 = *(v8 - 8);
  v9 = *(v49 + 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v40 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v40 - v15;
  v40[5] = a1;
  sub_1C9489AA0();
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v17 = sub_1C96A6154();
  __swift_project_value_buffer(v17, qword_1EDB7AC90);
  sub_1C9489AA0();
  v18 = sub_1C96A6134();
  v19 = sub_1C96A76A4();
  v20 = os_log_type_enabled(v18, v19);
  v46 = v16;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v55 = v22;
    *v21 = 141558275;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    sub_1C96287F0();
    v23 = *v10;
    v24 = v10[1];
    sub_1C96A53C4();
    sub_1C948EA44(v10, type metadata accessor for NotificationSubscription);
    v25 = sub_1C9484164(v23, v24, &v55);

    *(v21 + 14) = v25;
    _os_log_impl(&dword_1C945E000, v18, v19, "Determining notification policy for subscription: %{private,mask.hash}s", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1CCA8E3D0](v22, -1, -1);
    MEMORY[0x1CCA8E3D0](v21, -1, -1);
  }

  else
  {

    sub_1C948EA44(v13, type metadata accessor for NotificationSubscription);
  }

  v52 = sub_1C946B5D0(0, &qword_1EDB7CDB0, 0x1E69E9610);
  v26 = sub_1C96A7704();
  v51 = type metadata accessor for NotificationSubscription;
  sub_1C9489AA0();
  v50 = type metadata accessor for PrecipitationNotificationConfiguration;
  sub_1C9489AA0();
  v27 = *(v49 + 80);
  v28 = *(v6 + 80);
  v47 = (v27 + 16) & ~v27;
  v29 = (v9 + v28 + v47) & ~v28;
  v30 = v29 + v48;
  v48 = v27 | v28 | 7;
  v40[3] = v30;
  swift_allocObject();
  v49 = type metadata accessor for NotificationSubscription;
  sub_1C96287F0();
  v40[1] = type metadata accessor for PrecipitationNotificationConfiguration;
  v40[2] = v29;
  sub_1C96287F0();
  sub_1C96A5D64();
  v31 = v44;
  v40[4] = sub_1C96A5774();

  v32 = sub_1C96A7704();
  sub_1C9489AA0();
  sub_1C9489AA0();
  sub_1C9489AA0();
  v33 = (v42 + ((v30 + *(v41 + 80)) & ~*(v41 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_1C96287F0();
  sub_1C96287F0();
  sub_1C96287F0();
  *(v34 + v33) = v31;
  type metadata accessor for PrecipitationNotificationPolicy(0);
  v35 = v31;
  sub_1C96A5654();

  v36 = sub_1C96A7704();
  v37 = v46;
  sub_1C9489AA0();
  sub_1C9489AA0();
  swift_allocObject();
  sub_1C96287F0();
  sub_1C96287F0();
  v38 = sub_1C96A56D4();

  sub_1C948EA44(v37, type metadata accessor for NotificationSubscription);
  return v38;
}

uint64_t sub_1C961D430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a3;
  v82 = a2;
  v3 = type metadata accessor for NotificationSubscription(0);
  v77 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v83 = (v66 - v7);
  v78 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v81 = v66 - v10;
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule(0);
  v74 = *(Schedule - 8);
  MEMORY[0x1EEE9AC00](Schedule);
  v12 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v84 = v66 - v14;
  v75 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v66 - v17;
  v19 = type metadata accessor for PrecipitationNotificationDeliverySchedule(0);
  v70 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v72 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v66 - v22;
  v24 = type metadata accessor for PrecipitationNotification(0);
  v69 = *(v24 - 8);
  v25 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v73 = v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v66 - v27;
  v29 = type metadata accessor for PrecipitationNotificationPolicy(0);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C9489AA0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C96287F0();
    v30 = v12;
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v31 = sub_1C96A6154();
    __swift_project_value_buffer(v31, qword_1EDB7AC90);
    sub_1C9489AA0();
    v32 = sub_1C96A6134();
    v33 = sub_1C96A76A4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      __src[0] = v35;
      *v34 = 141558275;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      v36 = v83;
      sub_1C96287F0();
      v37 = *v36;
      v38 = v36[1];
      sub_1C96A53C4();
      sub_1C948EA44(v36, type metadata accessor for NotificationSubscription);
      v39 = sub_1C9484164(v37, v38, __src);

      *(v34 + 14) = v39;
      _os_log_impl(&dword_1C945E000, v32, v33, "Received reschedule policy for subscription: %{private,mask.hash}s", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1CCA8E3D0](v35, -1, -1);
      MEMORY[0x1CCA8E3D0](v34, -1, -1);
    }

    else
    {

      sub_1C948EA44(v5, type metadata accessor for NotificationSubscription);
    }

    sub_1C9489AA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73A0, &unk_1C96BE048);
    swift_allocObject();
    v52 = sub_1C96A56A4();
    sub_1C948EA44(v30, type metadata accessor for PrecipitationNotificationFetchSchedule);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7118, &unk_1C96BCF60);
    v76 = v28;
    sub_1C96287F0();
    v79 = v23;
    sub_1C96287F0();
    sub_1C96287F0();
    v40 = v18;
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v41 = sub_1C96A6154();
    __swift_project_value_buffer(v41, qword_1EDB7AC90);
    v42 = v81;
    sub_1C9489AA0();
    v43 = sub_1C96A6134();
    v44 = sub_1C96A76A4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      __src[0] = v46;
      *v45 = 141558275;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      v47 = v83;
      sub_1C96287F0();
      v48 = v40;
      v49 = *v47;
      v50 = v47[1];
      sub_1C96A53C4();
      sub_1C948EA44(v47, type metadata accessor for NotificationSubscription);
      v51 = sub_1C9484164(v49, v50, __src);
      v40 = v48;

      *(v45 + 14) = v51;
      _os_log_impl(&dword_1C945E000, v43, v44, "Received notify policy for subscription: %{private,mask.hash}s", v45, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x1CCA8E3D0](v46, -1, -1);
      MEMORY[0x1CCA8E3D0](v45, -1, -1);
    }

    else
    {

      sub_1C948EA44(v42, type metadata accessor for NotificationSubscription);
    }

    v52 = v79;
    v53 = v76;
    v54 = sub_1C961E0E4(v76);
    v55 = *(v82 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationContentFactory + 24);
    v56 = *(v82 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationContentFactory + 32);
    __swift_project_boxed_opaque_existential_1((v82 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationContentFactory), v55);
    v57 = v85;
    (*(v56 + 8))(__src, v53, v88, v54, v55, v56);

    if (v57)
    {
      sub_1C948EA44(v40, type metadata accessor for PrecipitationNotificationFetchSchedule);
      sub_1C948EA44(v52, type metadata accessor for PrecipitationNotificationDeliverySchedule);
      sub_1C948EA44(v53, type metadata accessor for PrecipitationNotification);
    }

    else
    {
      memcpy(__dst, __src, sizeof(__dst));
      v58 = sub_1C946B5D0(0, &qword_1EDB7CDB0, 0x1E69E9610);
      v85 = 0;
      v68 = v58;
      v59 = sub_1C96A7704();
      v66[1] = type metadata accessor for PrecipitationNotification;
      sub_1C9489AA0();
      sub_1C9489AA0();
      v60 = *(v69 + 80);
      v67 = v40;
      v69 = ((v60 + 16) & ~v60) + v25;
      v81 = (v60 | 7);
      v61 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      v71 = type metadata accessor for PrecipitationNotification;
      sub_1C96287F0();
      memcpy((v62 + v61), __dst, 0x48uLL);
      sub_1C96287F0();
      type metadata accessor for PrecipitationNotificationsManager();
      v82 = sub_1C96A5774();

      v63 = sub_1C96A7704();
      sub_1C9489AA0();
      sub_1C9489AA0();
      v64 = v67;
      sub_1C9489AA0();
      swift_allocObject();
      sub_1C96287F0();
      sub_1C96287F0();
      sub_1C96287F0();
      v52 = sub_1C96A5634();

      sub_1C948EA44(v64, type metadata accessor for PrecipitationNotificationFetchSchedule);
      sub_1C948EA44(v79, type metadata accessor for PrecipitationNotificationDeliverySchedule);
      sub_1C948EA44(v76, type metadata accessor for PrecipitationNotification);
    }
  }

  return v52;
}

uint64_t sub_1C961E0E4(uint64_t a1)
{
  v1 = sub_1C96A41C4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A4204();
  swift_allocObject();
  sub_1C96A41F4();
  (*(v2 + 104))(v4, *MEMORY[0x1E6967FA8], v1);
  sub_1C96A41D4();
  type metadata accessor for PrecipitationNotification(0);
  sub_1C96A5D64();
  sub_1C94D7CBC(&qword_1EC3A4C00, MEMORY[0x1E69E1908], MEMORY[0x1E69E1910]);
  v5 = sub_1C96A41E4();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6330, &qword_1C96B5620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C96AA1C0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001C96CC3C0;
  *(inited + 72) = MEMORY[0x1E6969080];
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  v9 = sub_1C96A6F04();

  return v9;
}

uint64_t sub_1C961E2E8(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v7 = (a1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationDeliveryScheduler);
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  memcpy(__dst, a3, sizeof(__dst));
  return (*(v9 + 8))(a2, __dst, a4, v8, v9);
}

uint64_t sub_1C961E390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[3] = a4;
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule(0);
  MEMORY[0x1EEE9AC00](Schedule - 8);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  v14 = type metadata accessor for PrecipitationNotification(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v17 = sub_1C96A6154();
  __swift_project_value_buffer(v17, qword_1EDB7AC90);
  sub_1C9489AA0();
  sub_1C9489AA0();
  v18 = sub_1C96A6134();
  v19 = sub_1C96A76A4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136446723;
    v29[1] = v7;
    v29[2] = v4;
    v23 = *v16;
    v22 = v16[1];
    sub_1C96A53C4();
    sub_1C948EA44(v16, type metadata accessor for PrecipitationNotification);
    v24 = sub_1C9484164(v23, v22, &v30);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2160;
    *(v20 + 14) = 1752392040;
    *(v20 + 22) = 2081;
    sub_1C96287F0();
    v25 = *v10;
    v26 = v10[1];
    sub_1C96A53C4();
    sub_1C948EA44(v10, type metadata accessor for NotificationSubscription);
    v27 = sub_1C9484164(v25, v26, &v30);

    *(v20 + 24) = v27;
    _os_log_impl(&dword_1C945E000, v18, v19, "Sent notification with identifier: %{public}s for subscription: %{private,mask.hash}s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v21, -1, -1);
    MEMORY[0x1CCA8E3D0](v20, -1, -1);
  }

  else
  {

    sub_1C948EA44(v13, type metadata accessor for NotificationSubscription);
    sub_1C948EA44(v16, type metadata accessor for PrecipitationNotification);
  }

  sub_1C9489AA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73A0, &unk_1C96BE048);
  swift_allocObject();
  return sub_1C96A56A4();
}

uint64_t sub_1C961E774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v58 = sub_1C96A5D64();
  MEMORY[0x1EEE9AC00](v58);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PrecipitationNotificationConfiguration(0);
  v59 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = v9;
  v61 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Location(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v53 - v14;
  v56 = type metadata accessor for NotificationSubscription(0);
  v62 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v65 = (v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v53 - v18;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v20 = sub_1C96A6154();
  v21 = __swift_project_value_buffer(v20, qword_1EDB7AC90);
  sub_1C9489AA0();
  v55 = v21;
  v22 = sub_1C96A6134();
  v23 = sub_1C96A76A4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v54 = v15;
    v53[4] = a1;
    v25 = v24;
    v26 = swift_slowAlloc();
    v53[2] = v11;
    v53[1] = a2;
    v27 = v3;
    v28 = v26;
    v67[0] = v26;
    *v25 = 141558275;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    v29 = v65;
    sub_1C96287F0();
    v30 = v7;
    v31 = *v29;
    v32 = v29[1];
    sub_1C96A53C4();
    sub_1C948EA44(v29, type metadata accessor for NotificationSubscription);
    v33 = sub_1C9484164(v31, v32, v67);
    v7 = v30;

    *(v25 + 14) = v33;
    _os_log_impl(&dword_1C945E000, v22, v23, "Fetching next hour forecast for subscription: %{private,mask.hash}s", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v34 = v28;
    v3 = v27;
    MEMORY[0x1CCA8E3D0](v34, -1, -1);
    v15 = v54;
    MEMORY[0x1CCA8E3D0](v25, -1, -1);
  }

  else
  {

    sub_1C948EA44(v19, type metadata accessor for NotificationSubscription);
  }

  if (qword_1EC3A4748 != -1)
  {
    swift_once();
  }

  if ((sub_1C96A4E94() & 1) == 0)
  {
    sub_1C96A5444(v67);
    type metadata accessor for NotificationSubscription.Location(0);
    sub_1C9489AA0();
    v36 = v15[48] == 1;
    v53[3] = v12;
    if (v36)
    {
    }

    else
    {
      v37 = sub_1C96A7DE4();

      if ((v37 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v38 = *(v3 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager + 24);
    v39 = *(v3 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager + 32);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager), v38);
    v40 = (*(v39 + 48))(v38, v39);
    if (v40)
    {
      v41 = v40;
      [v40 coordinate];
      v43 = v42;
      v45 = v44;

LABEL_20:
      sub_1C946B5D0(0, &qword_1EDB7CDB0, 0x1E69E9610);
      v49 = sub_1C96A7704();
      sub_1C9469B6C(v67, v66);
      sub_1C9489AA0();
      sub_1C9489AA0();
      v50 = swift_allocObject();
      sub_1C94670AC(v66, v50 + 16);
      *(v50 + 56) = v43;
      *(v50 + 64) = v45;
      sub_1C96287F0();
      sub_1C96287F0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73E0, &qword_1C96BE238);
      sub_1C96A5774();

      v51 = sub_1C96A7704();
      sub_1C9489AA0();
      swift_allocObject();
      sub_1C96287F0();
      v35 = sub_1C96A5634();

      sub_1C948EA44(v15, type metadata accessor for Location);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      return v35;
    }

    v46 = sub_1C96A6134();
    v47 = sub_1C96A7684();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1C945E000, v46, v47, "Current location unknown while fetching next hour forecast. Falling back to coordinate from saved locations store, which is not necessarily up-to-date.", v48, 2u);
      MEMORY[0x1CCA8E3D0](v48, -1, -1);
    }

LABEL_19:
    v43 = *(v15 + 4);
    v45 = *(v15 + 5);
    goto LABEL_20;
  }

  Settings.Notifications.Precipitation.Overrides.forecast.getter(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73E8, &unk_1C96BE240);
  swift_allocObject();
  return sub_1C96A56A4();
}

uint64_t sub_1C961F010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v34 = a6;
  v30 = a2;
  v31 = a5;
  v28 = a3;
  v29 = a4;
  v7 = type metadata accessor for PrecipitationNotificationPolicy(0);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = sub_1C96A5FF4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A5D54();
  v15 = sub_1C96A5FB4();
  (*(v12 + 8))(v14, v11);
  if (v15 == 2 || (v15 & 1) == 0)
  {
    v18 = *(v30 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_policyHandler + 24);
    v19 = *(v30 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_policyHandler + 32);
    __swift_project_boxed_opaque_existential_1((v30 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_policyHandler), v18);
    (*(v19 + 8))(v28, a1, v29, v18, v19);
    v20 = sub_1C96A5444(v35);
    MEMORY[0x1EEE9AC00](v20);
    *(&v28 - 4) = v35;
    *(&v28 - 3) = v10;
    v21 = v31;
    *(&v28 - 2) = a1;
    *(&v28 - 1) = v21;
    sub_1C96A5784();
    sub_1C9489AA0();
    swift_allocObject();
    sub_1C96287F0();
    v22 = sub_1C96A55A4();
    sub_1C96A5634();

    v23 = swift_allocObject();
    v24 = v34;
    *(v23 + 16) = v34;
    v25 = v24;
    v26 = sub_1C96A55A4();
    v17 = sub_1C96A56B4();

    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    sub_1C948EA44(v10, type metadata accessor for PrecipitationNotificationPolicy);
  }

  else
  {
    sub_1C962879C();
    swift_allocError();
    *v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73D0, &qword_1C96BE230);
    swift_allocObject();
    return sub_1C96A5694();
  }

  return v17;
}

uint64_t sub_1C961F404(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  return (*(v8 + 8))(a2, a3, a4, v7, v8);
}

uint64_t sub_1C961F480()
{
  v0 = type metadata accessor for PrecipitationNotificationPolicy(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1C9489AA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73D0, &qword_1C96BE230);
  swift_allocObject();
  return sub_1C96A56A4();
}

uint64_t sub_1C961F570(void *a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v41 = sub_1C96A4A94();
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = type metadata accessor for PrecipitationNotificationPolicy(0);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36[-v13];
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v15 = sub_1C96A6154();
  __swift_project_value_buffer(v15, qword_1EDB7AC90);
  sub_1C9489AA0();
  v16 = a1;
  v17 = sub_1C96A6134();
  v18 = sub_1C96A76A4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = v3;
    v20 = v19;
    v39 = swift_slowAlloc();
    v46 = v39;
    *v20 = 141558531;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    sub_1C96287F0();
    v37 = v18;
    v38 = v17;
    v21 = *v11;
    v22 = v11[1];
    sub_1C96A53C4();
    sub_1C948EA44(v11, type metadata accessor for NotificationSubscription);
    v23 = sub_1C9484164(v21, v22, &v46);

    *(v20 + 14) = v23;
    *(v20 + 22) = 2081;
    v45 = a1;
    v24 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380, &qword_1C96AA2F0);
    v25 = sub_1C96A70A4();
    v27 = sub_1C9484164(v25, v26, &v46);

    *(v20 + 24) = v27;
    v28 = v38;
    _os_log_impl(&dword_1C945E000, v38, v37, "Recovering from notification subscription evaluation of subscription: %{private,mask.hash}s with error: %{private}s", v20, 0x20u);
    v29 = v39;
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v29, -1, -1);
    MEMORY[0x1CCA8E3D0](v20, -1, -1);
  }

  else
  {

    sub_1C948EA44(v14, type metadata accessor for NotificationSubscription);
  }

  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule(0);
  sub_1C9489AA0();
  type metadata accessor for PrecipitationNotificationConfiguration(0);
  sub_1C96A49B4();
  v31 = v43;
  sub_1C96A4A84();
  v32 = sub_1C96A4A64();
  v34 = v33;
  (*(v5 + 8))(v31, v41);
  *v8 = v32;
  v8[1] = v34;
  *(v8 + *(Schedule + 28)) = 0x408C200000000000;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73D0, &qword_1C96BE230);
  swift_allocObject();
  return sub_1C96A56A4();
}