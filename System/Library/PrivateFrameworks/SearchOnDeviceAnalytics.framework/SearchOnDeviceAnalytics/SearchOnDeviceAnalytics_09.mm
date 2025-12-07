uint64_t sub_21B04DB50(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21B112094();
  return swift_endAccess();
}

uint64_t sub_21B04DBD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21B112074();
  return swift_endAccess();
}

uint64_t sub_21B04DC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  sub_21B099CBC(&qword_27CD44D08, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

void sub_21B04DD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_817();
  v23 = v22;
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_169();
  v24 = v23();
  OUTLINED_FUNCTION_666(v24);
  OUTLINED_FUNCTION_816();
}

uint64_t sub_21B04DD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  sub_21B099CBC(&qword_27CD45A30, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAttributes);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B04DEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449E8, &qword_21B118150);
  MEMORY[0x28223BE20](v7 - 8);
  v34 = &v33 - v8;
  v35 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  MEMORY[0x28223BE20](v35);
  v33 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
  MEMORY[0x28223BE20](v10 - 8);
  v37 = &v33 - v11;
  v44 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  MEMORY[0x28223BE20](v44);
  v36 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v42 = v13;
  v43 = v14;
  if (!Apple_Parsec_Feedback_V2_CommandType.rawValue.getter() || (v42 = v13, v43 = v14, sub_21B09A19C(), result = sub_21B112174(), !v4))
  {
    swift_beginAccess();
    v16 = *(a1 + 40);
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_21B1121E4();
      if (v4)
      {
      }
    }

    swift_beginAccess();
    if (!*(a1 + 48) || (result = sub_21B112204(), !v4))
    {
      swift_beginAccess();
      v18 = *(a1 + 64);
      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = *(a1 + 56) & 0xFFFFFFFFFFFFLL;
      }

      if (!v19 || (, sub_21B1121E4(), result = , !v4))
      {
        swift_beginAccess();
        v20 = v37;
        sub_21B0AA940();
        if (__swift_getEnumTagSinglePayload(v20, 1, v44) == 1)
        {
          sub_21AF99BE0(v20, &qword_27CD434D8, &qword_21B116AB0);
        }

        else
        {
          sub_21B03179C(v20);
          sub_21B099CBC(&qword_27CD44D08, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
          sub_21B112224();
          result = sub_21B03183C();
          if (v4)
          {
            return result;
          }
        }

        v21 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__timestamp;
        swift_beginAccess();
        if (!*(a1 + v21) || (result = sub_21B112204(), !v4))
        {
          v22 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultSectionID);
          swift_beginAccess();
          v23 = *v22;
          v24 = v22[1];
          v25 = HIBYTE(v24) & 0xF;
          if ((v24 & 0x2000000000000000) == 0)
          {
            v25 = v23 & 0xFFFFFFFFFFFFLL;
          }

          if (!v25 || (, sub_21B1121E4(), result = , !v5))
          {
            v26 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__triggerEvent);
            swift_beginAccess();
            if (!*v26 || (v27 = *(v26 + 8), v40 = *v26, v41 = v27, sub_21B099FF8(), result = sub_21B112174(), !v5))
            {
              v28 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__contactActionType);
              swift_beginAccess();
              if (!*v28 || (v29 = *(v28 + 8), v38 = *v28, v39 = v29, sub_21B0AA6A0(), result = sub_21B112174(), !v5))
              {
                v30 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didDisplayHandleOptions;
                swift_beginAccess();
                if (*(a1 + v30) != 1 || (result = sub_21B112164(), !v5))
                {
                  v31 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didSelectFromOptionsMenu;
                  swift_beginAccess();
                  if (*(a1 + v31) != 1 || (result = sub_21B112164(), !v5))
                  {
                    swift_beginAccess();
                    v32 = v34;
                    sub_21B0AA940();
                    if (__swift_getEnumTagSinglePayload(v32, 1, v35) == 1)
                    {
                      return sub_21AF99BE0(v32, &qword_27CD449E8, &qword_21B118150);
                    }

                    else
                    {
                      sub_21B03179C(v32);
                      sub_21B099CBC(&qword_27CD45A30, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAttributes);
                      sub_21B112224();
                      return sub_21B03183C();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_21B04E5EC(uint64_t a1, uint64_t a2)
{
  v78 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  MEMORY[0x28223BE20](v78);
  v74 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DD0, &qword_21B127D50);
  MEMORY[0x28223BE20](v76);
  v79 = &v74 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449E8, &qword_21B118150);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v75 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v74 - v9;
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  MEMORY[0x28223BE20](v10);
  v80 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434E0, &qword_21B116AB8);
  MEMORY[0x28223BE20](v12);
  v14 = &v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v74 - v19;
  swift_beginAccess();
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  swift_beginAccess();
  v23 = *(a2 + 16);
  v24 = *(a2 + 24);
  v83 = v21;
  v84 = v22;
  v81 = v23;
  v82 = v24;
  v25 = Apple_Parsec_Feedback_V2_CommandType.rawValue.getter();
  if (v25 != Apple_Parsec_Feedback_V2_CommandType.rawValue.getter())
  {
    return 0;
  }

  swift_beginAccess();
  v26 = *(a1 + 32);
  v27 = *(a1 + 40);
  swift_beginAccess();
  v28 = v26 == *(a2 + 32) && v27 == *(a2 + 40);
  if (!v28 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v29 = *(a1 + 48);
  swift_beginAccess();
  if (v29 != *(a2 + 48))
  {
    return 0;
  }

  swift_beginAccess();
  v30 = *(a1 + 56);
  v31 = *(a1 + 64);
  swift_beginAccess();
  v32 = v30 == *(a2 + 56) && v31 == *(a2 + 64);
  if (!v32 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  v33 = *(v12 + 48);
  sub_21B0AA940();
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v14, 1, v10) == 1)
  {

    sub_21AF99BE0(v20, &qword_27CD434D8, &qword_21B116AB0);
    if (__swift_getEnumTagSinglePayload(&v14[v33], 1, v10) == 1)
    {
      sub_21AF99BE0(v14, &qword_27CD434D8, &qword_21B116AB0);
LABEL_23:
      v44 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__timestamp;
      swift_beginAccess();
      v45 = *(a1 + v44);
      v46 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__timestamp;
      swift_beginAccess();
      if (v45 != *(a2 + v46))
      {
        goto LABEL_33;
      }

      v47 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultSectionID);
      swift_beginAccess();
      v48 = *v47;
      v49 = v47[1];
      v50 = (a2 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultSectionID);
      swift_beginAccess();
      v51 = v48 == *v50 && v49 == v50[1];
      if (!v51 && (sub_21B112D04() & 1) == 0)
      {
        goto LABEL_33;
      }

      v52 = a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__triggerEvent;
      swift_beginAccess();
      v53 = *v52;
      v54 = *(v52 + 8);
      v55 = (a2 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__triggerEvent);
      swift_beginAccess();
      if (!sub_21AFB4A88(v53, v54, *v55))
      {
        goto LABEL_33;
      }

      v56 = a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__contactActionType;
      swift_beginAccess();
      v57 = *v56;
      v58 = *(v56 + 8);
      v59 = (a2 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__contactActionType);
      swift_beginAccess();
      if (!sub_21AFB4A88(v57, v58, *v59))
      {
        goto LABEL_33;
      }

      v60 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didDisplayHandleOptions;
      swift_beginAccess();
      LODWORD(v60) = *(a1 + v60);
      v61 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didDisplayHandleOptions;
      swift_beginAccess();
      if (v60 != *(a2 + v61))
      {
        goto LABEL_33;
      }

      v62 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didSelectFromOptionsMenu;
      swift_beginAccess();
      LODWORD(v62) = *(a1 + v62);
      v63 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didSelectFromOptionsMenu;
      swift_beginAccess();
      if (v62 != *(a2 + v63))
      {
        goto LABEL_33;
      }

      swift_beginAccess();
      v65 = v77;
      sub_21B0AA940();
      swift_beginAccess();
      v66 = *(v76 + 48);
      v67 = v79;
      sub_21B0AA940();
      sub_21B0AA940();
      v68 = v78;
      if (__swift_getEnumTagSinglePayload(v67, 1, v78) == 1)
      {

        sub_21AF99BE0(v65, &qword_27CD449E8, &qword_21B118150);
        if (__swift_getEnumTagSinglePayload(v67 + v66, 1, v68) == 1)
        {
          sub_21AF99BE0(v67, &qword_27CD449E8, &qword_21B118150);
          return 1;
        }
      }

      else
      {
        v69 = v75;
        sub_21B0AA940();
        if (__swift_getEnumTagSinglePayload(v67 + v66, 1, v68) != 1)
        {
          v70 = v74;
          sub_21B03179C(v67 + v66);
          v73 = static Apple_Parsec_Feedback_V2_PhotosAttributes.== infix(_:_:)(v69, v70, v71, v72);

          sub_21B03183C();
          sub_21AF99BE0(v65, &qword_27CD449E8, &qword_21B118150);
          sub_21B03183C();
          sub_21AF99BE0(v67, &qword_27CD449E8, &qword_21B118150);
          return (v73 & 1) != 0;
        }

        sub_21AF99BE0(v65, &qword_27CD449E8, &qword_21B118150);
        sub_21B03183C();
      }

      sub_21AF99BE0(v67, &qword_27CD46DD0, &qword_21B127D50);
      return 0;
    }

    goto LABEL_18;
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(&v14[v33], 1, v10) == 1)
  {

    sub_21AF99BE0(v20, &qword_27CD434D8, &qword_21B116AB0);
    sub_21B03183C();
LABEL_18:
    v34 = &qword_27CD434E0;
    v35 = &qword_21B116AB8;
    v36 = v14;
LABEL_19:
    sub_21AF99BE0(v36, v34, v35);
    goto LABEL_33;
  }

  v37 = &v14[v33];
  v38 = v80;
  sub_21B03179C(v37);
  v39 = *(v10 + 20);
  v40 = *&v18[v39];
  v41 = *&v38[v39];

  if (v40 != v41)
  {

    v42 = sub_21B03D03C(v40, v41);

    if (!v42)
    {
      sub_21B03183C();
      sub_21AF99BE0(v20, &qword_27CD434D8, &qword_21B116AB0);
      sub_21B03183C();
      v36 = v14;
      v34 = &qword_27CD434D8;
      v35 = &qword_21B116AB0;
      goto LABEL_19;
    }
  }

  sub_21B111EC4();
  sub_21B099CBC(&unk_2811FAAE0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v43 = sub_21B1123C4();
  sub_21B03183C();
  sub_21AF99BE0(v20, &qword_27CD434D8, &qword_21B116AB0);
  sub_21B03183C();
  sub_21AF99BE0(v14, &qword_27CD434D8, &qword_21B116AB0);
  if (v43)
  {
    goto LABEL_23;
  }

LABEL_33:

  return 0;
}

uint64_t sub_21B04F1B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46AA8, type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B04F234(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45B58, type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B04F2A4(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45B58, type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback);

  return sub_21B112114();
}

uint64_t sub_21B04F330()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44128);
  __swift_project_value_buffer(v0, qword_27CD44128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "results";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "triggerEvent";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "goTakeoverResult";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "uniqueIdsOfVisibleButtons";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "uniqueIdentifiersOfVisibleCardSections";
  *(v18 + 1) = 38;
  v18[16] = 2;
  v9();
  return sub_21B112244();
}

void Apple_Parsec_Feedback_V2_VisibleResultsFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    v1 = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
        OUTLINED_FUNCTION_579();
        OUTLINED_FUNCTION_10_2();
        sub_21B068268();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B04F734(v3, v4);
        break;
      case 4:
        v5 = OUTLINED_FUNCTION_10_2();
        sub_21B04F79C(v5, v6, v7, v8);
        break;
      case 5:
        OUTLINED_FUNCTION_49_1();
        sub_21B112034();
        break;
      case 6:
        OUTLINED_FUNCTION_49_1();
        sub_21B112014();
        break;
      default:
        continue;
    }
  }
}

void sub_21B04F79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_53_0();
  v4(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_9_8();
  sub_21B099CBC(v5, v6, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
  OUTLINED_FUNCTION_192();
  sub_21B1120B4();
  OUTLINED_FUNCTION_823();
}

void Apple_Parsec_Feedback_V2_VisibleResultsFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_212();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_177();
  if (!*v0 || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v1))
  {
    OUTLINED_FUNCTION_660();
    if (!v8 || (OUTLINED_FUNCTION_9_8(), sub_21B099CBC(v9, v10, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback), OUTLINED_FUNCTION_477(), OUTLINED_FUNCTION_58_0(), sub_21B112214(), !v1))
    {
      v11 = v2[2];
      if (!v11 || (OUTLINED_FUNCTION_542(v11), sub_21B09A0F4(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v1))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(0);
        OUTLINED_FUNCTION_715();
        OUTLINED_FUNCTION_243();
        if (v12)
        {
          sub_21AF99BE0(v3, &qword_27CD434D8, &qword_21B116AB0);
        }

        else
        {
          OUTLINED_FUNCTION_2_17();
          v13 = OUTLINED_FUNCTION_636();
          sub_21B03179C(v13);
          OUTLINED_FUNCTION_9_8();
          sub_21B099CBC(v14, v15, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
          OUTLINED_FUNCTION_595();
          OUTLINED_FUNCTION_58_0();
          sub_21B112224();
          OUTLINED_FUNCTION_13_6();
          sub_21B03183C();
          if (v1)
          {
            goto LABEL_16;
          }
        }

        if (!*(v2[4] + 16) || (OUTLINED_FUNCTION_36_1(), sub_21B112154(), !v1))
        {
          if (!*(v2[5] + 16) || (OUTLINED_FUNCTION_36_1(), sub_21B1121C4(), !v1))
          {
            OUTLINED_FUNCTION_27_2();
          }
        }
      }
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B04FAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46AA0, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B04FB70(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45B70, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B04FBE0(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45B70, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback);

  return sub_21B112114();
}

uint64_t sub_21B04FC78()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44140);
  __swift_project_value_buffer(v0, qword_27CD44140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B1141D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "cardSectionIdentifier";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "visibleDynamicButton2s";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  return sub_21B112244();
}

void Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    v1 = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 4:
        OUTLINED_FUNCTION_10_2();
        sub_21B04FF74();
        break;
      case 3:
        OUTLINED_FUNCTION_318();
        sub_21B112074();
        break;
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
    }
  }
}

void sub_21B04FF74()
{
  OUTLINED_FUNCTION_11();
  v2 = OUTLINED_FUNCTION_234();
  v3(v2);
  v4 = OUTLINED_FUNCTION_75();
  v6 = sub_21B099CBC(v4, v5, v0);
  OUTLINED_FUNCTION_505(v1 + 24, v7, v6);
  OUTLINED_FUNCTION_13();
}

void Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_822();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v3))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v5 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v3))
    {
      if (!*(*(v4 + 24) + 16) || (OUTLINED_FUNCTION_871(), OUTLINED_FUNCTION_153(), sub_21B099CBC(v6, v7, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback), OUTLINED_FUNCTION_485(), OUTLINED_FUNCTION_58_0(), sub_21B112214(), !v3))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(0);
        OUTLINED_FUNCTION_27_2();
      }
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_21B050138(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A98, type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B0501B8(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45B88, type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B050228(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45B88, type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback);

  return sub_21B112114();
}

uint64_t sub_21B0502B4()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44158);
  __swift_project_value_buffer(v0, qword_27CD44158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B1141D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cfDiffered";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cfUsed";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "cfError";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_CounterfactualInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      v3 = OUTLINED_FUNCTION_10_2();
      sub_21B050558(v3, v4);
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_49_1();
      sub_21B111F94();
    }
  }

  return result;
}

