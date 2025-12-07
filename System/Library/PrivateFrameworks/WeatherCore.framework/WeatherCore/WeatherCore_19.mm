uint64_t sub_1C961FA04(uint64_t a1, void *a2, char *a3, char *a4, __n128 a5, double a6)
{
  v75 = a1;
  v64 = a4;
  v65 = a3;
  v74 = sub_1C96A5F54();
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A63E0, &qword_1C96B5AD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A63E8, &qword_1C96B5AD8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v70 = v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A63F0, &qword_1C96B5AE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v69 = v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A63F8, &qword_1C96B5AE8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v68 = v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6400, &qword_1C96B5AF0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6408, &qword_1C96B5AF8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v55 - v23;
  v25 = sub_1C96A5834();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6410, &unk_1C96B5B00);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = v55 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60, &qword_1C96AD6B0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = v55 - v32;
  v34 = sub_1C96A5874();
  v66 = *(v34 - 8);
  v67 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v63 = v55 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a2[3];
  v61 = a2[4];
  v62 = v36;
  v60 = __swift_project_boxed_opaque_existential_1(a2, v36);
  v37 = sub_1C96A4AF4();
  v58 = v38;
  v59 = v37;
  v39 = *(type metadata accessor for Location(0) + 20);
  v40 = sub_1C96A4DF4();
  (*(*(v40 - 8) + 16))(v33, &v65[v39], v40);
  v65 = v33;
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v40);
  v41 = WCCountryCodeEstimate();
  if (v41)
  {
    v42 = v41;
    v57 = sub_1C96A7024();
    v56 = v43;
  }

  else
  {
    v57 = 0;
    v56 = 0;
  }

  type metadata accessor for PrecipitationNotificationConfiguration(0);
  sub_1C96A5884();
  v44 = sub_1C96A5894();
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v44);
  v76 = MEMORY[0x1E69E7CC0];
  sub_1C94D7CBC(&qword_1EDB7ACF0, MEMORY[0x1E69E17F8], MEMORY[0x1E69E1800]);
  v64 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6418, &qword_1C96B5B10);
  sub_1C9469CB4(&qword_1EDB7AB70, &unk_1EC3A6418, &qword_1C96B5B10, MEMORY[0x1E69E6328]);
  v55[1] = v27;
  sub_1C96A79E4();
  v45 = sub_1C96A42B4();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v45);
  v46 = sub_1C96A58C4();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v46);
  v47 = sub_1C96A58A4();
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v47);
  v48 = sub_1C96A58B4();
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v48);
  v49 = sub_1C96A58D4();
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v49);
  v50 = sub_1C96A5E44();
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v50);
  sub_1C96A4B54();
  (*(v72 + 104))(v73, *MEMORY[0x1E69E1958], v74);
  v51 = v63;
  sub_1C96A5864();
  sub_1C96A5854();
  (*(v66 + 8))(v51, v67);
  v52 = sub_1C96A55A4();
  type metadata accessor for PrecipitationNotificationsManager();
  v53 = sub_1C96A56C4();

  return v53;
}

NSObject *sub_1C96201E4(uint64_t *a1, uint64_t a2)
{
  v42 = a2;
  v3 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v38 - v6;
  v44 = sub_1C96A5D64();
  v40 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v38 - v9;
  v10 = sub_1C96A5844();
  v11 = *(v10 - 8);
  v45 = v10;
  v46 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BE8, &qword_1C96AAB28);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = *a1;
  v21 = *(*a1 + 16);
  if (v21)
  {
    v22 = 0;
    while (v22 < *(v20 + 16))
    {
      sub_1C9489AA0();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_1C949E15C();
        sub_1C955FEC0();
        if (__swift_getEnumTagSinglePayload(v16, 1, v44) != 1)
        {
          v35 = v39;
          v34 = v40;
          v36 = v44;
          (*(v40 + 32))(v39, v16, v44);
          (*(v34 + 16))(v38, v35, v36);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73E8, &unk_1C96BE240);
          swift_allocObject();
          v25 = sub_1C96A56A4();
          (*(v34 + 8))(v35, v36);
          sub_1C9470AFC(v19, &qword_1EC3A4BE8, &qword_1C96AAB28);
          return v25;
        }

        sub_1C9470AFC(v19, &qword_1EC3A4BE8, &qword_1C96AAB28);
        sub_1C9470AFC(v16, &qword_1EC3A4BE8, &qword_1C96AAB28);
      }

      else
      {
        sub_1C948EA44(v13, MEMORY[0x1E69E1808]);
      }

      if (v21 == ++v22)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_9:
  if (qword_1EDB7AC88 != -1)
  {
LABEL_17:
    swift_once();
  }

  v23 = sub_1C96A6154();
  __swift_project_value_buffer(v23, qword_1EDB7AC90);
  v24 = v43;
  sub_1C9489AA0();
  v25 = sub_1C96A6134();
  v26 = sub_1C96A7684();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v47 = v28;
    *v27 = 141558275;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    v29 = v41;
    sub_1C96287F0();
    v30 = *v29;
    v31 = v29[1];
    sub_1C96A53C4();
    sub_1C948EA44(v29, type metadata accessor for NotificationSubscription);
    v32 = sub_1C9484164(v30, v31, &v47);

    *(v27 + 14) = v32;
    _os_log_impl(&dword_1C945E000, v25, v26, "Failed to fetch next hour forecast for: %{private,mask.hash}s", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1CCA8E3D0](v28, -1, -1);
    MEMORY[0x1CCA8E3D0](v27, -1, -1);
  }

  else
  {

    sub_1C948EA44(v24, type metadata accessor for NotificationSubscription);
  }

  sub_1C962879C();
  swift_allocError();
  *v33 = 0;
  swift_willThrow();
  return v25;
}

uint64_t sub_1C96207C4()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationSubscription(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v24[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24[-1] - v6;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v8 = sub_1C96A6154();
  __swift_project_value_buffer(v8, qword_1EDB7AC90);
  sub_1C9489AA0();
  v9 = sub_1C96A6134();
  v10 = sub_1C96A76A4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24[0] = v12;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_1C96287F0();
    v23 = v1;
    v14 = *v4;
    v13 = v4[1];
    sub_1C96A53C4();
    sub_1C948EA44(v4, type metadata accessor for NotificationSubscription);
    v15 = sub_1C9484164(v14, v13, v24);
    v1 = v23;

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1C945E000, v9, v10, "Calculating fetch schedule for subscription: %{private,mask.hash}s", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1CCA8E3D0](v12, -1, -1);
    MEMORY[0x1CCA8E3D0](v11, -1, -1);
  }

  else
  {

    sub_1C948EA44(v7, type metadata accessor for NotificationSubscription);
  }

  sub_1C96A5444(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  sub_1C9489AA0();
  *(swift_allocObject() + 16) = v1;
  sub_1C96287F0();
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73C8, &qword_1C96BE228));
  v17 = v1;
  v18 = sub_1C96A53E4();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73A0, &unk_1C96BE048);
  MEMORY[0x1EEE9AC00](v19);
  *(&v23 - 2) = v17;
  v20 = v18;
  v21 = sub_1C96A5754();

  return v21;
}

uint64_t sub_1C9620BA4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C946B5D0(0, &qword_1EDB7CDB0, 0x1E69E9610);
  v3 = sub_1C96A7704();
  sub_1C9489AA0();
  swift_allocObject();
  sub_1C96287F0();
  type metadata accessor for PrecipitationNotificationConfiguration(0);
  type metadata accessor for PrecipitationNotificationsManager();
  sub_1C96A5774();

  v4 = sub_1C96A7704();
  sub_1C9489AA0();
  swift_allocObject();
  sub_1C96287F0();
  type metadata accessor for PrecipitationNotificationFetchSchedule(0);
  sub_1C96A5654();

  v5 = sub_1C96A55A4();
  v6 = sub_1C96A56C4();

  return v6;
}

uint64_t sub_1C9620E10(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v2 = type metadata accessor for PrecipitationNotificationConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C946B5D0(0, &qword_1EDB7CDB0, 0x1E69E9610);
  v4 = sub_1C96A7704();
  sub_1C9489AA0();
  sub_1C9489AA0();
  swift_allocObject();
  sub_1C96287F0();
  sub_1C96287F0();
  sub_1C96A5D64();
  sub_1C96A5774();

  v5 = sub_1C96A7704();
  sub_1C9489AA0();
  sub_1C9489AA0();
  swift_allocObject();
  sub_1C96287F0();
  sub_1C96287F0();
  type metadata accessor for PrecipitationNotificationFetchSchedule(0);
  sub_1C96A5644();

  v6 = sub_1C96A7704();
  sub_1C9489AA0();
  sub_1C9489AA0();
  swift_allocObject();
  sub_1C96287F0();
  sub_1C96287F0();
  sub_1C96A56E4();

  v7 = sub_1C96A7704();
  v8 = sub_1C96A5634();

  return v8;
}

uint64_t sub_1C9621248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v49 = a3;
  v47 = a1;
  v6 = sub_1C96A4A94();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C96A5FF4();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v40 - v12;
  v14 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v20 = sub_1C96A6154();
  __swift_project_value_buffer(v20, qword_1EDB7AC90);
  v46 = a2;
  sub_1C9489AA0();
  v21 = sub_1C96A6134();
  v22 = sub_1C96A76A4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v40 = v7;
    v24 = v23;
    v25 = swift_slowAlloc();
    v41 = v6;
    v26 = v25;
    v50 = v25;
    *v24 = 141558275;
    *(v24 + 4) = 1752392040;
    *(v24 + 12) = 2081;
    sub_1C96287F0();
    v42 = a4;
    v28 = *v16;
    v27 = v16[1];
    sub_1C96A53C4();
    sub_1C948EA44(v16, type metadata accessor for NotificationSubscription);
    v29 = sub_1C9484164(v28, v27, &v50);
    a4 = v42;

    *(v24 + 14) = v29;
    _os_log_impl(&dword_1C945E000, v21, v22, "Using forecast data to calculate fetch schedule for subscription: %{private,mask.hash}s", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v30 = v26;
    v6 = v41;
    MEMORY[0x1CCA8E3D0](v30, -1, -1);
    v31 = v24;
    v7 = v40;
    MEMORY[0x1CCA8E3D0](v31, -1, -1);
  }

  else
  {

    sub_1C948EA44(v19, type metadata accessor for NotificationSubscription);
  }

  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule(0);
  sub_1C9489AA0();
  v33 = v43;
  sub_1C96A5D54();
  sub_1C96A5FA4();
  (*(v44 + 8))(v33, v45);
  v34 = sub_1C96A4A54();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v34);
  PrecipitationNotificationConfiguration.reschedulingDate(from:)(v13, a4 + *(Schedule + 24));
  sub_1C9470AFC(v13, &unk_1EC3A5430, &unk_1C96AAB30);
  v35 = v48;
  sub_1C96A4A84();
  v36 = sub_1C96A4A64();
  v38 = v37;
  result = (*(v7 + 8))(v35, v6);
  *a4 = v36;
  a4[1] = v38;
  *(a4 + *(Schedule + 28)) = 0x408C200000000000;
  return result;
}

uint64_t sub_1C9621708@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v42 = a3;
  v8 = sub_1C96A4A94();
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v17 = sub_1C96A6154();
  __swift_project_value_buffer(v17, qword_1EDB7AC90);
  v41 = a2;
  sub_1C9489AA0();
  v18 = a1;
  v19 = sub_1C96A6134();
  v20 = sub_1C96A7684();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = v4;
    v22 = v21;
    v38 = swift_slowAlloc();
    v45 = v38;
    *v22 = 136381187;
    v44 = a1;
    v23 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380, &qword_1C96AA2F0);
    v24 = sub_1C96A70A4();
    v26 = sub_1C9484164(v24, v25, &v45);
    v39 = v8;
    v27 = v26;

    *(v22 + 4) = v27;
    *(v22 + 12) = 2160;
    *(v22 + 14) = 1752392040;
    *(v22 + 22) = 2081;
    sub_1C96287F0();
    v28 = *v13;
    v29 = v13[1];
    sub_1C96A53C4();
    sub_1C948EA44(v13, type metadata accessor for NotificationSubscription);
    v30 = sub_1C9484164(v28, v29, &v45);
    v8 = v39;

    *(v22 + 24) = v30;
    _os_log_impl(&dword_1C945E000, v19, v20, "Error occurred while calculating fetch schedule: %{private}s for subscription: %{private,mask.hash}s", v22, 0x20u);
    v31 = v38;
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v31, -1, -1);
    MEMORY[0x1CCA8E3D0](v22, -1, -1);
  }

  else
  {

    sub_1C948EA44(v16, type metadata accessor for NotificationSubscription);
  }

  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule(0);
  sub_1C9489AA0();
  type metadata accessor for PrecipitationNotificationConfiguration(0);
  sub_1C96A49B4();
  sub_1C96A4A84();
  v33 = sub_1C96A4A64();
  v35 = v34;
  result = (*(v43 + 8))(v10, v8);
  *a4 = v33;
  a4[1] = v35;
  *(a4 + *(Schedule + 28)) = 0x408C200000000000;
  return result;
}

uint64_t sub_1C9621B08()
{
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule(0);
  MEMORY[0x1EEE9AC00](Schedule - 8);
  sub_1C9489AA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73A0, &unk_1C96BE048);
  swift_allocObject();
  return sub_1C96A56A4();
}

uint64_t sub_1C9621BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090, &qword_1C96AD060);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = sub_1C96A7414();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = sub_1C94DA5C0;
  v15[5] = v13;
  v15[6] = a5;
  v15[7] = a3;
  v15[8] = a4;
  sub_1C96A3D04();
  v16 = a5;
  sub_1C96A3D04();
  sub_1C951C258();
}

uint64_t sub_1C9621D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = type metadata accessor for NotificationSubscription(0);
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9621DE8, 0, 0);
}

uint64_t sub_1C9621DE8()
{
  if (qword_1EC3A4748 != -1)
  {
    swift_once();
  }

  if (sub_1C96A4E94())
  {
    v3 = v2[9];
    v4 = v2[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C48, &qword_1C96BE260);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C96AA1C0;
    Settings.Notifications.Precipitation.Overrides.subscription.getter((v6 + v5));
    v4(v6);

    OUTLINED_FUNCTION_17();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_33_10((v2[5] + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationSubscriptionManager));
    v2[2] = 1;
    OUTLINED_FUNCTION_42();
    v11 = (v9 + *v9);
    v10 = swift_task_alloc();
    v2[12] = v10;
    *v10 = v2;
    v10[1] = sub_1C962200C;

    return (v11)(v2 + 2, v0, v1);
  }
}

uint64_t sub_1C962200C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v4;
  *(v2 + 112) = v0;

  if (v0)
  {
    v5 = sub_1C96223CC;
  }

  else
  {
    v5 = sub_1C9622114;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C9622114()
{
  v2 = 0;
  OUTLINED_FUNCTION_39_9();
  v18 = v0[13];
  v3 = *(v18 + 16);
  v4 = (v0[5] + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager);
  v17 = MEMORY[0x1E69E7CC0];
  while (v3 != v2)
  {
    if (v2 >= *(v18 + 16))
    {
      __break(1u);
      return;
    }

    v5 = v0[11];
    sub_1C9489AA0();
    OUTLINED_FUNCTION_89_2();
    v7 = v5 + v6;
    if (*(v5 + v6 + 48) == 1)
    {

LABEL_7:
      v9 = v7 + *(type metadata accessor for NotificationSubscription.Location(0) + 20);
      v10 = *v9 == v1 && *(v9 + 8) == 0xE700000000000000;
      if (!v10 && (sub_1C96A7DE4() & 1) == 0 || *(v9 + 32) != 0.0 || *(v9 + 40) != 0.0)
      {
        v1 = v4[4];
        __swift_project_boxed_opaque_existential_1(v4, v4[3]);
        OUTLINED_FUNCTION_39_9();
        if (v11() == 3)
        {
          goto LABEL_16;
        }
      }

      OUTLINED_FUNCTION_3_47();
      sub_1C948EA44(v12, v13);
      ++v2;
    }

    else
    {
      v8 = sub_1C96A7DE4();

      if (v8)
      {
        goto LABEL_7;
      }

LABEL_16:
      OUTLINED_FUNCTION_4_56();
      sub_1C96287F0();
      v14 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C9522BD0();
        v14 = v17;
      }

      v1 = *(v14 + 16);
      if (v1 >= *(v14 + 24) >> 1)
      {
        sub_1C9522BD0();
        v14 = v17;
      }

      ++v2;
      *(v14 + 16) = v1 + 1;
      v17 = v14;
      OUTLINED_FUNCTION_4_56();
      sub_1C96287F0();
      OUTLINED_FUNCTION_39_9();
    }
  }

  v15 = v0[3];

  v15(v17);

  OUTLINED_FUNCTION_17();

  v16();
}

uint64_t sub_1C96223CC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 112);
  (*(v0 + 48))(v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t PrecipitationNotificationsManager.Errors.hashValue.getter()
{
  v1 = *v0;
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](v1);
  return sub_1C96A7F24();
}

id PrecipitationNotificationsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PrecipitationNotificationsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PrecipitationNotificationsManager.schedule()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F8, &qword_1C96AC9C8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  OUTLINED_FUNCTION_7(v6);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_0_88(&qword_1EDB7AC88);
  }

  v8 = sub_1C96A6154();
  __swift_project_value_buffer(v8, qword_1EDB7AC90);
  v9 = sub_1C96A6134();
  v10 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v10))
  {
    v11 = OUTLINED_FUNCTION_29();
    *v11 = 0;
    _os_log_impl(&dword_1C945E000, v9, v10, "Updating notification fetching schedule", v11, 2u);
    OUTLINED_FUNCTION_26();
  }

  v12 = *(v1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationAuthorizationStatusProvider + 24);
  v13 = *(v1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationAuthorizationStatusProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationAuthorizationStatusProvider), v12);
  v14 = (*(v13 + 8))(v12, v13);
  if (v14)
  {
    v28[0] = 0x656C756465686373;
    v28[1] = 0xE800000000000000;
    MEMORY[0x1EEE9AC00](v14);
    v28[-2] = v1;
    sub_1C96A3D04();
    v15 = sub_1C96A5324();
  }

  else
  {
    v16 = sub_1C96A6134();
    v17 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_7(v17))
    {
      v18 = OUTLINED_FUNCTION_29();
      *v18 = 0;
      _os_log_impl(&dword_1C945E000, v16, v17, "Unscheduling; Weather is not authorized to send notifications", v18, 2u);
      OUTLINED_FUNCTION_26();
    }

    v19 = *(v1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 24);
    v20 = *(v1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler), v19);
    v21.n128_f64[0] = (*(v20 + 48))(v19, v20);
    sub_1C961C00C(v21);
    sub_1C96A4A54();
    OUTLINED_FUNCTION_3();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    v26 = &v5[*(v2 + 48)];
    sub_1C949E15C();
    *v26 = 0;
    v26[8] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F0, &qword_1C96AC930);
    OUTLINED_FUNCTION_9_2();
    swift_allocObject();
    return sub_1C96A56A4();
  }

  return v15;
}

uint64_t sub_1C96229C4(void *a1)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A78, &qword_1C96AA350);
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  sub_1C96A5624();
  sub_1C946B5D0(0, &qword_1EDB7CDB0, 0x1E69E9610);
  v3 = sub_1C96A7704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7390, &qword_1C96BE038);
  sub_1C96A5654();

  v4 = sub_1C96A7704();
  sub_1C96A5654();

  v5 = sub_1C96A7704();
  *(swift_allocObject() + 16) = v2;
  v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73A0, &unk_1C96BE048);
  sub_1C9469CB4(&qword_1EC3A73F0, &qword_1EC3A7390, &qword_1C96BE038, MEMORY[0x1E69E6328]);
  sub_1C96A5724();

  v7 = sub_1C96A7704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7398, &qword_1C96BE040);
  sub_1C96A5634();

  v8 = sub_1C96A7704();
  sub_1C96A5654();

  v9 = sub_1C96A7704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F8, &qword_1C96AC9C8);
  sub_1C96A5654();

  v10 = sub_1C96A7704();
  v11 = sub_1C96A5654();

  return v11;
}

uint64_t sub_1C9622D74(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 24);
  v4 = *(a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler), v3);
  return (*(v4 + 16))(v2, v3, v4);
}

uint64_t sub_1C9622DE4(uint64_t a1, uint64_t a2)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F8, &qword_1C96AC9C8);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v41 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = sub_1C96A4A54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  sub_1C955FEC0();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1C9470AFC(v9, &unk_1EC3A5430, &unk_1C96AAB30);
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v17 = sub_1C96A6154();
    __swift_project_value_buffer(v17, qword_1EDB7AC90);
    v18 = sub_1C96A6134();
    v19 = sub_1C96A76A4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C945E000, v18, v19, "Did not receive new fetch schedule date", v20, 2u);
      MEMORY[0x1CCA8E3D0](v20, -1, -1);
    }

    v21 = *(a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 24);
    v22 = *(a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 32);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler), v21);
    (*(v22 + 48))(v21, v22);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v23 = sub_1C96A6154();
    __swift_project_value_buffer(v23, qword_1EDB7AC90);
    (*(v11 + 16))(v13, v16, v10);
    v24 = sub_1C96A6134();
    v25 = sub_1C96A76A4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v42 = v26;
      v43 = swift_slowAlloc();
      v48 = v43;
      *v26 = 136446210;
      sub_1C94D7CBC(&qword_1EDB7CC50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v27 = sub_1C96A7DB4();
      v44 = a1;
      v29 = v28;
      v30 = *(v11 + 8);
      v30(v13, v10);
      v31 = sub_1C9484164(v27, v29, &v48);

      v32 = v42;
      *(v42 + 1) = v31;
      _os_log_impl(&dword_1C945E000, v24, v25, "Updated notification fetch schedule with date: %{public}s", v32, 0xCu);
      v33 = v43;
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x1CCA8E3D0](v33, -1, -1);
      MEMORY[0x1CCA8E3D0](v32, -1, -1);

      v30(v16, v10);
    }

    else
    {

      v34 = *(v11 + 8);
      v34(v13, v10);
      v34(v16, v10);
    }
  }

  v35 = v45;
  sub_1C955FEC0();
  v36 = *(v46 + 48);
  v37 = *&v35[v36];
  v38 = v35[v36 + 8];
  v39 = &v47[v36];
  sub_1C949E15C();
  *v39 = v37;
  v39[8] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F0, &qword_1C96AC930);
  swift_allocObject();
  return sub_1C96A56A4();
}

uint64_t sub_1C9623344(__n128 a1)
{
  *(v1 + 16) = sub_1C96A5E34();
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C96233DC;

  return sub_1C961BA44();
}

uint64_t sub_1C96233DC()
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

  return MEMORY[0x1EEE6DFA0](sub_1C9623520, v6, v5);
}

uint64_t sub_1C9623520()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t PrecipitationNotificationsManager.evaluate()()
{
  v43[2] = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F8, &qword_1C96AC9C8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v43 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_0_88(&qword_1EDB7AC88);
  }

  v7 = sub_1C96A6154();
  __swift_project_value_buffer(v7, qword_1EDB7AC90);
  v8 = sub_1C96A6134();
  v9 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_1(v9))
  {
    v10 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_47(v10);
    OUTLINED_FUNCTION_28_3(&dword_1C945E000, v11, v12, "Evaluating notification subscriptions");
    OUTLINED_FUNCTION_38_0();
  }

  sub_1C96A5444(&v44);
  v13 = v44;
  NotificationEnablementTracker.trackEnablement()();
  sub_1C96A5434();
  v14 = *&v0[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationAuthorizationStatusProvider + 24];
  v15 = *&v0[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationAuthorizationStatusProvider + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationAuthorizationStatusProvider], v14);
  if ((*(v15 + 8))(v14, v15))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A78, &qword_1C96AA350);
    OUTLINED_FUNCTION_23_0();
    *(swift_allocObject() + 16) = v0;
    v16 = v0;
    sub_1C96A5624();
    sub_1C946B5D0(0, &qword_1EDB7CDB0, 0x1E69E9610);
    v17 = sub_1C96A7704();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7390, &qword_1C96BE038);
    sub_1C96A5654();

    v18 = sub_1C96A7704();
    OUTLINED_FUNCTION_23_0();
    v19 = swift_allocObject();
    v43[1] = v1;
    *(v19 + 16) = v16;
    v20 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7398, &qword_1C96BE040);
    sub_1C96A5654();
    v43[0] = v13;

    v21 = sub_1C96A7704();
    OUTLINED_FUNCTION_23_0();
    *(swift_allocObject() + 16) = v20;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73A0, &unk_1C96BE048);
    OUTLINED_FUNCTION_12_33();
    sub_1C9469CB4(v23, &qword_1EC3A7398, &qword_1C96BE040, v24);
    sub_1C96A5724();

    v25 = sub_1C96A7704();
    sub_1C96A5634();

    v26 = sub_1C96A7704();
    sub_1C96A5654();

    v27 = sub_1C96A7704();
    v28 = sub_1C96A5654();
  }

  else
  {
    v29 = sub_1C96A6134();
    v30 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_1(v30))
    {
      v31 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_47(v31);
      OUTLINED_FUNCTION_28_3(&dword_1C945E000, v32, v33, "Skipping evaluation; Weather is not authorized to send notifications");
      OUTLINED_FUNCTION_38_0();
    }

    OUTLINED_FUNCTION_65_5(&v0[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler]);
    v34 = OUTLINED_FUNCTION_44_8();
    v36.n128_f64[0] = v35(v34);
    sub_1C961C00C(v36);
    sub_1C96A4A54();
    OUTLINED_FUNCTION_3();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    v41 = &v4[*(v1 + 48)];
    sub_1C949E15C();
    *v41 = 0;
    v41[8] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F0, &qword_1C96AC930);
    OUTLINED_FUNCTION_9_2();
    swift_allocObject();
    v28 = sub_1C96A56A4();
  }

  return v28;
}

uint64_t sub_1C9623B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50E8, &qword_1C96AC928);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  return sub_1C96A5714();
}

uint64_t sub_1C9623BAC(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v46 = a3;
  v42 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0, &qword_1C96C9D90);
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = v7;
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v41 - v9;
  v51 = sub_1C96A4A94();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1C96A4A54();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NotificationSubscription(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v41 - v19);
  v21 = *a1;
  if (qword_1EC3A4748 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v22 = sub_1C96A4E94();
    v52 = v4;
    if (v22)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D00, &qword_1C96AAE30);
      v23 = (type metadata accessor for PrecipitationNotificationFetchSchedule(0) - 8);
      v24 = (*(*v23 + 80) + 32) & ~*(*v23 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1C96AA1C0;
      v26 = (v25 + v24);
      Settings.Notifications.Precipitation.Overrides.subscription.getter(v20);
      _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
      sub_1C96A4A84();
      v27 = sub_1C96A4A64();
      v29 = v28;
      (*(v49 + 8))(v11, v51);
      *v26 = v27;
      v26[1] = v29;
      sub_1C96287F0();
      (*(v48 + 32))(v26 + v23[8], v13, v50);
      *(v26 + v23[9]) = 0x408C200000000000;
      v53 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50E0, &qword_1C96AC920);
      swift_allocObject();
      return sub_1C96A56A4();
    }

    v13 = *(v21 + 16);
    if (!v13)
    {
      break;
    }

    v4 = 0;
    v20 = (v21 + ((*(v15 + 80) + 32) & ~*(v15 + 80)));
    while (v4 < *(v21 + 16))
    {
      sub_1C9489AA0();
      if (v17[*(v14 + 20) + 48] == 1)
      {

LABEL_12:
        v32 = v47;
        sub_1C96287F0();
        v31 = 0;
        goto LABEL_13;
      }

      v11 = sub_1C96A7DE4();

      if (v11)
      {
        goto LABEL_12;
      }

      ++v4;
      sub_1C948EA44(v17, type metadata accessor for NotificationSubscription);
      if (v13 == v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

LABEL_10:
  v31 = 1;
  v32 = v47;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v32, v31, 1, v14);
  v33 = *(v42 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 24);
  v34 = *(v42 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 32);
  __swift_project_boxed_opaque_existential_1((v42 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler), v33);
  (*(v34 + 8))(v21, v33, v34);
  sub_1C955FEC0();
  v35 = (v44 + ((*(v43 + 80) + 16) & ~*(v43 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  sub_1C949E15C();
  v37 = v46;
  *(v36 + v35) = v46;
  v38 = v37;
  v39 = sub_1C96A55A4();
  sub_1C9469CB4(&qword_1EC3A73A8, &qword_1EC3A7398, &qword_1C96BE040, MEMORY[0x1E69E6328]);
  v30 = sub_1C96A5734();

  sub_1C9470AFC(v32, &qword_1EC3A58D0, &qword_1C96C9D90);
  return v30;
}

uint64_t sub_1C9624244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v59 = a2;
  v61 = a1;
  v4 = sub_1C96A4A54();
  v60 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Location(0);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0, &qword_1C96C9D90);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v51 - v18;
  v20 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v20);
  v58 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC3A4748 != -1)
  {
    swift_once();
  }

  if (sub_1C96A4E94())
  {
    goto LABEL_7;
  }

  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EC3A4740 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  if (v63)
  {
LABEL_7:
    v22 = 1;
    return v22 & 1;
  }

  v52 = v16;
  v54 = v3;
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule(0);
  v23 = v61 + *(Schedule + 20);
  v24 = *(v20 + 20);
  if (*(v23 + v24 + *(type metadata accessor for NotificationSubscription.Location(0) + 20) + 48) == 1)
  {

LABEL_22:
    _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
    v22 = sub_1C96A4994();
    (*(v60 + 8))(v6, v4);
    return v22 & 1;
  }

  v25 = sub_1C96A7DE4();

  if (v25)
  {
    goto LABEL_22;
  }

  sub_1C955FEC0();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1C9470AFC(v19, &qword_1EC3A58D0, &qword_1C96C9D90);
    goto LABEL_22;
  }

  v26 = v58;
  sub_1C96287F0();
  v27 = *(v26 + *(v20 + 24));
  if (v27 == 2 || (v27 & 1) == 0)
  {
    v49 = v26;
LABEL_21:
    sub_1C948EA44(v49, type metadata accessor for NotificationSubscription);
    goto LABEL_22;
  }

  v28 = v52;
  sub_1C9489AA0();
  v29 = v28;
  v30 = v57;
  sub_1C9489AA0();
  v31 = *(v56 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationComparator + 24);
  v32 = *(v56 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationComparator + 32);
  __swift_project_boxed_opaque_existential_1((v56 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationComparator), v31);
  if (((*(v32 + 8))(v29, v30, v31, v32) & 1) == 0)
  {
    sub_1C948EA44(v30, type metadata accessor for Location);
    sub_1C948EA44(v29, type metadata accessor for Location);
    v49 = v58;
    goto LABEL_21;
  }

  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v33 = sub_1C96A6154();
  __swift_project_value_buffer(v33, qword_1EDB7AC90);
  sub_1C9489AA0();
  v34 = v55;
  sub_1C9489AA0();
  v35 = sub_1C96A6134();
  v36 = sub_1C96A76A4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62 = v61;
    *v37 = 141558787;
    *(v37 + 4) = 1752392040;
    *(v37 + 12) = 2081;
    sub_1C94D7CBC(&qword_1EDB7ADD0, type metadata accessor for Location, &protocol conformance descriptor for Location);
    v38 = sub_1C96A7DB4();
    v40 = v39;
    sub_1C948EA44(v11, type metadata accessor for Location);
    v41 = sub_1C9484164(v38, v40, &v62);

    *(v37 + 14) = v41;
    *(v37 + 22) = 2160;
    *(v37 + 24) = 1752392040;
    *(v37 + 32) = 2081;
    v42 = v55;
    v43 = sub_1C96A7DB4();
    v45 = v44;
    sub_1C948EA44(v42, type metadata accessor for Location);
    v46 = sub_1C9484164(v43, v45, &v62);

    *(v37 + 34) = v46;
    _os_log_impl(&dword_1C945E000, v35, v36, "Suppressing notifications for location because it's near current location, subscriptionLocation=%{private,mask.hash}s, currentLocation=%{private,mask.hash}s", v37, 0x2Au);
    v47 = v61;
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v47, -1, -1);
    MEMORY[0x1CCA8E3D0](v37, -1, -1);

    sub_1C948EA44(v57, type metadata accessor for Location);
    v48 = v52;
  }

  else
  {

    sub_1C948EA44(v34, type metadata accessor for Location);
    sub_1C948EA44(v11, type metadata accessor for Location);
    sub_1C948EA44(v30, type metadata accessor for Location);
    v48 = v29;
  }

  sub_1C948EA44(v48, type metadata accessor for Location);
  sub_1C948EA44(v58, type metadata accessor for NotificationSubscription);
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1C9624A24(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73A0, &unk_1C96BE048);
  v1 = sub_1C96A55A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73B8, &qword_1C96BE220);
  sub_1C9469CB4(&qword_1EC3A73C0, &qword_1EC3A73B8, &qword_1C96BE220, MEMORY[0x1E69E6340]);
  v2 = sub_1C96A5614();

  return v2;
}

uint64_t sub_1C9624AF0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 24);
  v4 = *(a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler), v3);
  return (*(v4 + 24))(v2, v3, v4);
}

uint64_t sub_1C9624B60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 24);
  v3 = *(a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler), v2);
  return (*(v3 + 40))(v2, v3);
}

uint64_t PrecipitationNotificationsManager.unregister()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A78, &qword_1C96AA350);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  return sub_1C96A5714();
}

uint64_t sub_1C9624C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090, &qword_1C96AD060);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = sub_1C96A7414();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v12);
  sub_1C96A3D04();
  v13 = a5;
  v14 = sub_1C96A5E34();
  v15 = sub_1C94D7CBC(&qword_1EDB7ACD0, MEMORY[0x1E69E1940], MEMORY[0x1E69E1948]);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v13;
  v16[5] = sub_1C94F0310;
  v16[6] = v11;
  sub_1C951C258();
}

uint64_t sub_1C9624D94(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v7[5] = sub_1C96A5E34();
  sub_1C96A5E24();
  sub_1C94D7CBC(&qword_1EDB7ACD0, MEMORY[0x1E69E1940], MEMORY[0x1E69E1948]);
  v9 = sub_1C96A7374();
  v7[6] = v9;
  v7[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C9624E5C, v9, v8);
}

uint64_t sub_1C9624E5C()
{
  OUTLINED_FUNCTION_39();
  v3 = *(v2 + 16);
  sub_1C961C00C(v4);
  OUTLINED_FUNCTION_33_10((v3 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationSubscriptionManager));
  OUTLINED_FUNCTION_42();
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v2 + 64) = v6;
  *v6 = v2;
  v6[1] = sub_1C9624F7C;

  return v8(v0, v1);
}

uint64_t sub_1C9624F7C()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_15();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1C9625090, v5, v4);
}

uint64_t sub_1C9625090()
{
  OUTLINED_FUNCTION_30();
  v2 = *(v1 + 16);

  OUTLINED_FUNCTION_65_5((v2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler));
  v3 = OUTLINED_FUNCTION_44_8();
  v4(v3);
  OUTLINED_FUNCTION_65_5((v2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationDeliveryScheduler));
  v5 = OUTLINED_FUNCTION_44_8();
  v6(v5);
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_0_88(&qword_1EDB7AC88);
  }

  v7 = sub_1C96A6154();
  v8 = OUTLINED_FUNCTION_107_2(v7, qword_1EDB7AC90);
  v9 = sub_1C96A76A4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_47(v10);
    _os_log_impl(&dword_1C945E000, v8, v9, "Unregistered all notification subscriptions", v0, 2u);
    OUTLINED_FUNCTION_38_0();
  }

  v11 = *(v1 + 24);

  v11();
  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t PrecipitationNotificationsManager.run(with:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1C96A6564();
  OUTLINED_FUNCTION_1();
  v51 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v9 = v8 - v7;
  v10 = sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v52 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_94_2(v13);
  v14 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v49 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v46 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v48 = &v45 - v20;
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_0_88(&qword_1EDB7AC88);
  }

  v21 = sub_1C96A6154();
  v22 = OUTLINED_FUNCTION_107_2(v21, qword_1EDB7AC90);
  v23 = sub_1C96A76A4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_29();
    v45 = a1;
    *v24 = 0;
    _os_log_impl(&dword_1C945E000, v22, v23, "Running notification manager as xpc activity", v24, 2u);
    a1 = v45;
    OUTLINED_FUNCTION_26();
  }

  if (WDWeatherAppIsInstalled())
  {
    v25 = v48;
    _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
    sub_1C946B5D0(0, &qword_1EDB7CDB0, 0x1E69E9610);
    v26 = sub_1C96A7704();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F8, &qword_1C96AC9C8);
    sub_1C96A5774();

    v27 = v49;
    v28 = v46;
    (*(v49 + 16))(v46, v25, v14);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = a1;
    *(v30 + 24) = a2;
    (*(v27 + 32))(v30 + v29, v28, v14);
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1C9627CD4;
    *(v31 + 24) = v30;
    sub_1C96A3D04();
    v32 = sub_1C96A55A4();
    sub_1C96A5644();

    (*(v27 + 8))(v25, v14);
  }

  else
  {
    v33 = sub_1C96A6134();
    v34 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_1(v34))
    {
      v35 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_47(v35);
      OUTLINED_FUNCTION_28_3(&dword_1C945E000, v36, v37, "Weather app was uninstalled; rejecting xpc run instructions");
      OUTLINED_FUNCTION_38_0();
    }

    sub_1C946B5D0(0, &qword_1EDB7CDB0, 0x1E69E9610);
    v38 = sub_1C96A7704();
    v39 = swift_allocObject();
    *(v39 + 16) = a1;
    *(v39 + 24) = a2;
    aBlock[4] = sub_1C9627CCC;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C946FCF8;
    aBlock[3] = &block_descriptor_17;
    v40 = _Block_copy(aBlock);
    sub_1C96A3D04();
    v41 = v50;
    sub_1C96A6594();
    v53 = MEMORY[0x1E69E7CC0];
    sub_1C94D7CBC(&qword_1EDB7CF40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
    OUTLINED_FUNCTION_12_33();
    sub_1C9469CB4(v42, &unk_1EC3A5370, &qword_1C96AD9F0, v43);
    sub_1C96A79E4();
    MEMORY[0x1CCA8D100](0, v41, v9, v40);
    _Block_release(v40);

    (*(v51 + 8))(v9, v4);
    (*(v52 + 8))(v41, v10);
  }

  return 1;
}

uint64_t sub_1C9625818(void (*a1)(char *, void, uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_1C96A4A54();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  a1(v4, 0, 1);
  return sub_1C9470AFC(v4, &unk_1EC3A5430, &unk_1C96AAB30);
}

void sub_1C9625910(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void, __n128))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_1C96A4A54();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(a1, a2, a3 & 1, v13);
  v16 = sub_1C96A4984();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v17 = sub_1C96A4984();
  v18 = *(v12 + 8);
  v18(v15, v11);
  sub_1C955FEC0();
  v19 = 0;
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    v19 = sub_1C96A4984();
    v18(v10, v11);
  }

  WCPowerLogPrecipitationFetch(v16, v17, v19);
}

uint64_t PrecipitationNotificationsManager.verify(schedule:)(uint64_t a1, uint64_t a2)
{
  sub_1C96A5444(&v17);
  NotificationEnablementTracker.trackEnablement()();
  sub_1C96A5434();
  if (WDWeatherAppIsInstalled())
  {
    v5 = *(v2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 24);
    v6 = *(v2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler), v5);
    v7 = (*(v6 + 32))(a1, a2, v5, v6);
  }

  else
  {
    if (qword_1EDB7AC88 != -1)
    {
      OUTLINED_FUNCTION_0_88(&qword_1EDB7AC88);
    }

    v8 = sub_1C96A6154();
    v9 = OUTLINED_FUNCTION_107_2(v8, qword_1EDB7AC90);
    v10 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_7(v10))
    {
      v11 = OUTLINED_FUNCTION_29();
      *v11 = 0;
      _os_log_impl(&dword_1C945E000, v9, v10, "Weather app was uninstalled; rejecting verification request", v11, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_1C96A4A54();
    OUTLINED_FUNCTION_3();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    return 0;
  }

  return v7;
}

void PrecipitationNotificationsManager.authorizationDidChange(_:authorizationStatus:)(uint64_t a1, int a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090, &qword_1C96AD060);
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_0_88(&qword_1EDB7AC88);
  }

  v5 = sub_1C96A6154();
  v6 = OUTLINED_FUNCTION_107_2(v5, qword_1EDB7AC90);
  v7 = sub_1C96A76A4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_29();
    *v8 = 0;
    _os_log_impl(&dword_1C945E000, v6, v7, "About to process a user location authorization change notification", v8, 2u);
    OUTLINED_FUNCTION_26();
  }

  if (a2)
  {
    sub_1C96A7414();
    OUTLINED_FUNCTION_3();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    OUTLINED_FUNCTION_23_0();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1C96A3D04();
    v14 = sub_1C96A5E34();
    OUTLINED_FUNCTION_1_63();
    v17 = sub_1C94D7CBC(v15, v16, MEMORY[0x1E69E1948]);
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    *(v18 + 24) = v17;
    *(v18 + 32) = v13;
    *(v18 + 40) = a2;

    OUTLINED_FUNCTION_104();
    sub_1C951C6C4();
  }

  else
  {
    v21 = sub_1C96A6134();
    v19 = sub_1C96A76A4();
    if (os_log_type_enabled(v21, v19))
    {
      v20 = OUTLINED_FUNCTION_29();
      *v20 = 0;
      _os_log_impl(&dword_1C945E000, v21, v19, "Location permission not determined ... aborting.", v20, 2u);
      OUTLINED_FUNCTION_26();
    }
  }
}

uint64_t sub_1C9625F94(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 96) = a6;
  *(v6 + 40) = a1;
  *(v6 + 48) = a5;
  *(v6 + 56) = sub_1C96A5E34();
  sub_1C96A5E24();
  sub_1C94D7CBC(&qword_1EDB7ACD0, MEMORY[0x1E69E1940], MEMORY[0x1E69E1948]);
  v8 = sub_1C96A7374();
  *(v6 + 64) = v8;
  *(v6 + 72) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C962605C, v8, v7);
}

uint64_t sub_1C962605C()
{
  OUTLINED_FUNCTION_18();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1C9626160;
    v3 = *(v0 + 96);

    return sub_1C9626300(v3);
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    OUTLINED_FUNCTION_17();

    return v5();
  }
}

uint64_t sub_1C9626160()
{
  OUTLINED_FUNCTION_30();
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;

  v5 = *(v1 + 72);
  v6 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1C9626294, v6, v5);
}

uint64_t sub_1C9626294()
{
  OUTLINED_FUNCTION_18();

  **(v0 + 40) = *(v0 + 80) == 0;
  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_1C9626300(int a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0, &qword_1C96C9D90);
  *(v2 + 24) = swift_task_alloc();
  *(v2 + 32) = type metadata accessor for NotificationSubscription(0);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = sub_1C96A5E34();
  sub_1C96A5E24();
  sub_1C94D7CBC(&qword_1EDB7ACD0, MEMORY[0x1E69E1940], MEMORY[0x1E69E1948]);
  v4 = sub_1C96A7374();
  *(v2 + 56) = v4;
  *(v2 + 64) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C9626430, v4, v3);
}

uint64_t sub_1C9626430()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_33_10((*(v0 + 16) + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationSubscriptionManager));
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_29_13(v1);

  return v3(v2);
}

uint64_t sub_1C9626540()
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
    v9 = sub_1C9626788;
  }

  else
  {
    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_1C9626650;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C9626650()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_106_2();
  if (__swift_getEnumTagSinglePayload(v0, 1, v1) == 1)
  {
    sub_1C9470AFC(*(v2 + 24), &qword_1EC3A58D0, &qword_1C96C9D90);
    if (qword_1EDB7AC88 != -1)
    {
      OUTLINED_FUNCTION_0_88(&qword_1EDB7AC88);
    }

    v3 = sub_1C96A6154();
    v4 = OUTLINED_FUNCTION_107_2(v3, qword_1EDB7AC90);
    v5 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_7(v5))
    {
      v6 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_47(v6);
      OUTLINED_FUNCTION_16_2(&dword_1C945E000, v7, v8, "Could not fetch the current location subscription status, aborting.");
      OUTLINED_FUNCTION_38_0();
    }
  }

  else
  {
    v15 = *(v2 + 40);
    v16 = *(v2 + 80);
    OUTLINED_FUNCTION_4_56();
    sub_1C96287F0();
    sub_1C9626884(v16, v15);
    OUTLINED_FUNCTION_3_47();
    v9 = sub_1C948EA44(v15, v17);
  }

  OUTLINED_FUNCTION_86_0(v9, v10, v11, v12, v13, v14);

  OUTLINED_FUNCTION_17();

  return v18();
}

uint64_t sub_1C9626788()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_106_2();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v0);
  sub_1C9470AFC(*(v1 + 24), &qword_1EC3A58D0, &qword_1C96C9D90);
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_0_88(&qword_1EDB7AC88);
  }

  v5 = sub_1C96A6154();
  v6 = OUTLINED_FUNCTION_107_2(v5, qword_1EDB7AC90);
  v7 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v7))
  {
    v8 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_47(v8);
    OUTLINED_FUNCTION_16_2(&dword_1C945E000, v9, v10, "Could not fetch the current location subscription status, aborting.");
    OUTLINED_FUNCTION_38_0();
  }

  OUTLINED_FUNCTION_86_0(v11, v12, v13, v14, v15, v16);

  OUTLINED_FUNCTION_17();

  return v17();
}

void sub_1C9626884(int a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *(a2 + *(v5 + 32));
  if (v6 == 2 || (v6 & 1) == 0)
  {
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v9 = sub_1C96A6154();
    __swift_project_value_buffer(v9, qword_1EDB7AC90);
    v12 = sub_1C96A6134();
    v10 = sub_1C96A76A4();
    if (os_log_type_enabled(v12, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C945E000, v12, v10, "User has not enabled notifications for the current location, aborting.", v11, 2u);
      MEMORY[0x1CCA8E3D0](v11, -1, -1);
    }
  }

  else
  {
    sub_1C946B5D0(0, &qword_1EDB7CDB0, 0x1E69E9610);
    v7 = sub_1C96A7704();
    sub_1C9489AA0();
    *(swift_allocObject() + 16) = a1;
    sub_1C96287F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F8, &qword_1C96AC9C8);
    sub_1C96A5774();

    v8 = sub_1C96A7704();
    sub_1C96A5644();
  }
}

uint64_t sub_1C9626B68(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 3)
  {
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v3 = sub_1C96A6154();
    __swift_project_value_buffer(v3, qword_1EDB7AC90);
    v4 = sub_1C96A6134();
    v5 = sub_1C96A76A4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C945E000, v4, v5, "User has changed authorization status to .authorizedAlways ... scheduling the subscriptions.", v6, 2u);
      MEMORY[0x1CCA8E3D0](v6, -1, -1);
    }

    return PrecipitationNotificationsManager.schedule()();
  }

  else
  {
    v9 = (a1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler);
    v10 = *(a1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 24);
    v11 = *(a1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 32);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    (*(v11 + 56))(a3, v10, v11);
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v12 = sub_1C96A6154();
    __swift_project_value_buffer(v12, qword_1EDB7AC90);
    v13 = sub_1C96A6134();
    v14 = sub_1C96A76A4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C945E000, v13, v14, "User has changed authorization status to NOT .authorizedAlways ... unscheduling the subscription for the current location", v15, 2u);
      MEMORY[0x1CCA8E3D0](v15, -1, -1);
    }

    v16 = v9[3];
    v17 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v16);
    return (*(v17 + 40))(v16, v17);
  }
}