void Apple_Parsec_Feedback_V2_CounterfactualInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_26_3();
  if (*v18 != 1 || (OUTLINED_FUNCTION_35_3(), sub_21B112164(), !v19))
  {
    if (*(v20 + 1) != 1 || (OUTLINED_FUNCTION_36_1(), sub_21B112164(), !v19))
    {
      if (!*(v20 + 8) || (OUTLINED_FUNCTION_472(), sub_21B09A148(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v19))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(0);
        OUTLINED_FUNCTION_27_2();
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t static Apple_Parsec_Feedback_V2_CounterfactualInfo.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_81();
  if (*(v4 + 1) != *(v5 + 1))
  {
    return 0;
  }

  v7 = *(v3 + 8);
  v8 = *(v2 + 8);
  if (*(v2 + 16) != 1)
  {
    if (v7 == v8)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v8)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (v8 == 1)
  {
    if (v7 == 1)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (v7 != 2)
  {
    return 0;
  }

LABEL_14:
  type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(0);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_15();
  v11 = sub_21B099CBC(v9, v10, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_40_1(v11) & 1;
}

uint64_t sub_21B0507FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A90, type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CounterfactualInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B05087C(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44E68, type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CounterfactualInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0508EC(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD44E68, type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CounterfactualInfo);

  return sub_21B112114();
}

uint64_t sub_21B050978()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44170);
  __swift_project_value_buffer(v0, qword_27CD44170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "queryID";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timestamp";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "counterfactual";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "codepathId";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_49_1();
        sub_21B112094();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B050C80(v3, v4, v5, v6);
        break;
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B050C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(0);
  sub_21B099CBC(&qword_27CD44E68, type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CounterfactualInfo);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44A58, &qword_21B118160);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_212();
  type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_177();
  if (!*v0 || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_36_1(), sub_21B112204(), !v1))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(0);
      OUTLINED_FUNCTION_715();
      OUTLINED_FUNCTION_243();
      if (v8)
      {
        sub_21AF99BE0(v3, &qword_27CD44A58, &qword_21B118160);
      }

      else
      {
        OUTLINED_FUNCTION_51();
        v9 = OUTLINED_FUNCTION_636();
        sub_21B03179C(v9);
        sub_21B099CBC(&qword_27CD44E68, type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CounterfactualInfo);
        OUTLINED_FUNCTION_595();
        OUTLINED_FUNCTION_58_0();
        sub_21B112224();
        OUTLINED_FUNCTION_333();
        sub_21B03183C();
        if (v1)
        {
          goto LABEL_12;
        }
      }

      OUTLINED_FUNCTION_10_4();
      if (!v10 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v1))
      {
        OUTLINED_FUNCTION_27_2();
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B050F98(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A88, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B051018(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45BB0, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B051088(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45BB0, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback);

  return sub_21B112114();
}

uint64_t sub_21B051114()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44188);
  __swift_project_value_buffer(v0, qword_27CD44188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_21B117F60;
  v4 = v31 + v3;
  v5 = v31 + v3 + v1[14];
  *(v31 + v3) = 1;
  *v5 = "cardSectionId";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_21B112234();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "actionTarget";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "actionDestination";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "resultId";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "commandType";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "commandDetail";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "cardSections";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "cardSectionType";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 10;
  *v23 = "cardSectionDetail";
  *(v23 + 1) = 17;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 11;
  *v25 = "buttons";
  *(v25 + 1) = 7;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 12;
  *v27 = "leadingSwipeButtonItems";
  *(v27 + 1) = 23;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 13;
  *v29 = "trailingSwipeButtonItems";
  *(v29 + 1) = 24;
  v29[16] = 2;
  v8();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 7:
      case 10:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 6:
        v7 = OUTLINED_FUNCTION_10_2();
        sub_21B051664(v7, v8);
        break;
      case 8:
        v15 = OUTLINED_FUNCTION_10_2();
        sub_21B0516CC(v15, v16, v17, v18);
        break;
      case 9:
        v13 = OUTLINED_FUNCTION_10_2();
        sub_21B05176C(v13, v14);
        break;
      case 11:
        v9 = OUTLINED_FUNCTION_10_2();
        sub_21B0517D4(v9, v10, v11, v12);
        break;
      case 12:
        v19 = OUTLINED_FUNCTION_10_2();
        sub_21B051874(v19, v20, v21, v22);
        break;
      case 13:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B051914(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B0516CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  sub_21B099CBC(&qword_27CD44E80, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);
  return sub_21B1120A4();
}

uint64_t sub_21B0517D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  sub_21B099CBC(&qword_27CD44D10, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback);
  return sub_21B1120A4();
}

uint64_t sub_21B051874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  sub_21B099CBC(&qword_27CD44D10, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback);
  return sub_21B1120A4();
}

uint64_t sub_21B051914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  sub_21B099CBC(&qword_27CD44D10, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback);
  return sub_21B1120A4();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_10_4();
  if (!v3 || (OUTLINED_FUNCTION_63_0(), result = sub_21B1121E4(), !v1))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v5 || (OUTLINED_FUNCTION_60_0(), result = sub_21B1121E4(), !v1))
    {
      OUTLINED_FUNCTION_10_4();
      if (!v6 || (OUTLINED_FUNCTION_63_0(), result = sub_21B1121E4(), !v1))
      {
        OUTLINED_FUNCTION_10_4();
        if (!v7 || (OUTLINED_FUNCTION_63_0(), result = sub_21B1121E4(), !v1))
        {
          OUTLINED_FUNCTION_631();
          if (!Apple_Parsec_Feedback_V2_CommandType.rawValue.getter() || (OUTLINED_FUNCTION_657(), sub_21B09A19C(), OUTLINED_FUNCTION_58_0(), result = sub_21B112174(), !v1))
          {
            OUTLINED_FUNCTION_10_4();
            if (!v8 || (OUTLINED_FUNCTION_63_0(), result = sub_21B1121E4(), !v1))
            {
              if (!*(v2[12] + 16) || (type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0), OUTLINED_FUNCTION_331(), sub_21B099CBC(v9, v10, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback), OUTLINED_FUNCTION_485(), OUTLINED_FUNCTION_58_0(), result = sub_21B112214(), !v1))
              {
                OUTLINED_FUNCTION_631();
                if (!Apple_Parsec_Feedback_V2_CardSectionType.rawValue.getter() || (OUTLINED_FUNCTION_657(), sub_21B09A1F0(), OUTLINED_FUNCTION_58_0(), result = sub_21B112174(), !v1))
                {
                  OUTLINED_FUNCTION_10_4();
                  if (!v11 || (OUTLINED_FUNCTION_63_0(), result = sub_21B1121E4(), !v1))
                  {
                    if (!*(v2[17] + 16) || (OUTLINED_FUNCTION_871(), OUTLINED_FUNCTION_153(), sub_21B099CBC(v12, v13, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback), OUTLINED_FUNCTION_485(), OUTLINED_FUNCTION_58_0(), result = sub_21B112214(), !v1))
                    {
                      if (!*(v2[18] + 16) || (OUTLINED_FUNCTION_871(), OUTLINED_FUNCTION_153(), sub_21B099CBC(v14, v15, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback), OUTLINED_FUNCTION_485(), OUTLINED_FUNCTION_58_0(), result = sub_21B112214(), !v1))
                      {
                        if (!*(v2[19] + 16) || (OUTLINED_FUNCTION_871(), OUTLINED_FUNCTION_153(), sub_21B099CBC(v16, v17, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback), OUTLINED_FUNCTION_485(), OUTLINED_FUNCTION_58_0(), result = sub_21B112214(), !v1))
                        {
                          type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
                          return OUTLINED_FUNCTION_27_2();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_CardSectionForFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_99();
  v4 = *v3 == *v0 && v1[1] == v0[1];
  if (!v4 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_596();
  v7 = v4 && v5 == v6;
  if (!v7 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  v8 = v1[4] == v0[4] && v1[5] == v0[5];
  if (!v8 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_851();
  v11 = v4 && v9 == v10;
  if (!v11 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_370();
  Apple_Parsec_Feedback_V2_CommandType.rawValue.getter();
  OUTLINED_FUNCTION_844();
  if (v2 != Apple_Parsec_Feedback_V2_CommandType.rawValue.getter())
  {
    return 0;
  }

  v12 = v1[10] == v0[10] && v1[11] == v0[11];
  if (!v12 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  sub_21AFBEC58(v1[12], v0[12]);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_370();
  Apple_Parsec_Feedback_V2_CardSectionType.rawValue.getter();
  OUTLINED_FUNCTION_844();
  if (v2 != Apple_Parsec_Feedback_V2_CardSectionType.rawValue.getter())
  {
    return 0;
  }

  v17 = v0[15];
  v18 = v0[16];
  v19 = v1[15] == v17 && v1[16] == v18;
  if (!v19 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  sub_21AFBDF9C(v1[17], v0[17], v17, v18, v14, v15, v16);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

  sub_21AFBDF9C(v1[18], v0[18], v20, v21, v22, v23, v24);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

  sub_21AFBDF9C(v1[19], v0[19], v26, v27, v28, v29, v30);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_0_15();
  v35 = sub_21B099CBC(v33, v34, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_348(v35) & 1;
}

uint64_t sub_21B051F20(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A80, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B051FA0(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44E80, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B052010(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD44E80, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);

  return sub_21B112114();
}

uint64_t sub_21B05209C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD441A0);
  __swift_project_value_buffer(v0, qword_27CD441A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "commandType";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "commandDetail";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "uniqueId";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "timestamp";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_ButtonFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_10_2();
        sub_21AF84474();
        break;
      case 2:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112094();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_ButtonFeedback.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_631();
  if (!Apple_Parsec_Feedback_V2_CommandType.rawValue.getter() || (OUTLINED_FUNCTION_657(), sub_21B09A19C(), OUTLINED_FUNCTION_58_0(), result = sub_21B112174(), !v1))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v4 || (OUTLINED_FUNCTION_60_0(), result = sub_21B1121E4(), !v1))
    {
      if (!*(v2 + 32) || (OUTLINED_FUNCTION_36_1(), result = sub_21B112204(), !v1))
      {
        if (!*(v2 + 40) || (OUTLINED_FUNCTION_36_1(), result = sub_21B112204(), !v1))
        {
          type metadata accessor for Apple_Parsec_Feedback_V2_ButtonFeedback(0);
          return OUTLINED_FUNCTION_27_2();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_ButtonFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_370();
  Apple_Parsec_Feedback_V2_CommandType.rawValue.getter();
  OUTLINED_FUNCTION_844();
  if (v2 != Apple_Parsec_Feedback_V2_CommandType.rawValue.getter())
  {
    return 0;
  }

  OUTLINED_FUNCTION_596();
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_21B112D04() & 1) == 0 || *(v1 + 32) != *(v0 + 32) || *(v1 + 40) != *(v0 + 40))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonFeedback(0);
  OUTLINED_FUNCTION_764();
  OUTLINED_FUNCTION_0_15();
  v8 = sub_21B099CBC(v6, v7, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_348(v8) & 1;
}

uint64_t sub_21B05260C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A78, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B05268C(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45BD8, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0526FC(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45BD8, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonFeedback);

  return sub_21B112114();
}

uint64_t sub_21B052788()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD441B8);
  __swift_project_value_buffer(v0, qword_27CD441B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B1141D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "commandType";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "commandDetail";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "uniqueId";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_ButtonForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_49_1();
        sub_21B112094();
        break;
      case 2:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 1:
        OUTLINED_FUNCTION_10_2();
        sub_21AF84474();
        break;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ButtonForFeedback.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_631();
  if (!Apple_Parsec_Feedback_V2_CommandType.rawValue.getter() || (OUTLINED_FUNCTION_657(), sub_21B09A19C(), OUTLINED_FUNCTION_58_0(), result = sub_21B112174(), !v1))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v4 || (OUTLINED_FUNCTION_60_0(), result = sub_21B1121E4(), !v1))
    {
      if (!*(v2 + 32) || (OUTLINED_FUNCTION_36_1(), result = sub_21B112204(), !v1))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
        return OUTLINED_FUNCTION_27_2();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_ButtonForFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_370();
  Apple_Parsec_Feedback_V2_CommandType.rawValue.getter();
  OUTLINED_FUNCTION_844();
  if (v2 != Apple_Parsec_Feedback_V2_CommandType.rawValue.getter())
  {
    return 0;
  }

  OUTLINED_FUNCTION_596();
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_21B112D04() & 1) == 0 || *(v1 + 32) != *(v0 + 32))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_15();
  v8 = sub_21B099CBC(v6, v7, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_348(v8) & 1;
}

uint64_t sub_21B052C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A70, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B052CF4(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44D10, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B052D64(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD44D10, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback);

  return sub_21B112114();
}

uint64_t sub_21B052DFC()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD441D0);
  __swift_project_value_buffer(v0, qword_27CD441D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cardSections";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "fbr";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

void Apple_Parsec_Feedback_V2_CardForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    v1 = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_318();
      sub_21B112074();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_10_2();
      sub_21B087AA4();
    }
  }
}

void Apple_Parsec_Feedback_V2_CardForFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_838();
  if (!v4 || (type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0), OUTLINED_FUNCTION_331(), sub_21B099CBC(v5, v6, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback), OUTLINED_FUNCTION_485(), OUTLINED_FUNCTION_750(), OUTLINED_FUNCTION_58_0(), sub_21B112214(), !v3))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v7 || (OUTLINED_FUNCTION_60_0(), sub_21B1121E4(), !v3))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
      v8 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_652(v8, v9);
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t static Apple_Parsec_Feedback_V2_CardForFeedback.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_340(a1);
  sub_21AFBEC58(v1, *v2);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_527();
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_0_15();
  v9 = sub_21B099CBC(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_40_1(v9) & 1;
}

uint64_t sub_21B053288(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A68, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B053308(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44FB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B053378(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD44FB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);

  return sub_21B112114();
}

uint64_t sub_21B053404()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD441E8);
  __swift_project_value_buffer(v0, qword_27CD441E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cardSection";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "cardSectionId";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "resultId";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B053708(v3, v4, v5, v6);
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B053708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  sub_21B099CBC(&qword_27CD44E80, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_CardSectionFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44A60, &qword_21B118168);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_252();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v4);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  if (!OUTLINED_FUNCTION_483() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(0);
    OUTLINED_FUNCTION_744();
    OUTLINED_FUNCTION_368(v1);
    if (v6)
    {
      sub_21AF99BE0(v1, &qword_27CD44A60, &qword_21B118168);
    }

    else
    {
      OUTLINED_FUNCTION_10_8();
      v7 = OUTLINED_FUNCTION_684();
      sub_21B03179C(v7);
      OUTLINED_FUNCTION_331();
      sub_21B099CBC(v8, v9, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);
      OUTLINED_FUNCTION_680();
      OUTLINED_FUNCTION_683();
      OUTLINED_FUNCTION_58_0();
      sub_21B112224();
      OUTLINED_FUNCTION_330();
      sub_21B03183C();
      if (v0)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_10_4();
    if (!v10 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v0))
    {
      OUTLINED_FUNCTION_10_4();
      if (!v11 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v0))
      {
        OUTLINED_FUNCTION_27_2();
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B053A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A60, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B053A88(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45C10, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B053AF8(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45C10, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionFeedback);

  return sub_21B112114();
}

uint64_t sub_21B053B84()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44200);
  __swift_project_value_buffer(v0, qword_27CD44200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B118020;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "destination";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "triggerEvent";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "actionCardType";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "cardSection";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "destinationWasPARPunchout";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "parPunchoutActionTarget";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "cardSectionId";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "resultId";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "actionTarget";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21B053F94()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__destination;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__triggerEvent;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__actionCardType;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSection;
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__destinationWasParpunchout) = 0;
  v7 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__parPunchoutActionTarget);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSectionID);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultID);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__actionTarget;
  *v10 = 0;
  *(v10 + 8) = 1;
  return v0;
}

uint64_t sub_21B054088(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44A60, &qword_21B118168);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  MEMORY[0x28223BE20](v6 - 8);
  *(v1 + 16) = 0;
  v7 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__destination;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__triggerEvent;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__actionCardType;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSection;
  v39[1] = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSection;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v40 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__destinationWasParpunchout;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__destinationWasParpunchout) = 0;
  v13 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__parPunchoutActionTarget);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSectionID);
  v42 = v14;
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultID);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__actionTarget;
  v43 = v15;
  v44 = v16;
  *v16 = 0;
  *(v16 + 8) = 1;
  swift_beginAccess();
  v17 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v17;
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v18 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__triggerEvent);
  swift_beginAccess();
  v19 = *v18;
  LOBYTE(v18) = *(v18 + 8);
  swift_beginAccess();
  *v9 = v19;
  *(v9 + 8) = v18;
  v20 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__actionCardType);
  swift_beginAccess();
  v21 = *v20;
  LOBYTE(v20) = *(v20 + 8);
  swift_beginAccess();
  *v10 = v21;
  *(v10 + 8) = v20;
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__destinationWasParpunchout;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + v22);
  v23 = v40;
  swift_beginAccess();
  *(v2 + v23) = v22;
  v24 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__parPunchoutActionTarget);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  swift_beginAccess();
  *v13 = v26;
  v13[1] = v25;

  v27 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSectionID);
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];
  v30 = v42;
  swift_beginAccess();
  *v30 = v29;
  v30[1] = v28;

  v31 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultID);
  swift_beginAccess();
  v33 = *v31;
  v32 = v31[1];
  v34 = v43;
  swift_beginAccess();
  *v34 = v33;
  v34[1] = v32;

  v35 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__actionTarget);
  swift_beginAccess();
  v36 = *v35;
  LOBYTE(v35) = *(v35 + 8);

  v37 = v44;
  swift_beginAccess();
  *v37 = v36;
  *(v37 + 8) = v35;
  return v2;
}

uint64_t sub_21B0545DC()
{
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__destination, &qword_27CD44830, &qword_21B118110);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSection, &qword_27CD44A60, &qword_21B118168);

  return v0;
}

uint64_t sub_21B054960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  sub_21B099CBC(&qword_27CD44D28, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B054A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  sub_21B099CBC(&qword_27CD44E80, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B054B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44A60, &qword_21B118168);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v38 - v6;
  v39 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  MEMORY[0x28223BE20](v39);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  MEMORY[0x28223BE20](v11);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    v12 = v47;
    result = sub_21B112204();
    if (v12)
    {
      return result;
    }

    v47 = 0;
  }

  swift_beginAccess();
  v14 = a1;
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_21AF99BE0(v10, &qword_27CD44830, &qword_21B118110);
  }

  else
  {
    sub_21B03179C(v10);
    sub_21B099CBC(&qword_27CD44D28, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
    v15 = v47;
    sub_21B112224();
    if (v15)
    {
      return sub_21B03183C();
    }

    v47 = 0;
    sub_21B03183C();
  }

  v16 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__triggerEvent);
  swift_beginAccess();
  v17 = v40;
  if (*v16)
  {
    v18 = *(v16 + 8);
    v45 = *v16;
    v46 = v18;
    sub_21B099FF8();
    v19 = v47;
    result = sub_21B112174();
    v20 = v19;
    if (v19)
    {
      return result;
    }
  }

  else
  {
    v20 = v47;
  }

  v21 = v14 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__actionCardType;
  swift_beginAccess();
  if (!*v21 || (v22 = *(v21 + 8), v43 = *v21, v44 = v22, sub_21B09A244(), result = sub_21B112174(), !v20))
  {
    swift_beginAccess();
    sub_21B0AA940();
    if (__swift_getEnumTagSinglePayload(v17, 1, v39) == 1)
    {
      sub_21AF99BE0(v17, &qword_27CD44A60, &qword_21B118168);
    }

    else
    {
      sub_21B03179C(v17);
      sub_21B099CBC(&qword_27CD44E80, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);
      sub_21B112224();
      result = sub_21B03183C();
      if (v20)
      {
        return result;
      }
    }

    v23 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__destinationWasParpunchout;
    swift_beginAccess();
    if (*(v14 + v23) != 1 || (result = sub_21B112164(), !v20))
    {
      v24 = (v14 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__parPunchoutActionTarget);
      swift_beginAccess();
      v25 = *v24;
      v26 = v24[1];
      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (!v27 || (, sub_21B1121E4(), result = , !v20))
      {
        v28 = (v14 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSectionID);
        swift_beginAccess();
        v29 = *v28;
        v30 = v28[1];
        v31 = HIBYTE(v30) & 0xF;
        if ((v30 & 0x2000000000000000) == 0)
        {
          v31 = v29 & 0xFFFFFFFFFFFFLL;
        }

        if (!v31 || (, sub_21B1121E4(), result = , !v20))
        {
          v32 = (v14 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultID);
          swift_beginAccess();
          v33 = *v32;
          v34 = v32[1];
          v35 = HIBYTE(v34) & 0xF;
          if ((v34 & 0x2000000000000000) == 0)
          {
            v35 = v33 & 0xFFFFFFFFFFFFLL;
          }

          if (!v35 || (, sub_21B1121E4(), result = , !v20))
          {
            v36 = v14 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__actionTarget;
            result = swift_beginAccess();
            if (*v36)
            {
              v37 = *(v36 + 8);
              v41 = *v36;
              v42 = v37;
              sub_21B09A0A0();
              return sub_21B112174();
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_21B05523C(uint64_t a1, uint64_t a2)
{
  v72 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  MEMORY[0x28223BE20](v72);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B50, &qword_21B1181D0);
  MEMORY[0x28223BE20](v70);
  v7 = &v67 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44A60, &qword_21B118168);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v69 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v71 = &v67 - v11;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  MEMORY[0x28223BE20](v12);
  v73 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B58, &qword_21B1181D8);
  MEMORY[0x28223BE20](v14);
  v16 = &v67 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v75 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v67 - v20;
  swift_beginAccess();
  v22 = *(a1 + 16);
  swift_beginAccess();
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  v67 = v5;
  v68 = v7;
  v74 = a2;
  swift_beginAccess();
  v23 = v74;
  sub_21B0AA940();
  swift_beginAccess();
  v24 = *(v14 + 48);
  sub_21B0AA940();
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v16, 1, v12) != 1)
  {
    v25 = v75;
    sub_21B0AA940();
    if (__swift_getEnumTagSinglePayload(&v16[v24], 1, v12) != 1)
    {
      sub_21B03179C(&v16[v24]);

      v26 = static Apple_Parsec_Feedback_V2_PunchoutForFeedback.== infix(_:_:)(v25);
      sub_21B03183C();
      sub_21AF99BE0(v21, &qword_27CD44830, &qword_21B118110);
      sub_21B03183C();
      v23 = v74;
      sub_21AF99BE0(v16, &qword_27CD44830, &qword_21B118110);
      if ((v26 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    sub_21AF99BE0(v21, &qword_27CD44830, &qword_21B118110);
    sub_21B03183C();
LABEL_7:
    sub_21AF99BE0(v16, &qword_27CD44B58, &qword_21B1181D8);
    goto LABEL_15;
  }

  sub_21AF99BE0(v21, &qword_27CD44830, &qword_21B118110);
  if (__swift_getEnumTagSinglePayload(&v16[v24], 1, v12) != 1)
  {
    goto LABEL_7;
  }

  sub_21AF99BE0(v16, &qword_27CD44830, &qword_21B118110);
LABEL_10:
  v27 = a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__triggerEvent;
  swift_beginAccess();
  v28 = *v27;
  v29 = *(v27 + 8);
  v30 = v23;
  v31 = (v23 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__triggerEvent);
  swift_beginAccess();
  if (!sub_21AFB4A88(v28, v29, *v31))
  {
    goto LABEL_15;
  }

  v32 = a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__actionCardType;
  swift_beginAccess();
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = (v30 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__actionCardType);
  swift_beginAccess();
  if (!sub_21AFB4A88(v33, v34, *v35))
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v36 = v71;
  sub_21B0AA940();
  swift_beginAccess();
  v37 = *(v70 + 48);
  v38 = v68;
  sub_21B0AA940();
  sub_21B0AA940();
  v39 = v72;
  if (__swift_getEnumTagSinglePayload(v38, 1, v72) == 1)
  {
    sub_21AF99BE0(v36, &qword_27CD44A60, &qword_21B118168);
    if (__swift_getEnumTagSinglePayload(v38 + v37, 1, v39) == 1)
    {
      sub_21AF99BE0(v38, &qword_27CD44A60, &qword_21B118168);
      v40 = v74;
LABEL_23:
      v44 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__destinationWasParpunchout;
      swift_beginAccess();
      LODWORD(v44) = *(a1 + v44);
      v45 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__destinationWasParpunchout;
      swift_beginAccess();
      if (v44 == *(v40 + v45))
      {
        v46 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__parPunchoutActionTarget);
        swift_beginAccess();
        v47 = v40;
        v48 = *v46;
        v49 = v46[1];
        v50 = (v47 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__parPunchoutActionTarget);
        swift_beginAccess();
        v51 = v48 == *v50 && v49 == v50[1];
        if (v51 || (sub_21B112D04() & 1) != 0)
        {
          v52 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSectionID);
          swift_beginAccess();
          v53 = *v52;
          v54 = v52[1];
          v55 = (v74 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSectionID);
          swift_beginAccess();
          v56 = v53 == *v55 && v54 == v55[1];
          if (v56 || (sub_21B112D04() & 1) != 0)
          {
            v57 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultID);
            swift_beginAccess();
            v58 = *v57;
            v59 = v57[1];
            v60 = (v74 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultID);
            swift_beginAccess();
            v61 = v58 == *v60 && v59 == v60[1];
            if (v61 || (sub_21B112D04() & 1) != 0)
            {
              v62 = a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__actionTarget;
              swift_beginAccess();
              v63 = *v62;
              v64 = *(v62 + 8);

              v65 = (v74 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__actionTarget);
              swift_beginAccess();
              v66 = *v65;

              return sub_21AFB4A88(v63, v64, v66);
            }
          }
        }
      }

      goto LABEL_15;
    }

    goto LABEL_20;
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v38 + v37, 1, v39) == 1)
  {
    sub_21AF99BE0(v36, &qword_27CD44A60, &qword_21B118168);
    sub_21B03183C();
LABEL_20:
    sub_21AF99BE0(v38, &qword_27CD44B50, &qword_21B1181D0);
    goto LABEL_15;
  }

  sub_21B03179C(v38 + v37);
  v43 = static Apple_Parsec_Feedback_V2_CardSectionForFeedback.== infix(_:_:)();
  sub_21B03183C();
  sub_21AF99BE0(v36, &qword_27CD44A60, &qword_21B118168);
  sub_21B03183C();
  sub_21AF99BE0(v38, &qword_27CD44A60, &qword_21B118168);
  v40 = v74;
  if (v43)
  {
    goto LABEL_23;
  }

LABEL_15:

  return 0;
}

uint64_t sub_21B055CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A58, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B055D54(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45C28, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B055DC4(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45C28, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback);

  return sub_21B112114();
}

uint64_t sub_21B055E5C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44220);
  __swift_project_value_buffer(v0, qword_27CD44220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B117FD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "destination";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "triggerEvent";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "actionCardType";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "feedbackType";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "cardSectionId";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "resultId";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
        v9 = OUTLINED_FUNCTION_10_2();
        sub_21B056248(v9, v10, v11, v12);
        break;
      case 3:
        v5 = OUTLINED_FUNCTION_10_2();
        sub_21B0562FC(v5, v6);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_10_2();
        sub_21B056364(v7, v8);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B0563CC(v3, v4);
        break;
      case 6:
      case 7:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B056248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  sub_21B099CBC(&qword_27CD44D28, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  OUTLINED_FUNCTION_25(v3);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_252();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  if (!OUTLINED_FUNCTION_483() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(0);
    OUTLINED_FUNCTION_744();
    OUTLINED_FUNCTION_368(v2);
    if (v7)
    {
      sub_21AF99BE0(v2, &qword_27CD44830, &qword_21B118110);
    }

    else
    {
      OUTLINED_FUNCTION_4_13();
      v8 = OUTLINED_FUNCTION_684();
      sub_21B03179C(v8);
      OUTLINED_FUNCTION_552();
      sub_21B099CBC(v9, v10, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
      OUTLINED_FUNCTION_680();
      OUTLINED_FUNCTION_683();
      OUTLINED_FUNCTION_58_0();
      sub_21B112224();
      OUTLINED_FUNCTION_120();
      sub_21B03183C();
      if (v0)
      {
        goto LABEL_18;
      }
    }

    v11 = v1[1];
    if (!v11 || (OUTLINED_FUNCTION_542(v11), sub_21B099FF8(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v0))
    {
      v12 = v1[3];
      if (!v12 || (OUTLINED_FUNCTION_542(v12), sub_21B09A244(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v0))
      {
        v13 = v1[5];
        if (!v13 || (OUTLINED_FUNCTION_542(v13), sub_21B09A298(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v0))
        {
          OUTLINED_FUNCTION_10_4();
          if (!v14 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v0))
          {
            OUTLINED_FUNCTION_10_4();
            if (!v15 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v0))
            {
              OUTLINED_FUNCTION_27_2();
            }
          }
        }
      }
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B05672C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A50, type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B0567AC(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45C40, type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B05681C(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45C40, type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback);

  return sub_21B112114();
}

uint64_t sub_21B0568B4()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44238);
  __swift_project_value_buffer(v0, qword_27CD44238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B117FC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "destination";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "triggerEvent";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "actionCardType";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "cardSection";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "productPageResult";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "cardSectionId";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "resultId";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21B056C4C()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__destination;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__triggerEvent;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__actionCardType;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSection;
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__productPageResult;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSectionID);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultID);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_21B056D24(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44A60, &qword_21B118168);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  MEMORY[0x28223BE20](v6 - 8);
  *(v1 + 16) = 0;
  v7 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__destination;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__triggerEvent;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__actionCardType;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSection;
  v32[1] = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSection;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__productPageResult;
  v33 = v13;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSectionID);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultID);
  v35 = v15;
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  swift_beginAccess();
  v16 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v16;
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v17 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__triggerEvent);
  swift_beginAccess();
  v18 = *v17;
  LOBYTE(v17) = *(v17 + 8);
  swift_beginAccess();
  *v9 = v18;
  *(v9 + 8) = v17;
  v19 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__actionCardType);
  swift_beginAccess();
  v20 = *v19;
  LOBYTE(v19) = *(v19 + 8);
  swift_beginAccess();
  *v10 = v20;
  *(v10 + 8) = v19;
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v21 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__productPageResult);
  swift_beginAccess();
  v22 = *v21;
  LOBYTE(v21) = *(v21 + 8);
  v23 = v33;
  swift_beginAccess();
  *v23 = v22;
  *(v23 + 8) = v21;
  v24 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSectionID);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  swift_beginAccess();
  *v14 = v26;
  v14[1] = v25;

  v27 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultID);
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];

  v30 = v35;
  swift_beginAccess();
  *v30 = v29;
  v30[1] = v28;

  return v2;
}

uint64_t sub_21B057260()
{
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__destination, &qword_27CD44830, &qword_21B118110);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSection, &qword_27CD44A60, &qword_21B118168);

  return v0;
}

uint64_t sub_21B05757C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  sub_21B099CBC(&qword_27CD44D28, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B057658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  sub_21B099CBC(&qword_27CD44E80, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B057774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44A60, &qword_21B118168);
  MEMORY[0x28223BE20](v7 - 8);
  v39 = v31 - v8;
  v32 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  MEMORY[0x28223BE20](v32);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v31 - v12;
  v14 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  MEMORY[0x28223BE20](v14);
  swift_beginAccess();
  if (!*(a1 + 16) || (result = sub_21B112204(), !v4))
  {
    v31[1] = v10;
    swift_beginAccess();
    sub_21B0AA940();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      sub_21AF99BE0(v13, &qword_27CD44830, &qword_21B118110);
    }

    else
    {
      sub_21B03179C(v13);
      sub_21B099CBC(&qword_27CD44D28, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
      sub_21B112224();
      result = sub_21B03183C();
      if (v4)
      {
        return result;
      }
    }

    v16 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__triggerEvent);
    swift_beginAccess();
    v17 = v39;
    if (!*v16 || (v18 = *(v16 + 8), v37 = *v16, v38 = v18, sub_21B099FF8(), result = sub_21B112174(), !v4))
    {
      v19 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__actionCardType);
      swift_beginAccess();
      if (!*v19 || (v20 = *(v19 + 8), v35 = *v19, v36 = v20, sub_21B09A244(), result = sub_21B112174(), !v4))
      {
        swift_beginAccess();
        sub_21B0AA940();
        if (__swift_getEnumTagSinglePayload(v17, 1, v32) == 1)
        {
          sub_21AF99BE0(v17, &qword_27CD44A60, &qword_21B118168);
        }

        else
        {
          sub_21B03179C(v17);
          sub_21B099CBC(&qword_27CD44E80, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);
          sub_21B112224();
          result = sub_21B03183C();
          if (v4)
          {
            return result;
          }
        }

        v21 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__productPageResult);
        swift_beginAccess();
        if (!*v21 || (v22 = *(v21 + 8), v33 = *v21, v34 = v22, sub_21B0AA64C(), result = sub_21B112174(), !v4))
        {
          v23 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSectionID);
          swift_beginAccess();
          v24 = *v23;
          v25 = v23[1];
          v26 = HIBYTE(v25) & 0xF;
          if ((v25 & 0x2000000000000000) == 0)
          {
            v26 = v24 & 0xFFFFFFFFFFFFLL;
          }

          if (!v26 || (, sub_21B1121E4(), result = , !v5))
          {
            v27 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultID);
            result = swift_beginAccess();
            v28 = *v27;
            v29 = v27[1];
            v30 = HIBYTE(v29) & 0xF;
            if ((v29 & 0x2000000000000000) == 0)
            {
              v30 = v28 & 0xFFFFFFFFFFFFLL;
            }

            if (v30)
            {

              sub_21B1121E4();
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_21B057D74(uint64_t a1, uint64_t a2)
{
  v63 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  MEMORY[0x28223BE20](v63);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B50, &qword_21B1181D0);
  MEMORY[0x28223BE20](v61);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44A60, &qword_21B118168);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v60 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v58 - v11;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  MEMORY[0x28223BE20](v12);
  v64 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B58, &qword_21B1181D8);
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v66 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v58 - v20;
  swift_beginAccess();
  v22 = *(a1 + 16);
  swift_beginAccess();
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  v58 = v5;
  v59 = v7;
  v65 = a2;
  swift_beginAccess();
  v23 = v65;
  sub_21B0AA940();
  swift_beginAccess();
  v24 = *(v14 + 48);
  sub_21B0AA940();
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v16, 1, v12) == 1)
  {

    sub_21AF99BE0(v21, &qword_27CD44830, &qword_21B118110);
    if (__swift_getEnumTagSinglePayload(&v16[v24], 1, v12) == 1)
    {
      sub_21AF99BE0(v16, &qword_27CD44830, &qword_21B118110);
      goto LABEL_10;
    }

LABEL_7:
    sub_21AF99BE0(v16, &qword_27CD44B58, &qword_21B1181D8);
    goto LABEL_32;
  }

  v25 = v66;
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(&v16[v24], 1, v12) == 1)
  {

    sub_21AF99BE0(v21, &qword_27CD44830, &qword_21B118110);
    sub_21B03183C();
    goto LABEL_7;
  }

  sub_21B03179C(&v16[v24]);

  v26 = static Apple_Parsec_Feedback_V2_PunchoutForFeedback.== infix(_:_:)(v25);
  sub_21B03183C();
  sub_21AF99BE0(v21, &qword_27CD44830, &qword_21B118110);
  sub_21B03183C();
  v23 = v65;
  sub_21AF99BE0(v16, &qword_27CD44830, &qword_21B118110);
  if ((v26 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_10:
  v27 = a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__triggerEvent;
  swift_beginAccess();
  v28 = *v27;
  v29 = *(v27 + 8);
  v30 = v23;
  v31 = (v23 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__triggerEvent);
  swift_beginAccess();
  if (!sub_21AFB4A88(v28, v29, *v31))
  {
    goto LABEL_32;
  }

  v32 = a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__actionCardType;
  swift_beginAccess();
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = (v30 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__actionCardType);
  swift_beginAccess();
  if (!sub_21AFB4A88(v33, v34, *v35))
  {
    goto LABEL_32;
  }

  swift_beginAccess();
  v36 = v62;
  sub_21B0AA940();
  swift_beginAccess();
  v37 = *(v61 + 48);
  v38 = v59;
  sub_21B0AA940();
  sub_21B0AA940();
  v39 = v63;
  if (__swift_getEnumTagSinglePayload(v38, 1, v63) != 1)
  {
    sub_21B0AA940();
    if (__swift_getEnumTagSinglePayload(v38 + v37, 1, v39) == 1)
    {
      sub_21AF99BE0(v36, &qword_27CD44A60, &qword_21B118168);
      sub_21B03183C();
      goto LABEL_17;
    }

    sub_21B03179C(v38 + v37);
    v41 = static Apple_Parsec_Feedback_V2_CardSectionForFeedback.== infix(_:_:)();
    sub_21B03183C();
    sub_21AF99BE0(v36, &qword_27CD44A60, &qword_21B118168);
    sub_21B03183C();
    sub_21AF99BE0(v38, &qword_27CD44A60, &qword_21B118168);
    v40 = v65;
    if (v41)
    {
      goto LABEL_20;
    }

LABEL_32:

    return 0;
  }

  sub_21AF99BE0(v36, &qword_27CD44A60, &qword_21B118168);
  if (__swift_getEnumTagSinglePayload(v38 + v37, 1, v39) != 1)
  {
LABEL_17:
    sub_21AF99BE0(v38, &qword_27CD44B50, &qword_21B1181D0);
    goto LABEL_32;
  }

  sub_21AF99BE0(v38, &qword_27CD44A60, &qword_21B118168);
  v40 = v65;
LABEL_20:
  v42 = a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__productPageResult;
  swift_beginAccess();
  v43 = *v42;
  v44 = *(v42 + 8);
  v45 = (v40 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__productPageResult);
  swift_beginAccess();
  if (!sub_21AFB4A88(v43, v44, *v45))
  {
    goto LABEL_32;
  }

  v46 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSectionID);
  swift_beginAccess();
  v47 = *v46;
  v48 = v46[1];
  v49 = (v40 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSectionID);
  swift_beginAccess();
  v50 = v47 == *v49 && v48 == v49[1];
  if (!v50 && (sub_21B112D04() & 1) == 0)
  {
    goto LABEL_32;
  }

  v51 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultID);
  swift_beginAccess();
  v52 = *v51;
  v53 = v51[1];
  v54 = (v65 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultID);
  swift_beginAccess();
  if (v52 != *v54 || v53 != v54[1])
  {
    v56 = sub_21B112D04();

    return (v56 & 1) != 0;
  }

  return 1;
}