void sub_1C9626D94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F8, &qword_1C96AC9C8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13 - v2;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7AC90);
  sub_1C955FEC0();
  v5 = sub_1C96A6134();
  v6 = sub_1C96A76A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    sub_1C955FEC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
    v9 = sub_1C96A70A4();
    v11 = v10;
    sub_1C9470AFC(v3, &qword_1EC3A50F8, &qword_1C96AC9C8);
    v12 = sub_1C9484164(v9, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1C945E000, v5, v6, "Rescheduled notifications after location authorization change to date: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1CCA8E3D0](v8, -1, -1);
    MEMORY[0x1CCA8E3D0](v7, -1, -1);
  }

  else
  {

    sub_1C9470AFC(v3, &qword_1EC3A50F8, &qword_1C96AC9C8);
  }
}

void PrecipitationNotificationsManager.currentCLLocationDidUpdate(_:location:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090, &qword_1C96AD060);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C946B5D0(0, &qword_1EDB77D08, 0x1E69E19B8);
  v7 = sub_1C961B254(0xD000000000000023, 0x80000001C96D5370);
  sub_1C96A7414();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = a2;
  v13 = v3;
  v14 = v7;
  v15 = sub_1C96A5E34();
  OUTLINED_FUNCTION_1_63();
  v18 = sub_1C94D7CBC(v16, v17, MEMORY[0x1E69E1948]);
  v19 = swift_allocObject();
  v19[2] = v15;
  v19[3] = v18;
  v19[4] = v12;
  v19[5] = v13;
  v19[6] = v14;
  OUTLINED_FUNCTION_104();
  sub_1C951C258();
}

uint64_t sub_1C9627154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450, &qword_1C96AD580);
  v5[5] = swift_task_alloc();
  type metadata accessor for NotificationSubscription.Location(0);
  v5[6] = swift_task_alloc();
  v5[7] = type metadata accessor for Location(0);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = sub_1C96A5E34();
  sub_1C96A5E24();
  sub_1C94D7CBC(&qword_1EDB7ACD0, MEMORY[0x1E69E1940], MEMORY[0x1E69E1948]);
  v7 = sub_1C96A7374();
  v5[13] = v7;
  v5[14] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C96272D0, v7, v6);
}

uint64_t sub_1C96272D0(uint64_t a1)
{
  v45 = v1;
  v2 = v1[11];
  v3 = v1[7];
  v4 = v1[3];
  sub_1C96A4DE4();
  [v4 coordinate];
  v6 = v5;
  v8 = v7;
  sub_1C96A4A54();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v43 = 0x746E6572727563;
  v44 = 0xE700000000000000;
  MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
  *(v2 + v3[11]) = 0;
  v13 = v43;
  v14 = v44;
  *v2 = 0x746E6572727563;
  *(v2 + 8) = 0xE700000000000000;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0xE000000000000000;
  *(v2 + 32) = v6;
  *(v2 + 40) = v8;
  *(v2 + 48) = 1;
  *(v2 + 56) = v13;
  *(v2 + 64) = v14;
  OUTLINED_FUNCTION_14_11(v3[7]);
  OUTLINED_FUNCTION_14_11(v3[8]);
  OUTLINED_FUNCTION_14_11(v3[9]);
  OUTLINED_FUNCTION_14_11(v3[10]);
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_0_88(&qword_1EDB7AC88);
  }

  v15 = sub_1C96A6154();
  v1[15] = __swift_project_value_buffer(v15, qword_1EDB7AC90);
  OUTLINED_FUNCTION_11_33();
  sub_1C9489AA0();
  v16 = sub_1C96A6134();
  v17 = sub_1C96A76A4();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v1[10];
  if (v18)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v43 = v21;
    OUTLINED_FUNCTION_2_53(7.2225e-34);
    OUTLINED_FUNCTION_28_18();
    sub_1C94D7CBC(v22, v23, &protocol conformance descriptor for Location);
    v24 = sub_1C96A7DB4();
    v26 = v25;
    OUTLINED_FUNCTION_10_38();
    sub_1C948EA44(v19, v27);
    v28 = sub_1C9484164(v24, v26, &v43);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_1C945E000, v16, v17, "Got a current location update from CoreLocation. About to update current location subscribtion. location=%{private,mask.hash}s", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  else
  {

    OUTLINED_FUNCTION_10_38();
    sub_1C948EA44(v19, v29);
  }

  v30 = v1[9];
  v32 = v1[6];
  v31 = v1[7];
  v34 = v1[4];
  v33 = v1[5];
  OUTLINED_FUNCTION_11_33();
  sub_1C9489AA0();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v31);
  NotificationSubscription.Location.init(location:locationOverride:)(v30, v33);
  OUTLINED_FUNCTION_33_10((v34 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationSubscriptionManager));
  OUTLINED_FUNCTION_42();
  v42 = (v38 + *v38);
  v39 = swift_task_alloc();
  v1[16] = v39;
  *v39 = v1;
  v39[1] = sub_1C9627668;
  v40 = v1[6];

  return v42(v40, v31, v32);
}

uint64_t sub_1C9627668()
{
  OUTLINED_FUNCTION_30();
  v2 = *v1;
  OUTLINED_FUNCTION_7_11();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 136) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_1C96279EC;
  }

  else
  {
    v7 = sub_1C962779C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C962779C()
{
  v21 = v0;

  OUTLINED_FUNCTION_11_33();
  sub_1C9489AA0();
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[11];
  v5 = v0[8];
  if (v3)
  {
    v19 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    OUTLINED_FUNCTION_28_18();
    sub_1C94D7CBC(v8, v9, &protocol conformance descriptor for Location);
    v10 = sub_1C96A7DB4();
    v12 = v11;
    sub_1C948EA44(v5, type metadata accessor for Location);
    v13 = sub_1C9484164(v10, v12, &v20);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_1C945E000, v1, v2, "Successfully updated current location subscribtion. location=%{private,mask.hash}s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();

    OUTLINED_FUNCTION_9_35();
    sub_1C948EA44(v19, v14);
  }

  else
  {
    v15 = v0[6];

    sub_1C948EA44(v5, type metadata accessor for Location);
    OUTLINED_FUNCTION_9_35();
    sub_1C948EA44(v15, v16);
  }

  sub_1C948EA44(v4, type metadata accessor for Location);

  OUTLINED_FUNCTION_17();

  return v17();
}

uint64_t sub_1C96279EC()
{
  v20 = v0;
  v1 = v0[17];
  v2 = v0[11];
  v3 = v0[6];

  OUTLINED_FUNCTION_9_35();
  sub_1C948EA44(v3, v4);
  OUTLINED_FUNCTION_10_38();
  sub_1C948EA44(v2, v5);
  v6 = v1;
  v7 = sub_1C96A6134();
  v8 = sub_1C96A7684();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[17];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    OUTLINED_FUNCTION_2_53(7.2225e-34);
    v0[2] = v9;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380, &qword_1C96AA2F0);
    v13 = sub_1C96A70A4();
    v15 = sub_1C9484164(v13, v14, &v19);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_1C945E000, v7, v8, "Failed to update current location subscription with error: %{private,mask.hash}s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  else
  {
    v16 = v0[17];
  }

  OUTLINED_FUNCTION_17();

  return v17();
}

uint64_t sub_1C9627BE4()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_98_1(v1);

  return sub_1C9623344(v3);
}

uint64_t sub_1C9627C88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C961C18C();
  *a1 = result;
  return result;
}

void sub_1C9627CD4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1C96A4A54();
  OUTLINED_FUNCTION_7(v7);
  v8 = *(v3 + 16);

  sub_1C9625910(a1, a2, a3 & 1, v8);
}

uint64_t sub_1C9627D78()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_17_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_9_32(v4);

  return sub_1C9625F94(v6, v9, v7, v8, v1, v2);
}

uint64_t sub_1C9627E20()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_73_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_17_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_9_32(v3);

  return sub_1C9627154(v5, v6, v7, v0, v1);
}

unint64_t sub_1C9627EC8()
{
  result = qword_1EC3A73B0;
  if (!qword_1EC3A73B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A73B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrecipitationNotificationsManager.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C962809C()
{
  v0 = OUTLINED_FUNCTION_14_29();
  v1 = type metadata accessor for NotificationSubscription(v0);
  OUTLINED_FUNCTION_7(v1);
  v2 = OUTLINED_FUNCTION_14_0();
  return sub_1C9626B68(v2, v3, v4);
}

uint64_t sub_1C96280FC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_73_3();
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_9_32(v5);

  return sub_1C9624D94(v10, v7, v8, v9, v1, v2, v3);
}

uint64_t sub_1C96281A0()
{
  v1 = type metadata accessor for NotificationSubscription(0);
  OUTLINED_FUNCTION_9(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule(0);
  OUTLINED_FUNCTION_7(Schedule);
  v8 = *(v0 + 16);
  v9 = v0 + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_1C961C6A4(v8, v0 + v3, v9);
}

uint64_t sub_1C96282DC()
{
  v3 = OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_19_2();
  return sub_1C961D430(v2, v1, v0 + v4);
}

uint64_t sub_1C9628340()
{
  v0 = OUTLINED_FUNCTION_14_29();
  v1 = type metadata accessor for PrecipitationNotification(v0);
  OUTLINED_FUNCTION_9(v1);
  v2 = type metadata accessor for PrecipitationNotificationDeliverySchedule(0);
  OUTLINED_FUNCTION_7(v2);
  v3 = OUTLINED_FUNCTION_14_0();
  return sub_1C961E2E8(v3, v4, v5, v6);
}

uint64_t sub_1C9628408()
{
  v0 = OUTLINED_FUNCTION_14_29();
  v1 = type metadata accessor for PrecipitationNotification(v0);
  OUTLINED_FUNCTION_9(v1);
  v2 = type metadata accessor for NotificationSubscription(0);
  OUTLINED_FUNCTION_9(v2);
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule(0);
  OUTLINED_FUNCTION_7(Schedule);
  OUTLINED_FUNCTION_69_4();
  v4 = OUTLINED_FUNCTION_14_0();
  return sub_1C961E390(v4, v5, v6, v7);
}

uint64_t sub_1C962852C()
{
  v3 = OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_9(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for PrecipitationNotificationConfiguration(0);
  OUTLINED_FUNCTION_9(v8);
  v10 = (v5 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule(0);
  OUTLINED_FUNCTION_9(Schedule);
  v15 = v14;
  v17 = v16;
  v18 = (v10 + v12 + *(v15 + 80)) & ~*(v15 + 80);
  return sub_1C961F010(v2, v1, v0 + v5, v0 + v10, v0 + v18, *(v0 + ((*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1C962866C()
{
  v0 = OUTLINED_FUNCTION_14_29();
  v1 = type metadata accessor for NotificationSubscription(v0);
  OUTLINED_FUNCTION_9(v1);
  v2 = type metadata accessor for PrecipitationNotificationConfiguration(0);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_72_2();
  v3 = OUTLINED_FUNCTION_14_0();
  return sub_1C961F570(v3, v4, v5);
}

uint64_t sub_1C962873C()
{
  v0 = OUTLINED_FUNCTION_14_29();
  v1 = type metadata accessor for PrecipitationNotificationPolicy(v0);
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_14_0();
  return sub_1C961F480();
}

unint64_t sub_1C962879C()
{
  result = qword_1EC3A73D8;
  if (!qword_1EC3A73D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A73D8);
  }

  return result;
}

uint64_t sub_1C96287F0()
{
  OUTLINED_FUNCTION_40_2();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_11();
  v3(v2);
  return v0;
}

uint64_t sub_1C9628848()
{
  v0 = OUTLINED_FUNCTION_14_29();
  v1 = type metadata accessor for Location(v0);
  OUTLINED_FUNCTION_9(v1);
  v2 = type metadata accessor for PrecipitationNotificationConfiguration(0);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_72_2();
  v3 = OUTLINED_FUNCTION_14_0();
  return sub_1C961FA04(v3, v4, v5, v6, v7, v8);
}

NSObject *sub_1C9628900()
{
  v0 = OUTLINED_FUNCTION_14_29();
  v1 = type metadata accessor for NotificationSubscription(v0);
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_19_2();
  v2 = OUTLINED_FUNCTION_14_0();
  return sub_1C96201E4(v2, v3);
}

uint64_t sub_1C9628958()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0, &qword_1C96C9D90);
  OUTLINED_FUNCTION_9(v0);
  v1 = OUTLINED_FUNCTION_14_0();
  return sub_1C9624244(v1, v2, v3) & 1;
}

uint64_t sub_1C96289FC()
{
  OUTLINED_FUNCTION_73_3();
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_17_1(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_9_32(v7);

  return sub_1C9621D14(v9, v10, v11, v1, v2, v3, v4, v5);
}

uint64_t sub_1C9628AB8()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_98_1(v1);

  return sub_1C9623344(v3);
}

uint64_t sub_1C9628B40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C96207C4();
  *a1 = result;
  return result;
}

uint64_t sub_1C9628B7C()
{
  v1 = type metadata accessor for NotificationSubscription(0);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_1C9620BA4(v3, v4);
}

uint64_t sub_1C9628BDC()
{
  v1 = OUTLINED_FUNCTION_14_29();
  v2 = type metadata accessor for NotificationSubscription(v1);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_19_2();
  return sub_1C961CA70(v0 + v3);
}

uint64_t objectdestroy_56Tm()
{
  OUTLINED_FUNCTION_55_5();
  type metadata accessor for NotificationSubscription(0);
  OUTLINED_FUNCTION_124();

  OUTLINED_FUNCTION_84_2();

  type metadata accessor for Location(0);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 8);
  v2 = OUTLINED_FUNCTION_93_1();
  v1(v2);
  v3 = OUTLINED_FUNCTION_104_2();
  if (!OUTLINED_FUNCTION_34_11(v3))
  {
    OUTLINED_FUNCTION_3_35();
    v4 = OUTLINED_FUNCTION_92_2();
    v5(v4);
  }

  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_24_19();
  OUTLINED_FUNCTION_77_2();
  type metadata accessor for NotificationSubscription.Location(0);
  OUTLINED_FUNCTION_60_5();

  v6 = OUTLINED_FUNCTION_41_12();
  v1(v6);
  if (!OUTLINED_FUNCTION_32_7())
  {
    OUTLINED_FUNCTION_3_35();
    v7 = OUTLINED_FUNCTION_91_2();
    v8(v7);
  }

  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_24_19();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_58_4();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

uint64_t sub_1C9628E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = a3(0);
  OUTLINED_FUNCTION_7(v7);
  OUTLINED_FUNCTION_19_2();
  return a4(v4 + v8, a1);
}

uint64_t sub_1C9628E9C()
{
  v1 = OUTLINED_FUNCTION_14_29();
  v2 = type metadata accessor for NotificationSubscription(v1);
  OUTLINED_FUNCTION_9(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = type metadata accessor for PrecipitationNotificationConfiguration(0);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_72_2();
  return sub_1C961E774(v0 + v4, v0 + v6);
}

uint64_t sub_1C9628F58()
{
  v0 = OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_9(v0);
  v1 = type metadata accessor for PrecipitationNotificationConfiguration(0);
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_69_4();
  v2 = OUTLINED_FUNCTION_14_0();
  return sub_1C9621248(v2, v3, v4, v5);
}

uint64_t objectdestroy_71Tm()
{
  v1 = (type metadata accessor for NotificationSubscription(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v24 = *(*v1 + 64);
  type metadata accessor for PrecipitationNotificationConfiguration(0);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 80);
  v25 = *(v6 + 64);
  v26 = v0;

  v7 = v0 + v3 + v1[7];

  v8 = type metadata accessor for Location(0);
  v9 = *(v8 + 20);
  v10 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  v12 = *(v11 + 8);
  v13 = v11 + 8;
  v12(v7 + v9, v10);
  v14 = *(v8 + 24);
  v15 = sub_1C96A4A54();
  if (!OUTLINED_FUNCTION_21_4(v7 + v14))
  {
    OUTLINED_FUNCTION_7_4();
    (*(v16 + 8))(v7 + v14, v15);
  }

  OUTLINED_FUNCTION_38_7();
  OUTLINED_FUNCTION_37_10();
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_83_1();
  type metadata accessor for NotificationSubscription.Location(0);
  OUTLINED_FUNCTION_80_2();

  v17 = OUTLINED_FUNCTION_21_25();
  (v12)(v17);
  if (!OUTLINED_FUNCTION_56_4())
  {
    OUTLINED_FUNCTION_7_4();
    (*(v18 + 8))(v7 + v13, v15);
  }

  v19 = (v3 + v24 + v5) & ~v5;
  OUTLINED_FUNCTION_38_7();
  OUTLINED_FUNCTION_37_10();
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_7_4();
  v21 = *(v20 + 8);
  v21(v26 + v19, v15);
  OUTLINED_FUNCTION_89_2();
  v21(v26 + v19 + v22, v15);

  return MEMORY[0x1EEE6BDD0](v26, v19 + v25, v2 | v5 | 7);
}

uint64_t sub_1C96292B4()
{
  v0 = OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_9(v0);
  v1 = type metadata accessor for PrecipitationNotificationConfiguration(0);
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_69_4();
  v2 = OUTLINED_FUNCTION_14_0();
  return sub_1C9621708(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_56_4()
{
  v4 = v2 + *(v0 + 24);

  return __swift_getEnumTagSinglePayload(v4, 1, v1);
}

uint64_t OUTLINED_FUNCTION_64_5()
{

  return sub_1C96A4DF4();
}

uint64_t OUTLINED_FUNCTION_74_3()
{
}

void OUTLINED_FUNCTION_77_2()
{
  v3 = *(v1 + *(v0 + 44));
}

uint64_t OUTLINED_FUNCTION_80_2()
{
}

uint64_t OUTLINED_FUNCTION_81_1()
{
}

uint64_t OUTLINED_FUNCTION_102_2()
{

  return type metadata accessor for NotificationSubscription(0);
}

uint64_t OUTLINED_FUNCTION_103_2()
{

  return type metadata accessor for NotificationSubscription(0);
}

uint64_t OUTLINED_FUNCTION_104_2()
{

  return sub_1C96A4A54();
}

void OUTLINED_FUNCTION_105_2()
{
  v3 = *(v1 + *(v0 + 44));
}

uint64_t OUTLINED_FUNCTION_106_2()
{
}

uint64_t OUTLINED_FUNCTION_107_2(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_1C96A6134();
}

_BYTE *_s8StubDataVwst(_BYTE *result, int a2, int a3)
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

uint64_t LanguageConfiguration.language.getter()
{
  v1 = *v0;
  sub_1C96A53C4();
  return v1;
}

double LanguageConfiguration.reportWeather.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  sub_1C96A53C4();
  return result;
}

uint64_t LanguageConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7400, &qword_1C96BE298);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = *(v1 + 24);
  v13 = *(v1 + 16);
  v14 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9475FB4();
  sub_1C96A7F54();
  LOBYTE(v16) = 0;
  v10 = v15;
  sub_1C96A7D24();
  if (!v10)
  {
    v16 = v13;
    v17 = v14;
    v18 = 1;
    sub_1C95D9D20();
    sub_1C96A53C4();
    sub_1C96A7D74();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C96298BC(uint64_t a1)
{
  v1 = sub_1C96A7BE4();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C9629934@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C96298BC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C9629964@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C9476010(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C9629990@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C96298BC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C96299B8(uint64_t a1)
{
  v2 = sub_1C9475FB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C96299F4(uint64_t a1)
{
  v2 = sub_1C9475FB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static LanguageConfiguration.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v6 || (sub_1C96A7DE4() & 1) != 0)
  {
    v7 = v2 == v4 && v3 == v5;
    if (v7 || (sub_1C96A7DE4() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_1C9629ADC()
{
  result = qword_1EC3A7408;
  if (!qword_1EC3A7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7408);
  }

  return result;
}

void *StubUbiquitousKeyValueStoreProvider.syncError.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_0_89(a1);
  v2 = *(v1 + 96);
  v3 = v2;
  return v2;
}

void StubUbiquitousKeyValueStoreProvider.syncError.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t StubUbiquitousKeyValueStoreProvider.__allocating_init(keyValueStore:)(__int128 *a1)
{
  v2 = swift_allocObject();
  StubUbiquitousKeyValueStoreProvider.init(keyValueStore:)(a1);
  return v2;
}

void *StubUbiquitousKeyValueStoreProvider.init(keyValueStore:)(__int128 *a1)
{
  v3 = type metadata accessor for iCloudStatusProvider();
  v4 = swift_allocObject();
  v1[10] = v3;
  v1[11] = &protocol witness table for iCloudStatusProvider;
  v1[7] = v4;
  v1[12] = 0;
  sub_1C94924FC(a1, (v1 + 2));
  return v1;
}

uint64_t StubUbiquitousKeyValueStoreProvider.synchronizeImmediately()(uint64_t a1)
{
  OUTLINED_FUNCTION_0_89(a1);
  v2 = *(v1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6630, &qword_1C96BE4C0);
  swift_allocObject();
  v3 = v2;
  return sub_1C96A56A4();
}

uint64_t StubUbiquitousKeyValueStoreProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return v0;
}

uint64_t StubUbiquitousKeyValueStoreProvider.__deallocating_deinit()
{
  StubUbiquitousKeyValueStoreProvider.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

uint64_t sub_1C9629EB4()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7410, &qword_1C96BE568);
  v10[15] = 0;
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7418, &qword_1C96BE570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7420, &qword_1C96BE578);
  *(swift_allocObject() + 16) = xmmword_1C96AC330;
  v10[14] = 0;
  sub_1C96A4F44();
  v10[13] = 1;
  sub_1C96A4F44();
  v10[12] = 2;
  sub_1C96A4F44();
  v10[11] = 3;
  sub_1C96A4F44();
  sub_1C962A2FC();
  result = sub_1C96A4F54();
  qword_1EDB7AA98 = result;
  return result;
}

_BYTE *_s18WeatherEnvironmentVwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C962A2FC()
{
  result = qword_1EDB7A1A8[0];
  if (!qword_1EDB7A1A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7A1A8);
  }

  return result;
}

uint64_t sub_1C962A43C()
{
  v0 = sub_1C96A6154();
  __swift_allocate_value_buffer(v0, qword_1EDB7CFD0);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_2_61();
  OUTLINED_FUNCTION_4_57();
  return sub_1C96A6144();
}

uint64_t sub_1C962A4C4()
{
  v0 = sub_1C96A6154();
  __swift_allocate_value_buffer(v0, qword_1EC3A7460);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_2_61();
  OUTLINED_FUNCTION_4_57();
  return sub_1C96A6144();
}

uint64_t sub_1C962A59C()
{
  v0 = sub_1C96A6154();
  __swift_allocate_value_buffer(v0, qword_1EDB7AC68);
  OUTLINED_FUNCTION_2_19();
  return OUTLINED_FUNCTION_7_39();
}

uint64_t sub_1C962A898()
{
  v0 = sub_1C96A6154();
  __swift_allocate_value_buffer(v0, qword_1EDB77E40);
  __swift_project_value_buffer(v0, qword_1EDB77E40);
  return sub_1C96A6144();
}

uint64_t sub_1C962A93C()
{
  v0 = sub_1C96A6154();
  __swift_allocate_value_buffer(v0, qword_1EDB77E18);
  __swift_project_value_buffer(v0, qword_1EDB77E18);
  return sub_1C96A6144();
}

uint64_t sub_1C962AA28()
{
  v0 = sub_1C96A6154();
  __swift_allocate_value_buffer(v0, qword_1EDB7CFB0);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_2_61();
  OUTLINED_FUNCTION_4_57();
  return sub_1C96A6144();
}

uint64_t StubCoreRoutineDataManager.__allocating_init()()
{
  v0 = swift_allocObject();
  StubCoreRoutineDataManager.init()();
  return v0;
}

uint64_t static LocationMetadataStore.preferredCacheSize.getter@<X0>(void *a1@<X8>)
{
  *a1 = 32;
  v2 = *MEMORY[0x1E69D6298];
  sub_1C96A64E4();
  OUTLINED_FUNCTION_8_1();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t LocationMetadataStore.configuredCountryCode.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  sub_1C96A53C4();
  return v1;
}

uint64_t LocationMetadataStore.configuredCountryCode.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t LocationMetadataStore.deinit()
{
  sub_1C96A3D04();
  sub_1C96A5524();

  if (v2 >= 2)
  {
    sub_1C96A64A4();
    sub_1C962AE14(v2);
  }

  return v0;
}

uint64_t sub_1C962AE14(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t LocationMetadataStore.__deallocating_deinit()
{
  LocationMetadataStore.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t LocationMetadataStore.__allocating_init(database:configuredCountryCode:)()
{
  v0 = swift_allocObject();
  LocationMetadataStore.init(database:configuredCountryCode:)();
  return v0;
}

Swift::Void __swiftcall LocationMetadataStore.purgeExpiredCountryCodes()()
{
  OUTLINED_FUNCTION_103();
  sub_1C96A61C4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_62();
  sub_1C96A5534();
  if (v38[0])
  {
    if (qword_1EDB7CF88 != -1)
    {
      OUTLINED_FUNCTION_0_9(&qword_1EDB7CF88);
    }

    v5 = sub_1C96A6154();
    __swift_project_value_buffer(v5, qword_1EDB7CF90);
    v6 = sub_1C96A6134();
    v7 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_21(v7))
    {
      v8 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_4_58(v8);
      OUTLINED_FUNCTION_69();
      _os_log_impl(v9, v10, v11, v12, v38[0], 2u);
      OUTLINED_FUNCTION_6_48();
    }

    sub_1C96A5954();
    sub_1C96A5944();
    sub_1C96A6334();
    v38[3] = v3;
    v38[4] = MEMORY[0x1E69D6130];
    __swift_allocate_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_11_34();
    v13();
    OUTLINED_FUNCTION_9_36();
    OUTLINED_FUNCTION_26_15();
    if (v0)
    {

      v14 = OUTLINED_FUNCTION_8_40();
      v15(v14);
      v16 = OUTLINED_FUNCTION_7_40();
      v17(v16);
      v18 = v0;
      v19 = sub_1C96A6134();
      v20 = sub_1C96A7684();

      if (os_log_type_enabled(v19, v20))
      {
        swift_slowAlloc();
        v21 = OUTLINED_FUNCTION_62();
        v38[0] = v21;
        OUTLINED_FUNCTION_25_20(4.8751e-34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380, &qword_1C96AA2F0);
        v22 = sub_1C96A70A4();
        v24 = sub_1C9484164(v22, v23, v38);

        *(v1 + 4) = v24;
        OUTLINED_FUNCTION_16_29(&dword_1C945E000, v25, v26, "Failed to purge expired country codes, error=%{public}s");
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        OUTLINED_FUNCTION_12_5();
        OUTLINED_FUNCTION_26();
      }

      else
      {
      }
    }

    else
    {
      v27 = OUTLINED_FUNCTION_8_40();
      v28(v27);

      v29 = sub_1C96A6134();
      v30 = sub_1C96A76A4();
      if (OUTLINED_FUNCTION_21(v30))
      {
        v31 = OUTLINED_FUNCTION_29();
        *v31 = 0;
        OUTLINED_FUNCTION_69();
        _os_log_impl(v32, v33, v34, v35, v31, 2u);
        OUTLINED_FUNCTION_12_5();
      }

      v36 = OUTLINED_FUNCTION_7_40();
      v37(v36);
    }
  }

  OUTLINED_FUNCTION_101();
}

void __swiftcall LocationMetadataStore.queryDisplayRegion(for:)(WeatherCore::LocationDisplayRegion_optional *__return_ptr retstr, Swift::String a2)
{
  OUTLINED_FUNCTION_17_5();
  v2 = sub_1C96A6504();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  (*(v4 + 104))(v7 - v6, *MEMORY[0x1E69D62C0], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6750, &qword_1C96B8230);
  sub_1C96A6534();
  (*(v4 + 8))(v8, v2);
}

void *sub_1C962B3BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_1C96A4A54();
  v9 = *(v8 - 8);
  v63 = v8;
  v64 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v59 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60, &qword_1C96AAA30);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v55 - v19;
  v21 = sub_1C96A61C4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  result = sub_1C96A5534();
  if (!v74)
  {
    goto LABEL_21;
  }

  v65 = a4;
  v66 = v74;
  sub_1C96A6314();
  v77 = MEMORY[0x1E69E6158];
  v78 = MEMORY[0x1E69D62D8];
  v61 = a2;
  v74 = a2;
  v75 = a3;
  sub_1C96A53C4();
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v74);
  v26 = sub_1C96A63E4();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v26);
  v27 = v80;
  sub_1C96A62D4();
  if (v27)
  {

    sub_1C94DDC44(v20);
    (*(v22 + 8))(v24, v21);
    v80 = 0;
LABEL_4:
    if (qword_1EDB7CF88 != -1)
    {
      swift_once();
    }

    v28 = sub_1C96A6154();
    __swift_project_value_buffer(v28, qword_1EDB7CF90);
    sub_1C96A53C4();
    v29 = sub_1C96A6134();
    v30 = sub_1C96A76A4();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v61;
    if (v31)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v74 = v34;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_1C9484164(v32, a3, &v74);
      _os_log_impl(&dword_1C945E000, v29, v30, "No displayRegion found for key: %{private,mask.hash}s", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1CCA8E3D0](v34, -1, -1);
      MEMORY[0x1CCA8E3D0](v33, -1, -1);
    }

    v35 = 0uLL;
    a4 = v65;
    goto LABEL_22;
  }

  v80 = 0;

  sub_1C94DDC44(v20);
  (*(v22 + 8))(v24, v21);
  if (!v68)
  {
    goto LABEL_4;
  }

  v36 = v69;
  v57 = v70;
  sub_1C96A6354();
  v37 = v63;
  result = __swift_getEnumTagSinglePayload(v17, 1, v63);
  if (result == 1)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1C96A5954();
  v38 = v62;
  sub_1C96A5944();
  v39 = sub_1C96A4994();
  v40 = *(v64 + 8);
  v40(v38, v37);
  v40(v17, v37);
  if (v39)
  {
    result = sub_1C96A6354();
    if (v68)
    {
      v74 = v68;
      v75 = v69;
      v76 = v70;
      v77 = v71;
      v78 = v72;
      v79 = v73;
      sub_1C95B47A8(v67);

      v41 = v67[1];
      v42 = v65;
      *v65 = v67[0];
      v42[1] = v41;
      *(v42 + 32) = 0;
      return result;
    }

    goto LABEL_24;
  }

  v62 = v40;
  if (qword_1EDB7CF88 != -1)
  {
    swift_once();
  }

  v43 = sub_1C96A6154();
  __swift_project_value_buffer(v43, qword_1EDB7CF90);
  sub_1C96A53C4();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  v44 = sub_1C96A6134();
  v45 = sub_1C96A76A4();

  if (!os_log_type_enabled(v44, v45))
  {

    a4 = v65;
    goto LABEL_20;
  }

  v56 = v45;
  v46 = swift_slowAlloc();
  v55 = swift_slowAlloc();
  v74 = v55;
  *v46 = 141558787;
  *(v46 + 4) = 1752392040;
  *(v46 + 12) = 2081;
  *(v46 + 14) = sub_1C9484164(v61, a3, &v74);
  *(v46 + 22) = 2160;
  *(v46 + 24) = 1752392040;
  *(v46 + 32) = 2081;
  v47 = v59;
  sub_1C96A6354();
  v48 = v47;
  LODWORD(v47) = __swift_getEnumTagSinglePayload(v47, 1, v37);

  v61 = v36;

  if (v47 != 1)
  {
    v49 = v58;
    (*(v64 + 32))(v58, v48, v37);
    sub_1C94B7608(&qword_1EDB7CC50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v50 = sub_1C96A7DB4();
    v52 = v51;
    (v62)(v49, v37);
    v53 = sub_1C9484164(v50, v52, &v74);

    *(v46 + 34) = v53;
    _os_log_impl(&dword_1C945E000, v44, v56, "DisplayRegion expired. id=%{private,mask.hash}s, expires=%{private,mask.hash}s", v46, 0x2Au);
    v54 = v55;
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v54, -1, -1);
    MEMORY[0x1CCA8E3D0](v46, -1, -1);

    a4 = v65;
LABEL_20:
    LocationMetadataStore.purgeExpiredDisplayRegions()();

LABEL_21:
    v35 = 0uLL;
LABEL_22:
    *a4 = v35;
    a4[1] = v35;
    *(a4 + 32) = 1;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

Swift::Void __swiftcall LocationMetadataStore.purgeExpiredDisplayRegions()()
{
  OUTLINED_FUNCTION_103();
  sub_1C96A61C4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_62();
  sub_1C96A5534();
  if (v38[0])
  {
    if (qword_1EDB7CF88 != -1)
    {
      OUTLINED_FUNCTION_0_9(&qword_1EDB7CF88);
    }

    v5 = sub_1C96A6154();
    __swift_project_value_buffer(v5, qword_1EDB7CF90);
    v6 = sub_1C96A6134();
    v7 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_21(v7))
    {
      v8 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_4_58(v8);
      OUTLINED_FUNCTION_69();
      _os_log_impl(v9, v10, v11, v12, v38[0], 2u);
      OUTLINED_FUNCTION_6_48();
    }

    sub_1C96A5954();
    sub_1C96A5944();
    sub_1C96A6334();
    v38[3] = v3;
    v38[4] = MEMORY[0x1E69D6130];
    __swift_allocate_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_11_34();
    v13();
    OUTLINED_FUNCTION_9_36();
    OUTLINED_FUNCTION_26_15();
    if (v0)
    {

      v14 = OUTLINED_FUNCTION_8_40();
      v15(v14);
      v16 = OUTLINED_FUNCTION_7_40();
      v17(v16);
      v18 = v0;
      v19 = sub_1C96A6134();
      v20 = sub_1C96A7684();

      if (os_log_type_enabled(v19, v20))
      {
        swift_slowAlloc();
        v21 = OUTLINED_FUNCTION_62();
        v38[0] = v21;
        OUTLINED_FUNCTION_25_20(4.8751e-34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380, &qword_1C96AA2F0);
        v22 = sub_1C96A70A4();
        v24 = sub_1C9484164(v22, v23, v38);

        *(v1 + 4) = v24;
        OUTLINED_FUNCTION_16_29(&dword_1C945E000, v25, v26, "Failed to purge expired display regions, error=%{public}s");
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        OUTLINED_FUNCTION_12_5();
        OUTLINED_FUNCTION_26();
      }

      else
      {
      }
    }

    else
    {
      v27 = OUTLINED_FUNCTION_8_40();
      v28(v27);

      v29 = sub_1C96A6134();
      v30 = sub_1C96A76A4();
      if (OUTLINED_FUNCTION_21(v30))
      {
        v31 = OUTLINED_FUNCTION_29();
        *v31 = 0;
        OUTLINED_FUNCTION_69();
        _os_log_impl(v32, v33, v34, v35, v31, 2u);
        OUTLINED_FUNCTION_12_5();
      }

      v36 = OUTLINED_FUNCTION_7_40();
      v37(v36);
    }
  }

  OUTLINED_FUNCTION_101();
}

Swift::tuple_isAvailable_Bool_String_optional __swiftcall LocationMetadataStore.queryAddress(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_17_5();
  v2 = sub_1C96A6504();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_62();
  v6 = OUTLINED_FUNCTION_28_19();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7528, &qword_1C96BE670);
  sub_1C96A6534();
  (*(v4 + 8))(v1, v2);
  v8 = v11;
  v9 = v12;
  v10 = v13;
  result._1.value._object = v10;
  result._1.value._countAndFlagsBits = v9;
  result.isAvailable = v8;
  return result;
}

void sub_1C962C114(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v71 = a4;
  v7 = sub_1C96A4A54();
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v65 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60, &qword_1C96AAA30);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v58 - v19;
  v21 = sub_1C96A61C4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  sub_1C96A5534();
  if (v72)
  {
    v70 = v72;
    sub_1C96A6314();
    v73 = MEMORY[0x1E69E6158];
    v74 = MEMORY[0x1E69D62D8];
    v67 = a2;
    *&v72 = a2;
    *(&v72 + 1) = a3;
    sub_1C96A53C4();
    sub_1C96A6224();
    __swift_destroy_boxed_opaque_existential_1Tm(&v72);
    v25 = sub_1C96A63E4();
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v25);
    v26 = v79;
    sub_1C96A62D4();
    if (v26)
    {

      sub_1C94DDC44(v20);
      (*(v22 + 8))(v24, v21);
      v79 = 0;
LABEL_4:
      v27 = v67;
      if (qword_1EDB7CF88 != -1)
      {
        swift_once();
      }

      v28 = sub_1C96A6154();
      __swift_project_value_buffer(v28, qword_1EDB7CF90);
      sub_1C96A53C4();
      v29 = sub_1C96A6134();
      v30 = sub_1C96A76A4();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *&v72 = v32;
        *v31 = 141558275;
        *(v31 + 4) = 1752392040;
        *(v31 + 12) = 2081;
        *(v31 + 14) = sub_1C9484164(v27, a3, &v72);
        _os_log_impl(&dword_1C945E000, v29, v30, "No address found for key: %{private,mask.hash}s", v31, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        MEMORY[0x1CCA8E3D0](v32, -1, -1);
        MEMORY[0x1CCA8E3D0](v31, -1, -1);
      }

      goto LABEL_9;
    }

    v79 = 0;

    sub_1C94DDC44(v20);
    (*(v22 + 8))(v24, v21);
    v40 = v75;
    if (!v75)
    {
      goto LABEL_4;
    }

    v62 = v76;
    v63 = v77;
    v61 = v78;
    sub_1C96A6354();
    v41 = v68;
    if (__swift_getEnumTagSinglePayload(v17, 1, v68) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1C96A5954();
      sub_1C96A5944();
      v42 = sub_1C96A4994();
      v43 = *(v69 + 8);
      v43(v12, v41);
      v43(v17, v41);
      if ((v42 & 1) == 0)
      {
        v59 = v43;
        if (qword_1EDB7CF88 != -1)
        {
          swift_once();
        }

        v45 = sub_1C96A6154();
        __swift_project_value_buffer(v45, qword_1EDB7CF90);
        sub_1C96A53C4();
        sub_1C96A3D04();
        sub_1C96A3D04();
        sub_1C96A3D04();
        sub_1C96A3D04();
        v46 = sub_1C96A6134();
        v47 = sub_1C96A76A4();

        v60 = v47;
        if (os_log_type_enabled(v46, v47))
        {
          v58 = v46;
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *&v72 = v49;
          *v48 = 141558787;
          *(v48 + 4) = 1752392040;
          *(v48 + 12) = 2081;
          *(v48 + 14) = sub_1C9484164(v67, a3, &v72);
          *(v48 + 22) = 2160;
          *(v48 + 24) = 1752392040;
          *(v48 + 32) = 2081;
          v50 = v65;
          sub_1C96A6354();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);

          v67 = v40;

          if (EnumTagSinglePayload == 1)
          {
LABEL_29:
            __break(1u);
            return;
          }

          v52 = v64;
          (*(v69 + 32))(v64, v50, v41);
          sub_1C94B7608(&qword_1EDB7CC50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
          v53 = sub_1C96A7DB4();
          v55 = v54;
          v59(v52, v41);
          v56 = sub_1C9484164(v53, v55, &v72);

          *(v48 + 34) = v56;
          v57 = v58;
          _os_log_impl(&dword_1C945E000, v58, v60, "Address expired. id=%{private,mask.hash}s, expires=%{private,mask.hash}s", v48, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x1CCA8E3D0](v49, -1, -1);
          MEMORY[0x1CCA8E3D0](v48, -1, -1);
        }

        else
        {
        }

        LocationMetadataStore.purgeExpiredAddresses()();

LABEL_9:

        v33 = v71;
        *v71 = 0;
        *(v33 + 1) = 0;
        *(v33 + 2) = 0;
        return;
      }

      sub_1C96A6354();
      if (v75 != 2)
      {
        v44 = v71;
        *v71 = v75 & 1;
        sub_1C96A6354();

        *(v44 + 8) = v72;
        return;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  if (qword_1EDB7CF88 != -1)
  {
    swift_once();
  }

  v34 = sub_1C96A6154();
  __swift_project_value_buffer(v34, qword_1EDB7CF90);
  sub_1C96A53C4();
  v35 = sub_1C96A6134();
  v36 = sub_1C96A76A4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v72 = v38;
    *v37 = 141558275;
    *(v37 + 4) = 1752392040;
    *(v37 + 12) = 2081;
    *(v37 + 14) = sub_1C9484164(a2, a3, &v72);
    _os_log_impl(&dword_1C945E000, v35, v36, "Store has no addresses. Skipping look up of key: %{private,mask.hash}s", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1CCA8E3D0](v38, -1, -1);
    MEMORY[0x1CCA8E3D0](v37, -1, -1);
  }

  v39 = v71;
  *v71 = 0;
  *(v39 + 1) = 0;
  *(v39 + 2) = 0;
}

Swift::Void __swiftcall LocationMetadataStore.purgeExpiredAddresses()()
{
  OUTLINED_FUNCTION_103();
  sub_1C96A61C4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_62();
  sub_1C96A5534();
  if (v38[0])
  {
    if (qword_1EDB7CF88 != -1)
    {
      OUTLINED_FUNCTION_0_9(&qword_1EDB7CF88);
    }

    v5 = sub_1C96A6154();
    __swift_project_value_buffer(v5, qword_1EDB7CF90);
    v6 = sub_1C96A6134();
    v7 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_21(v7))
    {
      v8 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_4_58(v8);
      OUTLINED_FUNCTION_69();
      _os_log_impl(v9, v10, v11, v12, v38[0], 2u);
      OUTLINED_FUNCTION_6_48();
    }

    sub_1C96A5954();
    sub_1C96A5944();
    sub_1C96A6334();
    v38[3] = v3;
    v38[4] = MEMORY[0x1E69D6130];
    __swift_allocate_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_11_34();
    v13();
    OUTLINED_FUNCTION_9_36();
    OUTLINED_FUNCTION_26_15();
    if (v0)
    {

      v14 = OUTLINED_FUNCTION_8_40();
      v15(v14);
      v16 = OUTLINED_FUNCTION_7_40();
      v17(v16);
      v18 = v0;
      v19 = sub_1C96A6134();
      v20 = sub_1C96A7684();

      if (os_log_type_enabled(v19, v20))
      {
        swift_slowAlloc();
        v21 = OUTLINED_FUNCTION_62();
        v38[0] = v21;
        OUTLINED_FUNCTION_25_20(4.8751e-34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380, &qword_1C96AA2F0);
        v22 = sub_1C96A70A4();
        v24 = sub_1C9484164(v22, v23, v38);

        *(v1 + 4) = v24;
        OUTLINED_FUNCTION_16_29(&dword_1C945E000, v25, v26, "Failed to purge expired addresses, error=%{public}s");
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        OUTLINED_FUNCTION_12_5();
        OUTLINED_FUNCTION_26();
      }

      else
      {
      }
    }

    else
    {
      v27 = OUTLINED_FUNCTION_8_40();
      v28(v27);

      v29 = sub_1C96A6134();
      v30 = sub_1C96A76A4();
      if (OUTLINED_FUNCTION_21(v30))
      {
        v31 = OUTLINED_FUNCTION_29();
        *v31 = 0;
        OUTLINED_FUNCTION_69();
        _os_log_impl(v32, v33, v34, v35, v31, 2u);
        OUTLINED_FUNCTION_12_5();
      }

      v36 = OUTLINED_FUNCTION_7_40();
      v37(v36);
    }
  }

  OUTLINED_FUNCTION_101();
}

void LocationMetadataStore.saveCountryCode(_:for:)()
{
  OUTLINED_FUNCTION_103();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v24 - v17;
  sub_1C96A5534();
  if (v30)
  {
    v24[1] = sub_1C96A6304();
    v25 = v8;

    swift_beginAccess();
    v19 = *(v0 + 56);
    v20 = *(v0 + 64);
    sub_1C96A5954();
    OUTLINED_FUNCTION_66();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A5944();
    sub_1C96A4974();
    (*(v11 + 8))(v15, v9);
    v26 = sub_1C962DA04(v4, v2, v25, v6, v19, v20, v18);
    v27 = v21;
    v28 = v22;
    v29 = v23;
    sub_1C96A62A4();
  }

  OUTLINED_FUNCTION_101();
}

Swift::Void __swiftcall LocationMetadataStore.saveDisplayRegion(_:for:)(WeatherCore::LocationDisplayRegion _, Swift::String a2)
{
  v5 = v2;
  OUTLINED_FUNCTION_17_5();
  v6 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  v16 = *v4;
  v19 = v4[1];
  v20 = v16;
  sub_1C96A5534();
  if (v23)
  {
    sub_1C96A6304();

    v22 = v19;
    v21 = v20;
    sub_1C96A5954();
    OUTLINED_FUNCTION_66();
    sub_1C96A53C4();
    sub_1C96A5944();
    sub_1C96A4974();
    (*(v8 + 8))(v12, v6);
    *&v21 = sub_1C95FB13C(v3, v5, &v21, v15);
    *(&v21 + 1) = v17;
    *&v22 = v18;
    sub_1C96A62A4();
  }
}

Swift::Void __swiftcall LocationMetadataStore.saveAddress(_:for:)(Swift::String_optional _, Swift::String a2)
{
  OUTLINED_FUNCTION_103();
  v3 = v2;
  v30 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  if (qword_1EDB7CF88 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_1EDB7CF88);
  }

  v19 = sub_1C96A6154();
  __swift_project_value_buffer(v19, qword_1EDB7CF90);
  OUTLINED_FUNCTION_66();
  sub_1C96A53C4();
  v20 = sub_1C96A6134();
  v21 = sub_1C96A76A4();

  if (os_log_type_enabled(v20, v21))
  {
    swift_slowAlloc();
    v28 = v9;
    v29 = v11;
    v22 = v6;
    v23 = OUTLINED_FUNCTION_62();
    v31[0] = v23;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    *(v8 + 14) = sub_1C9484164(v30, v3, v31);
    _os_log_impl(&dword_1C945E000, v20, v21, "Save new address. id=%{private,mask.hash}s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v6 = v22;
    OUTLINED_FUNCTION_26();
    v9 = v28;
    v11 = v29;
    OUTLINED_FUNCTION_26();
  }

  sub_1C96A5534();
  if (v31[4])
  {
    sub_1C96A6304();

    sub_1C96A5954();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A5944();
    sub_1C96A4974();
    (*(v11 + 8))(v15, v9);
    v31[0] = sub_1C9692AE4(v8, v6, v30, v3, v18);
    v31[1] = v24;
    v31[2] = v25;
    v31[3] = v26;
    sub_1C96A62A4();
  }

  OUTLINED_FUNCTION_101();
}

Swift::Void __swiftcall LocationMetadataStore.removeAllAddresses()()
{
  if (qword_1EDB7CF88 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_1EDB7CF88);
  }

  v0 = sub_1C96A6154();
  __swift_project_value_buffer(v0, qword_1EDB7CF90);
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_21(v2))
  {
    v3 = OUTLINED_FUNCTION_29();
    *v3 = 0;
    OUTLINED_FUNCTION_69();
    _os_log_impl(v4, v5, v6, v7, v3, 2u);
    OUTLINED_FUNCTION_26();
  }

  sub_1C96A5534();
  v8 = v9;
  if (v9)
  {
    sub_1C96A62F4();

    v8 = 0;
    sub_1C96A6274();
  }

  sub_1C96A5534();
  if (v9)
  {
    sub_1C96A6324();
    OUTLINED_FUNCTION_66();

    sub_1C96A6374();
    if (v8)
    {
    }
  }
}

uint64_t static LocationMetadataStore.location.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDB7E2C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A64D4();
  __swift_project_value_buffer(v2, qword_1EDB7BEB8);
  OUTLINED_FUNCTION_8_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t LocationMetadataStore.update(countryCode:for:)()
{
  OUTLINED_FUNCTION_17_5();
  sub_1C96A7544();
  v0 = MEMORY[0x1CCA8CB00](45, 0xE100000000000000);
  OUTLINED_FUNCTION_30_13(v8, v0, v1, v2, v3, v4, v5, v6, v7, 0);
  OUTLINED_FUNCTION_20_24();
  LocationMetadataStore.saveCountryCode(_:for:)();
}