uint64_t sub_21B05876C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A48, type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B0587EC(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45C58, type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B05885C(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45C58, type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback);

  return sub_21B112114();
}

uint64_t sub_21B0588E8()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44258);
  __swift_project_value_buffer(v0, qword_27CD44258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "input";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "uuid";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "triggerEvent";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "queryId";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "searchType";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_StartSearchFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 5:
        OUTLINED_FUNCTION_49_1();
        sub_21B112094();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B058C84(v3, v4);
        break;
      case 6:
        v5 = OUTLINED_FUNCTION_10_2();
        sub_21B058CEC(v5, v6);
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_StartSearchFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_819();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v20))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v22 || (OUTLINED_FUNCTION_60_0(), sub_21B1121E4(), !v20))
    {
      OUTLINED_FUNCTION_10_4();
      if (!v23 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v20))
      {
        v24 = OUTLINED_FUNCTION_642();
        if (sub_21AFB4A88(v24, v25, v26) || (sub_21B09A2EC(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v20))
        {
          if (!*(v21 + 56) || (OUTLINED_FUNCTION_36_1(), sub_21B112204(), !v20))
          {
            if (!*(v21 + 64) || (OUTLINED_FUNCTION_472(), sub_21B09A340(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v20))
            {
              type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(0);
              OUTLINED_FUNCTION_27_2();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_818();
}

uint64_t sub_21B058F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A40, type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartSearchFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B058FA8(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45C70, type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartSearchFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B059018(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45C70, type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartSearchFeedback);

  return sub_21B112114();
}

uint64_t sub_21B0590A4()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44270);
  __swift_project_value_buffer(v0, qword_27CD44270);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "uuid";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_EndSearchFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_318();
      sub_21B112074();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_238();
      sub_21B112094();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_EndSearchFeedback.traverse<A>(visitor:)(uint64_t a1)
{
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), result = sub_21B112204(), !v1))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v3 || (OUTLINED_FUNCTION_60_0(), result = sub_21B1121E4(), !v1))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(0);
      v4 = OUTLINED_FUNCTION_184();
      return OUTLINED_FUNCTION_652(v4, v5);
    }
  }

  return result;
}

uint64_t sub_21B059410(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A38, type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndSearchFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B059490(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45C88, type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndSearchFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B059500(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45C88, type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndSearchFeedback);

  return sub_21B112114();
}

uint64_t sub_21B059598()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44288);
  __swift_project_value_buffer(v0, qword_27CD44288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_21B118040;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "timestamp";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "input";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "uuid";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "queryId";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "url";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "headers";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "endpoint";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "triggerEvent";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "lookupSelectionType";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "bodyData";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "experimentId";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "treatmentId";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "searchType";
  *(v30 + 1) = 10;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "rawRequestSize";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "compressedRequestSize";
  *(v34 + 1) = 21;
  v34[16] = 2;
  v7();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
      case 15:
      case 16:
        OUTLINED_FUNCTION_49_1();
        sub_21B112094();
        break;
      case 2:
      case 3:
      case 5:
      case 12:
      case 13:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 6:
        v9 = OUTLINED_FUNCTION_10_2();
        sub_21B059BAC(v9, v10, v11, v12);
        break;
      case 7:
        v13 = OUTLINED_FUNCTION_10_2();
        sub_21B059C24(v13, v14);
        break;
      case 8:
        v5 = OUTLINED_FUNCTION_10_2();
        sub_21B059C8C(v5, v6, v7, v8);
        break;
      case 9:
        v15 = OUTLINED_FUNCTION_10_2();
        sub_21B059D40(v15, v16, v17, v18);
        break;
      case 11:
        OUTLINED_FUNCTION_49_1();
        sub_21B111FD4();
        break;
      case 14:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B059DF8(v3, v4);
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), (v18 = v19) == 0))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v21 || (OUTLINED_FUNCTION_60_0(), sub_21B1121E4(), (v18 = v19) == 0))
    {
      OUTLINED_FUNCTION_10_4();
      if (!v22 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), (v18 = v19) == 0))
      {
        if (!*(v20 + 40) || (OUTLINED_FUNCTION_36_1(), sub_21B112204(), (v18 = v19) == 0))
        {
          OUTLINED_FUNCTION_10_4();
          if (!v23 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), (v18 = v19) == 0))
          {
            if (!*(*(v20 + 64) + 16) || (sub_21B111E94(), v19 = v18, sub_21B112134(), !v18))
            {
              if (!*(v20 + 72) || (OUTLINED_FUNCTION_472(), sub_21B09A394(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v19))
              {
                if (*(v20 + 96) > 0xFDu)
                {
                  goto LABEL_36;
                }

                OUTLINED_FUNCTION_455();
                OUTLINED_FUNCTION_292();
                if (v28 < 0)
                {
                  sub_21B05A13C(v24, v25, v26, v27);
                }

                else
                {
                  sub_21B05A0BC(v24, v25, v26, v27);
                }

                if (!v19)
                {
LABEL_36:
                  if (sub_21AFD45D8(*(v20 + 104), *(v20 + 112)) || (OUTLINED_FUNCTION_63_0(), sub_21B112184(), !v19))
                  {
                    OUTLINED_FUNCTION_10_4();
                    if (!v29 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v19))
                    {
                      OUTLINED_FUNCTION_10_4();
                      if (!v30 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v19))
                      {
                        if (!*(v20 + 152) || (OUTLINED_FUNCTION_472(), sub_21B09A340(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v19))
                        {
                          if (!*(v20 + 168) || (OUTLINED_FUNCTION_36_1(), sub_21B112204(), !v19))
                          {
                            if (!*(v20 + 176) || (OUTLINED_FUNCTION_36_1(), sub_21B112204(), !v19))
                            {
                              type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(0);
                              OUTLINED_FUNCTION_27_2();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_21B05A0BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 96) < 0)
  {
    __break(1u);
  }

  else
  {
    sub_21B09A2EC();
    return sub_21B112174();
  }

  return result;
}

uint64_t sub_21B05A13C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 96) > -3)
  {
    __break(1u);
  }

  else
  {
    sub_21B0AA4FC();
    return sub_21B112174();
  }

  return result;
}

uint64_t sub_21B05A288(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A30, type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B05A308(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45CA0, type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B05A378(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45CA0, type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback);

  return sub_21B112114();
}

uint64_t sub_21B05A404()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD442A0);
  __swift_project_value_buffer(v0, qword_27CD442A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_21B1180B0;
  v4 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v4 = "timestamp";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v32 + v3 + v2 + v1[14];
  *(v32 + v3 + v2) = 2;
  *v8 = "responseSize";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v32 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "statusCode";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v32 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "uuid";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v7();
  v13 = (v32 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "parsecStatus";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v32 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "fbq";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v7();
  v17 = (v32 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 9;
  *v18 = "duration";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  v19 = (v32 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 10;
  *v20 = "partialClientIp";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v7();
  v21 = (v32 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 11;
  *v22 = "timingData";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v7();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "endpointType";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v7();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 13;
  *v26 = "rawResponseSize";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v7();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 14;
  *v28 = "decompressedResponseSize";
  *(v28 + 1) = 24;
  v28[16] = 2;
  v7();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 15;
  *v30 = "edge";
  *(v30 + 1) = 4;
  v30[16] = 2;
  v7();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 13:
      case 14:
        OUTLINED_FUNCTION_49_1();
        sub_21B112094();
        break;
      case 2:
        OUTLINED_FUNCTION_318();
        sub_21B112004();
        break;
      case 3:
        OUTLINED_FUNCTION_49_1();
        sub_21B111FF4();
        break;
      case 5:
      case 7:
      case 8:
      case 10:
      case 15:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 9:
        OUTLINED_FUNCTION_49_1();
        sub_21B112054();
        break;
      case 11:
        v5 = OUTLINED_FUNCTION_10_2();
        sub_21B05A9A0(v5, v6, v7, v8);
        break;
      case 12:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B05AA54(v3, v4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B05A9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  sub_21B099CBC(&qword_27CD44F10, type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_NetworkTimingData);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44AE8, &qword_21B118170);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_212();
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_177();
  if (!*v0 || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_36_1(), sub_21B1121B4(), !v1))
    {
      if (!*(v2 + 16) || (OUTLINED_FUNCTION_36_1(), sub_21B1121A4(), !v1))
      {
        OUTLINED_FUNCTION_10_4();
        if (!v8 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v1))
        {
          OUTLINED_FUNCTION_10_4();
          if (!v9 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v1))
          {
            OUTLINED_FUNCTION_10_4();
            if (!v10 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v1))
            {
              if (*(v2 + 72) == 0.0 || (OUTLINED_FUNCTION_143(), sub_21B1121D4(), !v1))
              {
                OUTLINED_FUNCTION_10_4();
                if (!v11 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v1))
                {
                  type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(0);
                  OUTLINED_FUNCTION_715();
                  OUTLINED_FUNCTION_243();
                  if (v12)
                  {
                    sub_21AF99BE0(v3, &qword_27CD44AE8, &qword_21B118170);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_50_2();
                    v13 = OUTLINED_FUNCTION_636();
                    sub_21B03179C(v13);
                    sub_21B099CBC(&qword_27CD44F10, type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_NetworkTimingData);
                    OUTLINED_FUNCTION_595();
                    OUTLINED_FUNCTION_58_0();
                    sub_21B112224();
                    OUTLINED_FUNCTION_328();
                    sub_21B03183C();
                    if (v1)
                    {
                      goto LABEL_31;
                    }
                  }

                  v14 = *(v2 + 96);
                  if (!v14 || (OUTLINED_FUNCTION_542(v14), sub_21B09A394(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v1))
                  {
                    if (!*(v2 + 112) || (OUTLINED_FUNCTION_36_1(), sub_21B112204(), !v1))
                    {
                      if (!*(v2 + 120) || (OUTLINED_FUNCTION_36_1(), sub_21B112204(), !v1))
                      {
                        OUTLINED_FUNCTION_10_4();
                        if (!v15 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v1))
                        {
                          OUTLINED_FUNCTION_27_2();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_31:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B05AE48(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A28, type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B05AEC8(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45CB8, type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B05AF38(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45CB8, type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback);

  return sub_21B112114();
}

uint64_t sub_21B05AFD0()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD442B8);
  __swift_project_value_buffer(v0, qword_27CD442B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tokenString";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_10_2();
      sub_21B05B220(v3, v4);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_238();
      sub_21B112074();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_30_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16);
  v7 = *(v1 + 16);
  if (*(v1 + 24) == 1)
  {
    switch(v7)
    {
      case 1:
        if (v6 == 1)
        {
          goto LABEL_11;
        }

        return 0;
      case 2:
        if (v6 == 2)
        {
          goto LABEL_11;
        }

        return 0;
      case 3:
        if (v6 == 3)
        {
          goto LABEL_11;
        }

        return 0;
      case 4:
        if (v6 == 4)
        {
          goto LABEL_11;
        }

        return 0;
      default:
        if (v6)
        {
          return 0;
        }

        goto LABEL_11;
    }
  }

  if (v6 != v7)
  {
    return 0;
  }

LABEL_11:
  type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_0_15();
  v11 = sub_21B099CBC(v9, v10, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_40_1(v11) & 1;
}

uint64_t sub_21B05B4B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A20, type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B05B538(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45CD0, type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B05B5A8(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45CD0, type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback);

  return sub_21B112114();
}

uint64_t sub_21B05B634()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD442D0);
  __swift_project_value_buffer(v0, qword_27CD442D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B115FB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "percentMessagesIndexed";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "percentAttachmentsIndexed";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "searchIndex";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "totalMessageCount";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "indexedMessageCount";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_IndexStateForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_49_1();
        sub_21B111FF4();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_IndexStateForFeedback.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_26_3();
  if (!*v1 || (OUTLINED_FUNCTION_35_3(), result = sub_21B1121A4(), !v2))
  {
    if (!v3[1] || (OUTLINED_FUNCTION_36_1(), result = sub_21B1121A4(), !v2))
    {
      if (!v3[2] || (OUTLINED_FUNCTION_36_1(), result = sub_21B1121A4(), !v2))
      {
        if (!v3[3] || (OUTLINED_FUNCTION_36_1(), result = sub_21B1121A4(), !v2))
        {
          if (!v3[4] || (OUTLINED_FUNCTION_36_1(), result = sub_21B1121A4(), !v2))
          {
            type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
            return OUTLINED_FUNCTION_27_2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_IndexStateForFeedback.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_81();
  if (*(v4 + 4) != *(v5 + 4))
  {
    return 0;
  }

  if (*(v3 + 8) != *(v2 + 8))
  {
    return 0;
  }

  if (*(v3 + 12) != *(v2 + 12))
  {
    return 0;
  }

  OUTLINED_FUNCTION_737();
  if (!v6)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
  OUTLINED_FUNCTION_830();
  OUTLINED_FUNCTION_0_15();
  v9 = sub_21B099CBC(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_40_1(v9) & 1;
}

uint64_t sub_21B05BB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A18, type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_IndexStateForFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B05BC18(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45CE8, type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_IndexStateForFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B05BC88(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45CE8, type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_IndexStateForFeedback);

  return sub_21B112114();
}

uint64_t sub_21B05BD14()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD442E8);
  __swift_project_value_buffer(v0, qword_27CD442E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_21B117F60;
  v4 = v31 + v3;
  v5 = v31 + v3 + v1[14];
  *(v31 + v3) = 1;
  *v5 = "timestamp";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_21B112234();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "input";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "uuid";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "triggerEvent";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "queryId";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "indexType";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "searchType";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "originatingApp";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "entityQueryCommand";
  *(v23 + 1) = 18;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "indexState";
  *(v25 + 1) = 10;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "coreSpotlightIndexTypeUsed";
  *(v27 + 1) = 26;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "isPhotosScopedSearch";
  *(v29 + 1) = 20;
  v29[16] = 2;
  v8();
  return sub_21B112244();
}

uint64_t sub_21B05C18C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__entityQueryCommand;
  CommandForFeedback = type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, CommandForFeedback);
  v3 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexState;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexTypeUsed;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isPhotosScopedSearch) = 0;
  return v0;
}

uint64_t sub_21B05C248(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B00, &qword_21B118180);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44AF0, &qword_21B118178);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v32 - v6;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 40) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 56) = 0;
  *(v1 + 80) = 0;
  v33 = (v1 + 80);
  *(v1 + 72) = 0;
  *(v1 + 64) = 1;
  *(v1 + 88) = 1;
  *(v1 + 96) = 0;
  v34 = (v1 + 96);
  *(v1 + 104) = 1;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__entityQueryCommand;
  v35 = (v1 + 112);
  v36 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__entityQueryCommand;
  CommandForFeedback = type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, CommandForFeedback);
  v9 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexState;
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexTypeUsed;
  v38 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexTypeUsed;
  *v11 = 0;
  *(v11 + 8) = 1;
  v39 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isPhotosScopedSearch;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isPhotosScopedSearch) = 0;
  swift_beginAccess();
  v12 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v12;
  swift_beginAccess();
  v14 = *(a1 + 24);
  v13 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v14;
  *(v1 + 32) = v13;
  swift_beginAccess();
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v15;
  *(v1 + 48) = v16;

  swift_beginAccess();
  v17 = *(a1 + 56);
  LOBYTE(v15) = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 56) = v17;
  *(v1 + 64) = v15;
  swift_beginAccess();
  v18 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 72) = v18;
  swift_beginAccess();
  v19 = *(a1 + 80);
  LOBYTE(v15) = *(a1 + 88);
  v20 = v33;
  swift_beginAccess();
  *v20 = v19;
  *(v1 + 88) = v15;
  swift_beginAccess();
  v21 = *(a1 + 96);
  LOBYTE(v15) = *(a1 + 104);
  v22 = v34;
  swift_beginAccess();
  *v22 = v21;
  *(v1 + 104) = v15;
  swift_beginAccess();
  v24 = *(a1 + 112);
  v23 = *(a1 + 120);
  v25 = v35;
  swift_beginAccess();
  *v25 = v24;
  *(v1 + 120) = v23;

  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v26 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexTypeUsed);
  swift_beginAccess();
  v27 = *v26;
  LOBYTE(v26) = *(v26 + 8);
  v28 = v38;
  swift_beginAccess();
  *v28 = v27;
  *(v28 + 8) = v26;
  v29 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isPhotosScopedSearch;
  swift_beginAccess();
  LOBYTE(v29) = *(a1 + v29);

  v30 = v39;
  swift_beginAccess();
  *(v1 + v30) = v29;
  return v1;
}

void *sub_21B05C7A4()
{

  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__entityQueryCommand, &qword_27CD44AF0, &qword_21B118178);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexState, &qword_27CD44B00, &qword_21B118180);
  return v0;
}

uint64_t sub_21B05CAB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21B112074();
  return swift_endAccess();
}

uint64_t sub_21B05CB34(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21B112074();
  return swift_endAccess();
}

uint64_t sub_21B05CBB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21B09A2EC();
  sub_21B111FB4();
  return swift_endAccess();
}

void sub_21B05CC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_160();
  v20 = sub_21B112094();
  OUTLINED_FUNCTION_666(v20);
  OUTLINED_FUNCTION_795();
}

uint64_t sub_21B05CCA0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21B0AA844();
  sub_21B111FB4();
  return swift_endAccess();
}

uint64_t sub_21B05CD34(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21B09A340();
  sub_21B111FB4();
  return swift_endAccess();
}

uint64_t sub_21B05CDC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21B112074();
  return swift_endAccess();
}