uint64_t LocationMetadataStore.update(address:for:)()
{
  OUTLINED_FUNCTION_17_5();
  sub_1C96A7544();
  v0 = MEMORY[0x1CCA8CB00](45, 0xE100000000000000);
  OUTLINED_FUNCTION_30_13(v8, v0, v1, v2, v3, v4, v5, v6, v7, 0);
  v9.value._countAndFlagsBits = OUTLINED_FUNCTION_20_24();
  LocationMetadataStore.saveAddress(_:for:)(v9, v10);
}

unint64_t sub_1C962D9B0()
{
  result = qword_1EC3A7538;
  if (!qword_1EC3A7538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7538);
  }

  return result;
}

uint64_t sub_1C962DA04(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v56 = a6;
  v57 = a7;
  v54 = a3;
  v55 = a5;
  v52 = a2;
  v53 = a4;
  v51 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  v8 = OUTLINED_FUNCTION_7(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60, &unk_1C96AC540);
  v12 = OUTLINED_FUNCTION_7(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12_34();
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8, &unk_1C96AB090);
  v15 = OUTLINED_FUNCTION_7(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0, &unk_1C96AA6F0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  v21 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8, &unk_1C96AB0A0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  v24 = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v17);
  v28 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v17);
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v17);
  v34 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v17);
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  sub_1C96A6344();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68, &unk_1C96AC550);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70, &unk_1C96AB0B0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  sub_1C96A6344();
  v58 = v51;
  v59 = v52;
  sub_1C96A3D04();
  sub_1C96A6364();

  v44 = 0x766C6F7365726E75;
  if (v53)
  {
    v44 = v54;
  }

  v45 = 0xEC000000656C6261;
  if (v53)
  {
    v45 = v53;
  }

  v58 = v44;
  v59 = v45;
  sub_1C96A6364();

  v58 = v55;
  v59 = v56;
  sub_1C96A6364();

  v46 = sub_1C96A4A54();
  v47 = *(v46 - 8);
  v48 = v57;
  (*(v47 + 16))(v10, v57, v46);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v46);
  sub_1C96A6364();

  (*(v47 + 8))(v48, v46);
  return v24;
}

uint64_t sub_1C962DDFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001C96D5900 == a2;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C96D5920 == a2;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73657269707865 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C96A7DE4();

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

unint64_t sub_1C962DF5C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x73657269707865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C962DFE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v20 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7560, &unk_1C96BE900);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C962E9D4();
  sub_1C96A7F54();
  v22 = a2;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8, &unk_1C96AB0A0);
  OUTLINED_FUNCTION_7_41(&qword_1EC3A4B00);
  OUTLINED_FUNCTION_6_49();
  if (!v5)
  {
    v15 = a4;
    v16 = v19;
    v22 = v20;
    v21 = 1;
    OUTLINED_FUNCTION_6_49();
    v22 = v15;
    v21 = 2;
    OUTLINED_FUNCTION_6_49();
    v22 = v16;
    v21 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70, &unk_1C96AB0B0);
    OUTLINED_FUNCTION_7_41(&qword_1EC3A4DD8);
    sub_1C96A7D74();
  }

  return (*(v11 + 8))(v14, v9);
}

uint64_t sub_1C962E1D8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7550, &qword_1C96BE8F8);
  OUTLINED_FUNCTION_1();
  v44 = v3;
  v45 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60, &unk_1C96AC540);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12_34();
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8, &unk_1C96AB090);
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0, &unk_1C96AA6F0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  v15 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8, &unk_1C96AB0A0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  v46 = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v11);
  v21 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v11);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v11);
  v27 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v11);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v30 = sub_1C96A6344();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68, &unk_1C96AC550);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70, &unk_1C96AB0B0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_14_30();
  sub_1C96A6344();
  v38 = a1[3];
  v48 = a1;
  v39 = a1;
  v40 = v47;
  __swift_project_boxed_opaque_existential_1(v39, v38);
  sub_1C962E9D4();
  v41 = v49;
  sub_1C96A7F44();
  if (v41)
  {
  }

  else
  {
    v49 = v30;
    v50 = 0;
    OUTLINED_FUNCTION_5(&qword_1EC3A4B18, &qword_1EC3A4AD8, &unk_1C96AB0A0);
    OUTLINED_FUNCTION_3_49();

    v30 = v51;
    v50 = 1;
    OUTLINED_FUNCTION_3_49();

    v46 = v51;
    v50 = 2;
    OUTLINED_FUNCTION_3_49();

    v50 = 3;
    OUTLINED_FUNCTION_5(&qword_1EC3A4E00, &qword_1EC3A4D70, &unk_1C96AB0B0);
    sub_1C96A7CB4();
    (*(v44 + 8))(v40, v45);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  return v30;
}

uint64_t sub_1C962E6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C962DDFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C962E70C(uint64_t a1)
{
  v2 = sub_1C962E9D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C962E748(uint64_t a1)
{
  v2 = sub_1C962E9D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C962E784(uint64_t a1)
{
  v2 = sub_1C94DD910();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1C962E7D0(uint64_t a1)
{
  v2 = sub_1C94DD910();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1C962E81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C94DD910();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1C962E880@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C962E1D8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1C962E8D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94DD910();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1C962E91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C94DD910();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1C962E970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C94DD910();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

unint64_t sub_1C962E9D4()
{
  result = qword_1EC3A7558;
  if (!qword_1EC3A7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7558);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CountryCodeEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C962EB08()
{
  result = qword_1EC3A7568;
  if (!qword_1EC3A7568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7568);
  }

  return result;
}

unint64_t sub_1C962EB60()
{
  result = qword_1EC3A7570;
  if (!qword_1EC3A7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7570);
  }

  return result;
}

unint64_t sub_1C962EBB8()
{
  result = qword_1EC3A7578;
  if (!qword_1EC3A7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7578);
  }

  return result;
}

uint64_t dispatch thunk of PredictedLocationsNotificationsManagerType.processNotificationsForPredictedLocations()()
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

uint64_t dispatch thunk of PredictedLocationsNotificationsManagerType.reschedulePredictedLocationNotifications()()
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

uint64_t dispatch thunk of PredictedLocationsNotificationsManagerType.unschedulePredictedLocationNotifications()()
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

uint64_t dispatch thunk of PredictedLocationsNotificationsManagerType.decommission()()
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

uint64_t sub_1C962EFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_13_38();
  v12 = *(v11 + 24);
  v13 = *(v11 + 32);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15);
  v19 = a5(v9, v8, v17, v6, v5, v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v19;
}

Swift::OpaquePointer_optional __swiftcall SavedLocationsReader.fetchSavedLocations()()
{
  if (qword_1EDB7CFA8 != -1)
  {
    OUTLINED_FUNCTION_0_91(&qword_1EDB7CFA8);
  }

  v0 = sub_1C96A6154();
  __swift_project_value_buffer(v0, qword_1EDB7CFB0);
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_29();
    *v3 = 0;
    _os_log_impl(&dword_1C945E000, v1, v2, "About to fetch saved locations from the KVS.", v3, 2u);
    OUTLINED_FUNCTION_26();
  }

  v4 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_23_0();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7580, &qword_1C96BEA80);
  sub_1C96A5784();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  sub_1C96A3D04();
  v7 = v4;
  v8 = sub_1C96A55A4();
  sub_1C96A5644();

  v9 = sub_1C96A6134();
  v10 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v10))
  {
    v11 = OUTLINED_FUNCTION_29();
    *v11 = 0;
    _os_log_impl(&dword_1C945E000, v9, v10, "Waiting on semaphore signal from saved locations reading (from KVS)", v11, 2u);
    OUTLINED_FUNCTION_26();
  }

  sub_1C96A7824();
  swift_beginAccess();
  v12 = *(v5 + 16);
  sub_1C96A53C4();

  v14 = v12;
  result.value._rawValue = v14;
  result.is_nil = v13;
  return result;
}

uint64_t sub_1C962F348()
{
  v1 = v0;
  if (qword_1EDB7CFA8 != -1)
  {
    OUTLINED_FUNCTION_0_91(&qword_1EDB7CFA8);
  }

  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB7CFB0);
  v3 = sub_1C96A6134();
  v4 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v4))
  {
    v5 = OUTLINED_FUNCTION_29();
    *v5 = 0;
    _os_log_impl(&dword_1C945E000, v3, v4, "Attempting to fetch locations from the remote key value store", v5, 2u);
    OUTLINED_FUNCTION_26();
  }

  v6 = v1[5];
  v7 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v6);
  OUTLINED_FUNCTION_23_0();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7580, &qword_1C96BEA80);
  v10 = sub_1C95B8804(sub_1C9630E34, v8, v6, v9, v7);

  return v10;
}

uint64_t sub_1C962F4A8()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 64) = sub_1C962F348();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1C962F54C;

  return MEMORY[0x1EEE44EE0](v0 + 40);
}

uint64_t sub_1C962F54C()
{
  OUTLINED_FUNCTION_18();
  v5 = *v1;
  OUTLINED_FUNCTION_15();
  *v2 = v5;
  *(v5 + 80) = v0;

  if (v0)
  {
    v3 = sub_1C962F674;
  }

  else
  {

    v3 = sub_1C962F65C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C962F674()
{
  v19 = v0;

  if (qword_1EDB7CFA8 != -1)
  {
    OUTLINED_FUNCTION_0_91(&qword_1EDB7CFA8);
  }

  v1 = *(v0 + 80);
  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB7CFB0);
  v3 = v1;
  v4 = sub_1C96A6134();
  v5 = sub_1C96A7684();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136446466;
    swift_getErrorValue();
    v10 = sub_1C96A7E64();
    v12 = sub_1C9484164(v10, v11, &v18);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_1C945E000, v4, v5, "Error loading saved locations: %{public}s %@", v7, 0x16u);
    sub_1C9470AFC(v8, &qword_1EC3A5410, &qword_1C96ADAF0);
    OUTLINED_FUNCTION_26();
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  v15 = *(v0 + 8);
  v16 = MEMORY[0x1E69E7CC0];

  return v15(v16);
}

uint64_t SavedLocationsReader.fetchSyncedData(from:fallbackToLegacy:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90, &qword_1C96B31A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  sub_1C94D9448(a1, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v8) != 1)
  {
    OUTLINED_FUNCTION_1_65();
    sub_1C9630D7C(v3, v14, v19);
    if (qword_1EDB7CFA8 != -1)
    {
      OUTLINED_FUNCTION_0_91(&qword_1EDB7CFA8);
    }

    v20 = sub_1C96A6154();
    __swift_project_value_buffer(v20, qword_1EDB7CFB0);
    OUTLINED_FUNCTION_1_65();
    sub_1C9630B44(v14, v11, v21);
    v22 = sub_1C96A6134();
    v23 = sub_1C96A76A4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8, &unk_1C96BEA90);
      v25 = sub_1C96A6C84();
      OUTLINED_FUNCTION_2_63();
      sub_1C9630BA4(v11, v26);
      *(v24 + 4) = v25;
      _os_log_impl(&dword_1C945E000, v22, v23, "Successfully loaded non-legacy synced data with %ld locations.", v24, 0xCu);
      OUTLINED_FUNCTION_26();
    }

    else
    {
      OUTLINED_FUNCTION_2_63();
      sub_1C9630BA4(v11, v27);
    }

    OUTLINED_FUNCTION_1_65();
    sub_1C9630D7C(v14, a3, v28);
    goto LABEL_15;
  }

  sub_1C9470AFC(v3, &unk_1EC3A5F90, &qword_1C96B31A0);
  if ((a2 & 1) == 0)
  {
LABEL_21:
    v29 = 1;
    return __swift_storeEnumTagSinglePayload(a3, v29, 1, v8);
  }

  if (!sub_1C94D9920(a1))
  {
    if (qword_1EDB7CFA8 != -1)
    {
      OUTLINED_FUNCTION_0_91(&qword_1EDB7CFA8);
    }

    v30 = sub_1C96A6154();
    __swift_project_value_buffer(v30, qword_1EDB7CFB0);
    v31 = sub_1C96A6134();
    v32 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_7(v32))
    {
      v33 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_6_27(v33);
      OUTLINED_FUNCTION_39_0(&dword_1C945E000, v34, v32, "Could not load legacy data - returning nil");
      OUTLINED_FUNCTION_26();
    }

    goto LABEL_21;
  }

  if (qword_1EDB7CFA8 != -1)
  {
    OUTLINED_FUNCTION_0_91(&qword_1EDB7CFA8);
  }

  v15 = sub_1C96A6154();
  __swift_project_value_buffer(v15, qword_1EDB7CFB0);
  v16 = sub_1C96A6134();
  v17 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v17))
  {
    v18 = OUTLINED_FUNCTION_29();
    *v18 = 0;
    _os_log_impl(&dword_1C945E000, v16, v17, "Falling back to legacy data to build the synced data", v18, 2u);
    OUTLINED_FUNCTION_26();
  }

  SyncedData.init(locationDataModels:)();
LABEL_15:
  v29 = 0;
  return __swift_storeEnumTagSinglePayload(a3, v29, 1, v8);
}

uint64_t sub_1C962FBE8(uint64_t a1)
{
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A60E0, &qword_1C96ADC88);
  sub_1C953DD34();
  v2 = sub_1C96A7204();
  if (!sub_1C9554388(v2, a1))
  {
    if (qword_1EDB7CFA8 != -1)
    {
      swift_once();
    }

    v3 = sub_1C96A6154();
    __swift_project_value_buffer(v3, qword_1EDB7CFB0);
    sub_1C96A53C4();
    sub_1C96A53C4();
    v4 = sub_1C96A6134();
    v5 = sub_1C96A76A4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 141558787;
      *(v6 + 4) = 1752392040;
      *(v6 + 12) = 2081;
      v8 = type metadata accessor for LocationDataModel(0);
      v9 = MEMORY[0x1CCA8CC40](a1, v8);
      v11 = sub_1C9484164(v9, v10, &v16);

      *(v6 + 14) = v11;
      *(v6 + 22) = 2160;
      *(v6 + 24) = 1752392040;
      *(v6 + 32) = 2081;
      v12 = MEMORY[0x1CCA8CC40](v2, v8);
      v14 = sub_1C9484164(v12, v13, &v16);

      *(v6 + 34) = v14;
      _os_log_impl(&dword_1C945E000, v4, v5, "Just uniquified locations. Original locations=%{private,mask.hash}s. Unique locations=%{private,mask.hash}s", v6, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v7, -1, -1);
      MEMORY[0x1CCA8E3D0](v6, -1, -1);
    }
  }

  return v2;
}

uint64_t sub_1C962FE38@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[10];
  v7 = a2[11];
  __swift_project_boxed_opaque_existential_1(a2 + 7, v6);
  (*(v7 + 8))(a1, v6, v7);
  if (v3)
  {
    if (qword_1EDB7D010 != -1)
    {
      swift_once();
    }

    v8 = sub_1C96A6154();
    __swift_project_value_buffer(v8, qword_1EDB7D018);
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

uint64_t sub_1C96300F0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[10];
  v7 = a2[11];
  __swift_project_boxed_opaque_existential_1(a2 + 7, v6);
  (*(v7 + 16))(a1, v6, v7);
  if (v3)
  {
    if (qword_1EDB7CFA8 != -1)
    {
      swift_once();
    }

    v8 = sub_1C96A6154();
    __swift_project_value_buffer(v8, qword_1EDB7CFB0);
    sub_1C9484328(a1, v26);
    v9 = v3;
    v10 = sub_1C96A6134();
    v11 = sub_1C96A7684();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v13;
      *v12 = 141558787;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      v25 = v3;
      v14 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380, &qword_1C96AA2F0);
      v15 = sub_1C96A70A4();
      v17 = sub_1C9484164(v15, v16, &v27);

      *(v12 + 14) = v17;
      *(v12 + 22) = 2160;
      *(v12 + 24) = 1752392040;
      *(v12 + 32) = 2081;
      sub_1C9484328(v26, &v25);
      v18 = sub_1C96A70A4();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v21 = sub_1C9484164(v18, v20, &v27);

      *(v12 + 34) = v21;
      _os_log_impl(&dword_1C945E000, v10, v11, "Skipping a remote location after an unexpected parsing error: %{private,mask.hash}s, remoteLocation: %{private,mask.hash}s", v12, 0x2Au);
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

void sub_1C96303B8(void *a1@<X0>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    *a3 = 0;
    return;
  }

  v5 = SavedLocationsReader.fetchSavedLocations(from:)(a1);
  v25 = v5;
  if (qword_1EDB7CFA8 != -1)
  {
    swift_once();
  }

  v6 = sub_1C96A6154();
  __swift_project_value_buffer(v6, qword_1EDB7CFB0);
  v7 = sub_1C96A6134();
  v8 = sub_1C96A76A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24[0] = v10;
    *v9 = 136315138;
    if (v5)
    {
      v11 = *(v5 + 16);
    }

    else
    {
      v11 = 0;
    }

    v23 = v11;
    v12 = sub_1C96A7DB4();
    v14 = sub_1C9484164(v12, v13, v24);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1C945E000, v7, v8, "SavedLocationsReader: remote locations count: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1CCA8E3D0](v10, -1, -1);
    MEMORY[0x1CCA8E3D0](v9, -1, -1);

    if (!v5)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (!v5)
    {
      goto LABEL_14;
    }
  }

  if (!*(v5 + 16))
  {
LABEL_14:
    v15 = sub_1C94D9F68();
    swift_beginAccess();
    v25 = v15;

    v16 = sub_1C96A6134();
    v17 = sub_1C96A76A4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136315138;
      v20 = sub_1C96A7DB4();
      v22 = sub_1C9484164(v20, v21, &v23);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1C945E000, v16, v17, "SavedLocationsReader: local locations count  %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1CCA8E3D0](v19, -1, -1);
      MEMORY[0x1CCA8E3D0](v18, -1, -1);
    }

    goto LABEL_17;
  }

  v15 = v5;
LABEL_17:
  *a3 = v15;
}

double sub_1C96306D8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
  sub_1C96A53C4();
  return result;
}

void *SavedLocationsReader.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  return v0;
}

uint64_t SavedLocationsReader.__deallocating_deinit()
{
  SavedLocationsReader.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 176, 7);
}

uint64_t sub_1C9630788()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C9630818;

  return SavedLocationsReader.fetchSavedLocationsAsync()();
}

uint64_t sub_1C9630818()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

void *sub_1C9630950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_13_38();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  v18 = v17 - v16;
  v19 = swift_allocObject();
  (*(v14 + 16))(v18, v8, a6);
  v20 = sub_1C9630A74(v10, v9, v18, v7, v19, a6, a7);
  (*(v14 + 8))(v8, a6);
  return v20;
}

void *sub_1C9630A74(__int128 *a1, __int128 *a2, uint64_t a3, __int128 *a4, void *a5, uint64_t a6, uint64_t a7)
{
  a5[15] = a6;
  a5[16] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5 + 12);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  sub_1C94670AC(a1, (a5 + 2));
  sub_1C94670AC(a2, (a5 + 7));
  sub_1C94670AC(a4, (a5 + 17));
  return a5;
}

uint64_t sub_1C9630B44(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C9630BA4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t dispatch thunk of SavedLocationsReaderType.fetchSavedLocationsAsync()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C9630818;

  return v7(a1, a2);
}

uint64_t sub_1C9630D7C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1C9630DDC()
{
  result = qword_1EDB7A5B0;
  if (!qword_1EDB7A5B0)
  {
    type metadata accessor for SyncedData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A5B0);
  }

  return result;
}

uint64_t sub_1C9630F30()
{
  v1 = sub_1C96A3A84();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_1C96A3AA4();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = swift_task_alloc();
  v0[8] = v3;
  v0[9] = sub_1C95D529C();
  *v3 = v0;
  v3[1] = sub_1C9631094;

  return MEMORY[0x1EEDB2C30]();
}

uint64_t sub_1C9631094(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v6;
  v9 = *v6;

  if (v5)
  {

    v10 = *(v9 + 8);

    return v10();
  }

  else
  {
    *(v8 + 80) = a1 & 1;

    return MEMORY[0x1EEE6DFA0](sub_1C96311F8, 0, 0);
  }
}

uint64_t sub_1C96311F8()
{
  if (*(v0 + 80) == 1)
  {
    if (qword_1EDB80080 != -1)
    {
      OUTLINED_FUNCTION_0_79(&qword_1EDB80080);
    }

    v1 = sub_1C96A6154();
    __swift_project_value_buffer(v1, qword_1EDB80088);
    v2 = sub_1C96A6134();
    v3 = sub_1C96A76A4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      OUTLINED_FUNCTION_16_2(&dword_1C945E000, v5, v6, "Submitting changed event for units.");
      MEMORY[0x1CCA8E3D0](v4, -1, -1);
    }

    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = *(v0 + 16);
    v12 = *(v0 + 24);

    (*(v12 + 104))(v10, *MEMORY[0x1E6959DC8], v11);
    sub_1C96A3AD4();
    (*(v12 + 8))(v10, v11);
    sub_1C96A3A94();
    (*(v8 + 8))(v7, v9);
  }

  else
  {
    if (qword_1EDB80080 != -1)
    {
      OUTLINED_FUNCTION_0_79(&qword_1EDB80080);
    }

    v13 = sub_1C96A6154();
    __swift_project_value_buffer(v13, qword_1EDB80088);
    v14 = sub_1C96A6134();
    v15 = sub_1C96A76A4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      OUTLINED_FUNCTION_16_2(&dword_1C945E000, v17, v18, "No observers for units changed event - skipping.");
      MEMORY[0x1CCA8E3D0](v16, -1, -1);
    }
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1C963143C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
}

void *sub_1C963146C()
{
  v0 = sub_1C9487974();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  return v0;
}

uint64_t sub_1C96314A4()
{
  v0 = sub_1C963146C();

  return MEMORY[0x1EEE6BDC0](v0, 144, 7);
}

uint64_t sub_1C96314D4()
{
  OUTLINED_FUNCTION_1_66();
  *(v0 + 80) = v1;
  return sub_1C96A50F4();
}

uint64_t sub_1C9631504()
{
  OUTLINED_FUNCTION_1_66();
  *(v0 + 81) = v1;
  return sub_1C96A50F4();
}

uint64_t sub_1C9631534()
{
  OUTLINED_FUNCTION_1_66();
  *(v0 + 82) = v1;
  return sub_1C96A50F4();
}

uint64_t sub_1C9631564()
{
  OUTLINED_FUNCTION_1_66();
  *(v0 + 83) = v1;
  return sub_1C96A50F4();
}

uint64_t sub_1C9631594()
{
  OUTLINED_FUNCTION_1_66();
  *(v0 + 84) = v1;
  return sub_1C96A50F4();
}

uint64_t sub_1C96315C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B9278;

  return sub_1C9630F30();
}

uint64_t SyncedLocationDisplayContext.init(location:displayContext:)@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  *(a3 + *(type metadata accessor for SyncedLocationDisplayContext(0) + 24)) = MEMORY[0x1E69E7CC8];
  sub_1C96A53C4();
  sub_1C96A66C4();
  sub_1C96A66C4();
  return sub_1C94DBDDC(a1);
}

uint64_t SyncedLocationDisplayContext.canActAsLocationOfInterest.getter()
{
  type metadata accessor for SyncedLocationDisplayContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8, &qword_1C96BBDB0);
  sub_1C96A66E4();
  return v1;
}

uint64_t SyncedLocationDisplayContext.id.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158, &unk_1C96ACD20);
  sub_1C96A66E4();
  return v1;
}

uint64_t sub_1C96317A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1C96A53C4();
  return SyncedLocationDisplayContext.id.setter(v1, v2);
}

void (*SyncedLocationDisplayContext.id.modify())(void *)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_18_0(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158, &unk_1C96ACD20);
  *(v0 + 32) = sub_1C96A66D4();
  return sub_1C9633128;
}

uint64_t SyncedLocationDisplayContext.$id.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158, &unk_1C96ACD20);

  return sub_1C96A6704();
}

uint64_t SyncedLocationDisplayContext.$id.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158, &unk_1C96ACD20);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_1_67(v6, v10);
  v8(v7);
  sub_1C96A6714();
  return (*(v4 + 8))(a1, v2);
}

void (*SyncedLocationDisplayContext.$id.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *OUTLINED_FUNCTION_18_0(v2) = v0;
  v1[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158, &unk_1C96ACD20);
  OUTLINED_FUNCTION_1();
  v1[2] = v3;
  v5 = *(v4 + 64);
  v1[3] = __swift_coroFrameAllocStub(v5);
  v1[4] = __swift_coroFrameAllocStub(v5);
  v1[5] = __swift_coroFrameAllocStub(v5);
  sub_1C96A6704();
  return sub_1C9631AA8;
}

void sub_1C9631AA8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[4];
  v6 = v3[5];
  v8 = v3[2];
  v7 = v3[3];
  v9 = v3[1];
  if (a2)
  {
    v4(v3[3], v3[4], v3[1]);
    sub_1C96A6714();
    v10 = *(v8 + 8);
    v11 = OUTLINED_FUNCTION_4_59();
    v10(v11);
    (v10)(v6, v9);
  }

  else
  {
    OUTLINED_FUNCTION_4_59();
    sub_1C96A6714();
    (*(v8 + 8))(v6, v9);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v3);
}

uint64_t SyncedLocationDisplayContext.canActAsLocationOfInterest.setter(char a1)
{
  type metadata accessor for SyncedLocationDisplayContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8, &qword_1C96BBDB0);
  return sub_1C96A66F4();
}

uint64_t (*SyncedLocationDisplayContext.canActAsLocationOfInterest.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_18_0(v1);
  type metadata accessor for SyncedLocationDisplayContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8, &qword_1C96BBDB0);
  *(v0 + 32) = sub_1C96A66D4();
  return sub_1C954E8EC;
}

uint64_t SyncedLocationDisplayContext.$canActAsLocationOfInterest.getter()
{
  type metadata accessor for SyncedLocationDisplayContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8, &qword_1C96BBDB0);
  return sub_1C96A6704();
}

uint64_t sub_1C9631CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_1();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1, v10);
  return a7(v12);
}

uint64_t SyncedLocationDisplayContext.$canActAsLocationOfInterest.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8, &qword_1C96BBDB0);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_1_67(v6, v10);
  v8(v7);
  type metadata accessor for SyncedLocationDisplayContext(0);
  sub_1C96A6714();
  return (*(v4 + 8))(a1, v2);
}

void (*SyncedLocationDisplayContext.$canActAsLocationOfInterest.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *OUTLINED_FUNCTION_18_0(v2) = v0;
  *(v1 + 8) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8, &qword_1C96BBDB0);
  OUTLINED_FUNCTION_1();
  *(v1 + 16) = v3;
  v5 = *(v4 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v5);
  *(v1 + 32) = __swift_coroFrameAllocStub(v5);
  *(v1 + 40) = __swift_coroFrameAllocStub(v5);
  *(v1 + 48) = *(type metadata accessor for SyncedLocationDisplayContext(0) + 20);
  sub_1C96A6704();
  return sub_1C9631F8C;
}

void sub_1C9631F8C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[4];
  v12 = v3[5];
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[1];
  if (a2)
  {
    v4(v3[3], v5, v3[1]);
    sub_1C96A6714();
    v9 = *(v7 + 8);
    v10 = OUTLINED_FUNCTION_4_59();
    v9(v10);
    v11 = v12;
    (v9)(v12, v8);
  }

  else
  {
    OUTLINED_FUNCTION_4_59();
    sub_1C96A6714();
    v11 = v12;
    (*(v7 + 8))(v12, v8);
  }

  free(v11);
  free(v5);
  free(v6);

  free(v3);
}

double SyncedLocationDisplayContext.additionalFields.getter()
{
  type metadata accessor for SyncedLocationDisplayContext(0);

  sub_1C96A53C4();
  return result;
}

uint64_t SyncedLocationDisplayContext.additionalFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SyncedLocationDisplayContext(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C9632170()
{
  qword_1EC3A7588 = 25705;
  unk_1EC3A7590 = 0xE200000000000000;
  qword_1EC3A7598 = swift_getKeyPath();
  unk_1EC3A75A0 = 0xD00000000000001ALL;
  qword_1EC3A75A8 = 0x80000001C96D43E0;
  result = swift_getKeyPath();
  qword_1EC3A75B0 = result;
  return result;
}

double static SyncedLocationDisplayContext.fields.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EC3A47F8 != -1)
  {
    swift_once();
  }

  v2 = unk_1EC3A7590;
  v4 = qword_1EC3A7598;
  v3 = unk_1EC3A75A0;
  v5 = qword_1EC3A75A8;
  v6 = qword_1EC3A75B0;
  *a1 = qword_1EC3A7588;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
  a1[4] = v5;
  a1[5] = v6;
  sub_1C96A53C4();
  sub_1C96A3D04();
  sub_1C96A53C4();

  sub_1C96A3D04();
  return result;
}

uint64_t SyncedLocationDisplayContext.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + *(type metadata accessor for SyncedLocationDisplayContext(0) + 24)) = MEMORY[0x1E69E7CC8];
  sub_1C96A66C4();
  return sub_1C96A66C4();
}

uint64_t SyncedLocationDisplayContext.init(id:canActAsLocationOfInterest:)@<X0>(uint64_t a4@<X8>)
{
  *(a4 + *(type metadata accessor for SyncedLocationDisplayContext(0) + 24)) = MEMORY[0x1E69E7CC8];
  sub_1C96A66C4();
  return sub_1C96A66C4();
}

__n128 sub_1C96323AC@<Q0>(uint64_t a1@<X8>)
{
  static SyncedLocationDisplayContext.fields.getter(&v5);
  v2 = v7;
  result = v6;
  v4 = v8;
  *a1 = v5;
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_1C96323FC(uint64_t a1)
{
  v2 = sub_1C94950FC(&qword_1EC3A75E0, "Ya|%");

  return MEMORY[0x1EEDF46B0](a1, v2);
}

uint64_t sub_1C9632460(uint64_t a1)
{
  v2 = sub_1C94950FC(&unk_1EDB7D720, &protocol conformance descriptor for SyncedLocationDisplayContext);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t sub_1C96324B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950FC(&qword_1EC3A75E0, "Ya|%");

  return MEMORY[0x1EEDF4698](a1, a2, v4);
}

uint64_t sub_1C9632520(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950FC(&qword_1EC3A75E0, "Ya|%");

  return MEMORY[0x1EEDF4640](a1, a2, v4);
}

uint64_t sub_1C9632590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950FC(&qword_1EC3A75E0, "Ya|%");

  return MEMORY[0x1EEDF4668](a1, a2, v4);
}

uint64_t sub_1C96325F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950FC(&qword_1EC3A75E0, "Ya|%");

  return MEMORY[0x1EEDF46A8](a1, a2, v4);
}

uint64_t sub_1C9632660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C94950FC(&qword_1EC3A75E0, "Ya|%");

  return MEMORY[0x1EEDF4670](a1, a2, a3, v6);
}

uint64_t sub_1C96326E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950FC(&qword_1EC3A75E0, "Ya|%");

  return MEMORY[0x1EEDF46A0](a1, a2, v4);
}

uint64_t sub_1C9632748(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950FC(&qword_1EC3A75E0, "Ya|%");

  return MEMORY[0x1EEDF4678](a1, a2, v4);
}

uint64_t sub_1C96327B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950FC(&qword_1EC3A75E0, "Ya|%");

  return MEMORY[0x1EEDF4658](a1, a2, v4);
}

uint64_t sub_1C9632820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950FC(&qword_1EC3A75E0, "Ya|%");

  return MEMORY[0x1EEDF4650](a1, a2, v4);
}

uint64_t sub_1C9632890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C94950FC(&qword_1EC3A75E0, "Ya|%");

  return MEMORY[0x1EEDF4638](a1, a2, a3, v6);
}

uint64_t sub_1C9632910(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950FC(&qword_1EC3A75E0, "Ya|%");

  return MEMORY[0x1EEDF4620](a1, a2, v4);
}

uint64_t sub_1C9632978(uint64_t a1)
{
  v2 = sub_1C94950FC(&qword_1EC3A75E0, "Ya|%");

  return MEMORY[0x1EEDF4648](a1, v2);
}

uint64_t sub_1C96329D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950FC(&qword_1EC3A75E0, "Ya|%");

  return MEMORY[0x1EEDF4628](a1, a2, v4);
}

uint64_t sub_1C9632A38(uint64_t a1)
{
  sub_1C94950FC(&qword_1EC3A75E0, "Ya|%");

  return sub_1C96A6924();
}

void sub_1C9632AA8()
{
  sub_1C94950FC(&qword_1EC3A75E0, "Ya|%");

  JUMPOUT(0x1CCA8C2C0);
}

uint64_t sub_1C9632CC8(uint64_t a1)
{
  v2 = sub_1C94950FC(&qword_1EC3A75E0, "Ya|%");

  return MEMORY[0x1EEDF4630](a1, v2);
}

uint64_t static SyncedLocationDisplayContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158, &unk_1C96ACD20);
  sub_1C96A66E4();
  sub_1C96A66E4();

  type metadata accessor for SyncedLocationDisplayContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8, &qword_1C96BBDB0);
  sub_1C96A66E4();
  sub_1C96A66E4();
  sub_1C94950FC(&qword_1EC3A75B8, &protocol conformance descriptor for SyncedLocationDisplayContext);
  if (sub_1C96A6B14())
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1C96A6B14() ^ 1;
  }

  return v2 & 1;
}

uint64_t SyncedLocationDisplayContext.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158, &unk_1C96ACD20);
  sub_1C96A66E4();
  sub_1C96A7144();

  type metadata accessor for SyncedLocationDisplayContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8, &qword_1C96BBDB0);
  sub_1C96A66E4();
  return sub_1C96A7F04();
}

uint64_t SyncedLocationDisplayContext.hashValue.getter()
{
  sub_1C96A7EE4();
  SyncedLocationDisplayContext.hash(into:)(v1);
  return sub_1C96A7F24();
}

uint64_t sub_1C9632FA0(uint64_t a1)
{
  sub_1C96A7EE4();
  SyncedLocationDisplayContext.hash(into:)(v2);
  return sub_1C96A7F24();
}

uint64_t Location.Identifier.write(to:)(uint64_t a1)
{
  result = sub_1C96A70F4();
  if (!v1)
  {
    sub_1C96A70F4();
    return sub_1C96A7864();
  }

  return result;
}

uint64_t static Location.Identifier.read(from:)@<X0>(uint64_t a2@<X8>)
{
  result = sub_1C96A70E4();
  if (!v2)
  {
    v6 = result;
    v7 = v5;
    v8 = sub_1C96A70E4();
    v10 = v9;
    sub_1C96A7854();
    v12 = v11;
    v14 = v13;
    swift_bridgeObjectRetain_n();
    sub_1C96A53C4();
    MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
    MEMORY[0x1CCA8CB00](v8, v10);

    if (v6 == 0x746E6572727563 && v7 == 0xE700000000000000)
    {

      v16 = 1;
    }

    else
    {
      v16 = sub_1C96A7DE4();
    }

    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v10;
    *(a2 + 32) = v12;
    *(a2 + 40) = v14;
    *(a2 + 48) = v16 & 1;
    *(a2 + 56) = v6;
    *(a2 + 64) = v7;
  }

  return result;
}

uint64_t AppConfiguration.write(to:)(uint64_t a1)
{
  v3 = v1;
  result = sub_1C96A48A4();
  if (!v2)
  {
    v5 = type metadata accessor for AppConfiguration(0);
    OUTLINED_FUNCTION_9_37(v5[5]);
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    __dst[0] = *(v1 + v5[6]);
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    OUTLINED_FUNCTION_9_37(v5[7]);
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    OUTLINED_FUNCTION_9_37(v5[8]);
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    OUTLINED_FUNCTION_9_37(v5[9]);
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    OUTLINED_FUNCTION_9_37(v5[10]);
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    v6 = v1 + v5[11];
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    v9 = *(v6 + 24);
    LOBYTE(__dst[0]) = *v6;
    __dst[1] = v7;
    __dst[2] = v8;
    __dst[3] = v9;
    OUTLINED_FUNCTION_14_0();
    AppStoreReviewConfiguration.write(to:)();
    type metadata accessor for EndpointConfiguration(0);
    OUTLINED_FUNCTION_5_48(qword_1EDB796F8);
    OUTLINED_FUNCTION_4_60(&qword_1EDB796F0);
    OUTLINED_FUNCTION_64();
    sub_1C96A72D4();
    v10 = *(v1 + v5[13] + 1);
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    LOBYTE(__dst[0]) = v10;
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    v11 = v1 + v5[14];
    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A72D4();
    sub_1C96A53C4();
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    __dst[0] = v13;
    __dst[1] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6430, &qword_1C96AC0D0);
    OUTLINED_FUNCTION_14_0();
    sub_1C96A7924();

    swift_bridgeObjectRelease_n();
    sub_1C96A53C4();
    OUTLINED_FUNCTION_64();
    sub_1C96A7584();

    v14 = OUTLINED_FUNCTION_14_0();
    LocationsConfiguration.write(to:)(v14);
    v15 = v5[17];
    memcpy(__dst, (v3 + v15), sizeof(__dst));
    memcpy(__src, (v3 + v15), sizeof(__src));
    sub_1C94B7A74(__dst, v66);
    v16 = OUTLINED_FUNCTION_14_0();
    MapsConfiguration.write(to:)(v16);
    memcpy(v66, __src, sizeof(v66));
    sub_1C94BD530(v66);
    sub_1C9633BE4();
    sub_1C9633C38();
    OUTLINED_FUNCTION_64();
    sub_1C96A72D4();
    v17 = (v3 + v5[19]);
    v18 = v17[1];
    v65[0] = *v17;
    v65[1] = v18;
    v19 = v17[3];
    v21 = *v17;
    v20 = v17[1];
    v65[2] = v17[2];
    v65[3] = v19;
    v61 = v21;
    v62 = v20;
    v22 = v17[3];
    v63 = v17[2];
    v64 = v22;
    sub_1C94B694C(v65, v59);
    v23 = OUTLINED_FUNCTION_14_0();
    NetworkConfiguration.write(to:)(v23);
    v60[0] = v61;
    v60[1] = v62;
    v60[2] = v63;
    v60[3] = v64;
    sub_1C94BDA7C(v60);
    v24 = (v3 + v5[20]);
    v25 = *v24;
    v26 = v24[1];
    LOBYTE(v24) = v24[2];
    v69 = v25;
    v70 = v26;
    v71 = v24;
    OUTLINED_FUNCTION_14_0();
    NewsConfiguration.write(to:)();
    v27 = v5[21];
    memcpy(v59, (v3 + v27), sizeof(v59));
    memcpy(v58, (v3 + v27), sizeof(v58));
    sub_1C94BDC2C(v59, v57);
    v28 = OUTLINED_FUNCTION_14_0();
    NotificationsConfiguration.write(to:)(v28);
    memcpy(v57, v58, sizeof(v57));
    sub_1C94BDE74(v57);
    v29 = (v3 + v5[22]);
    v30 = v29[1];
    v52[0] = *v29;
    v52[1] = v30;
    v52[2] = v29[2];
    *(&v52[2] + 10) = *(v29 + 42);
    v31 = OUTLINED_FUNCTION_8();
    PrivacyConfiguration.write(to:)(v31);
    v32 = v3 + v5[24];
    v33 = *(v32 + 32);
    v34 = *(v32 + 16);
    v52[0] = *v32;
    v52[1] = v34;
    *&v52[2] = v33;
    v35 = OUTLINED_FUNCTION_8();
    WidgetPrivacyConfiguration.write(to:)(v35);
    LOBYTE(v13) = *(v3 + v5[25] + 32);
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A70F4();
    OUTLINED_FUNCTION_64();
    sub_1C96A70F4();
    LOBYTE(v52[0]) = v13;
    OUTLINED_FUNCTION_8();
    sub_1C96A5514();

    v36 = *(v3 + v5[26]);
    sub_1C96A53C4();
    OUTLINED_FUNCTION_18_27();
    if (v36)
    {
    }

    sub_1C959B93C();
    sub_1C959B990();
    sub_1C96A53C4();
    OUTLINED_FUNCTION_64();
    sub_1C96A72D4();

    v37 = (v3 + v5[29]);
    v38 = v37[1];
    v52[0] = *v37;
    v52[1] = v38;
    v39 = OUTLINED_FUNCTION_8();
    WeatherDataConfiguration.write(to:)(v39);
    v40 = *(v3 + v5[30]);
    sub_1C96A53C4();
    OUTLINED_FUNCTION_18_27();
    if (v40)
    {
    }

    else
    {

      v41 = v3 + v5[31];
      v42 = *(v41 + 32);
      v43 = *(v41 + 40);
      v44 = *(v41 + 41);
      v45 = *(v41 + 48);
      v46 = *(v41 + 56);
      v47 = *(v41 + 16);
      v52[0] = *v41;
      v52[1] = v47;
      *&v52[2] = v42;
      v48 = OUTLINED_FUNCTION_8();
      WeatherMenuRefreshConfiguration.write(to:)(v48);
      v53 = v43;
      v54 = v44;
      v55 = v45;
      v56 = v46;
      OUTLINED_FUNCTION_14_0();
      WeatherMenuAnalyticsConfiguration.write(to:)();
      v49 = v3 + v5[32];
      memcpy(v52, v49, sizeof(v52));
      v50 = *(v49 + 80);
      v51 = *(v49 + 88);
      OUTLINED_FUNCTION_8();
      WidgetRefreshConfiguration.write(to:)();
      LOBYTE(v52[0]) = v50;
      OUTLINED_FUNCTION_8();
      sub_1C96A5514();
      *&v52[0] = v51;
      OUTLINED_FUNCTION_8();
      sub_1C96A5514();
      sub_1C9633C8C();
      sub_1C9633CE0();
      OUTLINED_FUNCTION_64();
      sub_1C96A72D4();
      OUTLINED_FUNCTION_14_0();
      sub_1C96A70F4();
      OUTLINED_FUNCTION_14_0();
      sub_1C96A72D4();
      OUTLINED_FUNCTION_14_0();
      return sub_1C96A72D4();
    }
  }

  return result;
}

uint64_t sub_1C9633BA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EndpointConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C9633BE4()
{
  result = qword_1EDB795B0;
  if (!qword_1EDB795B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB795B0);
  }

  return result;
}

unint64_t sub_1C9633C38()
{
  result = qword_1EDB795A8;
  if (!qword_1EDB795A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB795A8);
  }

  return result;
}

unint64_t sub_1C9633C8C()
{
  result = qword_1EDB796E8;
  if (!qword_1EDB796E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB796E8);
  }

  return result;
}

unint64_t sub_1C9633CE0()
{
  result = qword_1EDB796E0;
  if (!qword_1EDB796E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB796E0);
  }

  return result;
}