uint64_t sub_21B05CE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  sub_21B099CBC(&qword_27CD45CD0, type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B05CF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
  sub_21B099CBC(&qword_27CD45CE8, type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_IndexStateForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B05D044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B00, &qword_21B118180);
  MEMORY[0x28223BE20](v7 - 8);
  v32 = v31 - v8;
  v41 = type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
  MEMORY[0x28223BE20](v41);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44AF0, &qword_21B118178);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v31 - v12;
  CommandForFeedback = type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  MEMORY[0x28223BE20](CommandForFeedback);
  v31[3] = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!*(a1 + 16) || (result = sub_21B112204(), !v4))
  {
    v31[2] = v10;
    v17 = a4;
    swift_beginAccess();
    v18 = *(a1 + 32);
    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {

      sub_21B1121E4();
      if (v4)
      {
      }
    }

    swift_beginAccess();
    v20 = *(a1 + 48);
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = *(a1 + 40) & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {

      sub_21B1121E4();
      if (v4)
      {
      }
    }

    swift_beginAccess();
    if (sub_21AFB4A88(*(a1 + 56), *(a1 + 64), 0) || (v22 = *(a1 + 64), v39 = *(a1 + 56), v40 = v22, sub_21B09A2EC(), result = sub_21B112174(), !v4))
    {
      swift_beginAccess();
      if (!*(a1 + 72) || (result = sub_21B112204(), !v4))
      {
        swift_beginAccess();
        if (!*(a1 + 80) || (v23 = *(a1 + 88), v37 = *(a1 + 80), v38 = v23, sub_21B0AA844(), result = sub_21B112174(), !v4))
        {
          swift_beginAccess();
          if (!*(a1 + 96) || (v24 = *(a1 + 104), v35 = *(a1 + 96), v36 = v24, sub_21B09A340(), result = sub_21B112174(), !v4))
          {
            v31[1] = v17;
            swift_beginAccess();
            v25 = *(a1 + 120);
            v26 = HIBYTE(v25) & 0xF;
            if ((v25 & 0x2000000000000000) == 0)
            {
              v26 = *(a1 + 112) & 0xFFFFFFFFFFFFLL;
            }

            if (!v26 || (, sub_21B1121E4(), result = , !v4))
            {
              swift_beginAccess();
              sub_21B0AA940();
              if (__swift_getEnumTagSinglePayload(v13, 1, CommandForFeedback) == 1)
              {
                sub_21AF99BE0(v13, &qword_27CD44AF0, &qword_21B118178);
              }

              else
              {
                sub_21B03179C(v13);
                sub_21B099CBC(&qword_27CD45CD0, type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback);
                sub_21B112224();
                result = sub_21B03183C();
                if (v4)
                {
                  return result;
                }
              }

              swift_beginAccess();
              v27 = v32;
              sub_21B0AA940();
              if (__swift_getEnumTagSinglePayload(v27, 1, v41) == 1)
              {
                sub_21AF99BE0(v27, &qword_27CD44B00, &qword_21B118180);
              }

              else
              {
                sub_21B03179C(v27);
                sub_21B099CBC(&qword_27CD45CE8, type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_IndexStateForFeedback);
                sub_21B112224();
                result = sub_21B03183C();
                if (v4)
                {
                  return result;
                }
              }

              v28 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexTypeUsed);
              swift_beginAccess();
              if (!*v28 || (v29 = *(v28 + 8), v33 = *v28, v34 = v29, sub_21B0AA79C(), result = sub_21B112174(), !v4))
              {
                v30 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isPhotosScopedSearch;
                result = swift_beginAccess();
                if (*(a1 + v30) == 1)
                {
                  return sub_21B112164();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_21B05D774(uint64_t a1, void *a2)
{
  v69 = type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
  MEMORY[0x28223BE20](v69);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46E08, &qword_21B127D88);
  MEMORY[0x28223BE20](v67);
  v6 = &v64 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B00, &qword_21B118180);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v66 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = &v64 - v10;
  CommandForFeedback = type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  MEMORY[0x28223BE20](CommandForFeedback);
  v13 = (&v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46E10, &unk_21B127D90);
  MEMORY[0x28223BE20](v14);
  v70 = &v64 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44AF0, &qword_21B118178);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v64 - v20;
  swift_beginAccess();
  v22 = *(a1 + 16);
  swift_beginAccess();
  if (v22 != a2[2])
  {
    goto LABEL_44;
  }

  v64 = v6;
  swift_beginAccess();
  v24 = *(a1 + 24);
  v23 = *(a1 + 32);
  swift_beginAccess();
  v25 = v24 == a2[3] && v23 == a2[4];
  if (!v25 && (sub_21B112D04() & 1) == 0)
  {
    goto LABEL_44;
  }

  swift_beginAccess();
  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  swift_beginAccess();
  v28 = v26 == a2[5] && v27 == a2[6];
  if (!v28 && (sub_21B112D04() & 1) == 0)
  {
    goto LABEL_44;
  }

  swift_beginAccess();
  v29 = *(a1 + 56);
  v30 = *(a1 + 64);
  swift_beginAccess();
  if (!sub_21AFB4A88(v29, v30, a2[7]))
  {
    goto LABEL_44;
  }

  swift_beginAccess();
  v31 = *(a1 + 72);
  swift_beginAccess();
  if (v31 != a2[9])
  {
    goto LABEL_44;
  }

  swift_beginAccess();
  v32 = *(a1 + 80);
  v33 = *(a1 + 88);
  swift_beginAccess();
  if (!sub_21AFB4A88(v32, v33, a2[10]))
  {
    goto LABEL_44;
  }

  swift_beginAccess();
  v34 = *(a1 + 96);
  v35 = *(a1 + 104);
  swift_beginAccess();
  if (!sub_21AFB4A88(v34, v35, a2[12]))
  {
    goto LABEL_44;
  }

  swift_beginAccess();
  v36 = *(a1 + 112);
  v37 = *(a1 + 120);
  swift_beginAccess();
  v38 = v36 == a2[14] && v37 == a2[15];
  if (!v38 && (sub_21B112D04() & 1) == 0)
  {
    goto LABEL_44;
  }

  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  v39 = *(v14 + 48);
  v40 = v70;
  sub_21B0AA940();
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v40, 1, CommandForFeedback) == 1)
  {

    sub_21AF99BE0(v21, &qword_27CD44AF0, &qword_21B118178);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40 + v39, 1, CommandForFeedback);
    v42 = v64;
    if (EnumTagSinglePayload == 1)
    {
      sub_21AF99BE0(v40, &qword_27CD44AF0, &qword_21B118178);
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  sub_21B0AA940();
  v46 = __swift_getEnumTagSinglePayload(v40 + v39, 1, CommandForFeedback);
  v42 = v64;
  if (v46 == 1)
  {

    sub_21AF99BE0(v21, &qword_27CD44AF0, &qword_21B118178);
    sub_21B03183C();
LABEL_29:
    v47 = &qword_27CD46E10;
    v48 = &unk_21B127D90;
    v49 = v40;
LABEL_42:
    sub_21AF99BE0(v49, v47, v48);
    goto LABEL_43;
  }

  sub_21B03179C(v40 + v39);
  v50 = *v19 == *v13 && *(v19 + 1) == v13[1];
  if (!v50 && (sub_21B112D04() & 1) == 0 || !sub_21AFB4A88(*(v19 + 2), v19[24], v13[2]))
  {

    sub_21AF99BE0(v21, &qword_27CD44AF0, &qword_21B118178);
    sub_21B03183C();
    sub_21B03183C();
    v49 = v70;
    v47 = &qword_27CD44AF0;
    v48 = &qword_21B118178;
    goto LABEL_42;
  }

  sub_21B111EC4();
  sub_21B099CBC(&unk_2811FAAE0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);

  v51 = sub_21B1123C4();
  sub_21AF99BE0(v21, &qword_27CD44AF0, &qword_21B118178);
  sub_21B03183C();
  sub_21B03183C();
  sub_21AF99BE0(v70, &qword_27CD44AF0, &qword_21B118178);
  if ((v51 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_24:
  swift_beginAccess();
  v43 = v68;
  sub_21B0AA940();
  swift_beginAccess();
  v44 = *(v67 + 48);
  sub_21B0AA940();
  sub_21B0AA940();
  v45 = v69;
  if (__swift_getEnumTagSinglePayload(v42, 1, v69) == 1)
  {
    sub_21AF99BE0(v43, &qword_27CD44B00, &qword_21B118180);
    if (__swift_getEnumTagSinglePayload(v42 + v44, 1, v45) == 1)
    {
      sub_21AF99BE0(v42, &qword_27CD44B00, &qword_21B118180);
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  v52 = v66;
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v42 + v44, 1, v45) == 1)
  {
    sub_21AF99BE0(v43, &qword_27CD44B00, &qword_21B118180);
    sub_21B03183C();
LABEL_41:
    v47 = &qword_27CD46E08;
    v48 = &qword_21B127D88;
    v49 = v42;
    goto LABEL_42;
  }

  v55 = v42 + v44;
  v56 = v65;
  sub_21B03179C(v55);
  v57 = static Apple_Parsec_Feedback_V2_IndexStateForFeedback.== infix(_:_:)(v52, v56);
  sub_21B03183C();
  sub_21AF99BE0(v43, &qword_27CD44B00, &qword_21B118180);
  sub_21B03183C();
  sub_21AF99BE0(v42, &qword_27CD44B00, &qword_21B118180);
  if (v57)
  {
LABEL_47:
    v58 = a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexTypeUsed;
    swift_beginAccess();
    v59 = *v58;
    v60 = *(v58 + 8);
    v61 = (a2 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexTypeUsed);
    swift_beginAccess();
    if (sub_21AFB4A88(v59, v60, *v61))
    {
      v62 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isPhotosScopedSearch;
      swift_beginAccess();
      LOBYTE(v62) = *(a1 + v62);

      v63 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isPhotosScopedSearch;
      swift_beginAccess();
      LOBYTE(v63) = *(a2 + v63);

      v53 = v62 ^ v63 ^ 1;
      return v53 & 1;
    }
  }

LABEL_43:

LABEL_44:
  v53 = 0;
  return v53 & 1;
}

uint64_t sub_21B05E2DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A10, type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B05E35C(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45D00, type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B05E3CC(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45D00, type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback);

  return sub_21B112114();
}

uint64_t sub_21B05E464()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44308);
  __swift_project_value_buffer(v0, qword_27CD44308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_21B117F80;
  v4 = v44 + v3 + v1[14];
  *(v44 + v3) = 1;
  *v4 = "queryIntentType";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v44 + v3 + v2 + v1[14];
  *(v44 + v3 + v2) = 2;
  *v8 = "hasUnspecifiedTokens";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v44 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "hasSortCriteriaTokens";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v7();
  v11 = (v44 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "hasLocationTokens";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v7();
  v13 = (v44 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasActionTokens";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v7();
  v15 = (v44 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasMediaTypeTokens";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  v17 = (v44 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "hasVisualQualityTokens";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v7();
  v19 = (v44 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "hasNounTokens";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v7();
  v21 = (v44 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "hasTimeTokens";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v7();
  v23 = (v44 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "hasEventTokens";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v7();
  v25 = (v44 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "hasGenericLocationTokens";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v7();
  v27 = (v44 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "hasCaptureDeviceTokens";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v7();
  v29 = (v44 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "hasFavoritedTokens";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v7();
  v31 = (v44 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "hasSourceAppTokens";
  *(v32 + 1) = 18;
  v32[16] = 2;
  v7();
  v33 = (v44 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "hasPersonTokens";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v7();
  v35 = (v44 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "hasPersonSenderTokens";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v7();
  v37 = (v44 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "spotlightQueryIntent";
  *(v38 + 1) = 20;
  v38[16] = 2;
  v7();
  v39 = (v44 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "isUnsafeQuery";
  *(v40 + 1) = 13;
  v40[16] = 2;
  v7();
  v41 = (v44 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "isBlocklistedQuery";
  *(v42 + 1) = 18;
  v42[16] = 2;
  v7();
  return sub_21B112244();
}

uint64_t sub_21B05EA58()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  *(result + 33) = 0;
  *(result + 25) = 0;
  *(result + 40) = 0;
  *(result + 48) = 1;
  *(result + 49) = 0;
  qword_27CD44320 = result;
  return result;
}

uint64_t sub_21B05EAA8(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 40) = 0;
  *(v1 + 33) = 0;
  *(v1 + 25) = 0;
  *(v1 + 48) = 1;
  *(v1 + 49) = 0;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 25);
  swift_beginAccess();
  *(v1 + 25) = v5;
  swift_beginAccess();
  v6 = *(a1 + 26);
  swift_beginAccess();
  *(v1 + 26) = v6;
  swift_beginAccess();
  v7 = *(a1 + 27);
  swift_beginAccess();
  *(v1 + 27) = v7;
  swift_beginAccess();
  v8 = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 28) = v8;
  swift_beginAccess();
  v9 = *(a1 + 29);
  swift_beginAccess();
  *(v1 + 29) = v9;
  swift_beginAccess();
  v10 = *(a1 + 30);
  swift_beginAccess();
  *(v1 + 30) = v10;
  swift_beginAccess();
  v11 = *(a1 + 31);
  swift_beginAccess();
  *(v1 + 31) = v11;
  swift_beginAccess();
  v12 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v12;
  swift_beginAccess();
  v13 = *(a1 + 33);
  swift_beginAccess();
  *(v1 + 33) = v13;
  swift_beginAccess();
  v14 = *(a1 + 34);
  swift_beginAccess();
  *(v1 + 34) = v14;
  swift_beginAccess();
  v15 = *(a1 + 35);
  swift_beginAccess();
  *(v1 + 35) = v15;
  swift_beginAccess();
  v16 = *(a1 + 36);
  swift_beginAccess();
  *(v1 + 36) = v16;
  swift_beginAccess();
  v17 = *(a1 + 37);
  swift_beginAccess();
  *(v1 + 37) = v17;
  swift_beginAccess();
  v18 = *(a1 + 38);
  swift_beginAccess();
  *(v1 + 38) = v18;
  swift_beginAccess();
  v19 = *(a1 + 39);
  swift_beginAccess();
  *(v1 + 39) = v19;
  swift_beginAccess();
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v20;
  *(v1 + 48) = v21;
  swift_beginAccess();
  v22 = *(a1 + 49);
  swift_beginAccess();
  *(v1 + 49) = v22;
  swift_beginAccess();
  v23 = *(a1 + 50);

  swift_beginAccess();
  *(v1 + 50) = v23;
  return v1;
}

void Apple_Parsec_Feedback_V2_QueryUnderstandingParse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_404();
  UnderstandingParse = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_706(UnderstandingParse);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    *(v3 + v4) = sub_21B05EAA8(v6);
  }

  v7 = OUTLINED_FUNCTION_162();
  sub_21B05F2FC(v7, v8, v9, v10);
  OUTLINED_FUNCTION_823();
}

void sub_21B05F5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_817();
  v23 = v22;
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_393();
  v24 = swift_beginAccess();
  v23(v24);
  OUTLINED_FUNCTION_605();
  v25 = sub_21B111FB4();
  OUTLINED_FUNCTION_666(v25);
  OUTLINED_FUNCTION_816();
}

uint64_t sub_21B05F620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21B05F6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21B05F728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21B05F7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21B05F830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21B05F8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21B05F938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21B05F9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21B05FA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21B05FAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21B05FB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21B05FBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21B05FC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21B05FCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21B05FD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21B05FDDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21B099FA4();
  sub_21B111FB4();
  return swift_endAccess();
}

void sub_21B05FE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_160();
  v20 = sub_21B111F94();
  OUTLINED_FUNCTION_666(v20);
  OUTLINED_FUNCTION_795();
}

uint64_t sub_21B05FEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21B05FF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (sub_21B0AA5F8(), result = sub_21B112174(), !v4))
  {
    swift_beginAccess();
    if (*(a1 + 25) != 1 || (result = sub_21B112164(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 26) != 1 || (result = sub_21B112164(), !v4))
      {
        swift_beginAccess();
        if (*(a1 + 27) != 1 || (result = sub_21B112164(), !v4))
        {
          swift_beginAccess();
          if (*(a1 + 28) != 1 || (result = sub_21B112164(), !v4))
          {
            swift_beginAccess();
            if (*(a1 + 29) != 1 || (result = sub_21B112164(), !v4))
            {
              swift_beginAccess();
              if (*(a1 + 30) != 1 || (result = sub_21B112164(), !v4))
              {
                swift_beginAccess();
                if (*(a1 + 31) != 1 || (result = sub_21B112164(), !v4))
                {
                  swift_beginAccess();
                  if (*(a1 + 32) != 1 || (result = sub_21B112164(), !v4))
                  {
                    swift_beginAccess();
                    if (*(a1 + 33) != 1 || (result = sub_21B112164(), !v4))
                    {
                      swift_beginAccess();
                      if (*(a1 + 34) != 1 || (result = sub_21B112164(), !v4))
                      {
                        swift_beginAccess();
                        if (*(a1 + 35) != 1 || (result = sub_21B112164(), !v4))
                        {
                          swift_beginAccess();
                          if (*(a1 + 36) != 1 || (result = sub_21B112164(), !v4))
                          {
                            swift_beginAccess();
                            if (*(a1 + 37) != 1 || (result = sub_21B112164(), !v4))
                            {
                              swift_beginAccess();
                              if (*(a1 + 38) != 1 || (result = sub_21B112164(), !v4))
                              {
                                swift_beginAccess();
                                if (*(a1 + 39) != 1 || (result = sub_21B112164(), !v4))
                                {
                                  swift_beginAccess();
                                  if (!*(a1 + 40) || (sub_21B099FA4(), result = sub_21B112174(), !v4))
                                  {
                                    swift_beginAccess();
                                    if (*(a1 + 49) != 1 || (result = sub_21B112164(), !v4))
                                    {
                                      result = swift_beginAccess();
                                      if (*(a1 + 50) == 1)
                                      {
                                        return sub_21B112164();
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_21B0604EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = OUTLINED_FUNCTION_267();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_846(v8);
  if (v9 != *(v4 + v10) && (a4() & 1) == 0)
  {
    return 0;
  }

  sub_21B111EC4();
  OUTLINED_FUNCTION_0_15();
  sub_21B099CBC(v11, v12, MEMORY[0x277D216D0]);
  v13 = OUTLINED_FUNCTION_7();
  return OUTLINED_FUNCTION_653(v13, v14, v15, v16) & 1;
}

uint64_t sub_21B060584(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v4 != 1)
        {
          goto LABEL_29;
        }

        goto LABEL_6;
      case 2:
        if (v4 != 2)
        {
          goto LABEL_29;
        }

        goto LABEL_6;
      case 3:
        if (v4 != 3)
        {
          goto LABEL_29;
        }

        goto LABEL_6;
      default:
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_29;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_29;
  }

LABEL_6:
  swift_beginAccess();
  v6 = *(a1 + 25);
  swift_beginAccess();
  if (v6 != *(a2 + 25) || (swift_beginAccess(), v7 = *(a1 + 26), swift_beginAccess(), v7 != *(a2 + 26)) || (swift_beginAccess(), v8 = *(a1 + 27), swift_beginAccess(), v8 != *(a2 + 27)) || (swift_beginAccess(), v9 = *(a1 + 28), swift_beginAccess(), v9 != *(a2 + 28)) || (swift_beginAccess(), v10 = *(a1 + 29), swift_beginAccess(), v10 != *(a2 + 29)) || (swift_beginAccess(), v11 = *(a1 + 30), swift_beginAccess(), v11 != *(a2 + 30)) || (swift_beginAccess(), v12 = *(a1 + 31), swift_beginAccess(), v12 != *(a2 + 31)) || (swift_beginAccess(), v13 = *(a1 + 32), swift_beginAccess(), v13 != *(a2 + 32)) || (swift_beginAccess(), v14 = *(a1 + 33), swift_beginAccess(), v14 != *(a2 + 33)) || (swift_beginAccess(), v15 = *(a1 + 34), swift_beginAccess(), v15 != *(a2 + 34)) || (swift_beginAccess(), v16 = *(a1 + 35), swift_beginAccess(), v16 != *(a2 + 35)) || (swift_beginAccess(), v17 = *(a1 + 36), swift_beginAccess(), v17 != *(a2 + 36)) || (swift_beginAccess(), v18 = *(a1 + 37), swift_beginAccess(), v18 != *(a2 + 37)) || (swift_beginAccess(), v19 = *(a1 + 38), swift_beginAccess(), v19 != *(a2 + 38)) || (swift_beginAccess(), v20 = *(a1 + 39), swift_beginAccess(), v20 != *(a2 + 39)) || (swift_beginAccess(), v21 = *(a1 + 40), v22 = *(a1 + 48), swift_beginAccess(), !sub_21AFB4A88(v21, v22, *(a2 + 40))) || (swift_beginAccess(), v23 = *(a1 + 49), swift_beginAccess(), v23 != *(a2 + 49)))
  {
LABEL_29:
    v25 = 0;
    return v25 & 1;
  }

  swift_beginAccess();
  v24 = *(a1 + 50);
  swift_beginAccess();
  v25 = v24 ^ *(a2 + 50) ^ 1;
  return v25 & 1;
}

uint64_t sub_21B060AF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A08, type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B060B74(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44F50, type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B060BE4(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD44F50, type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse);

  return sub_21B112114();
}

uint64_t sub_21B060C70()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44328);
  __swift_project_value_buffer(v0, qword_27CD44328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "uuid";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "quParse";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "l1ToL2ResultCount";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "coreSpotlightIndexCount";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "photosRankingInfo";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
        OUTLINED_FUNCTION_318();
        sub_21B112074();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B06100C(v3, v4, v5, v6);
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_49_1();
        sub_21B112084();
        break;
      case 6:
        v7 = OUTLINED_FUNCTION_10_2();
        sub_21B0610C0(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B06100C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
  sub_21B099CBC(&qword_27CD44F50, type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse);
  return sub_21B1120B4();
}

uint64_t sub_21B0610C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(0);
  sub_21B099CBC(&qword_27CD44F48, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosRankingInfo);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_423();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B28, &qword_21B118190);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_212();
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_67_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD44B20, &qword_21B118188);
  OUTLINED_FUNCTION_25(v8);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_252();
  UnderstandingParse = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(v10);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_414();
  if (!*v1 || (sub_21B112204(), !v0))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v13 || (sub_21B1121E4(), !v0))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0);
      OUTLINED_FUNCTION_744();
      OUTLINED_FUNCTION_37_1(v2, 1, UnderstandingParse);
      if (v14)
      {
        sub_21AF99BE0(v2, &unk_27CD44B20, &qword_21B118188);
      }

      else
      {
        OUTLINED_FUNCTION_47_2();
        sub_21B03179C(v2);
        sub_21B099CBC(&qword_27CD44F50, type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse);
        OUTLINED_FUNCTION_709();
        sub_21B112224();
        OUTLINED_FUNCTION_298();
        sub_21B03183C();
        if (v0)
        {
          goto LABEL_18;
        }
      }

      if (!*(v1 + 24) || (sub_21B1121F4(), !v0))
      {
        if (!*(v1 + 28) || (sub_21B1121F4(), !v0))
        {
          OUTLINED_FUNCTION_715();
          OUTLINED_FUNCTION_37_1(v3, 1, v15);
          if (v14)
          {
            sub_21AF99BE0(v3, &qword_27CD44B28, &qword_21B118190);
LABEL_17:
            sub_21B111EA4();
            goto LABEL_18;
          }

          OUTLINED_FUNCTION_46_2();
          sub_21B03179C(v3);
          sub_21B099CBC(&qword_27CD44F48, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosRankingInfo);
          OUTLINED_FUNCTION_709();
          sub_21B112224();
          OUTLINED_FUNCTION_323();
          sub_21B03183C();
          if (!v0)
          {
            goto LABEL_17;
          }
        }
      }
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B061594(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A00, type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B061614(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45D28, type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B061684(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45D28, type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback);

  return sub_21B112114();
}

uint64_t sub_21B061710()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44340);
  __swift_project_value_buffer(v0, qword_27CD44340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B115FB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "totalNumberOfAssetsIndexed";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "totalNumberOfAssetsInLibrary";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "totalNumberOfEmbeddingMatchedAssets";
  *(v12 + 1) = 35;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "totalNumberOfMetadataMatchedAssets";
  *(v14 + 1) = 34;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "assetEstimationOffAmount";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosRankingInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B061A68(v3, v4);
        break;
      case 2:
        v9 = OUTLINED_FUNCTION_10_2();
        sub_21B061AD0(v9, v10);
        break;
      case 3:
        OUTLINED_FUNCTION_10_2();
        sub_21AF846AC();
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_10_2();
        sub_21B061B38(v7, v8);
        break;
      case 5:
        v5 = OUTLINED_FUNCTION_10_2();
        sub_21B061BA0(v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t static Apple_Parsec_Feedback_V2_PhotosRankingInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_81();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v3 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v3 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v3 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v3 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v3 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v3 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v3 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v3 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v3 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v3 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v3)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v3 == v5)
  {
LABEL_6:
    v6 = *(v1 + 16);
    v7 = *(v0 + 16);
    if (*(v0 + 24) == 1)
    {
      switch(v7)
      {
        case 1:
          if (v6 != 1)
          {
            return 0;
          }

          goto LABEL_11;
        case 2:
          if (v6 != 2)
          {
            return 0;
          }

          goto LABEL_11;
        case 3:
          if (v6 != 3)
          {
            return 0;
          }

          goto LABEL_11;
        case 4:
          if (v6 != 4)
          {
            return 0;
          }

          goto LABEL_11;
        case 5:
          if (v6 != 5)
          {
            return 0;
          }

          goto LABEL_11;
        case 6:
          if (v6 != 6)
          {
            return 0;
          }

          goto LABEL_11;
        case 7:
          if (v6 != 7)
          {
            return 0;
          }

          goto LABEL_11;
        case 8:
          if (v6 != 8)
          {
            return 0;
          }

          goto LABEL_11;
        case 9:
          if (v6 != 9)
          {
            return 0;
          }

          goto LABEL_11;
        case 10:
          if (v6 != 10)
          {
            return 0;
          }

          goto LABEL_11;
        default:
          if (!v6)
          {
            goto LABEL_11;
          }

          return 0;
      }
    }

    if (v6 == v7)
    {
LABEL_11:
      v8 = OUTLINED_FUNCTION_492();
      if (sub_21AFB4A88(v8, v9, v10) && sub_21AFB4A88(*(v1 + 48), *(v1 + 56), *(v0 + 48)))
      {
        v11 = OUTLINED_FUNCTION_633();
        if (sub_21AFB4A88(v11, v12, v13))
        {
          type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(0);
          OUTLINED_FUNCTION_830();
          OUTLINED_FUNCTION_0_15();
          v16 = sub_21B099CBC(v14, v15, MEMORY[0x277D216D0]);
          return OUTLINED_FUNCTION_40_1(v16) & 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_21B062018(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469F8, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosRankingInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B062098(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44F48, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosRankingInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B062108(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD44F48, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosRankingInfo);

  return sub_21B112114();
}

uint64_t sub_21B0621A0()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44358);
  __swift_project_value_buffer(v0, qword_27CD44358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reason";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "code";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "errorCode";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_Error.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 3:
        OUTLINED_FUNCTION_49_1();
        sub_21B112054();
        break;
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112094();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_Error.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_10_4();
  if (!v3 || (OUTLINED_FUNCTION_63_0(), result = sub_21B1121E4(), !v1))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v5 || (OUTLINED_FUNCTION_60_0(), result = sub_21B1121E4(), !v1))
    {
      if (*(v2 + 32) == 0.0 || (OUTLINED_FUNCTION_143(), result = sub_21B1121D4(), !v1))
      {
        if (!*(v2 + 40) || (OUTLINED_FUNCTION_36_1(), result = sub_21B112204(), !v1))
        {
          type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
          return OUTLINED_FUNCTION_27_2();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_Error.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_30_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_91();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 32) != *(v1 + 32))
  {
    return 0;
  }

  OUTLINED_FUNCTION_726();
  if (!v5)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  OUTLINED_FUNCTION_764();
  OUTLINED_FUNCTION_0_15();
  v11 = sub_21B099CBC(v9, v10, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_40_1(v11) & 1;
}

uint64_t sub_21B0626C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469F0, type metadata accessor for Apple_Parsec_Feedback_V2_Error, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Error);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B062740(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44F78, type metadata accessor for Apple_Parsec_Feedback_V2_Error, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Error);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0627B0(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD44F78, type metadata accessor for Apple_Parsec_Feedback_V2_Error, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Error);

  return sub_21B112114();
}

uint64_t sub_21B06283C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44370);
  __swift_project_value_buffer(v0, qword_27CD44370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "underlyingError";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "relatedStartNetworkSearchFeedbackId";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_10_2();
        sub_21B062B44(v7, v8, v9, v10);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B062BF8(v3, v4, v5, v6);
        break;
      case 4:
        OUTLINED_FUNCTION_318();
        sub_21B112074();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B062B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  sub_21B099CBC(&qword_27CD44F78, type metadata accessor for Apple_Parsec_Feedback_V2_Error, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Error);
  return sub_21B1120B4();
}

uint64_t sub_21B062BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  sub_21B099CBC(&qword_27CD44F78, type metadata accessor for Apple_Parsec_Feedback_V2_Error, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Error);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_ErrorFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD44B30, &qword_21B118198);
  v6 = OUTLINED_FUNCTION_25(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_512();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_725();
  type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  if (!*v0 || (sub_21B112204(), !v1))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(0);
    sub_21B0AA940();
    OUTLINED_FUNCTION_368(v3);
    if (v10)
    {
      sub_21AF99BE0(v3, &unk_27CD44B30, &qword_21B118198);
    }

    else
    {
      OUTLINED_FUNCTION_11_6();
      sub_21B03179C(v3);
      OUTLINED_FUNCTION_567();
      sub_21B099CBC(v11, v12, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Error);
      OUTLINED_FUNCTION_683();
      sub_21B112224();
      OUTLINED_FUNCTION_154();
      sub_21B03183C();
      if (v1)
      {
        goto LABEL_14;
      }
    }

    sub_21B0AA940();
    OUTLINED_FUNCTION_368(v2);
    if (v10)
    {
      sub_21AF99BE0(v2, &unk_27CD44B30, &qword_21B118198);
    }

    else
    {
      OUTLINED_FUNCTION_11_6();
      sub_21B03179C(v2);
      OUTLINED_FUNCTION_567();
      sub_21B099CBC(v13, v14, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Error);
      OUTLINED_FUNCTION_709();
      OUTLINED_FUNCTION_734();
      sub_21B112224();
      v4 = v1;
      OUTLINED_FUNCTION_154();
      sub_21B03183C();
      if (v1)
      {
        goto LABEL_14;
      }
    }

    OUTLINED_FUNCTION_10_4();
    if (!v15 || (sub_21B1121E4(), !v4))
    {
      sub_21B111EA4();
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B063040(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469E8, type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ErrorFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B0630C0(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45D60, type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ErrorFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B063130(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45D60, type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ErrorFeedback);

  return sub_21B112114();
}

uint64_t sub_21B0631BC()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44388);
  __swift_project_value_buffer(v0, qword_27CD44388);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B1141D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "jsonFeedback";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "feedbackType";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_21B112244();
}

void Apple_Parsec_Feedback_V2_CustomFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_819();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v20))
  {
    v22 = OUTLINED_FUNCTION_34_3();
    if (sub_21AFD45D8(v22, v23) || (OUTLINED_FUNCTION_34_3(), OUTLINED_FUNCTION_60_0(), sub_21B112184(), !v20))
    {
      if (!*(v21 + 24) || (OUTLINED_FUNCTION_472(), sub_21B09A490(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v20))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(0);
        OUTLINED_FUNCTION_27_2();
      }
    }
  }

  OUTLINED_FUNCTION_818();
}

uint64_t sub_21B0635E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469E0, type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CustomFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B063668(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45D78, type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CustomFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0636D8(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45D78, type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CustomFeedback);

  return sub_21B112114();
}

uint64_t sub_21B063764()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD443A0);
  __swift_project_value_buffer(v0, qword_27CD443A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suggestion";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21B06397C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
  sub_21B099CBC(&qword_27CD44F98, type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_423();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B38, &qword_21B1181A0);
  OUTLINED_FUNCTION_25(v3);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_212();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_177();
  if (!*v1 || (OUTLINED_FUNCTION_480(), sub_21B112204(), !v0))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(0);
    OUTLINED_FUNCTION_715();
    OUTLINED_FUNCTION_243();
    if (v7)
    {
      sub_21AF99BE0(v2, &qword_27CD44B38, &qword_21B1181A0);
LABEL_7:
      OUTLINED_FUNCTION_741();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_45_1();
    v8 = OUTLINED_FUNCTION_636();
    sub_21B03179C(v8);
    OUTLINED_FUNCTION_566();
    sub_21B099CBC(v9, v10, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback);
    OUTLINED_FUNCTION_595();
    OUTLINED_FUNCTION_734();
    sub_21B112224();
    OUTLINED_FUNCTION_319();
    sub_21B03183C();
    if (!v0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B063C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469D8, type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B063CCC(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45D90, type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B063D3C(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45D90, type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback);

  return sub_21B112114();
}

uint64_t sub_21B063DD4()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD443B8);
  __swift_project_value_buffer(v0, qword_27CD443B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B1141D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cardDisappearEvent";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "card";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21B0640A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  sub_21B099CBC(&qword_27CD44FB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_CardViewDisappearFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44940, &qword_21B118128);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_212();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_177();
  if (!*v0 || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v1))
  {
    v8 = *(v2 + 8);
    if (!v8 || (OUTLINED_FUNCTION_542(v8), sub_21B09A4E4(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v1))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(0);
      OUTLINED_FUNCTION_715();
      OUTLINED_FUNCTION_243();
      if (v9)
      {
        sub_21AF99BE0(v3, &qword_27CD44940, &qword_21B118128);
LABEL_9:
        OUTLINED_FUNCTION_27_2();
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_6_9();
      v10 = OUTLINED_FUNCTION_636();
      sub_21B03179C(v10);
      OUTLINED_FUNCTION_565();
      sub_21B099CBC(v11, v12, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);
      OUTLINED_FUNCTION_595();
      OUTLINED_FUNCTION_58_0();
      sub_21B112224();
      OUTLINED_FUNCTION_31_4();
      sub_21B03183C();
      if (!v1)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B0643A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469D0, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B064428(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45DA8, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B064498(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45DA8, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback);

  return sub_21B112114();
}

uint64_t sub_21B064524()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD443D0);
  __swift_project_value_buffer(v0, qword_27CD443D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "card";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "level";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fbr";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_CardViewAppearFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B06482C(v3, v4, v5, v6);
        break;
      case 3:
        OUTLINED_FUNCTION_318();
        sub_21B112084();
        break;
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B06482C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  sub_21B099CBC(&qword_27CD44FB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_CardViewAppearFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44940, &qword_21B118128);
  OUTLINED_FUNCTION_25(v3);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_252();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  if (!OUTLINED_FUNCTION_483() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(0);
    OUTLINED_FUNCTION_744();
    OUTLINED_FUNCTION_368(v2);
    if (v7)
    {
      sub_21AF99BE0(v2, &qword_27CD44940, &qword_21B118128);
    }

    else
    {
      OUTLINED_FUNCTION_6_9();
      v8 = OUTLINED_FUNCTION_684();
      sub_21B03179C(v8);
      OUTLINED_FUNCTION_565();
      sub_21B099CBC(v9, v10, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);
      OUTLINED_FUNCTION_680();
      OUTLINED_FUNCTION_683();
      OUTLINED_FUNCTION_58_0();
      sub_21B112224();
      OUTLINED_FUNCTION_31_4();
      sub_21B03183C();
      if (v0)
      {
        goto LABEL_12;
      }
    }

    if (!*(v1 + 8) || (OUTLINED_FUNCTION_36_1(), sub_21B1121F4(), !v0))
    {
      OUTLINED_FUNCTION_10_4();
      if (!v11 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v0))
      {
        OUTLINED_FUNCTION_27_2();
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B064B28(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469C8, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B064BA8(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45DC0, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B064C18(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45DC0, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback);

  return sub_21B112114();
}

uint64_t sub_21B064CB0()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD443E8);
  __swift_project_value_buffer(v0, qword_27CD443E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suggestions";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

void sub_21B064EF8(uint64_t a1)
{
  while (1)
  {
    OUTLINED_FUNCTION_546();
    v2 = sub_21B111F64();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 2)
    {
      sub_21B068268();
    }

    else if (v2 == 1)
    {
      sub_21B112094();
    }
  }
}

uint64_t sub_21B065064(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469C0, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B0650E4(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45DD8, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B065154(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45DD8, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback);

  return sub_21B112114();
}

uint64_t sub_21B0651EC()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44400);
  __swift_project_value_buffer(v0, qword_27CD44400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "results";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

void Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_822();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v3))
  {
    OUTLINED_FUNCTION_660();
    if (!v4 || (OUTLINED_FUNCTION_872(), OUTLINED_FUNCTION_9_8(), sub_21B099CBC(v5, v6, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback), OUTLINED_FUNCTION_477(), OUTLINED_FUNCTION_58_0(), sub_21B112214(), !v3))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback(0);
      v7 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_652(v7, v8);
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_21B065508(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469B8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B065588(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45DF0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0655F8(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45DF0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback);

  return sub_21B112114();
}

uint64_t sub_21B065684()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44418);
  __swift_project_value_buffer(v0, qword_27CD44418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sections";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

void Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_822();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v3))
  {
    OUTLINED_FUNCTION_660();
    if (!v4 || (type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0), OUTLINED_FUNCTION_334(), sub_21B099CBC(v5, v6, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback), OUTLINED_FUNCTION_477(), OUTLINED_FUNCTION_58_0(), sub_21B112214(), !v3))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback(0);
      v7 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_652(v7, v8);
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_21B065A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469B0, type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B065A9C(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45E08, type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B065B0C(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45E08, type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback);

  return sub_21B112114();
}

uint64_t sub_21B065B98()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44430);
  __swift_project_value_buffer(v0, qword_27CD44430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "triggerEvent";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21B065F04(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469A8, type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClearInputFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B065F84(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45E20, type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClearInputFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B065FF4(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45E20, type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClearInputFeedback);

  return sub_21B112114();
}

uint64_t sub_21B06608C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44448);
  __swift_project_value_buffer(v0, qword_27CD44448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B1141D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "section";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "triggerEvent";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21B0662F8()
{
  OUTLINED_FUNCTION_699();
  while (1)
  {
    OUTLINED_FUNCTION_0();
    result = sub_21B111F64();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v6 = OUTLINED_FUNCTION_644();
        v0(v6);
        break;
      case 2:
        v5 = OUTLINED_FUNCTION_644();
        v2(v5);
        break;
      case 1:
        OUTLINED_FUNCTION_26();
        sub_21B112094();
        break;
    }
  }

  return result;
}

uint64_t sub_21B066388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  sub_21B099CBC(&qword_27CD44DF8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_SectionEngagementFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD434E8, &unk_21B116AC0);
  OUTLINED_FUNCTION_25(v3);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_252();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  if (!OUTLINED_FUNCTION_483() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(0);
    OUTLINED_FUNCTION_744();
    OUTLINED_FUNCTION_368(v2);
    if (v7)
    {
      sub_21AF99BE0(v2, &unk_27CD434E8, &unk_21B116AC0);
    }

    else
    {
      OUTLINED_FUNCTION_12_8();
      v8 = OUTLINED_FUNCTION_684();
      sub_21B03179C(v8);
      OUTLINED_FUNCTION_334();
      sub_21B099CBC(v9, v10, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);
      OUTLINED_FUNCTION_680();
      OUTLINED_FUNCTION_683();
      OUTLINED_FUNCTION_58_0();
      sub_21B112224();
      OUTLINED_FUNCTION_156();
      sub_21B03183C();
      if (v0)
      {
        goto LABEL_10;
      }
    }

    v11 = *(v1 + 8);
    if (!v11 || (OUTLINED_FUNCTION_542(v11), sub_21B09A58C(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v0))
    {
      OUTLINED_FUNCTION_27_2();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B0666F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469A0, type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B066778(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45E38, type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0667E8(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45E38, type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback);

  return sub_21B112114();
}

uint64_t sub_21B066874()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44460);
  __swift_project_value_buffer(v0, qword_27CD44460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B1141D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "headerType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "sectionId";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B066B24(v3, v4);
        break;
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
    }
  }

  return result;
}

void Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v18))
  {
    if (!*(v19 + 8) || (OUTLINED_FUNCTION_472(), sub_21B09A5E0(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v18))
    {
      OUTLINED_FUNCTION_10_4();
      if (!v20 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v18))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(0);
        OUTLINED_FUNCTION_27_2();
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_21B066CE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46998, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B066D64(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45E50, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B066DD4(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45E50, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback);

  return sub_21B112114();
}

uint64_t sub_21B066E60()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44478);
  __swift_project_value_buffer(v0, qword_27CD44478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B1141D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "input";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "triggerEvent";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21B0670CC()
{
  OUTLINED_FUNCTION_699();
  while (1)
  {
    OUTLINED_FUNCTION_0();
    result = sub_21B111F64();
    if (v1 || (v7 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v8 = OUTLINED_FUNCTION_644();
        v0(v8);
        break;
      case 2:
        v2(v3 + 8, v5, v4);
        break;
      case 1:
        OUTLINED_FUNCTION_26();
        sub_21B112094();
        break;
    }
  }

  return result;
}

void Apple_Parsec_Feedback_V2_DidGoToSiteFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v18))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v20 || (OUTLINED_FUNCTION_60_0(), sub_21B1121E4(), !v18))
    {
      if (!*(v19 + 24) || (OUTLINED_FUNCTION_472(), sub_21B099FF8(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v18))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(0);
        OUTLINED_FUNCTION_27_2();
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_21B067320(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46990, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B0673A0(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45E68, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B067410(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45E68, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback);

  return sub_21B112114();
}

uint64_t sub_21B06749C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44490);
  __swift_project_value_buffer(v0, qword_27CD44490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "input";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "endpoint";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "triggerEvent";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_DidGoToSearchFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
        OUTLINED_FUNCTION_318();
        sub_21B112074();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B0677A4(v3, v4);
        break;
      case 4:
        v5 = OUTLINED_FUNCTION_10_2();
        sub_21B06780C(v5, v6);
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_DidGoToSearchFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v18))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v20 || (OUTLINED_FUNCTION_60_0(), sub_21B1121E4(), !v18))
    {
      if (!*(v19 + 24) || (OUTLINED_FUNCTION_472(), sub_21B09A394(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v18))
      {
        if (!*(v19 + 40) || (OUTLINED_FUNCTION_472(), sub_21B099FF8(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v18))
        {
          type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(0);
          OUTLINED_FUNCTION_27_2();
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_21B067A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46988, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B067A80(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45E80, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B067AF0(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45E80, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback);

  return sub_21B112114();
}

uint64_t sub_21B067B7C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD444A8);
  __swift_project_value_buffer(v0, qword_27CD444A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "results";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

void Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_822();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v3))
  {
    OUTLINED_FUNCTION_660();
    if (!v4 || (OUTLINED_FUNCTION_872(), OUTLINED_FUNCTION_9_8(), sub_21B099CBC(v5, v6, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback), OUTLINED_FUNCTION_477(), OUTLINED_FUNCTION_58_0(), sub_21B112214(), !v3))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback(0);
      v7 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_652(v7, v8);
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_21B067EF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46980, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B067F74(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45E98, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B067FE4(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45E98, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback);

  return sub_21B112114();
}

uint64_t sub_21B06807C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD444C0);
  __swift_project_value_buffer(v0, qword_27CD444C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suggestions";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

void sub_21B068268()
{
  OUTLINED_FUNCTION_11();
  v2 = OUTLINED_FUNCTION_234();
  v3(v2);
  v4 = OUTLINED_FUNCTION_75();
  v6 = sub_21B099CBC(v4, v5, v0);
  OUTLINED_FUNCTION_505(v1 + 8, v7, v6);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B0682E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), result = sub_21B112204(), !v4))
  {
    OUTLINED_FUNCTION_660();
    if (!v7 || (type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0), OUTLINED_FUNCTION_566(), sub_21B099CBC(v8, v9, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback), OUTLINED_FUNCTION_477(), OUTLINED_FUNCTION_58_0(), result = sub_21B112214(), !v4))
    {
      a4(0);
      v10 = OUTLINED_FUNCTION_184();
      return OUTLINED_FUNCTION_652(v10, v11);
    }
  }

  return result;
}

uint64_t sub_21B068430(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46978, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B0684B0(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45EB0, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B068520(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45EB0, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback);

  return sub_21B112114();
}

uint64_t sub_21B0685AC()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD444D8);
  __swift_project_value_buffer(v0, qword_27CD444D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "result";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "grade";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "textFeedback";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_ResultGradingFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
        v5 = OUTLINED_FUNCTION_10_2();
        sub_21B0688B8(v5, v6, v7, v8);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B06896C(v3, v4);
        break;
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B0688B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  sub_21B099CBC(&qword_27CD44D08, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_ResultGradingFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
  OUTLINED_FUNCTION_25(v3);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_252();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  if (!OUTLINED_FUNCTION_483() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(0);
    OUTLINED_FUNCTION_744();
    OUTLINED_FUNCTION_368(v2);
    if (v7)
    {
      sub_21AF99BE0(v2, &qword_27CD434D8, &qword_21B116AB0);
    }

    else
    {
      OUTLINED_FUNCTION_2_17();
      v8 = OUTLINED_FUNCTION_684();
      sub_21B03179C(v8);
      OUTLINED_FUNCTION_9_8();
      sub_21B099CBC(v9, v10, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
      OUTLINED_FUNCTION_680();
      OUTLINED_FUNCTION_683();
      OUTLINED_FUNCTION_58_0();
      sub_21B112224();
      OUTLINED_FUNCTION_13_6();
      sub_21B03183C();
      if (v0)
      {
        goto LABEL_12;
      }
    }

    v11 = *(v1 + 8);
    if (!v11 || (OUTLINED_FUNCTION_542(v11), sub_21B09A634(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v0))
    {
      OUTLINED_FUNCTION_10_4();
      if (!v12 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v0))
      {
        OUTLINED_FUNCTION_27_2();
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B068C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46970, type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultGradingFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B068CBC(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45EC8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultGradingFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B068D2C(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45EC8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultGradingFeedback);

  return sub_21B112114();
}

uint64_t sub_21B068DC4()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD444F0);
  __swift_project_value_buffer(v0, qword_27CD444F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "location";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "length";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_Range.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_49_1();
      sub_21B112094();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_Range.traverse<A>(visitor:)(uint64_t a1)
{
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), result = sub_21B112204(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_36_1(), result = sub_21B112204(), !v1))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_Range(0);
      v4 = OUTLINED_FUNCTION_184();
      return OUTLINED_FUNCTION_652(v4, v5);
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_Range.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_282();
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_81();
  if (*(v5 + 8) != *(v6 + 8))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_Range(0);
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_0_15();
  v9 = sub_21B099CBC(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_40_1(v9) & 1;
}

uint64_t sub_21B0691B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46968, type metadata accessor for Apple_Parsec_Feedback_V2_Range, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Range);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B069230(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45050, type metadata accessor for Apple_Parsec_Feedback_V2_Range, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Range);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0692A0(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45050, type metadata accessor for Apple_Parsec_Feedback_V2_Range, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Range);

  return sub_21B112114();
}

uint64_t sub_21B06932C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44508);
  __swift_project_value_buffer(v0, qword_27CD44508);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hintRange";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "domain";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "discarded";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "grade";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "context";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
        v5 = OUTLINED_FUNCTION_10_2();
        sub_21B0696CC(v5, v6, v7, v8);
        break;
      case 3:
      case 6:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B111F94();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B069780(v3, v4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B0696CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_Range(0);
  sub_21B099CBC(&qword_27CD45050, type metadata accessor for Apple_Parsec_Feedback_V2_Range, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Range);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B40, &unk_21B1181A8);
  OUTLINED_FUNCTION_25(v3);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_252();
  type metadata accessor for Apple_Parsec_Feedback_V2_Range(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  if (!OUTLINED_FUNCTION_483() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(0);
    OUTLINED_FUNCTION_744();
    OUTLINED_FUNCTION_368(v2);
    if (v7)
    {
      sub_21AF99BE0(v2, &qword_27CD44B40, &unk_21B1181A8);
    }

    else
    {
      OUTLINED_FUNCTION_44_2();
      v8 = OUTLINED_FUNCTION_684();
      sub_21B03179C(v8);
      sub_21B099CBC(&qword_27CD45050, type metadata accessor for Apple_Parsec_Feedback_V2_Range, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Range);
      OUTLINED_FUNCTION_680();
      OUTLINED_FUNCTION_683();
      OUTLINED_FUNCTION_58_0();
      sub_21B112224();
      OUTLINED_FUNCTION_316();
      sub_21B03183C();
      if (v0)
      {
        goto LABEL_16;
      }
    }

    OUTLINED_FUNCTION_10_4();
    if (!v9 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v0))
    {
      if (*(v1 + 24) != 1 || (OUTLINED_FUNCTION_36_1(), sub_21B112164(), !v0))
      {
        v10 = *(v1 + 32);
        if (!v10 || (OUTLINED_FUNCTION_542(v10), sub_21B09A688(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v0))
        {
          OUTLINED_FUNCTION_10_4();
          if (!v11 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v0))
          {
            OUTLINED_FUNCTION_27_2();
          }
        }
      }
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B069AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46960, type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B069B24(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45EF0, type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B069B94(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45EF0, type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback);

  return sub_21B112114();
}

uint64_t sub_21B069C60()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_238();
      sub_21B112094();
    }
  }

  return result;
}

void sub_21B069CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_822();
  v6 = v5;
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v4))
  {
    v6(0);
    OUTLINED_FUNCTION_27_2();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_21B069DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46958, type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B069E48(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45F08, type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B069EB8(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45F08, type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback);

  return sub_21B112114();
}

uint64_t sub_21B069F44()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44538);
  __swift_project_value_buffer(v0, qword_27CD44538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reason";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21B06A350(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46950, type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionEndFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B06A3D0(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45F20, type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionEndFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B06A440(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45F20, type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionEndFeedback);

  return sub_21B112114();
}

uint64_t sub_21B06A4D8()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44550);
  __swift_project_value_buffer(v0, qword_27CD44550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B115FB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "input";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "eventName";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "queryId";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "nanosecondInterval";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_ClientTimingFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
      case 5:
        OUTLINED_FUNCTION_49_1();
        sub_21B112094();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_ClientTimingFeedback.traverse<A>(visitor:)(uint64_t a1)
{
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), result = sub_21B112204(), !v1))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v4 || (OUTLINED_FUNCTION_60_0(), result = sub_21B1121E4(), !v1))
    {
      OUTLINED_FUNCTION_10_4();
      if (!v5 || (OUTLINED_FUNCTION_63_0(), result = sub_21B1121E4(), !v1))
      {
        if (!*(v2 + 40) || (OUTLINED_FUNCTION_36_1(), result = sub_21B112204(), !v1))
        {
          if (!*(v2 + 48) || (OUTLINED_FUNCTION_36_1(), result = sub_21B112204(), !v1))
          {
            type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(0);
            return OUTLINED_FUNCTION_27_2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_21B06A990(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46948, type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientTimingFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B06AA10(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45F38, type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientTimingFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B06AA80(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45F38, type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientTimingFeedback);

  return sub_21B112114();
}

uint64_t sub_21B06AB18()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44568);
  __swift_project_value_buffer(v0, qword_27CD44568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_21B1180C0;
  v4 = v98 + v3 + v1[14];
  *(v98 + v3) = 1;
  *v4 = "feedback";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v98 + v3 + v2 + v1[14];
  *(v98 + v3 + v2) = 2;
  *v8 = "searchViewAppearFeedback";
  *(v8 + 8) = 24;
  *(v8 + 16) = 2;
  v7();
  v9 = (v98 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "searchViewDisappearFeedback";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v7();
  v11 = (v98 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "rankingFeedback";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v7();
  v13 = (v98 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "sectionRankingFeedback";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v7();
  v15 = (v98 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "resultRankingFeedback";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v7();
  v17 = (v98 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "resultFeedback";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  v19 = (v98 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "resultEngagementFeedback";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v7();
  v21 = (v98 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "visibleResultsFeedback";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v7();
  v23 = (v98 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "cardSectionFeedback";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v7();
  v25 = (v98 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "mapsCardSectionEngagementFeedback";
  *(v26 + 1) = 33;
  v26[16] = 2;
  v7();
  v27 = (v98 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "storeCardSectionEngagementFeedback";
  *(v28 + 1) = 34;
  v28[16] = 2;
  v7();
  v29 = (v98 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "startSearchFeedback";
  *(v30 + 1) = 19;
  v30[16] = 2;
  v7();
  v31 = (v98 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "endSearchFeedback";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v7();
  v33 = (v98 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "startNetworkSearchFeedback";
  *(v34 + 1) = 26;
  v34[16] = 2;
  v7();
  v35 = (v98 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "endNetworkSearchFeedback";
  *(v36 + 1) = 24;
  v36[16] = 2;
  v7();
  v37 = (v98 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "startLocalSearchFeedback";
  *(v38 + 1) = 24;
  v38[16] = 2;
  v7();
  v39 = (v98 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "endLocalSearchFeedback";
  *(v40 + 1) = 22;
  v40[16] = 2;
  v7();
  v41 = (v98 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "errorFeedback";
  *(v42 + 1) = 13;
  v42[16] = 2;
  v7();
  v43 = (v98 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "customFeedback";
  *(v44 + 1) = 14;
  v44[16] = 2;
  v7();
  v45 = (v98 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "suggestionEngagementFeedback";
  *(v46 + 1) = 28;
  v46[16] = 2;
  v7();
  v47 = (v98 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "cardViewDisappearFeedback";
  *(v48 + 1) = 25;
  v48[16] = 2;
  v7();
  v49 = (v98 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "visibleSuggestionsFeedback";
  *(v50 + 1) = 26;
  v50[16] = 2;
  v7();
  v51 = (v98 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "resultsReceivedAfterTimeoutFeedback";
  *(v52 + 1) = 35;
  v52[16] = 2;
  v7();
  v53 = (v98 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "lateSectionsAppendedFeedback";
  *(v54 + 1) = 28;
  v54[16] = 2;
  v7();
  v55 = (v98 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "clearInputFeedback";
  *(v56 + 1) = 18;
  v56[16] = 2;
  v7();
  v57 = (v98 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "sectionEngagementFeedback";
  *(v58 + 1) = 25;
  v58[16] = 2;
  v7();
  v59 = (v98 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "visibleSectionHeaderFeedback";
  *(v60 + 1) = 28;
  v60[16] = 2;
  v7();
  v61 = (v98 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "didGoToSiteFeedback";
  *(v62 + 1) = 19;
  v62[16] = 2;
  v7();
  v63 = (v98 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "didGoToSearchFeedback";
  *(v64 + 1) = 21;
  v64[16] = 2;
  v7();
  v65 = (v98 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "sessionMissingResultsFeedback";
  *(v66 + 1) = 29;
  v66[16] = 2;
  v7();
  v67 = (v98 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "sessionMissingSuggestionsFeedback";
  *(v68 + 1) = 33;
  v68[16] = 2;
  v7();
  v69 = (v98 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "resultGradingFeedback";
  *(v70 + 1) = 21;
  v70[16] = 2;
  v7();
  v71 = (v98 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "lookupHintRelevancyFeedback";
  *(v72 + 1) = 27;
  v72[16] = 2;
  v7();
  v73 = (v98 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "connectionInvalidatedFeedback";
  *(v74 + 1) = 29;
  v74[16] = 2;
  v7();
  v75 = (v98 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "cardSectionEngagementFeedback";
  *(v76 + 1) = 29;
  v76[16] = 2;
  v7();
  v77 = (v98 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "sessionEndFeedback";
  *(v78 + 1) = 18;
  v78[16] = 2;
  v7();
  v79 = (v98 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "cardViewAppearFeedback";
  *(v80 + 1) = 22;
  v80[16] = 2;
  v7();
  v81 = (v98 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "skipSearchFeedback";
  *(v82 + 1) = 18;
  v82[16] = 2;
  v7();
  v83 = (v98 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "cacheHitFeedback";
  *(v84 + 1) = 16;
  v84[16] = 2;
  v7();
  v85 = (v98 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "cbaEngagementFeedback";
  *(v86 + 1) = 21;
  v86[16] = 2;
  v7();
  v87 = (v98 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "clientTimingFeedback";
  *(v88 + 1) = 20;
  v88[16] = 2;
  v7();
  v89 = (v98 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "commandEngagementFeedback";
  *(v90 + 1) = 25;
  v90[16] = 2;
  v7();
  v91 = (v98 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "dynamicButtonVisibilityFeedback";
  *(v92 + 1) = 31;
  v92[16] = 2;
  v7();
  v93 = (v98 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "experimentTriggeredFeedback";
  *(v94 + 1) = 27;
  v94[16] = 2;
  v7();
  v95 = (v98 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 100;
  *v96 = "queryId";
  *(v96 + 1) = 7;
  v96[16] = 2;
  v7();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_129();
        sub_21B06BAD8(v3, v4, v5, v6);
        break;
      case 2:
        v91 = OUTLINED_FUNCTION_129();
        sub_21B06BFD0(v91, v92, v93, v94);
        break;
      case 3:
        v75 = OUTLINED_FUNCTION_129();
        sub_21B06C4C8(v75, v76, v77, v78);
        break;
      case 4:
        v83 = OUTLINED_FUNCTION_129();
        sub_21B06C9C0(v83, v84, v85, v86);
        break;
      case 5:
        v51 = OUTLINED_FUNCTION_129();
        sub_21B06CEB8(v51, v52, v53, v54);
        break;
      case 6:
        v111 = OUTLINED_FUNCTION_129();
        sub_21B06D3B0(v111, v112, v113, v114);
        break;
      case 7:
        v123 = OUTLINED_FUNCTION_129();
        sub_21B06D8A8(v123, v124, v125, v126);
        break;
      case 8:
        v87 = OUTLINED_FUNCTION_129();
        sub_21B06DDA0(v87, v88, v89, v90);
        break;
      case 9:
        v135 = OUTLINED_FUNCTION_129();
        sub_21B06E298(v135, v136, v137, v138);
        break;
      case 10:
        v63 = OUTLINED_FUNCTION_129();
        sub_21B06E790(v63, v64, v65, v66);
        break;
      case 11:
        v131 = OUTLINED_FUNCTION_129();
        sub_21B06EC88(v131, v132, v133, v134);
        break;
      case 12:
        v47 = OUTLINED_FUNCTION_129();
        sub_21B06F180(v47, v48, v49, v50);
        break;
      case 13:
        v59 = OUTLINED_FUNCTION_129();
        sub_21B06F678(v59, v60, v61, v62);
        break;
      case 14:
        v119 = OUTLINED_FUNCTION_129();
        sub_21B06FB70(v119, v120, v121, v122);
        break;
      case 15:
        v39 = OUTLINED_FUNCTION_129();
        sub_21B070068(v39, v40, v41, v42);
        break;
      case 16:
        v79 = OUTLINED_FUNCTION_129();
        sub_21B070560(v79, v80, v81, v82);
        break;
      case 17:
        v31 = OUTLINED_FUNCTION_129();
        sub_21B070A58(v31, v32, v33, v34);
        break;
      case 18:
        v99 = OUTLINED_FUNCTION_129();
        sub_21B070F50(v99, v100, v101, v102);
        break;
      case 19:
        v127 = OUTLINED_FUNCTION_129();
        sub_21B071448(v127, v128, v129, v130);
        break;
      case 20:
        v161 = OUTLINED_FUNCTION_129();
        sub_21B071940(v161, v162, v163, v164);
        break;
      case 21:
        v107 = OUTLINED_FUNCTION_129();
        sub_21B071E38(v107, v108, v109, v110);
        break;
      case 22:
        v115 = OUTLINED_FUNCTION_129();
        sub_21B072330(v115, v116, v117, v118);
        break;
      case 23:
        v153 = OUTLINED_FUNCTION_129();
        sub_21B072828(v153, v154, v155, v156);
        break;
      case 24:
        v169 = OUTLINED_FUNCTION_129();
        sub_21B072D20(v169, v170, v171, v172);
        break;
      case 25:
        v71 = OUTLINED_FUNCTION_129();
        sub_21B073218(v71, v72, v73, v74);
        break;
      case 26:
        v67 = OUTLINED_FUNCTION_129();
        sub_21B073710(v67, v68, v69, v70);
        break;
      case 27:
        v185 = OUTLINED_FUNCTION_129();
        sub_21B073C08(v185, v186, v187, v188);
        break;
      case 28:
        v23 = OUTLINED_FUNCTION_129();
        sub_21B074100(v23, v24, v25, v26);
        break;
      case 29:
        v173 = OUTLINED_FUNCTION_129();
        sub_21B0745F8(v173, v174, v175, v176);
        break;
      case 30:
        v177 = OUTLINED_FUNCTION_129();
        sub_21B074AF0(v177, v178, v179, v180);
        break;
      case 31:
        v139 = OUTLINED_FUNCTION_129();
        sub_21B074FE8(v139, v140, v141, v142);
        break;
      case 32:
        v95 = OUTLINED_FUNCTION_129();
        sub_21B0754E0(v95, v96, v97, v98);
        break;
      case 33:
        v143 = OUTLINED_FUNCTION_129();
        sub_21B0759D8(v143, v144, v145, v146);
        break;
      case 34:
        v43 = OUTLINED_FUNCTION_129();
        sub_21B075ED0(v43, v44, v45, v46);
        break;
      case 35:
        v27 = OUTLINED_FUNCTION_129();
        sub_21B0763C8(v27, v28, v29, v30);
        break;
      case 36:
        v15 = OUTLINED_FUNCTION_129();
        sub_21B0768C0(v15, v16, v17, v18);
        break;
      case 37:
        v19 = OUTLINED_FUNCTION_129();
        sub_21B076DB8(v19, v20, v21, v22);
        break;
      case 38:
        v11 = OUTLINED_FUNCTION_129();
        sub_21B0772B0(v11, v12, v13, v14);
        break;
      case 39:
        v181 = OUTLINED_FUNCTION_129();
        sub_21B0777A8(v181, v182, v183, v184);
        break;
      case 40:
        v157 = OUTLINED_FUNCTION_129();
        sub_21B077CA0(v157, v158, v159, v160);
        break;
      case 41:
        v55 = OUTLINED_FUNCTION_129();
        sub_21B078198(v55, v56, v57, v58);
        break;
      case 42:
        v103 = OUTLINED_FUNCTION_129();
        sub_21B078690(v103, v104, v105, v106);
        break;
      case 43:
        v165 = OUTLINED_FUNCTION_129();
        sub_21B078B88(v165, v166, v167, v168);
        break;
      case 44:
        v7 = OUTLINED_FUNCTION_129();
        sub_21B079080(v7, v8, v9, v10);
        break;
      case 45:
        v35 = OUTLINED_FUNCTION_129();
        sub_21B079578(v35, v36, v37, v38);
        break;
      case 100:
        v147 = OUTLINED_FUNCTION_10_2();
        sub_21B097100(v147, v148, v149, v150, v151, v152);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B06BAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_Feedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C28, &qword_21B127BA8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_21B03183C();
    }

    else
    {
      sub_21AF99BE0(v24, &qword_27CD46C28, &qword_21B127BA8);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_21B099CBC(&qword_27CD45AA8, type metadata accessor for Apple_Parsec_Feedback_V2_Feedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Feedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46C28, &qword_21B127BA8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46C28, &qword_21B127BA8);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46C28, &qword_21B127BA8);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46C28, &qword_21B127BA8);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B06BFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C30, &qword_21B127BB0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21AF99BE0(v24, &qword_27CD46C30, &qword_21B127BB0);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45AC0, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46C30, &qword_21B127BB0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46C30, &qword_21B127BB0);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46C30, &qword_21B127BB0);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46C30, &qword_21B127BB0);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B06C4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C38, &qword_21B127BB8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_21AF99BE0(v24, &qword_27CD46C38, &qword_21B127BB8);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45AD8, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46C38, &qword_21B127BB8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46C38, &qword_21B127BB8);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46C38, &qword_21B127BB8);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46C38, &qword_21B127BB8);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B06C9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C40, &qword_21B127BC0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_21AF99BE0(v24, &qword_27CD46C40, &qword_21B127BC0);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45AF0, type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_RankingFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46C40, &qword_21B127BC0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46C40, &qword_21B127BC0);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46C40, &qword_21B127BC0);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46C40, &qword_21B127BC0);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B06CEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C48, &qword_21B127BC8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_21AF99BE0(v24, &qword_27CD46C48, &qword_21B127BC8);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD44DD8, type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionRankingFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46C48, &qword_21B127BC8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46C48, &qword_21B127BC8);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46C48, &qword_21B127BC8);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46C48, &qword_21B127BC8);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B06D3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C50, &qword_21B127BD0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_21AF99BE0(v24, &qword_27CD46C50, &qword_21B127BD0);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD44DF0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultRankingFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46C50, &qword_21B127BD0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46C50, &qword_21B127BD0);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46C50, &qword_21B127BD0);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46C50, &qword_21B127BD0);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}