uint64_t static AppConfiguration.read(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v229 = a1;
  v185 = a2;
  v183 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v176 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v182 = v4 - v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  v177 = &v131 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_2();
  v180 = v9 - v10;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_1();
  v181 = v12;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_1();
  v174 = v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_1();
  v175 = v16;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_1();
  v178 = v18;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v19);
  v179 = &v131 - v20;
  v184 = type metadata accessor for LocationsConfiguration(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  v24 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v131 - v26;
  v28 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v173 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62F0, &qword_1C96B51D0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  OUTLINED_FUNCTION_2();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v131 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  MEMORY[0x1EEE9AC00](v40 - 8);
  OUTLINED_FUNCTION_2();
  v43 = v41 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v131 - v45;
  v47 = v186;
  result = sub_1C96A4894();
  if (!v47)
  {
    v168 = v43;
    v169 = v32;
    v170 = v36;
    v171 = v24;
    v172 = v27;
    v49 = v185;
    v186 = v39;
    __swift_storeEnumTagSinglePayload(v46, 0, 1, v28);
    sub_1C96A5504();
    v167 = v46;
    v50 = v228;
    OUTLINED_FUNCTION_11_35();
    v51 = v227;
    OUTLINED_FUNCTION_11_35();
    v52 = v226;
    OUTLINED_FUNCTION_11_35();
    v53 = v225;
    OUTLINED_FUNCTION_11_35();
    v54 = v224;
    OUTLINED_FUNCTION_11_35();
    v55 = v223;
    static AppStoreReviewConfiguration.read(from:)(v219);
    v56 = v219[0];
    v57 = v220;
    v166 = v221;
    v58 = v222;
    type metadata accessor for EndpointConfiguration(0);
    OUTLINED_FUNCTION_5_48(qword_1EDB796F8);
    OUTLINED_FUNCTION_4_60(&qword_1EDB796F0);
    v59 = sub_1C96A72C4();
    OUTLINED_FUNCTION_11_35();
    v165 = LOBYTE(v218[0]);
    sub_1C96A5504();
    v163 = v217[0];
    OUTLINED_FUNCTION_2_64();
    v164 = sub_1C96A72C4();
    sub_1C96A5504();
    OUTLINED_FUNCTION_17_31();
    sub_1C96A7914();
    v161 = v218[0];
    v60 = v218[1];
    v61 = sub_1C96A7534(0.0, 1.0);
    OUTLINED_FUNCTION_17_31();
    v162 = sub_1C96A7574();
    v62 = OUTLINED_FUNCTION_2_64();
    static LocationsConfiguration.read(from:)(v62, v63, v64, v65, v66, v67, v68, v69, v131, v132);
    __swift_storeEnumTagSinglePayload(v186, 0, 1, v184);
    OUTLINED_FUNCTION_2_64();
    static MapsConfiguration.read(from:)();
    memcpy(v217, v218, sizeof(v217));
    sub_1C9633BE4();
    v70 = sub_1C9633C38();
    v160 = OUTLINED_FUNCTION_13_39(v70, &type metadata for NamedNetworkConfiguration);
    OUTLINED_FUNCTION_2_64();
    static NetworkConfiguration.read(from:)();
    v209 = v213;
    v210 = v214;
    v211 = v215;
    v212 = v216;
    OUTLINED_FUNCTION_2_64();
    static NewsConfiguration.read(from:)();
    v159 = v208[117];
    v158 = v208[118];
    v157 = v208[119];
    OUTLINED_FUNCTION_2_64();
    static NotificationsConfiguration.read(from:)();
    memcpy(v207, v208, sizeof(v207));
    OUTLINED_FUNCTION_2_64();
    static PrivacyConfiguration.read(from:)();
    v203 = *&v205[5];
    v204 = *&v205[7];
    *v205 = v206[0];
    *(&v205[1] + 2) = *(v206 + 10);
    OUTLINED_FUNCTION_2_64();
    static WidgetPrivacyConfiguration.read(from:)(v71);
    v154 = v201;
    v155 = v200;
    v153 = v202;
    OUTLINED_FUNCTION_2_64();
    v152 = sub_1C96A70E4();
    v156 = v72;
    OUTLINED_FUNCTION_17_31();
    v150 = sub_1C96A70E4();
    v151 = v73;
    sub_1C96A5504();
    v148 = v188[0];
    OUTLINED_FUNCTION_17_31();
    v147 = sub_1C96A70E4();
    v149 = v74;
    sub_1C947660C();

    sub_1C959B93C();
    v75 = sub_1C959B990();
    v146 = OUTLINED_FUNCTION_13_39(v75, &type metadata for TemperatureScaleConfiguration.ColorStop);
    OUTLINED_FUNCTION_2_64();
    static WeatherDataConfiguration.read(from:)();
    v143 = v199;
    v144 = v198;
    OUTLINED_FUNCTION_2_64();
    v142 = sub_1C96A70E4();
    v145 = v76;
    OUTLINED_FUNCTION_2_64();
    static WeatherMenuRefreshConfiguration.read(from:)();
    v140 = v196;
    v141 = v195;
    v139 = v197;
    OUTLINED_FUNCTION_2_64();
    static WeatherMenuAnalyticsConfiguration.read(from:)();
    v135 = v192;
    v136 = v191;
    v137 = v194;
    v138 = v193;
    OUTLINED_FUNCTION_2_64();
    static WidgetConfiguration.read(from:)();
    memcpy(v187, v188, sizeof(v187));
    sub_1C9633C8C();
    v77 = sub_1C9633CE0();
    v134 = OUTLINED_FUNCTION_13_39(v77, &type metadata for LanguageConfiguration);
    OUTLINED_FUNCTION_2_64();
    v132 = sub_1C96A70E4();
    v133 = v78;
    OUTLINED_FUNCTION_2_64();
    v131 = sub_1C96A72C4();
    OUTLINED_FUNCTION_2_64();
    v229 = sub_1C96A72C4();
    sub_1C9470A40(v167, v168, &unk_1EC3A5430, &unk_1C96AAB30);
    v79 = OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_23_1(v79, v80, v28);
    if (v81)
    {
      sub_1C96A4954();
      OUTLINED_FUNCTION_23_1(v168, 1, v28);
      if (!v81)
      {
        sub_1C9470AFC(v168, &unk_1EC3A5430, &unk_1C96AAB30);
      }
    }

    else
    {
      (*(v173 + 32))(v169, v168, v28);
    }

    (*(v173 + 32))(v49, v169, v28);
    v82 = type metadata accessor for AppConfiguration(0);
    *(v49 + v82[5]) = v50;
    *(v49 + v82[6]) = v51;
    *(v49 + v82[7]) = v52;
    *(v49 + v82[8]) = v53;
    *(v49 + v82[9]) = v54;
    *(v49 + v82[10]) = v55;
    v83 = v49 + v82[11];
    *v83 = v56;
    *(v83 + 8) = v57;
    *(v83 + 16) = v166;
    *(v83 + 24) = v58;
    *(v49 + v82[12]) = v59;
    v84 = (v49 + v82[13]);
    *v84 = v165;
    v84[1] = v163;
    v85 = (v49 + v82[14]);
    *v85 = v164;
    *(v85 + 1) = v61;
    v86 = v162;
    v85[2] = v161;
    v85[3] = v60;
    *(v49 + v82[15]) = v86;
    sub_1C9470A40(v186, v170, &qword_1EC3A62F0, &qword_1C96B51D0);
    v87 = OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_23_1(v87, v88, v184);
    if (!v81)
    {
      sub_1C947F294(v170, v172);
LABEL_24:
      sub_1C947F294(v172, v49 + v82[16]);
      memcpy((v49 + v82[17]), v217, 0xA0uLL);
      *(v49 + v82[18]) = v160;
      v107 = (v49 + v82[19]);
      v108 = v210;
      *v107 = v209;
      v107[1] = v108;
      v109 = v212;
      v107[2] = v211;
      v107[3] = v109;
      v110 = (v49 + v82[20]);
      *v110 = v159;
      v110[1] = v158;
      v110[2] = v157;
      memcpy((v49 + v82[21]), v207, 0x70uLL);
      v111 = v49 + v82[23];
      *v111 = vdupq_n_s64(0x408C200000000000uLL);
      *(v111 + 16) = xmmword_1C96B4FE0;
      *(v111 + 32) = xmmword_1C96B4FF0;
      *(v111 + 48) = xmmword_1C96B5000;
      *(v111 + 64) = xmmword_1C96B5010;
      *(v111 + 80) = xmmword_1C96B5020;
      *(v111 + 96) = xmmword_1C96B5030;
      *(v111 + 112) = xmmword_1C96B5040;
      *(v111 + 128) = 0x3FE999999999999ALL;
      v112 = (v49 + v82[22]);
      v113 = v204;
      *v112 = v203;
      v112[1] = v113;
      v112[2] = *v205;
      *(v112 + 42) = *(&v205[1] + 2);
      v114 = v49 + v82[24];
      v115 = v154;
      *v114 = v155;
      *(v114 + 16) = v115;
      *(v114 + 32) = v153;
      v116 = v49 + v82[25];
      v117 = v156;
      *v116 = v152;
      *(v116 + 8) = v117;
      v118 = v151;
      *(v116 + 16) = v150;
      *(v116 + 24) = v118;
      *(v116 + 32) = v148;
      v119 = (v49 + v82[26]);
      v120 = v149;
      *v119 = v147;
      v119[1] = v120;
      *(v49 + v82[27]) = v146;
      v121 = (v49 + v82[29]);
      v122 = v143;
      *v121 = v144;
      v121[1] = v122;
      v123 = (v49 + v82[30]);
      v124 = v145;
      *v123 = v142;
      v123[1] = v124;
      v125 = v49 + v82[31];
      v126 = v140;
      *v125 = v141;
      *(v125 + 16) = v126;
      v127 = v138;
      *(v125 + 32) = v139;
      LOBYTE(v124) = v135;
      *(v125 + 40) = v136;
      *(v125 + 41) = v124;
      *(v125 + 46) = v190;
      *(v125 + 42) = v189;
      v128 = v137;
      *(v125 + 48) = v127;
      *(v125 + 56) = v128;
      memcpy((v49 + v82[32]), v187, 0x60uLL);
      *(v49 + v82[33]) = v134;
      v129 = (v49 + v82[34]);
      v130 = v133;
      *v129 = v132;
      v129[1] = v130;
      *(v49 + v82[35]) = v131;
      sub_1C9470AFC(v186, &qword_1EC3A62F0, &qword_1C96B51D0);
      result = sub_1C9470AFC(v167, &unk_1EC3A5430, &unk_1C96AAB30);
      *(v49 + v82[36]) = v229;
      return result;
    }

    v89 = v179;
    v90 = v183;
    __swift_storeEnumTagSinglePayload(v179, 1, 1, v183);
    __swift_storeEnumTagSinglePayload(v178, 1, 1, v90);
    v91 = v171;
    *v171 = xmmword_1C96B4F40;
    v91[1] = xmmword_1C96B4F50;
    v92 = v89;
    v93 = v175;
    sub_1C9470A40(v92, v175, &qword_1EC3A4A70, &qword_1C96B05D0);
    if (__swift_getEnumTagSinglePayload(v93, 1, v90) == 1)
    {
      sub_1C96A4754();
      v94 = OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_23_1(v94, v95, v183);
      if (v81)
      {
        __break(1u);
LABEL_21:
        OUTLINED_FUNCTION_19_27(v178);
        OUTLINED_FUNCTION_19_27(v179);
        v59(v182, v181, v183);
LABEL_22:
        v105 = v184;
        v106 = v171;
        v59(v171 + *(v184 + 36), v182, v183);
        *(v106 + *(v105 + 40)) = 1;
        sub_1C947F294(v106, v172);
        OUTLINED_FUNCTION_23_1(v170, 1, v105);
        if (!v81)
        {
          sub_1C9470AFC(v170, &qword_1EC3A62F0, &qword_1C96B51D0);
        }

        goto LABEL_24;
      }

      v96 = OUTLINED_FUNCTION_15_32();
      v97 = v183;
      v59(v96, v174, v183);
      OUTLINED_FUNCTION_23_1(v175, 1, v97);
      if (!v81)
      {
        sub_1C9470AFC(v175, &qword_1EC3A4A70, &qword_1C96B05D0);
      }
    }

    else
    {
      v98 = OUTLINED_FUNCTION_15_32();
      v59(v98, v175, v183);
    }

    v99 = v183;
    v59(v171 + *(v184 + 32), v177, v183);
    sub_1C9470A40(v178, v181, &qword_1EC3A4A70, &qword_1C96B05D0);
    v100 = OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_23_1(v100, v101, v99);
    if (!v81)
    {
      goto LABEL_21;
    }

    sub_1C96A4754();
    v102 = OUTLINED_FUNCTION_94();
    result = OUTLINED_FUNCTION_23_1(v102, v103, v183);
    if (!v81)
    {
      OUTLINED_FUNCTION_19_27(v178);
      OUTLINED_FUNCTION_19_27(v179);
      v104 = v183;
      v59(v182, v180, v183);
      OUTLINED_FUNCTION_23_1(v181, 1, v104);
      if (!v81)
      {
        sub_1C9470AFC(v181, &qword_1EC3A4A70, &qword_1C96B05D0);
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  return result;
}

uint64_t static PredictedLocationsNotificationSubscription.Kind.read(from:)@<X0>(void *a2@<X8>)
{
  result = sub_1C96A5504();
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t static LocationDisplayContext.read(from:)@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1C96A5504();
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t PrecipitationNotification.Kind.rawValue.getter()
{
  result = 0x676E697472617473;
  switch(*v0)
  {
    case 1:
      result = 0x676E6970706F7473;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PrecipitationNotification.init(identifier:kind:starting:stopping:intensity:forecast:date:endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v15 = *a3;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v15;
  v16 = type metadata accessor for PrecipitationNotification(0);
  v17 = v16[6];
  v18 = sub_1C96A5DD4();
  OUTLINED_FUNCTION_6();
  v20 = *(v19 + 32);
  v20(a9 + v17, a4, v18);
  v20(a9 + v16[7], a5, v18);
  v21 = v16[8];
  sub_1C96A5CB4();
  OUTLINED_FUNCTION_6();
  (*(v22 + 32))(a9 + v21, a6);
  v23 = v16[9];
  sub_1C96A5D64();
  OUTLINED_FUNCTION_6();
  (*(v24 + 32))(a9 + v23, a7);
  v25 = v16[10];
  sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  (*(v26 + 32))(a9 + v25, a8);
  v27 = a9 + v16[11];

  return sub_1C948E818(a10, v27);
}

uint64_t type metadata accessor for PrecipitationNotification(uint64_t a1)
{
  result = qword_1EC3A7638;
  if (!qword_1EC3A7638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PrecipitationNotification.identifier.getter()
{
  v1 = *v0;
  sub_1C96A53C4();
  return v1;
}

uint64_t PrecipitationNotification.starting.getter()
{
  OUTLINED_FUNCTION_14_32();
  sub_1C96A5DD4();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_3_24();

  return v1(v0);
}

uint64_t PrecipitationNotification.stopping.getter()
{
  OUTLINED_FUNCTION_14_32();
  sub_1C96A5DD4();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_3_24();

  return v1(v0);
}

uint64_t PrecipitationNotification.intensity.getter()
{
  OUTLINED_FUNCTION_14_32();
  sub_1C96A5CB4();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_3_24();

  return v1(v0);
}

uint64_t PrecipitationNotification.forecast.getter()
{
  OUTLINED_FUNCTION_14_32();
  sub_1C96A5D64();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_3_24();

  return v1(v0);
}

uint64_t PrecipitationNotification.date.getter()
{
  OUTLINED_FUNCTION_14_32();
  sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_3_24();

  return v1(v0);
}

uint64_t PrecipitationNotification.endDate.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_14_32() + 44);

  return sub_1C94D63E8(v2, v0);
}

WeatherCore::PrecipitationNotification::Kind_optional __swiftcall PrecipitationNotification.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C9635764(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957547 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E697472617473 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E6970706F7473 && a2 == 0xE800000000000000;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7469736E65746E69 && a2 == 0xE900000000000079;
          if (v9 || (sub_1C96A7DE4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7473616365726F66 && a2 == 0xE800000000000000;
            if (v10 || (sub_1C96A7DE4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1702125924 && a2 == 0xE400000000000000;
              if (v11 || (sub_1C96A7DE4() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C96A7DE4();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C96359F4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1684957547;
      break;
    case 2:
      v3 = 0x697472617473;
      goto LABEL_6;
    case 3:
      v3 = 0x6970706F7473;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      break;
    case 4:
      result = 0x7469736E65746E69;
      break;
    case 5:
      result = 0x7473616365726F66;
      break;
    case 6:
      result = 1702125924;
      break;
    case 7:
      result = 0x65746144646E65;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C9635AFC@<X0>(unint64_t *a1@<X8>)
{
  result = PrecipitationNotification.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C9635BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9635764(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9635C04(uint64_t a1)
{
  v2 = sub_1C963616C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9635C40(uint64_t a1)
{
  v2 = sub_1C963616C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PrecipitationNotification.description.getter()
{
  v1 = v0;
  BYTE8(v12) = 0;
  sub_1C96A7A94();
  MEMORY[0x1CCA8CB00](0x3A646E694BLL, 0xE500000000000000);
  *&v12 = *(v0 + 16);
  sub_1C96A7B54();
  OUTLINED_FUNCTION_16_30();
  v2 = type metadata accessor for PrecipitationNotification(0);
  v3 = *(v2 + 24);
  sub_1C96A5DD4();
  OUTLINED_FUNCTION_15_33(v1 + v3, v4, v5);
  OUTLINED_FUNCTION_16_30();
  OUTLINED_FUNCTION_15_33(v1 + *(v2 + 28), v6, v7);
  MEMORY[0x1CCA8CB00](0xD00000000000001BLL, 0x80000001C96D5A30);
  sub_1C96A5CB4();
  sub_1C96A7B54();
  MEMORY[0x1CCA8CB00](0x203A65746144203BLL, 0xE800000000000000);
  sub_1C96A4A54();
  OUTLINED_FUNCTION_0_92();
  sub_1C9636B60(v8, v9, MEMORY[0x1E6969570]);
  v10 = sub_1C96A7DB4();
  MEMORY[0x1CCA8CB00](v10);

  return *(&v12 + 1);
}

uint64_t PrecipitationNotification.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A75E8, &qword_1C96BF008);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C963616C();
  sub_1C96A7F54();
  v20[31] = 0;
  OUTLINED_FUNCTION_0_0();
  sub_1C96A7D24();
  if (!v2)
  {
    v20[30] = *(v3 + 16);
    v20[29] = 1;
    sub_1C96361C0();
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D74();
    type metadata accessor for PrecipitationNotification(0);
    v20[28] = 2;
    sub_1C96A5DD4();
    OUTLINED_FUNCTION_6_50();
    sub_1C9636B60(v11, v12, MEMORY[0x1E69E1930]);
    OUTLINED_FUNCTION_3_50();
    sub_1C96A7D74();
    v20[27] = 3;
    OUTLINED_FUNCTION_3_50();
    sub_1C96A7D74();
    v20[26] = 4;
    sub_1C96A5CB4();
    OUTLINED_FUNCTION_8_41();
    sub_1C9636B60(v13, v14, MEMORY[0x1E69E18E0]);
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D74();
    v20[25] = 5;
    sub_1C96A5D64();
    OUTLINED_FUNCTION_7_42();
    sub_1C9636B60(v15, v16, MEMORY[0x1E69E1910]);
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D74();
    v20[24] = 6;
    sub_1C96A4A54();
    OUTLINED_FUNCTION_0_92();
    sub_1C9636B60(v17, v18, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_3_50();
    sub_1C96A7D74();
    v20[15] = 7;
    OUTLINED_FUNCTION_3_50();
    sub_1C96A7D14();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1C963616C()
{
  result = qword_1EC3A75F0;
  if (!qword_1EC3A75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A75F0);
  }

  return result;
}

unint64_t sub_1C96361C0()
{
  result = qword_1EC3A75F8;
  if (!qword_1EC3A75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A75F8);
  }

  return result;
}

uint64_t PrecipitationNotification.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = v57 - v4;
  v70 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v63 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v61 = v8 - v7;
  v66 = sub_1C96A5D64();
  OUTLINED_FUNCTION_1();
  v64 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v62 = v12 - v11;
  v67 = sub_1C96A5CB4();
  OUTLINED_FUNCTION_1();
  v65 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v17 = v16 - v15;
  v75 = sub_1C96A5DD4();
  OUTLINED_FUNCTION_1();
  v69 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v57 - v23;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7610, &qword_1C96BF010);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v25);
  v74 = type metadata accessor for PrecipitationNotification(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14();
  v71 = (v28 - v27);
  v29 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1C963616C();
  v30 = v72;
  sub_1C96A7F44();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v73);
  }

  v72 = v17;
  v84 = 0;
  v31 = sub_1C96A7C84();
  v32 = v71;
  *v71 = v31;
  v32[1] = v33;
  v82 = 1;
  sub_1C9636B0C();
  sub_1C96A7CB4();
  *(v32 + 16) = v83;
  v81 = 2;
  OUTLINED_FUNCTION_6_50();
  v36 = sub_1C9636B60(v34, v35, MEMORY[0x1E69E1938]);
  v37 = v75;
  sub_1C96A7CB4();
  v58 = v36;
  v38 = v74;
  v39 = v32 + *(v74 + 24);
  v57[0] = *(v69 + 32);
  v57[1] = v69 + 32;
  (v57[0])(v39, v24, v37);
  v80 = 3;
  sub_1C96A7CB4();
  (v57[0])(v32 + *(v38 + 28), v21, v37);
  v79 = 4;
  OUTLINED_FUNCTION_8_41();
  sub_1C9636B60(v40, v41, MEMORY[0x1E69E18E8]);
  v42 = v67;
  sub_1C96A7CB4();
  v43 = v32;
  LODWORD(v58) = 1;
  v44 = v74;
  (*(v65 + 32))(v43 + *(v74 + 32), v72, v42);
  v78 = 5;
  OUTLINED_FUNCTION_7_42();
  sub_1C9636B60(v45, v46, MEMORY[0x1E69E1918]);
  v47 = v62;
  v48 = v66;
  sub_1C96A7CB4();
  (*(v64 + 32))(v43 + v44[9], v47, v48);
  v77 = 6;
  OUTLINED_FUNCTION_0_92();
  sub_1C9636B60(v49, v50, MEMORY[0x1E6969558]);
  v51 = v61;
  v52 = v70;
  OUTLINED_FUNCTION_13_40();
  sub_1C96A7CB4();
  (*(v63 + 32))(v43 + v44[10], v51, v52);
  v76 = 7;
  v53 = v60;
  OUTLINED_FUNCTION_13_40();
  sub_1C96A7C74();
  v54 = OUTLINED_FUNCTION_5_49();
  v55(v54);
  sub_1C948E818(v53, v43 + v44[11]);
  sub_1C9636BA8(v43, v59);
  __swift_destroy_boxed_opaque_existential_1Tm(v73);
  return sub_1C9636C0C(v43);
}

unint64_t sub_1C9636B0C()
{
  result = qword_1EC3A7618;
  if (!qword_1EC3A7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7618);
  }

  return result;
}

uint64_t sub_1C9636B60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C9636BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationNotification(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9636C0C(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationNotification(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C9636C6C()
{
  result = qword_1EC3A7630;
  if (!qword_1EC3A7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7630);
  }

  return result;
}

void sub_1C9636D18(uint64_t a1)
{
  sub_1C96A5DD4();
  if (v1 <= 0x3F)
  {
    sub_1C96A5CB4();
    if (v2 <= 0x3F)
    {
      sub_1C96A5D64();
      if (v3 <= 0x3F)
      {
        sub_1C96A4A54();
        if (v4 <= 0x3F)
        {
          sub_1C94612C0(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PrecipitationNotification.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PrecipitationNotification.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9636FB8()
{
  result = qword_1EC3A7648;
  if (!qword_1EC3A7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7648);
  }

  return result;
}

unint64_t sub_1C9637010()
{
  result = qword_1EC3A7650;
  if (!qword_1EC3A7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7650);
  }

  return result;
}

unint64_t sub_1C9637068()
{
  result = qword_1EC3A7658;
  if (!qword_1EC3A7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7658);
  }

  return result;
}

unint64_t sub_1C96370BC()
{
  result = qword_1EC3A7660;
  if (!qword_1EC3A7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7660);
  }

  return result;
}

uint64_t sub_1C9637110()
{
  v0 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C96A45A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C96A45C4();
  __swift_allocate_value_buffer(v6, qword_1EC3A7668);
  __swift_project_value_buffer(v6, qword_1EC3A7668);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EDB94A40);
  (*(v2 + 16))(v4, v7, v1);
  sub_1C96A4BC4();
  return sub_1C96A45D4();
}

uint64_t static SetTemperatureUnitIntent.title.modify()
{
  if (qword_1EC3A4800 != -1)
  {
    swift_once();
  }

  v0 = sub_1C96A45C4();
  v1 = __swift_project_value_buffer(v0, qword_1EC3A7668);
  OUTLINED_FUNCTION_19_1(v1);
  return OUTLINED_FUNCTION_12_36();
}

uint64_t sub_1C9637418@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C9639B24(&qword_1EC3A4800, MEMORY[0x1E6968E10], qword_1EC3A7668, sub_1C9637110);
  swift_beginAccess();
  v3 = sub_1C96A45C4();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1C96374C8(uint64_t a1)
{
  v2 = sub_1C9639B24(&qword_1EC3A4800, MEMORY[0x1E6968E10], qword_1EC3A7668, sub_1C9637110);
  swift_beginAccess();
  v3 = sub_1C96A45C4();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t sub_1C9637580()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708, &qword_1C96AF8B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C96A45A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C96A3E34();
  __swift_allocate_value_buffer(v10, qword_1EC3A7680);
  __swift_project_value_buffer(v10, qword_1EC3A7680);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_1EDB94A40);
  (*(v5 + 16))(v7, v11, v4);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  return sub_1C96A3E54();
}

uint64_t static SetTemperatureUnitIntent.description.modify()
{
  if (qword_1EC3A4808 != -1)
  {
    swift_once();
  }

  v0 = sub_1C96A3E34();
  v1 = __swift_project_value_buffer(v0, qword_1EC3A7680);
  OUTLINED_FUNCTION_19_1(v1);
  return OUTLINED_FUNCTION_12_36();
}

uint64_t sub_1C9637954@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C9639B24(&qword_1EC3A4808, MEMORY[0x1E695A200], qword_1EC3A7680, sub_1C9637580);
  swift_beginAccess();
  v3 = sub_1C96A3E34();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1C9637A04(uint64_t a1)
{
  v2 = sub_1C9639B24(&qword_1EC3A4808, MEMORY[0x1E695A200], qword_1EC3A7680, sub_1C9637580);
  swift_beginAccess();
  v3 = sub_1C96A3E34();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t sub_1C9637ABC()
{
  v0 = sub_1C96A3B84();
  __swift_allocate_value_buffer(v0, qword_1EC3A7698);
  __swift_project_value_buffer(v0, qword_1EC3A7698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C00, &qword_1C96B2380);
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  sub_1C96A3B74();
  sub_1C95E0D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C50, &unk_1C96BACE0);
  sub_1C9469CB4(&qword_1EC3A6C58, &qword_1EC3A6C50, &unk_1C96BACE0, MEMORY[0x1E69E6328]);
  return sub_1C96A79E4();
}

uint64_t static SetTemperatureUnitIntent.supportedModes.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC3A4810 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A3B84();
  __swift_project_value_buffer(v2, qword_1EC3A7698);
  OUTLINED_FUNCTION_8_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t static SetTemperatureUnitIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A76D0, &qword_1C96BF310);
  v1 = OUTLINED_FUNCTION_7(v0);
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A76D8, &qword_1C96BF318);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C9637E58();
  sub_1C96A3F44();
  sub_1C96A3F34();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A76E8, &qword_1C96BF348);
  sub_1C96A3F24();

  sub_1C96A3F34();
  sub_1C96A3F54();
  return sub_1C96A3F14();
}

unint64_t sub_1C9637E58()
{
  result = qword_1EC3A76E0;
  if (!qword_1EC3A76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A76E0);
  }

  return result;
}

uint64_t sub_1C9637F2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C9637EAC();
  *a1 = result;
  return result;
}

uint64_t SetTemperatureUnitIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v36 = sub_1C96A3F64();
  OUTLINED_FUNCTION_1();
  v34 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v35 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5B40, &unk_1C96BC780);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708, &qword_1C96AF8B0);
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = sub_1C96A4C14();
  v15 = OUTLINED_FUNCTION_7(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  v16 = sub_1C96A45A4();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  v22 = v21 - v20;
  v23 = sub_1C96A6FF4();
  v24 = OUTLINED_FUNCTION_7(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  v25 = sub_1C96A45C4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A76F0, &qword_1C96BF350);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v16, qword_1EDB94A40);
  v28 = *(v18 + 16);
  v28(v22, v27, v16);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_2_7();
  sub_1C96A45D4();
  sub_1C96A6FA4();
  v28(v22, v27, v16);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_2_7();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v25);
  v38[0] = 3;
  v29 = sub_1C96A3B94();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v29);
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v29);
  (*(v34 + 104))(v35, *MEMORY[0x1E695A500], v36);
  sub_1C963ABE4();
  *v37 = sub_1C96A3C94();
  return sub_1C954DDE0();
}

uint64_t SetTemperatureUnitIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C96383D8, 0, 0);
}

uint64_t sub_1C96383D8()
{
  v15 = v0;
  sub_1C96A3C64();
  if (*(v0 + 32))
  {
    if (*(v0 + 32) != 1)
    {
      goto LABEL_10;
    }

    v1 = &selRef_fahrenheit;
  }

  else
  {
    v1 = &selRef_celsius;
  }

  v2 = [objc_opt_self() *v1];
  if (v2)
  {
    v3 = v2;
    if (qword_1EDB80318 != -1)
    {
      OUTLINED_FUNCTION_16(&qword_1EDB80318);
    }

    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 celsius];
    sub_1C946B5D0(0, &qword_1EDB80068, 0x1E696B080);
    v7 = sub_1C96A78B4();

    if (v7)
    {

      v8 = 1;
    }

    else
    {
      v9 = [v4 fahrenheit];
      v10 = sub_1C96A78B4();

      if (v10)
      {
        v8 = 0;
      }

      else
      {
        v8 = 2;
      }
    }

    v14 = v8;
    UnitManager.setPreferredTemperatureUnit(_:)(&v14);

    goto LABEL_17;
  }

LABEL_10:
  if (qword_1EDB80318 != -1)
  {
    OUTLINED_FUNCTION_16(&qword_1EDB80318);
  }

  v13 = 2;
  UnitManager.setPreferredTemperatureUnit(_:)(&v13);
LABEL_17:
  sub_1C946B5D0(0, &qword_1EDB80340, 0x1E695E000);
  static NSUserDefaults.postSettingsUpdatedNotification()();
  static WidgetUtilities.reloadWidget(reason:)(0xD00000000000003DLL, 0x80000001C96D5A70);
  sub_1C96A3BB4();
  v11 = *(v0 + 8);

  return v11();
}

void __swiftcall TemperatureUnit.temperatureUnit()(NSUnitTemperature_optional *__return_ptr retstr)
{
  if (*v1)
  {
    if (*v1 != 1)
    {
      return;
    }

    v2 = &selRef_fahrenheit;
  }

  else
  {
    v2 = &selRef_celsius;
  }

  v3 = [objc_opt_self() *v2];
}

uint64_t sub_1C9638688(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C94B9278;

  return SetTemperatureUnitIntent.perform()(a1);
}

uint64_t sub_1C9638724(uint64_t a1)
{
  v2 = sub_1C9637E58();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1C9638760()
{
  sub_1C96A3E14();
  OUTLINED_FUNCTION_1();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  SetTemperatureUnitIntent.init()(&v15);
  v3 = sub_1C9637E58();
  OUTLINED_FUNCTION_5_50(v3, sub_1C96388FC, v4, sub_1C963903C);
  v5 = sub_1C96A3E04();
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_117();
  v6(v7);
  v8 = SetTemperatureUnitIntent.init()(&v15);
  OUTLINED_FUNCTION_5_50(v8, sub_1C9639198, v9, sub_1C96394CC);
  v10 = sub_1C96A3E04();
  v11 = OUTLINED_FUNCTION_117();
  v6(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BC0, &qword_1C96BCBF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C96AEF50;
  *(v12 + 32) = v5;
  *(v12 + 40) = v10;
  v13 = sub_1C96A3DF4();

  return v13;
}

uint64_t sub_1C96388FC(uint64_t a1)
{
  v24 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7788, &qword_1C96BF7D8);
  v1 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7790, &qword_1C96BF7E0);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C9637E58();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  v25 = sub_1C963AF2C();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v20 = sub_1C96A3D34();
  v6 = v1 + 8;
  v5 = *(v1 + 8);
  v7 = v22;
  v5(v3, v22);
  v21 = v5;
  v23 = v6;
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v19 = sub_1C96A3D34();
  v5(v3, v7);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v18 = sub_1C96A3D34();
  v21(v3, v22);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v17 = sub_1C96A3D34();
  v8 = v21;
  v9 = v22;
  v21(v3, v22);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v16 = sub_1C96A3D34();
  v8(v3, v9);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v10 = sub_1C96A3D34();
  v8(v3, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7798, &unk_1C96BF7E8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C96BA7C0;
  v12 = v19;
  *(v11 + 32) = v20;
  *(v11 + 40) = v12;
  v13 = v17;
  *(v11 + 48) = v18;
  *(v11 + 56) = v13;
  *(v11 + 64) = v16;
  *(v11 + 72) = v10;
  v14 = sub_1C96A3D24();

  return v14;
}

void *sub_1C9638F9C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1C9637ED0();
  *a2 = v4;
  return result;
}

uint64_t sub_1C9638FE0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v5 = *a2;
  v4 = v2;
  sub_1C96A3D04();
  sub_1C9637EF4(&v4);
}

uint64_t sub_1C9639054()
{
  v0 = sub_1C96A3D54();
  v1 = sub_1C96A3D54();
  v2 = sub_1C96A3D54();
  v3 = sub_1C96A3D54();
  v4 = sub_1C96A3D54();
  v5 = sub_1C96A3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB8, &unk_1C96B2320);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C96BA7C0;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_1C96A3D44();

  return v7;
}

uint64_t sub_1C9639198(uint64_t a1)
{
  v11[1] = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7788, &qword_1C96BF7D8);
  v1 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v3 = v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7790, &qword_1C96BF7E0);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C9637E58();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C963AF2C();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v12 = sub_1C96A3D34();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v7 = sub_1C96A3D34();
  v5(v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7798, &unk_1C96BF7E8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C96AEF50;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_1C96A3D24();

  return v9;
}

uint64_t sub_1C96394E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C96A3D94();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  swift_getKeyPath();
  sub_1C963AF2C();
  sub_1C96A3D04();

  sub_1C9637E58();
  sub_1C96A3D84();
  v9 = sub_1C96A3D74();
  (*(v4 + 8))(v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BD0, &qword_1C96BCC20);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C96AA1C0;
  *(v10 + 32) = v9;
  v11 = sub_1C96A3D64();

  return v11;
}

uint64_t sub_1C9639634()
{
  v0 = sub_1C96A3D54();
  v1 = sub_1C96A3D54();
  v2 = sub_1C96A3D54();
  v3 = sub_1C96A3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB8, &unk_1C96B2320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C96AC330;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_1C96A3D44();

  return v5;
}

uint64_t sub_1C963971C()
{
  sub_1C96A3CF4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14();
  sub_1C9637E58();
  sub_1C96A3CE4();
  v1 = sub_1C96A3CD4();
  v2 = OUTLINED_FUNCTION_117();
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB0, &unk_1C96BCBE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C96AA1C0;
  *(v4 + 32) = v1;
  v5 = sub_1C96A3CC4();

  return v5;
}

uint64_t sub_1C963984C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708, &qword_1C96AF8B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C96A45A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C96A3FD4();
  __swift_allocate_value_buffer(v10, qword_1EC3A76B0);
  __swift_project_value_buffer(v10, qword_1EC3A76B0);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_1EDB94A40);
  (*(v5 + 16))(v7, v11, v4);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  return sub_1C96A3FC4();
}

uint64_t sub_1C9639B24(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = a2(0);

  return __swift_project_value_buffer(v6, a3);
}

uint64_t sub_1C9639BB8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  v9 = __swift_project_value_buffer(v8, a3);
  swift_beginAccess();
  OUTLINED_FUNCTION_8_1();
  return (*(v10 + 16))(a5, v9, v8);
}

uint64_t sub_1C9639C9C(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v8 = a3(0);
  __swift_project_value_buffer(v8, a4);
  swift_beginAccess();
  v9 = *(v8 - 8);
  v10 = OUTLINED_FUNCTION_117();
  v11(v10);
  swift_endAccess();
  return (*(v9 + 8))(a1, v8);
}

uint64_t static TemperatureUnit.typeDisplayRepresentation.modify(__n128 a1)
{
  if (qword_1EC3A4818 != -1)
  {
    swift_once();
  }

  v1 = sub_1C96A3FD4();
  v2 = __swift_project_value_buffer(v1, qword_1EC3A76B0);
  OUTLINED_FUNCTION_19_1(v2);
  return OUTLINED_FUNCTION_12_36();
}

uint64_t sub_1C9639E00@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C9639B24(&qword_1EC3A4818, MEMORY[0x1E695A558], qword_1EC3A76B0, sub_1C963984C);
  swift_beginAccess();
  v3 = sub_1C96A3FD4();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1C9639EB0(uint64_t a1)
{
  v2 = sub_1C9639B24(&qword_1EC3A4818, MEMORY[0x1E695A558], qword_1EC3A76B0, sub_1C963984C);
  swift_beginAccess();
  v3 = sub_1C96A3FD4();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t sub_1C9639F68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5700, &qword_1C96BCBC0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v46 = &v28 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708, &qword_1C96AF8B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v44 = &v28 - v3;
  v4 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1C96A45A4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v45 = sub_1C96A45C4();
  v10 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A77A0, &qword_1C96BF7F8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A77A8, qword_1C96BF800);
  v13 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
  v42 = *(*(v12 - 8) + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C96AB910;
  v36 = v12;
  v37 = v14;
  v31 = *(v12 + 48);
  v40 = (v14 + v13);
  *(v14 + v13) = 0;
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v5, qword_1EDB94A40);
  v15 = *(v6 + 16);
  v15(v8, v39, v5);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v44, 1, 1, v45);
  v41 = sub_1C96A3E84();
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v41);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5998, &qword_1C96B15E0);
  v17 = *(v10 + 72);
  v34 = v16;
  v35 = v17;
  v33 = *(v10 + 80);
  v38 = v5;
  v28 = v6 + 16;
  v30 = (v33 + 32) & ~v33;
  v18 = swift_allocObject();
  v32 = xmmword_1C96AA1C0;
  *(v18 + 16) = xmmword_1C96AA1C0;
  sub_1C96A6FA4();
  v19 = v39;
  v29 = v15;
  v15(v8, v39, v5);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  v20 = v40;
  v21 = v44;
  sub_1C96A3E94();
  v22 = &v20[v42];
  v23 = v36;
  v31 = *(v36 + 48);
  *v22 = 1;
  sub_1C96A6FA4();
  v15(v8, v19, v38);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v41);
  sub_1C96A3EA4();
  v40 += 2 * v42;
  v42 = *(v23 + 48);
  *v40 = 2;
  sub_1C96A6FA4();
  v24 = v38;
  v25 = v39;
  v26 = v29;
  v29(v8, v39, v38);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v41);
  *(swift_allocObject() + 16) = v32;
  sub_1C96A6FA4();
  v26(v8, v25, v24);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  sub_1C96A3E94();
  sub_1C96A3EB4();
  sub_1C963B0DC();
  result = sub_1C96A6F04();
  qword_1EC3A76C8 = result;
  return result;
}

uint64_t *sub_1C963A6DC()
{
  if (qword_1EC3A4820 != -1)
  {
    OUTLINED_FUNCTION_0_93(&qword_1EC3A4820);
  }

  return &qword_1EC3A76C8;
}

double static TemperatureUnit.caseDisplayRepresentations.getter()
{
  if (qword_1EC3A4820 != -1)
  {
    OUTLINED_FUNCTION_0_93(&qword_1EC3A4820);
  }

  swift_beginAccess();
  sub_1C96A53C4();
  return result;
}

uint64_t static TemperatureUnit.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_1EC3A4820 != -1)
  {
    OUTLINED_FUNCTION_0_93(&qword_1EC3A4820);
  }

  swift_beginAccess();
  qword_1EC3A76C8 = a1;
}

uint64_t static TemperatureUnit.caseDisplayRepresentations.modify()
{
  if (qword_1EC3A4820 != -1)
  {
    OUTLINED_FUNCTION_0_93(&qword_1EC3A4820);
  }

  OUTLINED_FUNCTION_117();
  swift_beginAccess();
  return OUTLINED_FUNCTION_12_36();
}

double sub_1C963A864@<D0>(void *a1@<X8>)
{
  sub_1C963A6DC();
  swift_beginAccess();
  *a1 = qword_1EC3A76C8;
  sub_1C96A53C4();
  return result;
}

uint64_t sub_1C963A8B8(uint64_t *a1)
{
  v1 = *a1;
  sub_1C96A53C4();
  sub_1C963A6DC();
  swift_beginAccess();
  qword_1EC3A76C8 = v1;
}

void static TemperatureUnit.fromTemperatureUnit(_:)(void *a1@<X0>, char *a2@<X8>)
{
  if (a1)
  {
    sub_1C946B5D0(0, &qword_1EDB80068, 0x1E696B080);
    v4 = objc_opt_self();
    v5 = a1;
    v6 = [v4 celsius];
    v7 = sub_1C96A78B4();

    if (v7)
    {

      v8 = 0;
    }

    else
    {
      v9 = [v4 fahrenheit];
      v10 = sub_1C96A78B4();

      if (v10)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }
    }
  }

  else
  {
    v8 = 2;
  }

  *a2 = v8;
}

WeatherCore::TemperatureUnit_optional __swiftcall TemperatureUnit.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TemperatureUnit.rawValue.getter()
{
  v1 = 0x65686E6572686166;
  if (*v0 != 1)
  {
    v1 = 0x7953726F7272696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737569736C6563;
  }
}

uint64_t sub_1C963AB0C@<X0>(uint64_t *a1@<X8>)
{
  result = TemperatureUnit.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C963AB38(uint64_t a1)
{
  v2 = sub_1C963ABE4();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1C963AB88(uint64_t a1)
{
  v2 = sub_1C963AF84();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1C963ABE4()
{
  result = qword_1EC3A76F8;
  if (!qword_1EC3A76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A76F8);
  }

  return result;
}

unint64_t sub_1C963AC3C()
{
  result = qword_1EC3A7700;
  if (!qword_1EC3A7700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7700);
  }

  return result;
}

unint64_t sub_1C963AC94()
{
  result = qword_1EC3A7708;
  if (!qword_1EC3A7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7708);
  }

  return result;
}

unint64_t sub_1C963AD24()
{
  result = qword_1EC3A7710;
  if (!qword_1EC3A7710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7710);
  }

  return result;
}

unint64_t sub_1C963AD7C()
{
  result = qword_1EC3A7718;
  if (!qword_1EC3A7718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7718);
  }

  return result;
}

unint64_t sub_1C963ADD4()
{
  result = qword_1EC3A7720;
  if (!qword_1EC3A7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7720);
  }

  return result;
}

unint64_t sub_1C963AE2C()
{
  result = qword_1EC3A7728;
  if (!qword_1EC3A7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7728);
  }

  return result;
}

unint64_t sub_1C963AE84()
{
  result = qword_1EC3A7730;
  if (!qword_1EC3A7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7730);
  }

  return result;
}

unint64_t sub_1C963AED8()
{
  result = qword_1EC3A7738;
  if (!qword_1EC3A7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7738);
  }

  return result;
}

unint64_t sub_1C963AF2C()
{
  result = qword_1EC3A7740;
  if (!qword_1EC3A7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7740);
  }

  return result;
}

unint64_t sub_1C963AF84()
{
  result = qword_1EC3A7748;
  if (!qword_1EC3A7748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7748);
  }

  return result;
}

unint64_t sub_1C963B02C()
{
  result = qword_1EC3A7750;
  if (!qword_1EC3A7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7750);
  }

  return result;
}

unint64_t sub_1C963B084()
{
  result = qword_1EC3A7758;
  if (!qword_1EC3A7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7758);
  }

  return result;
}

unint64_t sub_1C963B0DC()
{
  result = qword_1EC3A7760;
  if (!qword_1EC3A7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7760);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemperatureUnit(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C963B2C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_1C96A4764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC11WeatherCore24CoherenceContextProvider_useTransientContext) == 1)
  {
    sub_1C96A6E34();
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v8 = MEMORY[0x1CCA8C7A0](0, &v25);
    sub_1C9470AFC(&v25, qword_1EC3A6DB0, &qword_1C96BB690);
  }

  else
  {
    if (qword_1EDB7D060 != -1)
    {
      swift_once();
    }

    v9 = sub_1C96A6154();
    v10 = __swift_project_value_buffer(v9, qword_1EDB7D068);
    sub_1C96A3D04();
    v11 = sub_1C96A6134();
    v12 = sub_1C96A76A4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v24 = v10;
      v14 = v13;
      v15 = swift_slowAlloc();
      v23 = v5;
      v16 = v15;
      *&v25 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      v17 = sub_1C96A4744();
      v19 = sub_1C9484164(v17, v18, &v25);

      *(v14 + 14) = v19;
      _os_log_impl(&dword_1C945E000, v11, v12, "CoherenceContextProvider use store file= %{private,mask.hash}s", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      v20 = v16;
      v5 = v23;
      MEMORY[0x1CCA8E3D0](v20, -1, -1);
      MEMORY[0x1CCA8E3D0](v14, -1, -1);
    }

    sub_1C96A6E34();
    (*(v5 + 16))(v7, v0 + OBJC_IVAR____TtC11WeatherCore24CoherenceContextProvider_storageURL, v4);
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
    return sub_1C96A6E24();
  }

  return v8;
}

uint64_t sub_1C963B874()
{
  v1 = OBJC_IVAR____TtC11WeatherCore24CoherenceContextProvider_containerURL;
  v2 = sub_1C96A4764();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC11WeatherCore24CoherenceContextProvider_storageURL, v2);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

WeatherCore::WeatherMapOverlayServiceSource __swiftcall WeatherMapOverlayServiceSource.normalized(mapsConfiguration:)(WeatherCore::MapsConfiguration *mapsConfiguration)
{
  v3 = v1;
  if (*v2)
  {
    *v1 = *v2;
  }

  else
  {
    value = mapsConfiguration->useHTTP2.value;
    sub_1C96A4EE4();
    sub_1C96A4EC4();
    if (qword_1EDB7FD38 != -1)
    {
      OUTLINED_FUNCTION_0_94(&qword_1EDB7FD38);
    }

    sub_1C96A4EB4();

    v5 = v7;
    switch(v7)
    {
      case 1:
        goto LABEL_10;
      case 2:
      case 6:
        break;
      case 3:
      case 4:
        v5 = 3;
        break;
      case 5:
        v5 = 1;
        break;
      default:
        if (value == 2 || (value & 1) != 0)
        {
          v5 = 5;
        }

        else
        {
LABEL_10:
          v5 = 4;
        }

        break;
    }

    *v3 = v5;
  }

  return mapsConfiguration;
}

WeatherCore::WeatherMapOverlayServiceSource_optional __swiftcall WeatherMapOverlayServiceSource.sourceOverrideForHostnameForAuthenticationSignature(mapsConfiguration:)(WeatherCore::MapsConfiguration *mapsConfiguration)
{
  v3 = v1;
  value = mapsConfiguration->useHTTP2.value;
  v5 = 4;
  switch(*v2)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
LABEL_2:
      v5 = 7;
      break;
    case 5:
      break;
    default:
      sub_1C96A4EE4();
      sub_1C96A4EC4();
      if (qword_1EDB7FD38 != -1)
      {
        OUTLINED_FUNCTION_0_94(&qword_1EDB7FD38);
      }

      sub_1C96A4EB4();

      switch(v7)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
          goto LABEL_2;
        default:
          if (value != 2 && (value & 1) == 0)
          {
            goto LABEL_2;
          }

          v5 = 4;
          break;
      }

      break;
  }

  *v3 = v5;
  return mapsConfiguration;
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StoredUnitsConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[6])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      if (v3 <= 2)
      {
        v4 = 2;
      }

      else
      {
        v4 = *a1;
      }

      v5 = v4 - 3;
      if (v3 < 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StoredUnitsConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1C963BC6C()
{
  result = qword_1EC3A77B0;
  if (!qword_1EC3A77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A77B0);
  }

  return result;
}

uint64_t sub_1C963BCC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6174736964 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6572757373657270 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65657053646E6977 && a2 == 0xE900000000000064;
          if (v9 || (sub_1C96A7DE4() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000011 && 0x80000001C96D5DC0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C96A7DE4();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C963BEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C963BCC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C963BEEC(uint64_t a1)
{
  v2 = sub_1C948574C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C963BF28(uint64_t a1)
{
  v2 = sub_1C948574C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C963BF64(uint64_t a1)
{
  v2 = v1;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  if (*v2 == 2)
  {
    sub_1C96A7F04();
  }

  else
  {
    sub_1C96A7F04();
    sub_1C96A7144();
  }

  sub_1C96A7F04();
  if (v4 != 2)
  {
    sub_1C96A7144();
  }

  sub_1C96A7F04();
  if (v5 != 5)
  {
    sub_1C9690880();
  }

  sub_1C96A7F04();
  if (v6 != 2)
  {
    sub_1C96A7144();
  }

  sub_1C96A7F04();
  if (v7 != 5)
  {
    sub_1C968915C(a1, v7);
  }

  return sub_1C96A7F04();
}

uint64_t sub_1C963C0F8()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v4[18] = *v0;
  v5 = v1;
  v6 = v2;
  sub_1C96A7EE4();
  sub_1C963BF64(v4);
  return sub_1C96A7F24();
}

uint64_t sub_1C963C154(uint64_t a1)
{
  sub_1C9485C10();

  return sub_1C96A53A4();
}

uint64_t sub_1C963C19C(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 5);
  v5[18] = *v1;
  v6 = v2;
  v7 = v3;
  sub_1C96A7EE4();
  sub_1C963BF64(v5);
  return sub_1C96A7F24();
}

unint64_t sub_1C963C1F8()
{
  result = qword_1EC3A77D0;
  if (!qword_1EC3A77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A77D0);
  }

  return result;
}

uint64_t AppConfigurationRemoteSettingsProvider.__allocating_init(identityService:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 7;
  sub_1C94924FC(a1, v2 + 16);
  return v2;
}

uint64_t sub_1C963C2A0()
{
  result = *(v0 + 56);
  if (result == 7)
  {
    if (qword_1EDB7FD38 != -1)
    {
      swift_once();
    }

    sub_1C963D998();
    sub_1C96A4E44();
    result = v2;
    *(v0 + 56) = v2;
  }

  return result;
}

uint64_t AppConfigurationRemoteSettingsProvider.init(identityService:)(__int128 *a1)
{
  *(v1 + 56) = 7;
  sub_1C94924FC(a1, v1 + 16);
  return v1;
}

uint64_t AppConfigurationRemoteSettingsProvider.settings.getter()
{
  OUTLINED_FUNCTION_18();
  v1[22] = v0;
  type metadata accessor for UserIdentity(0);
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
  v1[24] = swift_task_alloc();
  v2 = sub_1C96A42A4();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C963C4A0, 0, 0);
}

uint64_t sub_1C963C4A0()
{
  v28 = v0;
  v1 = sub_1C963C2A0();
  if (qword_1EDB7CFF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A6154();
  *(v0 + 224) = __swift_project_value_buffer(v2, qword_1EDB7CFF8);
  v3 = sub_1C96A6134();
  v4 = sub_1C96A76A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_9_8();
    v6 = OUTLINED_FUNCTION_8_4();
    v27 = v6;
    *v5 = 136446210;
    *(v0 + 256) = v1;
    v7 = sub_1C96A70C4();
    v9 = sub_1C9484164(v7, v8, &v27);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1C945E000, v3, v4, "About to create RemoteConfigurationSetting for environment: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  v10 = sub_1C963CF40(v1);
  if (v10)
  {
    v11 = v10;
    v12 = objc_allocWithZone(MEMORY[0x1E69C6D68]);
    v13 = sub_1C963D2D0(0, 0, 0, 1, v11, 1, 1);
  }

  else
  {
    v13 = 0;
  }

  *(v0 + 232) = v13;
  v14 = v13;
  v15 = sub_1C96A6134();
  v16 = sub_1C96A76A4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_9_8();
    v18 = OUTLINED_FUNCTION_8_4();
    v27 = v18;
    *v17 = 136446210;
    *(v0 + 168) = v13;
    v19 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A77E0, &qword_1C96BFCE8);
    v20 = sub_1C96A70C4();
    v22 = sub_1C9484164(v20, v21, &v27);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1C945E000, v15, v16, "RemoteConfiguratin DebugOverrides=%{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  v23 = [objc_opt_self() ams_sharedAccountStore];
  v24 = [v23 ams_fetchLocaliTunesAccount];
  *(v0 + 240) = v24;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_1C963C840;
  v25 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A77D8, &qword_1C96BFCE0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C963CF54;
  *(v0 + 104) = &block_descriptor_18;
  *(v0 + 112) = v25;
  [v24 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}