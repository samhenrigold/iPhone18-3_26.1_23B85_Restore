uint64_t _s11NotesEditor015AudioAttachmentB11CoordinatorC26documentPickerWasCancelledyySo010UIDocumentG14ViewControllerCF_0()
{
  v17[4] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090, &qword_2154BE0D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17[-1] - v2;
  v4 = sub_21549E56C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_temporaryExportURLToRemove;
  swift_beginAccess();
  sub_215324EEC(v0 + v8, v3, &unk_27CA5B090, &qword_2154BE0D0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_2151ADCD8(v3, &unk_27CA5B090, &qword_2154BE0D0);
  }

  (*(v5 + 32))(v7, v3, v4);
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_21549E49C();
  v17[0] = 0;
  v12 = [v10 removeItemAtURL:v11 error:v17];

  if (v12)
  {
    v13 = v17[0];
  }

  else
  {
    v14 = v17[0];
    v15 = sub_21549E3DC();

    swift_willThrow();
  }

  return (*(v5 + 8))(v7, v4);
}

Swift::Void __swiftcall AudioAttachmentEditorCoordinator.viewWasDismissed()()
{
  v1 = v0;
  v2 = sub_21549E95C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C6A8, &qword_2154C2D58);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C6B0, &qword_2154C2D60);
  MEMORY[0x28223BE20](v8 - 8);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_isShowingInspector;
  swift_beginAccess();
  *(v1 + v16) = 0;
  [*(v1 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController) setNeedsUpdateOfSupportedInterfaceOrientations];
  sub_21549F93C();
  sub_21549F90C();
  v17 = sub_21549F8EC();

  if (!v17)
  {
    goto LABEL_12;
  }

  sub_21549F90C();
  v18 = sub_21549F8EC();

  if (v18)
  {
    sub_21549F73C();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = *(v3 + 56);
  v20(v15, v19, 1, v2);
  (*(v3 + 104))(v12, *MEMORY[0x277D359D0], v2);
  v20(v12, 0, 1, v2);
  v21 = *(v5 + 48);
  sub_215324EEC(v15, v7, &unk_27CA5C6B0, &qword_2154C2D60);
  sub_215324EEC(v12, &v7[v21], &unk_27CA5C6B0, &qword_2154C2D60);
  v22 = v3;
  v23 = *(v3 + 48);
  if (v23(v7, 1, v2) != 1)
  {
    v24 = v33;
    sub_215324EEC(v7, v33, &unk_27CA5C6B0, &qword_2154C2D60);
    if (v23(&v7[v21], 1, v2) != 1)
    {
      v25 = v22;
      v26 = *(v22 + 32);
      v27 = v32;
      v26(v32, &v7[v21], v2);
      sub_2151C2DCC(&qword_27CA5AE28, MEMORY[0x277D359F0], MEMORY[0x277D359F8]);
      v28 = sub_2154A1D1C();
      v29 = *(v25 + 8);
      v29(v27, v2);
      sub_2151ADCD8(v12, &unk_27CA5C6B0, &qword_2154C2D60);
      sub_2151ADCD8(v15, &unk_27CA5C6B0, &qword_2154C2D60);
      v29(v33, v2);
      sub_2151ADCD8(v7, &unk_27CA5C6B0, &qword_2154C2D60);
      if ((v28 & 1) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    sub_2151ADCD8(v12, &unk_27CA5C6B0, &qword_2154C2D60);
    sub_2151ADCD8(v15, &unk_27CA5C6B0, &qword_2154C2D60);
    (*(v22 + 8))(v24, v2);
LABEL_10:
    sub_2151ADCD8(v7, &qword_27CA5C6A8, &qword_2154C2D58);
    return;
  }

  sub_2151ADCD8(v12, &unk_27CA5C6B0, &qword_2154C2D60);
  sub_2151ADCD8(v15, &unk_27CA5C6B0, &qword_2154C2D60);
  if (v23(&v7[v21], 1, v2) != 1)
  {
    goto LABEL_10;
  }

  sub_2151ADCD8(v7, &unk_27CA5C6B0, &qword_2154C2D60);
LABEL_12:
  v30 = *(v1 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_recordingViewController);
  *(v1 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_recordingViewController) = 0;
}

uint64_t sub_2153E860C()
{
  sub_2154A1FFC();
  v0[18] = sub_2154A1FEC();
  v2 = sub_2154A1FCC();
  v0[19] = v2;
  v0[20] = v1;

  return MEMORY[0x2822009F8](sub_2153E86A0, v2, v1);
}

uint64_t sub_2153E86A0()
{
  v1 = objc_opt_self();
  v0[21] = v1;
  v2 = [v1 sharedAudioController];
  v0[22] = v2;
  if (v2)
  {
    v3 = v2;
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_2153E87EC;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B538, &qword_2154C0300);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21538CA80;
    v0[13] = &block_descriptor_96;
    v0[14] = v4;
    [v3 seekToTime:v0 + 10 completion:0.0];
    v2 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2153E87EC()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);

  return MEMORY[0x2822009F8](sub_2153E88F4, v2, v1);
}

id sub_2153E88F4()
{
  v1 = *(v0 + 168);

  result = [v1 sharedAudioController];
  if (result)
  {
    v3 = result;

    [v3 play];

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AudioAttachmentEditorCoordinator.closeMiniPlayer(for:)(void *a1)
{
  v2 = [a1 objectID];
  swift_beginAccess();
  sub_2153EED00(&v4, v2, &qword_2811995F0, 0x277CBE448, &unk_27CA5C6F0, &qword_2154BE710);
  v3 = v4;
  swift_endAccess();

  sub_2153E2A18(0, a1);
}

void AudioAttachmentEditorCoordinator.scroll(to:)(void *a1)
{
  v3 = [v1 textView];
  if (v3)
  {
    v6 = v3;
    v4 = [a1 rangeInNote];
    [v6 ic:v4 scrollRangeToVisible:v5 animated:1 completionHandler:0];
  }
}

id AudioAttachmentEditorCoordinator.rename(_:)(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = *(v1 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController);

  return [v3 renameAttachment:a1 presentingViewController:v4];
}

void AudioAttachmentEditorCoordinator.presentTranscript(for:)(void *a1)
{
  v2 = [a1 audioModel];
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_isShowingInspector;
    swift_beginAccess();
    *(v1 + v4) = 1;
    v5 = [objc_opt_self() getHostingViewForAttachmentModel:v3 delegate:v1];
    sub_2153F0354(v5);
    [*(v1 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController) presentViewController:v5 animated:1 completion:0];
  }
}

id AudioAttachmentEditorCoordinator.presentSummary(for:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SummaryView(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v21 - v9;
  result = [a1 audioModel];
  if (result)
  {
    v12 = result;
    sub_21549ECCC();
    swift_allocObject();
    v13 = v12;
    v14 = sub_21549EC4C();
    type metadata accessor for SummaryViewModel(0);
    swift_allocObject();
    v15 = v13;

    v16 = sub_21535EFE4(v15, v14);

    type metadata accessor for RecordingViewModel(0);
    swift_allocObject();
    v17 = v15;

    sub_215466468(v17, v14, v16);

    sub_215434CD0(v18, v10);
    sub_2153F0A20(v10, v6);
    v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C6C0, &unk_2154C2D68));
    v20 = sub_2154A02AC();
    [*(v2 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController) presentViewController:v20 animated:1 completion:0];

    return sub_2153F0A84(v10);
  }

  return result;
}

uint64_t sub_2153E9114()
{
  v0[2] = sub_2154A1FFC();
  v0[3] = sub_2154A1FEC();
  v3 = (*MEMORY[0x277D36378] + MEMORY[0x277D36378]);
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2153E91D8;

  return v3();
}

uint64_t sub_2153E91D8()
{
  *(*v1 + 40) = v0;

  v3 = sub_2154A1FCC();
  if (v0)
  {
    v4 = sub_2153E9398;
  }

  else
  {
    v4 = sub_2153E9334;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_2153E9334()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2153E9398()
{

  v1 = *(v0 + 8);

  return v1();
}

void AudioAttachmentEditorCoordinator.presentReportAConcern(for:withPositiveFeedback:)(void *a1, char a2, __n128 a3)
{
  v5 = sub_21549EEEC();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [a1 audioModel];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  v12 = [v10 audioDocument];
  if (!v12)
  {
    __break(1u);
    goto LABEL_31;
  }

  v13 = v12;
  v14 = sub_2154A238C();

  if (v14)
  {
    v15 = [v14 attributedString];

    if (v15)
    {
      v16 = [v15 string];

      sub_2154A1D6C();
      v17 = sub_2154A1E0C();

      if (v17 >= 1)
      {
        sub_21549ECCC();
        swift_allocObject();
        v18 = v11;
        sub_21549EC4C();
        sub_2154A11FC();
        v19 = sub_2153E183C();
        v20 = sub_2151C2DCC(&unk_27CA5C6C8, type metadata accessor for ICFeedbackExtension, &unk_2154C2E6C);
        v21 = MEMORY[0x216067D80](v19, v20);
        sub_2153E9AA8(v18, a1, v9);
        sub_2154A11CC();
        v22 = *(v6 + 8);
        v22(v9, v5);
        if (a2)
        {
          sub_2153E9AA8(v18, a1, v9);
          sub_2154A118C();
          v22(v9, v5);
          if (qword_27CA598C8 != -1)
          {
            swift_once();
          }

          v23 = sub_21549F11C();
          __swift_project_value_buffer(v23, qword_27CA5C670);
          v24 = sub_21549F0FC();
          v25 = sub_2154A224C();
          if (!os_log_type_enabled(v24, v25))
          {
            goto LABEL_29;
          }

          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *v26 = 138412290;
          *(v26 + 4) = 0;
          *v27 = 0;
          v28 = "Positive Feedback with evaluation result: %@";
        }

        else
        {
          IsFCSReportAConcernEnabled = ICInternalSettingsIsFCSReportAConcernEnabled();
          sub_2153E9AA8(v18, a1, v9);
          if (IsFCSReportAConcernEnabled)
          {
            sub_2154A11BC();
            v22(v9, v5);
            if (qword_27CA598C8 != -1)
            {
              swift_once();
            }

            v34 = sub_21549F11C();
            __swift_project_value_buffer(v34, qword_27CA5C670);
            v24 = sub_21549F0FC();
            v25 = sub_2154A224C();
            if (!os_log_type_enabled(v24, v25))
            {
              goto LABEL_29;
            }

            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            *v26 = 138412290;
            *(v26 + 4) = 0;
            *v27 = 0;
            v28 = "Report A Concern with evaluation result: %@";
          }

          else
          {
            sub_2154A119C();
            v22(v9, v5);
            if (qword_27CA598C8 != -1)
            {
              swift_once();
            }

            v35 = sub_21549F11C();
            __swift_project_value_buffer(v35, qword_27CA5C670);
            v24 = sub_21549F0FC();
            v25 = sub_2154A224C();
            if (!os_log_type_enabled(v24, v25))
            {
              goto LABEL_29;
            }

            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            *v26 = 138412290;
            *(v26 + 4) = 0;
            *v27 = 0;
            v28 = "Negative Feedback with evaluation result: %@";
          }
        }

        _os_log_impl(&dword_2151A1000, v24, v25, v28, v26, 0xCu);
        sub_2151ADCD8(v27, &unk_27CA59E90, &qword_2154BEB40);
        MEMORY[0x21606B520](v27, -1, -1);
        MEMORY[0x21606B520](v26, -1, -1);
LABEL_29:

        return;
      }

      goto LABEL_11;
    }

LABEL_31:
    __break(1u);
    return;
  }

LABEL_11:

LABEL_12:
  if (qword_27CA598C8 != -1)
  {
    swift_once();
  }

  v29 = sub_21549F11C();
  __swift_project_value_buffer(v29, qword_27CA5C670);
  v37 = sub_21549F0FC();
  v30 = sub_2154A226C();
  if (os_log_type_enabled(v37, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2151A1000, v37, v30, "could not report feedback for topline summary because the summary was empty", v31, 2u);
    MEMORY[0x21606B520](v31, -1, -1);
  }

  v32 = v37;
}

id sub_2153E9AA8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v82 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B5A8, &qword_2154C0468);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - v9;
  v11 = sub_21549EEFC();
  v78 = *(v11 - 8);
  v79 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C740, &unk_2154C0470);
  MEMORY[0x28223BE20](v14 - 8);
  v76 = &v59 - v15;
  v84 = sub_21549EF4C();
  v75 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v17 = (&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_21549EF3C();
  v80 = *(v18 - 8);
  v81 = v18;
  MEMORY[0x28223BE20](v18);
  v77 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v85 = &v59 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA60, &qword_2154BF4E0);
  *&v23 = MEMORY[0x28223BE20](v22 - 8).n128_u64[0];
  v25 = &v59 - v24;
  result = [a1 audioDocument];
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v27 = result;
  v28 = [a2 creationDate];
  v74 = v13;
  if (v28)
  {
    v29 = v28;
    sub_21549E66C();

    v30 = sub_21549E6AC();
    (*(*(v30 - 8) + 56))(v25, 0, 1, v30);
  }

  else
  {
    v31 = sub_21549E6AC();
    (*(*(v31 - 8) + 56))(v25, 1, 1, v31);
  }

  ICTTAudioDocument.reportAConcernAttachmentDescription(forToplineSummary:createdDate:)(1, v25, &v86);
  v69 = v86;
  v68 = v88;
  v73 = v89;
  v72 = v90;
  v71 = v91;
  v70 = v92;

  sub_2151ADCD8(v25, &unk_27CA5EA60, &qword_2154BF4E0);
  result = [a1 audioDocument];
  if (!result)
  {
    goto LABEL_12;
  }

  v32 = result;
  v33 = [result transcriptAsPlainText];
  v34 = sub_2154A1D6C();
  v36 = v35;

  v37 = [v32 topLineSummaryAsPlainText];
  v63 = sub_2154A1D6C();
  v83 = v38;

  v39 = sub_2154A23AC();
  v67 = v7;
  v66 = v10;
  if (v39 && (v86 = 0, v87 = 0, v40 = v39, sub_2154A1D5C(), v40, v87))
  {
    v64 = v87;
    v65 = v86;
  }

  else
  {

    v65 = 0;
    v64 = 0xE000000000000000;
  }

  *v17 = v34;
  v17[1] = v36;
  v62 = *MEMORY[0x277D08638];
  v61 = *(v75 + 104);
  v61(v17);
  swift_bridgeObjectRetain_n();

  v41 = *MEMORY[0x277D08610];
  v42 = sub_21549EF2C();
  v43 = *(v42 - 8);
  v60 = *(v43 + 104);
  v75 = v36;
  v44 = v76;
  v60(v76, v41, v42);
  v59 = *(v43 + 56);
  v59(v44, 0, 1, v42);
  sub_21549EF1C();

  v45 = v83;

  *v17 = v63;
  v17[1] = v45;
  (v61)(v17, v62, v84);

  v60(v44, *MEMORY[0x277D085F8], v42);
  v59(v44, 0, 1, v42);
  v46 = v77;
  sub_21549EF1C();
  (*(v78 + 104))(v74, *MEMORY[0x277D08598], v79);
  v48 = v80;
  v47 = v81;
  v49 = *(v80 + 16);
  v50 = v66;
  v49(v66, v85, v81);
  v51 = *(v48 + 56);
  v51(v50, 0, 1, v47);
  v52 = v67;
  v49(v67, v46, v47);
  v51(v52, 0, 1, v47);

  v53 = objc_allocWithZone(sub_21549EF6C());
  v54 = sub_21549EF0C();
  v55 = *(v48 + 8);
  v55(v46, v47);
  v55(v85, v47);
  v56 = v82;
  *v82 = v54;
  v57 = *MEMORY[0x277D08530];
  v58 = sub_21549EEEC();
  return (*(*(v58 - 8) + 104))(v56, v57, v58);
}

void sub_2153EA400(void *a1, char a2)
{
  if (a2)
  {
    if (qword_27CA598C8 != -1)
    {
      swift_once();
    }

    v3 = sub_21549F11C();
    __swift_project_value_buffer(v3, qword_27CA5C670);
    v4 = a1;
    oslog = sub_21549F0FC();
    v5 = sub_2154A224C();
    sub_215392448(a1);
    if (!os_log_type_enabled(oslog, v5))
    {
      goto LABEL_16;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2151A1000, oslog, v5, "Failed to fetch existing response: %@", v6, 0xCu);
    sub_2151ADCD8(v7, &unk_27CA59E90, &qword_2154BEB40);
    MEMORY[0x21606B520](v7, -1, -1);
    v10 = v6;
    goto LABEL_15;
  }

  if (!a1)
  {
    if (qword_27CA598C8 != -1)
    {
      swift_once();
    }

    v19 = sub_21549F11C();
    __swift_project_value_buffer(v19, qword_27CA5C670);
    oslog = sub_21549F0FC();
    v20 = sub_2154A224C();
    if (!os_log_type_enabled(oslog, v20))
    {
      goto LABEL_16;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2151A1000, oslog, v20, "No existing Feedback response", v21, 2u);
    v10 = v21;
LABEL_15:
    MEMORY[0x21606B520](v10, -1, -1);
    goto LABEL_16;
  }

  v11 = qword_27CA598C8;
  v12 = a1;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = sub_21549F11C();
  __swift_project_value_buffer(v13, qword_27CA5C670);
  v14 = v12;
  oslog = sub_21549F0FC();
  v15 = sub_2154A224C();
  sub_215392448(a1);
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v14;
    *v17 = a1;
    v18 = v14;
    _os_log_impl(&dword_2151A1000, oslog, v15, "Found existing Feedback response %@", v16, 0xCu);
    sub_2151ADCD8(v17, &unk_27CA59E90, &qword_2154BEB40);
    MEMORY[0x21606B520](v17, -1, -1);
    MEMORY[0x21606B520](v16, -1, -1);
    sub_215392448(a1);
LABEL_16:

    return;
  }

  sub_215392448(a1);
}

void AudioAttachmentEditorCoordinator.delete(_:)(uint64_t a1)
{
  v2 = [v1 makeDeleteAlertControllerFor_];
  v3 = *&v1[OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController];
  v4 = [v3 presentedViewController];
  if (!v4)
  {
    v4 = v3;
  }

  v5 = v4;
  [v4 presentViewController:v2 animated:1 completion:0];
}

id sub_2153EA94C(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v6 = sub_2154A1D2C();
  v7 = [v5 localizedStringForKey:v6 value:0 table:0];

  sub_2154A1D6C();
  sub_21549F93C();
  sub_21549F90C();
  v8 = sub_21549F91C();

  if (v8)
  {
    sub_2151A6C9C(0, &qword_281199690, 0x277D35E00);
    v9 = a1;
    sub_2154A291C();
  }

  v10 = [v4 mainBundle];
  v11 = sub_2154A1D2C();
  v12 = [v10 localizedStringForKey:v11 value:0 table:0];

  sub_2154A1D6C();
  v13 = sub_2154A1D2C();

  v14 = sub_2154A1D2C();

  v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

  v16 = [v2 makeDeleteActionFor_];
  [v15 addAction_];

  v17 = [v2 makeCancelAction];
  [v15 addAction_];

  return v15;
}

double sub_2153EAC50(int a1, id a2)
{
  v2 = [a2 audioModel];
  if (v2)
  {
    v4 = v2;
    sub_21549ECCC();
    swift_allocObject();
    v5 = v4;
    v6 = sub_21549EC4C();
    type metadata accessor for SummaryViewModel(0);
    swift_allocObject();
    v7 = v5;

    v8 = sub_21535EFE4(v7, v6);

    type metadata accessor for RecordingViewModel(0);
    swift_allocObject();
    v9 = v7;

    sub_215466468(v9, v6, v8);

    sub_21546367C();
  }

  return result;
}

uint64_t sub_2153EAEC0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2153EAFCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_2154A2D6C();
    v23 = v10;
    sub_2154A2C3C();
    if (sub_2154A2CDC())
    {
      sub_2151A6C9C(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_2153EC280(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_2154A290C();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_2154A2CDC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_2153EB1CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7C0, &unk_2154C2EC0);
    v2 = sub_2154A2D6C();
    v15 = v2;
    sub_2154A2C3C();
    if (sub_2154A2CDC())
    {
      type metadata accessor for CollaboratorSelectionView();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2153EC280(v9 + 1, &qword_27CA5A7C0, &unk_2154C2EC0);
        }

        v2 = v15;
        result = sub_2154A290C();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_2154A2CDC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2153EB414(void *a1, unint64_t *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v12 = *v5;
    }

    else
    {
      v12 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v13 = a1;
    v14 = sub_2154A2CEC();

    if (v14)
    {
      v15 = sub_2153EC67C(v12, v13, a4, a5, a2, a3);

      return v15;
    }

    return 0;
  }

  v26 = v5;
  sub_2151A6C9C(0, a2, a3);
  v17 = sub_2154A290C();
  v18 = -1 << *(v9 + 32);
  v19 = v17 & ~v18;
  if (((*(v9 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
    return 0;
  }

  v20 = ~v18;
  while (1)
  {
    v21 = *(*(v9 + 48) + 8 * v19);
    v22 = sub_2154A291C();

    if (v22)
    {
      break;
    }

    v19 = (v19 + 1) & v20;
    if (((*(v9 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v26;
  v27 = *v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2153ECCD8(a4, a5);
    v24 = v27;
  }

  v25 = *(*(v24 + 48) + 8 * v19);
  sub_2153EE004(v19);
  result = v25;
  *v26 = v27;
  return result;
}

void sub_2153EB5DC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_21549E70C();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A570, &unk_2154BE6C0);
  v6 = sub_2154A2D5C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_2151C2DCC(&qword_281199D00, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v21 = sub_2154A1C9C();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_2153EB938(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C818, &qword_2154C2F58);
  v4 = sub_2154A2D5C();
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
      v18 = MEMORY[0x216069C50](*(v5 + 40), v17, 4);
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

void sub_2153EBB60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C810, &qword_2154C2F50);
  v4 = sub_2154A2D5C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v28 = v1;
    v6 = 0;
    v7 = (v3 + 56);
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_2154A30DC();
      sub_2154A30FC();
      if (v17)
      {
        v18 = v17;
        sub_2154A292C();
      }

      v19 = sub_2154A312C();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_2153EBDD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_2154A2D5C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    v30 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      sub_2154A1D6C();
      sub_2154A30DC();
      sub_2154A1DFC();
      v20 = sub_2154A312C();

      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v4 = v29;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_2153EC048(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C7E8, &qword_2154C2F30);
  v4 = sub_2154A2D5C();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_2154A30CC();
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

void sub_2153EC280(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_2154A2D5C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_2154A290C();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

unint64_t sub_2153EC4A0(uint64_t a1, uint64_t a2)
{
  sub_2154A290C();
  result = sub_2154A2C1C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2153EC524(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_2154A2C8C();
  v5 = swift_unknownObjectRetain();
  v6 = sub_2153EB1CC(v5, v4);
  v15 = v6;

  v7 = sub_2154A290C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for CollaboratorSelectionView();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_2154A291C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_2153EE004(v9);
  result = sub_2154A291C();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2153EC67C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  v11 = v6;

  v12 = sub_2154A2C8C();
  v13 = swift_unknownObjectRetain();
  v14 = sub_2153EAFCC(v13, v12, a3, a4, a5, a6);
  v23 = v14;

  v15 = sub_2154A290C();
  v16 = -1 << *(v14 + 32);
  v17 = v15 & ~v16;
  if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    sub_2151A6C9C(0, a5, a6);
    while (1)
    {
      v19 = *(*(v14 + 48) + 8 * v17);
      v20 = sub_2154A291C();

      if (v20)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v21 = *(*(v14 + 48) + 8 * v17);
  sub_2153EE004(v17);
  result = sub_2154A291C();
  if (result)
  {
    *v11 = v23;
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2153EC810()
{
  v1 = v0;
  v2 = sub_21549E70C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A570, &unk_2154BE6C0);
  v6 = *v0;
  v7 = sub_2154A2D4C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_2153ECA48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C818, &qword_2154C2F58);
  v2 = *v0;
  v3 = sub_2154A2D4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_2153ECB88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C810, &qword_2154C2F50);
  v2 = *v0;
  v3 = sub_2154A2D4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_2153ECCD8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2154A2D4C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_2153ECE18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C7E8, &qword_2154C2F30);
  v2 = *v0;
  v3 = sub_2154A2D4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_2153ECF58(uint64_t a1)
{
  v2 = v1;
  v34 = sub_21549E70C();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A570, &unk_2154BE6C0);
  v7 = sub_2154A2D5C();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_2151C2DCC(&qword_281199D00, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v21 = sub_2154A1C9C();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

void sub_2153ED274(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C818, &qword_2154C2F58);
  v4 = sub_2154A2D5C();
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
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      v17 = MEMORY[0x216069C50](*(v5 + 40), v16, 4);
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

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_2153ED468(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C810, &qword_2154C2F50);
  v4 = sub_2154A2D5C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v1;
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
      sub_2154A30DC();
      sub_2154A30FC();
      if (v16)
      {
        v17 = v16;
        sub_2154A292C();
      }

      v18 = sub_2154A312C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

        v2 = v26;
        goto LABEL_28;
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
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }
}

void sub_2153ED6B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_2154A2D5C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    v30 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      sub_2154A1D6C();
      sub_2154A30DC();
      v20 = v19;
      sub_2154A1DFC();
      v21 = sub_2154A312C();

      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v4 = v29;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v7;
  }
}

void sub_2153ED8FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C7E8, &qword_2154C2F30);
  v4 = sub_2154A2D5C();
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
      v17 = sub_2154A30CC();
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

        goto LABEL_26;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_2153EDAEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_2154A2D5C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v19 = sub_2154A290C();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }
}

void sub_2153EDCFC(int64_t a1)
{
  v3 = sub_21549E70C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_2154A2C0C();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_2151C2DCC(&qword_281199D00, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v23 = sub_2154A1C9C();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

void sub_2153EE004(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2154A2C0C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_2154A290C();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

uint64_t sub_2153EE258(uint64_t *a1, void *a2)
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

    v8 = a2;

    v9 = sub_2154A2CAC();

    if (v9)
    {

      type metadata accessor for CollaboratorSelectionView();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2154A2C8C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2153EB1CC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2153EC280(v20 + 1, &qword_27CA5A7C0, &unk_2154C2EC0);
    }

    v18 = v8;
    sub_2153EC4A0(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for CollaboratorSelectionView();
  v11 = sub_2154A290C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2153EF104(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2154A291C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_2153EE480(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_21549E70C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2151C2DCC(&qword_281199D00, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_2154A1C9C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2151C2DCC(&qword_27CA5DB90, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_2154A1D1C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_2153EF294(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2153EE760(unsigned int *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *v2;
  v6 = MEMORY[0x216069C50](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != v3)
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
    sub_2153EF538(v3, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_2153EE870(void *a1, void *a2)
{
  v4 = *v2;
  sub_2154A30DC();
  sub_2154A30FC();
  if (a2)
  {
    v5 = a2;
    sub_2154A292C();
  }

  v6 = sub_2154A312C();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v16 = a2;
    sub_2153EF65C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    *a1 = a2;
    return 1;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = *(*(v4 + 48) + 8 * v8);
    if (!v10)
    {
      break;
    }

    if (a2)
    {
      sub_2151A6C9C(0, &unk_27CA5C800, 0x277D36978);
      v11 = a2;
      v12 = v10;
      v13 = sub_2154A291C();

      if (v13)
      {

        v14 = *(*(v4 + 48) + 8 * v8);
        goto LABEL_13;
      }
    }

LABEL_6:
    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (a2)
  {
    goto LABEL_6;
  }

  v14 = 0;
LABEL_13:
  *a1 = v14;
  v18 = v14;
  return 0;
}

uint64_t sub_2153EEA40(void *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void, __n128))
{
  v6 = v5;
  v9 = *v5;
  sub_2154A1D6C();
  sub_2154A30DC();
  sub_2154A1DFC();
  v10 = sub_2154A312C();

  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = sub_2154A1D6C();
      v16 = v15;
      if (v14 == sub_2154A1D6C() && v16 == v17)
      {

        goto LABEL_12;
      }

      v19 = sub_2154A2FAC();

      if (v19)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v9 + 48) + 8 * v12);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v6;
    v21 = a2;
    sub_2153EF83C(v21, v12, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v6 = v28;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_2153EEBFC(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_2154A30CC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
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
    sub_2153EFA48(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2153EED00(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_2154A2CAC();

    if (v17)
    {

      sub_2151A6C9C(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_2154A2C8C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_2153EAFCC(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_2153EC280(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_2153EC4A0(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_2151A6C9C(0, a3, a4);
    v19 = sub_2154A290C();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_2154A291C();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_2153EEF74(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

void sub_2153EEF74(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_2153EC280(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2153ECCD8(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_2153EDAEC(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_2154A290C();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_2151A6C9C(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_2154A291C();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2154A2FFC();
  __break(1u);
}

void sub_2153EF104(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2153EC280(v6 + 1, &qword_27CA5A7C0, &unk_2154C2EC0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2153ECCD8(&qword_27CA5A7C0, &unk_2154C2EC0);
      goto LABEL_12;
    }

    sub_2153EDAEC(v6 + 1, &qword_27CA5A7C0, &unk_2154C2EC0);
  }

  v8 = *v3;
  v9 = sub_2154A290C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for CollaboratorSelectionView();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_2154A291C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2154A2FFC();
  __break(1u);
}

uint64_t sub_2153EF294(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_21549E70C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2153EB5DC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2153EC810();
      goto LABEL_12;
    }

    sub_2153ECF58(v11 + 1);
  }

  v13 = *v3;
  sub_2151C2DCC(&qword_281199D00, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v14 = sub_2154A1C9C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_2151C2DCC(&qword_27CA5DB90, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v22 = sub_2154A1D1C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2154A2FFC();
  __break(1u);
  return result;
}

void sub_2153EF538(unsigned int a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2153EB938(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_2153ECA48();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2153ED274(v5 + 1);
  }

  v8 = *v3;
  v9 = MEMORY[0x216069C50](*(*v3 + 40), a1, 4);
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 4 * a2) != a1)
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
  *(*(v12 + 48) + 4 * a2) = a1;
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
  sub_2154A2FFC();
  __break(1u);
}

void sub_2153EF65C(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_2153EBB60(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_2153ECB88();
      goto LABEL_18;
    }

    sub_2153ED468(v7 + 1);
  }

  v9 = *v3;
  sub_2154A30DC();
  sub_2154A30FC();
  if (a1)
  {
    v10 = a1;
    sub_2154A292C();
  }

  v11 = sub_2154A312C();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      if (v14)
      {
        if (a1)
        {
          sub_2151A6C9C(0, &unk_27CA5C800, 0x277D36978);
          v15 = a1;
          v16 = v14;
          v17 = sub_2154A291C();

          if (v17)
          {
LABEL_17:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AF80, &unk_2154BF6F0);
            sub_2154A2FFC();
            __break(1u);
            break;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_17;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_18:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }
}

void sub_2153EF83C(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void, __n128))
{
  v7 = v6;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v12 = a6;
    sub_2153EBDD4(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2153ECCD8(a4, a5);
      goto LABEL_16;
    }

    v12 = a6;
    sub_2153ED6B0(v10 + 1, a4, a5);
  }

  v13 = *v6;
  sub_2154A1D6C();
  sub_2154A30DC();
  sub_2154A1DFC();
  v14 = sub_2154A312C();

  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v12(0);
    do
    {
      v17 = sub_2154A1D6C();
      v19 = v18;
      if (v17 == sub_2154A1D6C() && v19 == v20)
      {
        goto LABEL_19;
      }

      v22 = sub_2154A2FAC();

      if (v22)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v23 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + 8 * a2) = a1;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  sub_2154A2FFC();
  __break(1u);
}

void sub_2153EFA48(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2153EC048(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_2153ECE18();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2153ED8FC(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_2154A30CC();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != a1)
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
  *(*(v12 + 48) + 8 * a2) = a1;
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
  sub_2154A2FFC();
  __break(1u);
}

void sub_2153EFB68(void *a1, char *a2)
{
  *&a2[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_view] = 0;
  v4 = &a2[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_delegate];
  *&a2[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_tapGestureRecognizer] = 0;
  *&a2[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_panGestureRecognizer] = 0;
  swift_beginAccess();
  *(v4 + 1) = &protocol witness table for AudioAttachmentEditorCoordinator;
  swift_unknownObjectWeakAssign();
  v15.receiver = a2;
  v15.super_class = type metadata accessor for TranscriptDetailPresentationInteraction();
  v5 = objc_msgSendSuper2(&v15, sel_init);
  v6 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v7 = v5;
  v8 = [v6 initWithTarget:v7 action:sel_tap_];
  v9 = *&v7[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_tapGestureRecognizer];
  *&v7[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_tapGestureRecognizer] = v8;

  v10 = [objc_allocWithZone(MEMORY[0x277D757F8]) initWithTarget:v7 action:sel_pan_];
  v11 = OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_panGestureRecognizer;
  v12 = *&v7[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_panGestureRecognizer];
  *&v7[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_panGestureRecognizer] = v10;
  v13 = v10;

  if (v13)
  {
    [v13 setDelegate_];

    v14 = *&v7[v11];
    if (v14)
    {
      [v14 _setHysteresis_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id _s11NotesEditor015AudioAttachmentB11CoordinatorC057transcriptDetailPresentationInteractionViewControllersForH0ySo16UIViewControllerC010presentingjN0_AF04viewN9ToPresenttSgAA010TranscriptghI0CF_0()
{
  v1 = sub_21549F11C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_miniPlayer);
  if (v6 && (*(v6 + OBJC_IVAR___ICMiniPlayerViewController_showCloseButton) & 1) == 0)
  {
    v7 = v3;
    v8 = v6;
    result = [v8 view];
    if (result)
    {
      v10 = result;
      v11 = [result ic_isInSecureWindow];

      if (v11)
      {
        sub_21549F0DC();
        v12 = sub_21549F0FC();
        v13 = sub_2154A225C();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_2151A1000, v12, v13, "Not presenting audio detail view in secure window", v14, 2u);
          MEMORY[0x21606B520](v14, -1, -1);
        }

        else
        {
        }

        (*(v2 + 8))(v5, v7);
        return 0;
      }

      v15 = *(v0 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_recordingViewController);
      if (!v15)
      {
        v21 = OBJC_IVAR___ICMiniPlayerViewController_attachment;
        swift_beginAccess();
        v22 = *&v8[v21];
        if (v22)
        {
          v23 = v22;
          v24 = [v23 audioModel];
          if (v24)
          {
            v25 = v24;
            [objc_opt_self() getHostingViewForAttachmentModel:v24 delegate:0];

            v26 = *(v0 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController);
            v27 = v26;
            return v26;
          }
        }

        return 0;
      }

      v16 = *(v0 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController);
      v17 = v15;
      v18 = v16;
      result = [v16 view];
      if (result)
      {
        v19 = result;
        [result endEditing_];

        v20 = v18;
        return v18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  return 0;
}

void *_s11NotesEditor015AudioAttachmentB11CoordinatorC49transcriptDetailPresentationInteractionSourceViewySo6UIViewCSgAA010TranscriptghI0CF_0()
{
  v1 = *(v0 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_miniPlayer);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR___ICMiniPlayerViewController_playerView);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v3 window];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  if (v4)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_2153F0060()
{
  v0 = sub_21549E56C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = aBlock - v5;
  result = [objc_opt_self() faceTimeShowInCallUIURL];
  if (result)
  {
    v8 = result;
    sub_21549E51C();

    (*(v1 + 32))(v6, v3, v0);
    v9 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
    [v9 setSensitive_];
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v10 = result;
      v11 = sub_21549E49C();
      aBlock[4] = sub_2153E18B8;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2153E1B0C;
      aBlock[3] = &block_descriptor_113;
      v12 = _Block_copy(aBlock);
      v13 = v9;
      [v10 openURL:v11 configuration:v13 completionHandler:v12];
      _Block_release(v12);

      return (*(v1 + 8))(v6, v0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2153F02A0(void *a1)
{
  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = [a1 audioModel];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [v2 composedAudioAssetURLs];

  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_21549E56C();
  sub_2154A1F4C();
}

void sub_2153F0354(void *a1)
{
  v2 = [a1 sheetPresentationController];
  if (v2)
  {
    v3 = v2;
    [v2 _setShouldDismissWhenTappedOutside_];
  }

  v4 = [a1 sheetPresentationController];
  if (v4)
  {
    v5 = v4;
    [v4 _setCornerRadiusForPresentationAndDismissal_];
  }

  v6 = [a1 sheetPresentationController];
  if (v6)
  {
    v7 = v6;
    [v6 setPrefersGrabberVisible_];
  }

  v8 = [a1 sheetPresentationController];
  if (v8)
  {
    v9 = v8;
    [v8 _grabberPreferredSize];
    [v9 _setGrabberPreferredSize_];
  }

  if ([objc_opt_self() ic_isiPad])
  {
    v10 = [a1 sheetPresentationController];
    if (v10)
    {
      v11 = v10;
      [v10 _setWantsFullScreen_];
    }

    v12 = [a1 sheetPresentationController];
    if (v12)
    {
      v13 = v12;
      [v12 _setAllowsInteractiveDismissWhenFullScreen_];
    }
  }
}

uint64_t sub_2153F04F8()
{
  v1 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator__eventReporter;
  if (!*&v0[OBJC_IVAR___ICAudioAttachmentEditorCoordinator__eventReporter])
  {
    sub_2151A6C9C(0, &qword_27CA5C7D8, 0x277D35978);
    if ([swift_getObjCClassFromMetadata() isOptedInForAnalytics])
    {
      v2 = [v0 textView];
      type metadata accessor for AudioAttachmentEditorCoordinator(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C7E0, &qword_2154C2F28);
      sub_2154A1D9C();
      if (v2)
      {
        v3 = objc_allocWithZone(MEMORY[0x277D35978]);
        v4 = sub_2154A1D2C();

        v5 = [v3 initWithSubTrackerName:v4 view:v2];
      }

      else
      {
        v6 = objc_allocWithZone(MEMORY[0x277D35978]);
        v2 = sub_2154A1D2C();

        v5 = [v6 initWithSubTrackerName_];
      }

      v7 = *&v0[v1];
      *&v0[v1] = v5;

      if (*&v0[v1])
      {
        v8 = [objc_opt_self() defaultCenter];
        [v8 addObserver:v0 selector:sel_eventReporterLostSession_ name:*MEMORY[0x277D35958] object:*&v0[v1]];
      }
    }
  }

  return *&v0[v1];
}

uint64_t sub_2153F06E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2151BD36C;

  return sub_2153E3DA0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2153F07B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2151BD36C;

  return sub_2153E7614(a1, v4, v5, v7, v6);
}

void _s11NotesEditor015AudioAttachmentB11CoordinatorC17playFromBeginningyySo12ICAttachmentCF_0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0, &qword_2154BED90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = [objc_opt_self() sharedAudioController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 currentAttachment];

    if (v7)
    {
      sub_2151A6C9C(0, &qword_281199690, 0x277D35E00);
      v8 = a1;
      v9 = sub_2154A291C();

      if (v9)
      {
        v10 = sub_2154A202C();
        (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
        sub_2154A1FFC();
        v11 = sub_2154A1FEC();
        v12 = swift_allocObject();
        v13 = MEMORY[0x277D85700];
        *(v12 + 16) = v11;
        *(v12 + 24) = v13;
        sub_2152F4D50(0, 0, v4, &unk_2154C2F00, v12);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2153F0A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2153F0A84(uint64_t a1)
{
  v2 = type metadata accessor for SummaryView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _s11NotesEditor015AudioAttachmentB11CoordinatorC6append2toySo12ICAttachmentC_tF_0(void *a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0, &qword_2154BED90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v33 - v3;
  sub_21549F93C();
  sub_21549F90C();
  v32 = sub_21549F8EC();

  v5 = v32;
  if (v32)
  {
LABEL_2:

    return;
  }

  v6 = [a1 audioModel];
  if (!v6)
  {
    return;
  }

  v32 = v6;
  v7 = [v6 audioDocument];
  if (!v7)
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = v7;
  v9 = [v7 isCallRecording];

  if (v9)
  {
    v5 = v32;
    goto LABEL_2;
  }

  v10 = [objc_opt_self() sharedAudioController];
  if (!v10)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 stop];

  v33[0] = 0;
  if ([v32 deleteSummaryAndReturnError_])
  {
    v12 = v33[0];
  }

  else
  {
    v13 = v33[0];
    v14 = sub_21549E3DC();

    swift_willThrow();
    if (qword_27CA598C8 != -1)
    {
      swift_once();
    }

    v15 = sub_21549F11C();
    __swift_project_value_buffer(v15, qword_27CA5C670);
    v16 = v14;
    v17 = sub_21549F0FC();
    v18 = sub_2154A226C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v14;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_2151A1000, v17, v18, "could not delete summary: %@", v19, 0xCu);
      sub_2151ADCD8(v20, &unk_27CA59E90, &qword_2154BEB40);
      MEMORY[0x21606B520](v20, -1, -1);
      MEMORY[0x21606B520](v19, -1, -1);
    }

    else
    {
    }
  }

  sub_21549ECCC();
  swift_allocObject();
  v23 = v32;
  sub_21549EC4C();
  v24 = objc_allocWithZone(sub_21549F77C());
  v25 = v23;

  v26 = sub_21549F75C();
  v27 = sub_2154A202C();
  (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
  sub_2154A1FFC();
  v28 = v26;
  v29 = sub_2154A1FEC();
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v28;
  sub_215354B4C(0, 0, v4, &unk_2154C2ED8, v30);
}

id sub_2153F11BC(void *a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = sub_2154A1D2C();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  sub_2154A1D6C();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = a1;
  v7 = sub_2154A1D2C();

  v11[4] = sub_2153F1B78;
  v11[5] = v5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2151B5B78;
  v11[3] = &block_descriptor_58_1;
  v8 = _Block_copy(v11);

  v9 = [objc_opt_self() actionWithTitle:v7 style:2 handler:v8];
  _Block_release(v8);

  return v9;
}

id sub_2153F1350()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  sub_2154A1D6C();
  v3 = sub_2154A1D2C();

  v7[4] = nullsub_1;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2151B5B78;
  v7[3] = &block_descriptor_25;
  v4 = _Block_copy(v7);

  v5 = [objc_opt_self() actionWithTitle:v3 style:1 handler:v4];
  _Block_release(v4);

  return v5;
}

void sub_2153F14C0()
{
  v0 = sub_21549EECC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C6E0, &qword_2154C2EA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  sub_21549EEBC();
  v7 = sub_21549EEAC();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  sub_2151ADCD8(v6, &unk_27CA5C6E0, &qword_2154C2EA0);
  if (qword_27CA598C8 != -1)
  {
    swift_once();
  }

  v9 = sub_21549F11C();
  __swift_project_value_buffer(v9, qword_27CA5C670);
  v10 = sub_21549F0FC();
  v11 = sub_2154A224C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v8 != 1;
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v12;
    _os_log_impl(&dword_2151A1000, v10, v11, "Has answered form response: %{BOOL}d", v13, 8u);
    MEMORY[0x21606B520](v13, -1, -1);
  }

  sub_21549EEDC();
  v14 = (*(v1 + 88))(v3, v0);
  if (v14 == *MEMORY[0x277D08510])
  {
    v15 = sub_21549F0FC();
    v16 = sub_2154A224C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Successful Thumbs Up feedback";
LABEL_20:
      _os_log_impl(&dword_2151A1000, v15, v16, v18, v17, 2u);
      MEMORY[0x21606B520](v17, -1, -1);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (v14 == *MEMORY[0x277D084E8])
  {
    v15 = sub_21549F0FC();
    v16 = sub_2154A224C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Successful Thumbs Down feedback";
      goto LABEL_20;
    }

LABEL_21:

    return;
  }

  if (v14 == *MEMORY[0x277D084F8])
  {
    v15 = sub_21549F0FC();
    v16 = sub_2154A224C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Successful Report a Concern feedback";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v14 == *MEMORY[0x277D08508])
  {
    v15 = sub_21549F0FC();
    v16 = sub_2154A224C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Completed feedback call, user skipped";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v14 == *MEMORY[0x277D084F0])
  {
    v15 = sub_21549F0FC();
    v16 = sub_2154A224C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Completed feedback call, invalid data";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v19 = *MEMORY[0x277D08500];
  v20 = v14;
  v21 = sub_21549F0FC();
  v22 = sub_2154A224C();
  v23 = os_log_type_enabled(v21, v22);
  if (v20 == v19)
  {
    if (v23)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2151A1000, v21, v22, "Completed feedback call, user deleted content", v24, 2u);
      MEMORY[0x21606B520](v24, -1, -1);
    }
  }

  else
  {
    if (v23)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2151A1000, v21, v22, "Completed feedback call, unknown action", v25, 2u);
      MEMORY[0x21606B520](v25, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }
}

void sub_2153F1A1C(void *a1)
{
  if (qword_27CA598C8 != -1)
  {
    swift_once();
  }

  v2 = sub_21549F11C();
  __swift_project_value_buffer(v2, qword_27CA5C670);
  v3 = a1;
  oslog = sub_21549F0FC();
  v4 = sub_2154A226C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2151A1000, oslog, v4, "Failed feedback with error: %@", v5, 0xCu);
    sub_2151ADCD8(v6, &unk_27CA59E90, &qword_2154BEB40);
    MEMORY[0x21606B520](v6, -1, -1);
    MEMORY[0x21606B520](v5, -1, -1);
  }
}

uint64_t objectdestroy_3Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroyTm_3()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2153F1C18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2151BD278;

  return sub_2153E9114();
}

id sub_2153F1CCC()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 16) + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_hideMiniPlayerConstraint);
  if (v2)
  {
    [v2 setActive_];
  }

  return [v1 layoutIfNeeded];
}

uint64_t sub_2153F1D4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2151BD278;

  return sub_2153E860C();
}

double sub_2153F1E10(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_215324170(a1, a2);
  }

  return result;
}

uint64_t sub_2153F1E24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090, &qword_2154BE0D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ICMediaSourceType.init(_:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2154A1D2C();

  v3 = ICMediaSourceTypeFromString(v2);

  return v3;
}

uint64_t ICMediaSourceType.description.getter(uint64_t a1)
{
  v1 = NSStringFromICMediaSourceType(a1);
  v2 = sub_2154A1D6C();

  return v2;
}

unint64_t sub_2153F1F78()
{
  result = qword_27CA5C840;
  if (!qword_27CA5C840)
  {
    type metadata accessor for MediaSourceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C840);
  }

  return result;
}

void sub_2153F1FD0(uint64_t a3@<X8>)
{
  v4 = sub_2154A1D2C();

  v5 = ICMediaSourceTypeFromString(v4);

  *a3 = v5;
  *(a3 + 8) = 0;
}

uint64_t sub_2153F2024()
{
  v1 = NSStringFromICMediaSourceType(*v0);
  v2 = sub_2154A1D6C();

  return v2;
}

uint64_t type metadata accessor for RecordingView(uint64_t a1)
{
  result = qword_27CA5C878;
  if (!qword_27CA5C878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2153F20E8(uint64_t a1, __n128 a2)
{
  type metadata accessor for RecordingViewModel(319);
  if (v2 <= 0x3F)
  {
    type metadata accessor for ICRecordButtonViewModel(319);
    if (v3 <= 0x3F)
    {
      type metadata accessor for ICRecordButtonRepository();
      if (v4 <= 0x3F)
      {
        type metadata accessor for ICRecordButtonPresenter();
        if (v5 <= 0x3F)
        {
          sub_2153F24F4(319, &qword_27CA5C888, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
          if (v6 <= 0x3F)
          {
            sub_2153BB10C(319);
            if (v7 <= 0x3F)
            {
              sub_2153F24F4(319, &unk_27CA5C8A0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
              if (v8 <= 0x3F)
              {
                sub_2153F25C0(319, &qword_27CA5BEF0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
                if (v9 <= 0x3F)
                {
                  sub_2153F25C0(319, &unk_27CA5C8B0, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
                  if (v10 <= 0x3F)
                  {
                    sub_2153F25C0(319, &qword_27CA5B1F8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                    if (v11 <= 0x3F)
                    {
                      sub_2153F25C0(319, &qword_27CA5C8C0, &type metadata for RecordingView.FooterState, MEMORY[0x277CE10B8]);
                      if (v12 <= 0x3F)
                      {
                        sub_2151A6C9C(319, &qword_27CA5C8C8, 0x277D366C0);
                        if (v13 <= 0x3F)
                        {
                          sub_21549E6AC();
                          if (v14 <= 0x3F)
                          {
                            sub_2153F25C0(319, &unk_27CA5C8D0, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
                            if (v15 <= 0x3F)
                            {
                              sub_2153ADA48();
                              if (v16 <= 0x3F)
                              {
                                sub_2153F2558(319);
                                if (v17 <= 0x3F)
                                {
                                  sub_2153F24F4(319, &qword_27CA5C8F0, type metadata accessor for TranscriptViewController, MEMORY[0x277D36090]);
                                  if (v18 <= 0x3F)
                                  {
                                    sub_2153F25C0(319, &unk_27CA5C8F8, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
                                    if (v19 <= 0x3F)
                                    {
                                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_2153F24F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2153F2558(uint64_t a1)
{
  if (!qword_27CA5C8E0)
  {
    sub_2151A6C9C(255, &qword_2811994D0, 0x277D75D18);
    v1 = sub_2154A0E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA5C8E0);
    }
  }
}

void sub_2153F25C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2153F2624()
{
  result = qword_27CA5C908;
  if (!qword_27CA5C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C908);
  }

  return result;
}

uint64_t sub_2153F2678(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + 8 * v7 + 32);
      v14 = v11;
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_21531B60C(0, *(v8 + 16) + 1, 1);
          v8 = v15;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_21531B60C((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + 8 * v10 + 32) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_2153F27D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + v7 + 32);
      v14 = v11;
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_21531B774(0, *(v8 + 16) + 1, 1);
          v8 = v15;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_21531B774((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + v10 + 32) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_15:

    return v8;
  }

  return result;
}

void sub_2153F2928(unint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v6 = type metadata accessor for RecordingView(0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 32);
  *&v9[v11] = swift_getKeyPath(byte_2154C4000, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA00, &qword_2154C0AD0);
  swift_storeEnumTagMultiPayload();
  v12 = v6[9];
  *&v9[v12] = swift_getKeyPath(aP_4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0, &qword_2154C0AD8);
  swift_storeEnumTagMultiPayload();
  v13 = v6[10];
  *&v9[v13] = swift_getKeyPath(a0_0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA10, &unk_2154C0AE0);
  swift_storeEnumTagMultiPayload();
  v14 = &v9[v6[11]];
  *v14 = swift_getKeyPath(aH_0);
  v14[8] = 0;
  v15 = &v9[v6[12]];
  *v15 = swift_getKeyPath(asc_2154C4090);
  v15[8] = 0;
  v16 = &v9[v6[13]];
  v59 = 0;
  sub_2154A0DDC();
  v17 = *(&v61 + 1);
  *v16 = v61;
  *(v16 + 1) = v17;
  v18 = &v9[v6[15]];
  LOBYTE(v59) = 0;
  sub_2154A0DDC();
  v19 = *(&v61 + 1);
  *v18 = v61;
  *(v18 + 1) = v19;
  v20 = &v9[v6[16]];
  LOBYTE(v59) = 0;
  sub_2154A0DDC();
  v21 = *(&v61 + 1);
  *v20 = v61;
  *(v20 + 1) = v21;
  v22 = &v9[v6[17]];
  LOBYTE(v59) = 0;
  sub_2154A0DDC();
  v23 = *(&v61 + 1);
  *v22 = v61;
  *(v22 + 1) = v23;
  v24 = [objc_opt_self() sharedAudioController];
  if (v24)
  {
    *&v9[v6[18]] = v24;
    swift_unknownObjectWeakInit();
    *&v9[v6[21]] = 0x4056800000000000;
    *&v9[v6[22]] = 0x4042000000000000;
    *&v9[v6[23]] = 0;
    *&v9[v6[24]] = 0;
    *&v9[v6[25]] = 0x403A000000000000;
    *&v9[v6[26]] = 0x4040000000000000;
    *&v9[v6[27]] = 0x4014000000000000;
    *&v9[v6[28]] = 0x4020000000000000;
    *&v9[v6[29]] = 0x4028000000000000;
    *&v9[v6[30]] = 0x4032000000000000;
    *&v9[v6[31]] = 0x4020000000000000;
    *&v9[v6[32]] = 0x4038000000000000;
    *&v9[v6[33]] = 0x4040000000000000;
    *&v9[v6[34]] = 0x4043000000000000;
    *&v9[v6[35]] = 0x4043400000000000;
    *&v9[v6[36]] = 0x4041000000000000;
    *&v9[v6[37]] = 0x403C000000000000;
    *&v9[v6[38]] = 0x4041000000000000;
    *&v9[v6[39]] = 0x4034000000000000;
    *&v9[v6[40]] = 0x404E000000000000;
    *&v9[v6[41]] = 0x4044000000000000;
    *&v9[v6[42]] = 0x4046000000000000;
    *&v9[v6[43]] = 0x4046000000000000;
    *&v9[v6[44]] = 0x4038000000000000;
    *&v9[v6[45]] = 0x4041800000000000;
    *&v9[v6[46]] = 0x4042000000000000;
    *&v9[v6[47]] = 0x401C000000000000;
    *&v9[v6[48]] = 0xC000000000000000;
    *&v9[v6[49]] = 0x4049000000000000;
    *&v9[v6[50]] = 0x4040000000000000;
    *&v9[v6[51]] = 0x4028000000000000;
    *&v9[v6[52]] = 0x4038000000000000;
    v25 = &v9[v6[53]];
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_2154A0DDC();
    v26 = v62;
    *v25 = v61;
    *(v25 + 2) = v26;
    v27 = &v9[v6[54]];
    LOBYTE(v59) = 0;
    sub_2154A0DDC();
    v28 = *(&v61 + 1);
    *v27 = v61;
    *(v27 + 1) = v28;
    v29 = &v9[v6[55]];
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_2154A0DDC();
    v30 = v62;
    *v29 = v61;
    *(v29 + 2) = v30;
    v31 = &v9[v6[56]];
    *v31 = sub_21549F9DC() & 1;
    *(v31 + 1) = v32;
    v31[16] = v33 & 1;
    v34 = &v9[v6[57]];
    v59 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    sub_2151A6C9C(0, &qword_2811994D0, 0x277D75D18);
    sub_2154A0DDC();
    v35 = *(&v61 + 1);
    *v34 = v61;
    *(v34 + 1) = v35;
    v36 = &v9[v6[58]];
    LOBYTE(v59) = 0;
    sub_2154A0DDC();
    v37 = *(&v61 + 1);
    *v36 = v61;
    *(v36 + 1) = v37;
    v38 = &v9[v6[59]];
    LOBYTE(v59) = 0;
    sub_2154A0DDC();
    v39 = *(&v61 + 1);
    *v38 = v61;
    *(v38 + 1) = v39;
    v40 = &v9[v6[60]];
    LOBYTE(v59) = 1;
    sub_2154A0DDC();
    v41 = *(&v61 + 1);
    *v40 = v61;
    *(v40 + 1) = v41;
    v42 = &v9[v6[61]];
    LOBYTE(v59) = 0;
    sub_2154A0DDC();
    v43 = *(&v61 + 1);
    *v42 = v61;
    *(v42 + 1) = v43;
    v44 = v6[62];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D898, &qword_2154C40C0);
    swift_allocObject();
    *&v9[v44] = sub_21549EE8C();
    v45 = &v9[v6[63]];
    v59 = 0;
    sub_2154A0DDC();
    v46 = *(&v61 + 1);
    *v45 = v61;
    *(v45 + 1) = v46;
    v47 = &v9[v6[64]];
    LOBYTE(v59) = 0;
    sub_2154A0DDC();
    v48 = *(&v61 + 1);
    *v47 = v61;
    *(v47 + 1) = v48;
    v49 = &v9[v6[65]];
    LOBYTE(v59) = 0;
    sub_2154A0DDC();
    v50 = *(&v61 + 1);
    *v49 = v61;
    *(v49 + 1) = v50;
    *v9 = a1;
    swift_unknownObjectWeakAssign();
    v51 = v6[20];
    v52 = sub_21549E6AC();
    v53 = *(v52 - 8);
    (*(v53 + 16))(&v9[v51], a3, v52);
    swift_getKeyPath(byte_2154C40C8);
    *&v61 = a1;
    sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);

    sub_21549ED9C();

    LOBYTE(v51) = *(a1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__shouldShowTextViewOnFreshLaunch);

    v54 = &v9[v6[14]];
    *v54 = v51;
    *(v54 + 1) = 0;
    v55 = [objc_allocWithZone(type metadata accessor for ICRecordButtonRepository()) init];
    *(v9 + 2) = v55;
    type metadata accessor for ICRecordButtonPresenter();
    swift_allocObject();
    v56 = v55;
    v57 = sub_21539DE30(v56);
    swift_unknownObjectRelease();

    (*(v53 + 8))(a3, v52);
    *(v9 + 3) = v57;
    *(v9 + 1) = *(v57 + 16);
    sub_21541C94C(v9, v58, type metadata accessor for RecordingView);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2153F3130()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5C850);
  __swift_project_value_buffer(v0, qword_27CA5C850);
  return sub_21549F0BC();
}

uint64_t sub_2153F317C@<X0>(char a1@<W0>, void (*a2)(void *__return_ptr, _OWORD *)@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 112);
  v23[6] = *(v3 + 96);
  v23[7] = v5;
  v23[8] = *(v3 + 128);
  v6 = *(v3 + 48);
  v23[2] = *(v3 + 32);
  v23[3] = v6;
  v7 = *(v3 + 80);
  v23[4] = *(v3 + 64);
  v23[5] = v7;
  v8 = *(v3 + 16);
  v23[0] = *v3;
  v24 = *(v3 + 144);
  v23[1] = v8;
  if (a1)
  {
    a2(__src, v23);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v19, __src, 0x138uLL);
    sub_215324EEC(__dst, v21, &qword_27CA5D668, &qword_2154C3E08);
    sub_2151ADCD8(v19, &qword_27CA5D668, &qword_2154C3E08);
    memcpy(v21, __dst, 0x138uLL);
    sub_21541C944(v21);
    memcpy(v20, v21, 0x139uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D668, &qword_2154C3E08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D638, &qword_2154C3DF0);
    sub_21541C70C();
    sub_21541C824();
  }

  else
  {
    v9 = *(v3 + 112);
    v10 = *(v3 + 80);
    v19[6] = *(v3 + 96);
    v19[7] = v9;
    v11 = *(v3 + 112);
    v19[8] = *(v3 + 128);
    v12 = *(v3 + 48);
    v13 = *(v3 + 16);
    v19[2] = *(v3 + 32);
    v19[3] = v12;
    v14 = *(v3 + 48);
    v15 = *(v3 + 80);
    v19[4] = *(v3 + 64);
    v19[5] = v15;
    v16 = *(v3 + 16);
    v19[0] = *v3;
    v19[1] = v16;
    v21[6] = v19[6];
    v21[7] = v11;
    v21[8] = *(v3 + 128);
    v21[2] = v19[2];
    v21[3] = v14;
    v21[4] = v19[4];
    v21[5] = v10;
    LOBYTE(v19[9]) = *(v3 + 144);
    LOBYTE(v21[9]) = *(v3 + 144);
    v21[0] = v19[0];
    v21[1] = v13;
    sub_21541C938(v21);
    memcpy(v20, v21, 0x139uLL);
    sub_215324EEC(v19, __src, &qword_27CA5D638, &qword_2154C3DF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D668, &qword_2154C3E08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D638, &qword_2154C3DF0);
    sub_21541C70C();
    sub_21541C824();
  }

  sub_2154A039C();
  memcpy(v20, __src, 0x139uLL);
  memcpy(a3, __src, 0x139uLL);
  memcpy(v21, __src, 0x139uLL);
  sub_215324EEC(v20, v19, &qword_27CA5D640, &qword_2154C3DF8);
  return sub_2151ADCD8(v21, &qword_27CA5D640, &qword_2154C3DF8);
}

uint64_t sub_2153F342C@<X0>(char a1@<W0>, void (*a2)(void *__return_ptr, _BYTE *)@<X1>, void *a3@<X8>)
{
  memcpy(__dst, v3, 0x139uLL);
  if (a1)
  {
    a2(__src, __dst);
    memcpy(v8, __src, sizeof(v8));
    memcpy(v9, __src, 0x170uLL);
    sub_215324EEC(v8, v11, &qword_27CA5D648, &qword_2154C3E00);
    sub_2151ADCD8(v9, &qword_27CA5D648, &qword_2154C3E00);
    memcpy(v11, v8, 0x170uLL);
    sub_21541C930(v11);
    memcpy(v10, v11, 0x171uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D648, &qword_2154C3E00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D640, &qword_2154C3DF8);
    sub_21541C5F4();
    sub_21541C680();
  }

  else
  {
    memcpy(v9, v3, 0x139uLL);
    memcpy(v11, v3, 0x139uLL);
    sub_21541C5E8(v11);
    memcpy(v10, v11, 0x171uLL);
    sub_215324EEC(v9, __src, &qword_27CA5D640, &qword_2154C3DF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D648, &qword_2154C3E00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D640, &qword_2154C3DF8);
    sub_21541C5F4();
    sub_21541C680();
  }

  sub_2154A039C();
  memcpy(v10, __src, 0x171uLL);
  memcpy(a3, __src, 0x171uLL);
  memcpy(v11, __src, 0x171uLL);
  sub_215324EEC(v10, v9, &qword_27CA5D550, &qword_2154C3CE8);
  return sub_2151ADCD8(v11, &qword_27CA5D550, &qword_2154C3CE8);
}

id sub_2153F3674()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75FC0]) init];
  [v0 setUserInteractionEnabled_];
  return v0;
}

uint64_t sub_2153F36C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21541E240();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2153F3724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21541E240();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2153F3788(uint64_t a1)
{
  sub_21541E240();
  sub_2154A036C();
  __break(1u);
}

uint64_t sub_2153F37B0@<X0>(void *a1@<X8>)
{
  v3 = sub_2154A00DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA00, &qword_2154C0AD0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for RecordingView(0);
  sub_215324EEC(v1 + *(v10 + 32), v9, &unk_27CA5CA00, &qword_2154C0AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21549FB6C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2154A227C();
    v13 = sub_2154A068C();
    sub_21549F07C();

    sub_2154A00CC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2153F39B8@<X0>(void *a1@<X8>)
{
  v3 = sub_2154A00DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0, &qword_2154C0AD8);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for RecordingView(0);
  sub_215324EEC(v1 + *(v10 + 36), v9, &qword_27CA5B7C0, &qword_2154C0AD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21533FB7C(v9, a1, &qword_27CA5BDE8, &qword_2154C4E80);
  }

  sub_2154A227C();
  v12 = sub_2154A068C();
  sub_21549F07C();

  sub_2154A00CC();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2153F3BA0@<X0>(void *a1@<X8>)
{
  v3 = sub_2154A00DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA10, &unk_2154C0AE0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for RecordingView(0);
  sub_215324EEC(v1 + *(v10 + 40), v9, &unk_27CA5CA10, &unk_2154C0AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21549FCFC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2154A227C();
    v13 = sub_2154A068C();
    sub_21549F07C();

    sub_2154A00CC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2153F3DA8()
{
  v1 = sub_2154A00DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for RecordingView(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2154A227C();
    v7 = sub_2154A068C();
    sub_21549F07C();

    sub_2154A00CC();
    swift_getAtKeyPath();
    v8 = sub_21537702C(v6, 0);
    (*(v2 + 8))(v4, v1, v8);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_2153F3F00()
{
  v1 = sub_2154A00DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for RecordingView(0) + 48);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2154A227C();
    v7 = sub_2154A068C();
    sub_21549F07C();

    sub_2154A00CC();
    swift_getAtKeyPath();
    v8 = sub_21537702C(v6, 0);
    (*(v2 + 8))(v4, v1, v8);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

unint64_t sub_2153F4068()
{
  result = qword_27CA5C910;
  if (!qword_27CA5C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C910);
  }

  return result;
}

uint64_t sub_2153F40D8()
{
  v0 = sub_2154A04CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE40, &unk_2154C1C80);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BDE8, &qword_2154C4E80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  sub_2153F39B8((&v23 - v14));
  (*(v1 + 104))(v12, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_215324EEC(v15, v6, &qword_27CA5BDE8, &qword_2154C4E80);
  sub_215324EEC(v12, &v6[v16], &qword_27CA5BDE8, &qword_2154C4E80);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_215324EEC(v6, v9, &qword_27CA5BDE8, &qword_2154C4E80);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = &v6[v16];
      v20 = v24;
      (*(v1 + 32))(v24, v19, v0);
      sub_21541DC34(&qword_27CA5CF70, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v18 = sub_2154A1D1C();
      v21 = *(v1 + 8);
      v21(v20, v0);
      sub_2151ADCD8(v12, &qword_27CA5BDE8, &qword_2154C4E80);
      sub_2151ADCD8(v15, &qword_27CA5BDE8, &qword_2154C4E80);
      v21(v9, v0);
      sub_2151ADCD8(v6, &qword_27CA5BDE8, &qword_2154C4E80);
      return v18 & 1;
    }

    sub_2151ADCD8(v12, &qword_27CA5BDE8, &qword_2154C4E80);
    sub_2151ADCD8(v15, &qword_27CA5BDE8, &qword_2154C4E80);
    (*(v1 + 8))(v9, v0);
    goto LABEL_6;
  }

  sub_2151ADCD8(v12, &qword_27CA5BDE8, &qword_2154C4E80);
  sub_2151ADCD8(v15, &qword_27CA5BDE8, &qword_2154C4E80);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_2151ADCD8(v6, &qword_27CA5BE40, &unk_2154C1C80);
    v18 = 0;
    return v18 & 1;
  }

  sub_2151ADCD8(v6, &qword_27CA5BDE8, &qword_2154C4E80);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_2153F4520()
{
  v1 = sub_21549E95C();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  swift_getKeyPath(byte_2154C31B8, v3);
  v12[3] = v6;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v7 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v2 + 16))(v5, v6 + v7, v1);
  v8 = (*(v2 + 88))(v5, v1);
  if (v8 == *MEMORY[0x277D359E8])
  {
    (*(v2 + 8))(v5, v1);
    return 0;
  }

  if (v8 == *MEMORY[0x277D359D8])
  {
    (*(v2 + 8))(v5, v1);
  }

  else if (v8 != *MEMORY[0x277D359D0] && v8 != *MEMORY[0x277D359E0])
  {
    (*(v2 + 8))(v5, v1);
    return 1;
  }

  swift_getKeyPath(aH_1);
  v12[0] = v6;
  sub_21549ED9C();

  v11 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__canBePlayedBack;
  swift_beginAccess();
  return *(v6 + v11);
}

uint64_t sub_2153F4798@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for RecordingView(0);
  v61 = *(v3 - 8);
  v65 = *(v61 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_21549E95C();
  v54 = *(v60 - 8);
  v6 = v54;
  MEMORY[0x28223BE20](v60);
  v59 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C9A0, &qword_2154C3180);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C9A8, &qword_2154C3188);
  v12 = *(v11 - 8);
  v62 = v11;
  v63 = v12;
  MEMORY[0x28223BE20](v11);
  v58 = &v54 - v13;
  *v10 = sub_2154A025C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C9B0, &qword_2154C3190);
  sub_2153F5030(&v10[*(v14 + 44)]);
  v66 = a1;
  v15 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C9B8, &qword_2154C3198);
  v55 = sub_2151ACC5C(&qword_27CA5C9C0, &qword_27CA5C9A0, &qword_2154C3180, MEMORY[0x277CE1198]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5C9C8, &qword_2154C31A0);
  v17 = sub_215416848();
  v67 = v16;
  v68 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v8;
  sub_2154A0BEC();
  sub_2151ADCD8(v10, &qword_27CA5C9A0, &qword_2154C3180);
  v20 = *a1;
  v21 = v15;
  v57 = v15;
  swift_getKeyPath(byte_2154C31B8);
  v67 = v20;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v22 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  v24 = v59;
  v23 = v60;
  (*(v6 + 16))(v59, v20 + v22, v60);
  sub_21539B7B8(v21, v5);
  v25 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v26 = swift_allocObject();
  sub_21541C94C(v5, v26 + v25, type metadata accessor for RecordingView);
  v67 = v19;
  v68 = v56;
  v69 = v55;
  v70 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21541DC34(&qword_27CA5AE28, MEMORY[0x277D359F0], MEMORY[0x277D359F8]);
  v27 = v64;
  v28 = v62;
  v29 = v58;
  sub_2154A0C0C();

  (*(v54 + 8))(v24, v23);
  (v63)[1](v29, v28);
  v63 = objc_opt_self();
  v30 = [v63 defaultCenter];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA20, &qword_2154C31E8);
  sub_2154A251C();

  v32 = v57;
  sub_21539B7B8(v57, v5);
  v33 = swift_allocObject();
  sub_21541C94C(v5, v33 + v25, type metadata accessor for RecordingView);
  v34 = (v27 + *(v31 + 56));
  *v34 = sub_2154169A8;
  v34[1] = v33;
  sub_21539B7B8(v32, v5);
  v35 = swift_allocObject();
  sub_21541C94C(v5, v35 + v25, type metadata accessor for RecordingView);
  v36 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA28, &qword_2154C31F0) + 36));
  v37 = v27;
  *v36 = sub_2154169C0;
  v36[1] = v35;
  v36[2] = 0;
  v36[3] = 0;
  sub_21539B7B8(v32, v5);
  v38 = swift_allocObject();
  sub_21541C94C(v5, v38 + v25, type metadata accessor for RecordingView);
  v39 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA30, &qword_2154C31F8) + 36));
  *v39 = 0;
  v39[1] = 0;
  v39[2] = sub_2154169D8;
  v39[3] = v38;
  v40 = [v63 defaultCenter];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C968, &qword_2154C3168);
  sub_2154A251C();

  sub_21539B7B8(v32, v5);
  v42 = swift_allocObject();
  sub_21541C94C(v5, v42 + v25, type metadata accessor for RecordingView);
  v43 = (v37 + *(v41 + 56));
  *v43 = sub_2154169F0;
  v43[1] = v42;
  sub_21539B7B8(v32, v5);
  v44 = swift_allocObject();
  sub_21541C94C(v5, v44 + v25, type metadata accessor for RecordingView);
  v45 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C958, &qword_2154C3160) + 36));
  sub_21549FBCC();
  sub_2154A200C();
  *v45 = &unk_2154C3208;
  v45[1] = v44;
  *(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C948, &qword_2154C3158) + 36)) = 0;
  v46 = sub_2154A0FAC();
  v48 = v47;
  v49 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C938, &qword_2154C3150) + 36);
  sub_2153FBFE4(v32, v49);
  v50 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C990, &qword_2154C3178) + 36));
  *v50 = v46;
  v50[1] = v48;
  v51 = sub_21549FDDC();
  LOBYTE(v25) = sub_2154A06DC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C920, &qword_2154C3148);
  v53 = v37 + *(result + 36);
  *v53 = v51;
  *(v53 + 8) = v25;
  return result;
}

uint64_t sub_2153F5030@<X0>(uint64_t a2@<X8>)
{
  v29 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF78, &qword_2154C3828);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF80, &qword_2154C3830);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF88, &qword_2154C3838);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  *v19 = sub_2154A011C();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF90, &qword_2154C3840);
  sub_2153FC724(&v19[*(v20 + 44)]);
  v26 = v13;
  sub_2153F53BC(v13);
  sub_2153F65A4(v7);
  sub_21549FB1C();
  sub_21549FB2C();
  sub_21549FB3C();

  sub_2154A0FFC();
  v21 = sub_21549FB4C();

  *&v7[*(v3 + 44)] = v21;
  v27 = v16;
  sub_215324EEC(v19, v16, &qword_27CA5CF88, &qword_2154C3838);
  sub_215324EEC(v13, v10, &qword_27CA5CF80, &qword_2154C3830);
  v22 = v28;
  sub_215324EEC(v7, v28, &qword_27CA5CF78, &qword_2154C3828);
  v23 = v29;
  sub_215324EEC(v16, v29, &qword_27CA5CF88, &qword_2154C3838);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF98, &qword_2154C3848);
  sub_215324EEC(v10, v23 + *(v24 + 48), &qword_27CA5CF80, &qword_2154C3830);
  sub_215324EEC(v22, v23 + *(v24 + 64), &qword_27CA5CF78, &qword_2154C3828);
  sub_2151ADCD8(v7, &qword_27CA5CF78, &qword_2154C3828);
  sub_2151ADCD8(v26, &qword_27CA5CF80, &qword_2154C3830);
  sub_2151ADCD8(v19, &qword_27CA5CF88, &qword_2154C3838);
  sub_2151ADCD8(v22, &qword_27CA5CF78, &qword_2154C3828);
  sub_2151ADCD8(v10, &qword_27CA5CF80, &qword_2154C3830);
  return sub_2151ADCD8(v27, &qword_27CA5CF88, &qword_2154C3838);
}

uint64_t sub_2153F53BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v110 = a1;
  v3 = type metadata accessor for RecordingView(0);
  v4 = v3 - 8;
  v88 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v89 = v5;
  v90 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2154A053C();
  v93 = *(v6 - 8);
  v94 = v6;
  MEMORY[0x28223BE20](v6);
  v91 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v92 = &v84 - v9;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D3D0, &qword_2154C3BF8);
  MEMORY[0x28223BE20](v109);
  v95 = &v84 - v10;
  v87 = sub_21549E95C();
  v11 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D3D8, &qword_2154C3C00);
  MEMORY[0x28223BE20](v104);
  v85 = &v84 - v13;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D3E0, &qword_2154C3C08);
  MEMORY[0x28223BE20](v107);
  v108 = &v84 - v14;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D3E8, &qword_2154C3C10);
  MEMORY[0x28223BE20](v101);
  v102 = &v84 - v15;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D3F0, &qword_2154C3C18);
  MEMORY[0x28223BE20](v106);
  v103 = &v84 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D3F8, &qword_2154C3C20);
  MEMORY[0x28223BE20](v96);
  v99 = &v84 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D400, &qword_2154C3C28);
  MEMORY[0x28223BE20](v18);
  v20 = &v84 - v19;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D408, &unk_2154C3C30);
  MEMORY[0x28223BE20](v97);
  v84 = &v84 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D410, &qword_2154C5D40);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v84 - v23;
  v25 = sub_21549EB6C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D418, &qword_2154C3C40);
  MEMORY[0x28223BE20](v100);
  v98 = &v84 - v29;
  v30 = v2 + *(v4 + 64);
  v31 = *v30;
  v32 = *(v30 + 1);
  LOBYTE(v116[0]) = v31;
  *(&v116[0] + 1) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40, &unk_2154BFA90);
  sub_2154A0DEC();
  v105 = v2;
  v33 = *v2;
  if (LOBYTE(v115[0]) == 1)
  {
    swift_getKeyPath(byte_2154C3CB8);
    *&v116[0] = v33;
    sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
    sub_21549ED9C();

    v34 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptionModelState;
    swift_beginAccess();
    sub_215324EEC(v33 + v34, v24, &qword_27CA5D410, &qword_2154C5D40);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      sub_2151ADCD8(v24, &qword_27CA5D410, &qword_2154C5D40);
    }

    else
    {
      v38.n128_f64[0] = (*(v26 + 32))(v28, v24, v25);
      if (!sub_215457AE8(v38))
      {
        *v20 = sub_2154A025C();
        *(v20 + 1) = 0;
        v20[16] = 1;
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D558, &qword_2154C3CF0);
        sub_21541479C(v28, v105, &v20[*(v73 + 44)]);
        v74 = sub_2154A06DC();
        v75 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D440, &qword_2154C3C48) + 36)];
        *v75 = v74;
        *(v75 + 8) = 0u;
        *(v75 + 24) = 0u;
        v75[40] = 1;
        KeyPath = swift_getKeyPath(byte_2154C3CF8);
        v77 = &v20[*(v18 + 36)];
        *v77 = KeyPath;
        v77[8] = 1;
        sub_2154A0FAC();
        sub_21549FE4C();
        v78 = v84;
        sub_21533FB7C(v20, v84, &qword_27CA5D400, &qword_2154C3C28);
        v79 = (v78 + *(v97 + 36));
        v80 = v116[5];
        v79[4] = v116[4];
        v79[5] = v80;
        v79[6] = v116[6];
        v81 = v116[1];
        *v79 = v116[0];
        v79[1] = v81;
        v82 = v116[3];
        v79[2] = v116[2];
        v79[3] = v82;
        sub_215324EEC(v78, v99, &qword_27CA5D408, &unk_2154C3C30);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D470, &qword_2154C3C60);
        sub_21541B3D0();
        sub_21541B5CC();
        v41 = v98;
        sub_2154A039C();
        sub_2151ADCD8(v78, &qword_27CA5D408, &unk_2154C3C30);
        (*(v26 + 8))(v28, v25);
LABEL_18:
        v66 = &qword_27CA5D418;
        v67 = &qword_2154C3C40;
        sub_215324EEC(v41, v102, &qword_27CA5D418, &qword_2154C3C40);
        swift_storeEnumTagMultiPayload();
        sub_21541B344();
        sub_21541B6B0();
        v83 = v103;
        sub_2154A039C();
        sub_215324EEC(v83, v108, &qword_27CA5D3F0, &qword_2154C3C18);
        swift_storeEnumTagMultiPayload();
        sub_21541B8AC();
        sub_21541B938();
        sub_2154A039C();
        sub_2151ADCD8(v83, &qword_27CA5D3F0, &qword_2154C3C18);
        v68 = v41;
        return sub_2151ADCD8(v68, v66, v67);
      }

      (*(v26 + 8))(v28, v25);
    }

    v39 = v105;
    v40 = sub_2153F40D8();
    v41 = v98;
    if (v40)
    {
      v42 = sub_2154A0FAC();
      v44 = v43;
      sub_215411E94(v39, v116);
      memcpy(v113, v116, 0x171uLL);
      memcpy(v114, v116, 0x171uLL);
      sub_215324EEC(v113, v115, &qword_27CA5D550, &qword_2154C3CE8);
      sub_2151ADCD8(v114, &qword_27CA5D550, &qword_2154C3CE8);
      memcpy(&v115[2], v113, 0x171uLL);
      v115[0] = v42;
      v115[1] = v44;
      sub_21541BF50(v115);
    }

    else
    {
      v69 = sub_2154A011C();
      LOBYTE(v111[0]) = 1;
      sub_2154126C8(v39, v116);
      memcpy(v113, v116, 0x1A1uLL);
      memcpy(v114, v116, 0x1A1uLL);
      sub_215324EEC(v113, v115, &qword_27CA5D548, &qword_2154C3CE0);
      sub_2151ADCD8(v114, &qword_27CA5D548, &qword_2154C3CE0);
      memcpy(&v112[7], v113, 0x1A1uLL);
      v115[0] = v69;
      v115[1] = 0;
      LOBYTE(v115[2]) = v111[0];
      memcpy(&v115[2] + 1, v112, 0x1A8uLL);
      sub_21541BF44(v115);
    }

    memcpy(v111, v115, 0x1BAuLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D480, &qword_2154C3C68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D490, &qword_2154C3C70);
    sub_2151ACC5C(&qword_27CA5D478, &qword_27CA5D480, &qword_2154C3C68, MEMORY[0x277CE11A8]);
    sub_2151ACC5C(&qword_27CA5D488, &qword_27CA5D490, &qword_2154C3C70, MEMORY[0x277CE1138]);
    sub_2154A039C();
    memcpy(v99, v116, 0x1BAuLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D470, &qword_2154C3C60);
    sub_21541B3D0();
    sub_21541B5CC();
    sub_2154A039C();
    goto LABEL_18;
  }

  swift_getKeyPath(asc_2154C3280);
  *&v116[0] = v33;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v35 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__microphoneState;
  if (*(v33 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__microphoneState) == 1)
  {
    swift_getKeyPath(aH_1);
    *&v116[0] = v33;
    sub_21549ED9C();

    v36 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__canBePlayedBack;
    swift_beginAccess();
    if ((*(v33 + v36) & 1) == 0)
    {
      swift_getKeyPath(asc_2154C3280);
      v115[0] = v33;
      sub_21549ED9C();

      LOBYTE(v115[0]) = *(v33 + v35);
      v70 = v85;
      sub_215412828(v115, v85);
      sub_215324EEC(v70, v102, &qword_27CA5D3D8, &qword_2154C3C00);
      swift_storeEnumTagMultiPayload();
      sub_21541B344();
      sub_21541B6B0();
      v71 = v103;
      sub_2154A039C();
      sub_215324EEC(v71, v108, &qword_27CA5D3F0, &qword_2154C3C18);
      swift_storeEnumTagMultiPayload();
      sub_21541B8AC();
      sub_21541B938();
      sub_2154A039C();
      sub_2151ADCD8(v71, &qword_27CA5D3F0, &qword_2154C3C18);
      return sub_2151ADCD8(v70, &qword_27CA5D3D8, &qword_2154C3C00);
    }
  }

  swift_getKeyPath(byte_2154C32F8);
  v115[0] = v33;
  sub_21549ED9C();

  v37 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isPlaying;
  swift_beginAccess();
  if ((*(v33 + v37) & 1) == 0)
  {
    swift_getKeyPath(byte_2154C31B8);
    v111[0] = v33;
    sub_21549ED9C();

    v45 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
    swift_beginAccess();
    v46 = v33 + v45;
    v48 = v86;
    v47 = v87;
    (*(v11 + 16))(v86, v46, v87);
    (*(v11 + 88))(v48, v47);
    (*(v11 + 8))(v48, v47);
  }

  v49 = v105;
  sub_2153FAC34();
  v51 = v50;
  v52 = v92;
  sub_2154A052C();
  v53 = v90;
  sub_21539B7B8(v49, v90);
  v54 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v55 = (v89 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  sub_21541C94C(v53, v56 + v54, type metadata accessor for RecordingView);
  *(v56 + v55) = v51;
  v58 = v93;
  v57 = v94;
  (*(v93 + 16))(v91, v52, v94);
  v59 = swift_allocObject();
  *(v59 + 16) = sub_21541BE6C;
  *(v59 + 24) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D4F8, &qword_2154C3C98);
  sub_21541DC34(&qword_27CA5D3A0, MEMORY[0x277CDE300], MEMORY[0x277CDE2F8]);
  sub_21541BA74();
  v60 = v95;
  sub_21549FABC();
  (*(v58 + 8))(v52, v57);
  v61 = swift_getKeyPath(byte_2154C3958);
  v62 = (v60 + *(v109 + 36));
  v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D0E0, &qword_2154C3988) + 28);
  v64 = *MEMORY[0x277CDFA88];
  v65 = sub_21549FD5C();
  (*(*(v65 - 8) + 104))(v62 + v63, v64, v65);
  *v62 = v61;
  v66 = &qword_27CA5D3D0;
  v67 = &qword_2154C3BF8;
  sub_215324EEC(v60, v108, &qword_27CA5D3D0, &qword_2154C3BF8);
  swift_storeEnumTagMultiPayload();
  sub_21541B8AC();
  sub_21541B938();
  sub_2154A039C();
  v68 = v60;
  return sub_2151ADCD8(v68, v66, v67);
}

uint64_t sub_2153F65A4@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = sub_2154A05DC();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecordingView(0);
  v44 = *(v5 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFA0, &qword_2154C3850);
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFA8, &qword_2154C3858);
  MEMORY[0x28223BE20](v47);
  v11 = &v43 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFB0, &qword_2154C3860);
  MEMORY[0x28223BE20](v48);
  v51 = &v43 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFB8, &qword_2154C3868);
  MEMORY[0x28223BE20](v56);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v53 = &v43 - v16;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFC0, &qword_2154C3870);
  MEMORY[0x28223BE20](v54);
  v18 = &v43 - v17;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFC8, &qword_2154C3878);
  MEMORY[0x28223BE20](v55);
  v20 = &v43 - v19;
  v52 = v5;
  v21 = v1 + *(v5 + 64);
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v59) = v22;
  *(&v59 + 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFD0, &qword_2154C3880);
  sub_2154A0DEC();
  if (v58)
  {
    sub_21539B7B8(v1, &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v25 = swift_allocObject();
    sub_21541C94C(&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for RecordingView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFD8, &qword_2154C3888);
    sub_2151ACC5C(&qword_27CA5CFE0, &qword_27CA5CFD8, &qword_2154C3888, MEMORY[0x277CE1138]);
    sub_2154A0E3C();
    sub_2154A05CC();
    sub_2151ACC5C(&qword_27CA5CFE8, &qword_27CA5CFA0, &qword_2154C3850, MEMORY[0x277CDF028]);
    sub_21541DC34(&qword_27CA5CFF0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    v26 = v46;
    v27 = v50;
    sub_2154A09DC();
    (*(v49 + 8))(v4, v27);
    (*(v45 + 8))(v9, v26);
    v28 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFF8, &qword_2154C3890) + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B8E8, &qword_2154C3470);
    sub_21549FE7C();
    *v28 = swift_getKeyPath(aP_5);
    v29 = sub_2154A0CAC();
    KeyPath = swift_getKeyPath(byte_2154C3898);
    v31 = &v11[*(v47 + 36)];
    *v31 = KeyPath;
    v31[1] = v29;
    v32 = v1 + *(v52 + 244);
    v33 = *v32;
    v34 = *(v32 + 1);
    LOBYTE(v59) = v33;
    *(&v59 + 1) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40, &unk_2154BFA90);
    sub_2154A0DEC();
    if (v58)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = 1.0;
    }

    v36 = v51;
    sub_21533FB7C(v11, v51, &qword_27CA5CFA8, &qword_2154C3858);
    *(v36 + *(v48 + 36)) = v35;
    sub_2154A06FC();
    v59 = 0u;
    v60 = 0u;
    v61 = 1;
    sub_2154A04FC();
    sub_21533FB7C(v36, v14, &qword_27CA5CFB0, &qword_2154C3860);
    v37 = &qword_27CA5CFB8;
    v38 = &qword_2154C3868;
    v39 = v53;
    sub_21533FB7C(v14, v53, &qword_27CA5CFB8, &qword_2154C3868);
    sub_215324EEC(v39, v18, &qword_27CA5CFB8, &qword_2154C3868);
    swift_storeEnumTagMultiPayload();
    sub_2151ACC5C(&qword_27CA5D000, &qword_27CA5CFC8, &qword_2154C3878, MEMORY[0x277CE1198]);
    sub_21541960C();
    sub_2154A039C();
    v40 = v39;
  }

  else
  {
    *v20 = sub_2154A025C();
    *(v20 + 1) = 0;
    v20[16] = 0;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D040, &qword_2154C38D0);
    sub_2154006F0(v1, &v20[*(v41 + 44)]);
    v37 = &qword_27CA5CFC8;
    v38 = &qword_2154C3878;
    sub_215324EEC(v20, v18, &qword_27CA5CFC8, &qword_2154C3878);
    swift_storeEnumTagMultiPayload();
    sub_2151ACC5C(&qword_27CA5D000, &qword_27CA5CFC8, &qword_2154C3878, MEMORY[0x277CE1198]);
    sub_21541960C();
    sub_2154A039C();
    v40 = v20;
  }

  return sub_2151ADCD8(v40, v37, v38);
}

uint64_t sub_2153F6DBC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA80, &qword_2154C33A8);
  MEMORY[0x28223BE20](v77);
  v75 = &v61 - v3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C9F0, &qword_2154C31B0);
  v4 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v78 = &v61 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA88, &qword_2154C33B0);
  v73 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v66 = &v61 - v6;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA90, &qword_2154C33B8);
  v64 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v8 = &v61 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA98, &qword_2154C33C0);
  MEMORY[0x28223BE20](v71);
  v10 = &v61 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C9E0, &qword_2154C31A8);
  v74 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v72 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CAA0, &qword_2154C33C8);
  v69 = *(v12 - 8);
  v70 = v12;
  MEMORY[0x28223BE20](v12);
  v67 = &v61 - v13;
  v14 = sub_21549FAAC();
  MEMORY[0x28223BE20](v14 - 8);
  v80 = sub_21549FBAC();
  v65 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2154A040C();
  MEMORY[0x28223BE20](v17 - 8);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CAA8, &qword_2154C33D0);
  v63 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v19 = &v61 - v18;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C9C8, &qword_2154C31A0);
  MEMORY[0x28223BE20](v82);
  v81 = &v61 - v20;
  if (sub_2153F40D8())
  {
    v21 = sub_2154A03BC();
    MEMORY[0x28223BE20](v21);
    v80 = v4;
    *(&v61 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CC30, &qword_2154C3490);
    sub_215417D84();
    sub_21549FA4C();
    v22 = sub_2154A03CC();
    MEMORY[0x28223BE20](v22);
    *(&v61 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CC50, &qword_2154C34A0);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CC58, &qword_2154C34A8);
    v24 = sub_215417F7C();
    v86 = v23;
    v87 = v24;
    swift_getOpaqueTypeConformance2();
    v25 = v66;
    sub_21549FA4C();
    v26 = *(v77 + 48);
    v27 = v64;
    v28 = v75;
    v29 = v68;
    (*(v64 + 16))(v75, v8, v68);
    v30 = v73;
    v31 = v76;
    (*(v73 + 16))(&v28[v26], v25, v76);
    v32 = v78;
    sub_2154A029C();
    v33 = MEMORY[0x277CDDF68];
    v34 = sub_2151ACC5C(&qword_27CA5C9D8, &qword_27CA5C9E0, &qword_2154C31A8, MEMORY[0x277CDDF68]);
    v35 = sub_2151ACC5C(&qword_27CA5C9E8, &qword_27CA5C9F0, &qword_2154C31B0, v33);
    v36 = v81;
    v37 = v84;
    MEMORY[0x216067010](v32, v83, v84, v34, v35);
    (*(v80 + 8))(v32, v37);
    (*(v30 + 8))(v25, v31);
    (*(v27 + 8))(v8, v29);
  }

  else
  {
    v38 = sub_2154A03CC();
    MEMORY[0x28223BE20](v38);
    *(&v61 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CAB0, &qword_2154C33D8);
    sub_2154171F4();
    v39 = v19;
    v61 = v19;
    sub_21549FA4C();
    sub_21549FA9C();
    sub_2154A03CC();
    v62 = v16;
    sub_21549FBBC();
    v40 = sub_2154A03CC();
    v78 = &v61;
    MEMORY[0x28223BE20](v40);
    *(&v61 - 2) = a1;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CB58, &qword_2154C3420);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CB60, &qword_2154C3428);
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CB68, &qword_2154C3430);
    v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BE90, &qword_2154C1DA0);
    v44 = sub_21541776C();
    v45 = sub_2151ACC5C(&qword_27CA5CB50, &qword_27CA5BE90, &qword_2154C1DA0, MEMORY[0x277D83660]);
    v86 = v42;
    v87 = v43;
    v88 = v44;
    v89 = v45;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v86 = v41;
    v87 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v47 = v67;
    sub_21549FA4C();
    v48 = *(v71 + 48);
    v49 = *(v71 + 64);
    v50 = v63;
    (*(v63 + 16))(v10, v39, v79);
    v51 = v65;
    (*(v65 + 16))(&v10[v48], v62, v80);
    v53 = v69;
    v52 = v70;
    (*(v69 + 16))(&v10[v49], v47, v70);
    v54 = v72;
    sub_2154A029C();
    v55 = MEMORY[0x277CDDF68];
    v56 = sub_2151ACC5C(&qword_27CA5C9D8, &qword_27CA5C9E0, &qword_2154C31A8, MEMORY[0x277CDDF68]);
    v57 = sub_2151ACC5C(&qword_27CA5C9E8, &qword_27CA5C9F0, &qword_2154C31B0, v55);
    v36 = v81;
    v58 = v83;
    MEMORY[0x216067000](v54, v83, v84, v56, v57);
    (*(v74 + 8))(v54, v58);
    (*(v53 + 8))(v47, v52);
    (*(v51 + 8))(v62, v80);
    (*(v50 + 8))(v61, v79);
  }

  v59 = sub_215416848();
  MEMORY[0x216066FF0](v36, v82, v59);
  return sub_2151ADCD8(v36, &qword_27CA5C9C8, &qword_2154C31A0);
}

uint64_t sub_2153F7970@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE88, &qword_2154C1D98);
  MEMORY[0x28223BE20](v43);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v8 = sub_21549FCFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE90, &qword_2154C1DA0);
  MEMORY[0x28223BE20](v42);
  v41 = &v39 - v14;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CAC0, &unk_2154C33E0);
  MEMORY[0x28223BE20](v45);
  v46 = &v39 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF40, &qword_2154C37E0);
  v47 = *(v16 - 8);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v40 = &v39 - v18;
  v19 = *a1;
  swift_getKeyPath(asc_2154C37E8, v17);
  *&v49 = v19;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v20 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__showTranscriptToggle;
  swift_beginAccess();
  if (*(v19 + v20) != 1)
  {
    v38 = 1;
    v37 = v47;
    v36 = v48;
    return (*(v37 + 56))(v36, v38, 1, v16);
  }

  v21 = v46;
  sub_2153F7F6C(v46);
  type metadata accessor for RecordingView(0);
  sub_2154A0FAC();
  sub_21549FAFC();
  v22 = (v21 + *(v45 + 36));
  v23 = v50;
  *v22 = v49;
  v22[1] = v23;
  v22[2] = v51;
  v24 = v9[13];
  v24(v13, *MEMORY[0x277CDF9E8], v8);
  v25 = v44;
  v24(v44, *MEMORY[0x277CDFA10], v8);
  sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  result = sub_2154A1CDC();
  if (result)
  {
    v27 = v9[4];
    v28 = v8;
    v27(v7, v13, v8);
    v39 = v16;
    v29 = v43;
    v27(&v7[*(v43 + 48)], v25, v8);
    sub_215324EEC(v7, v4, &qword_27CA5BE88, &qword_2154C1D98);
    v30 = *(v29 + 48);
    v31 = v41;
    v27(v41, v4, v28);
    v32 = v9[1];
    v32(&v4[v30], v28);
    sub_21533FB7C(v7, v4, &qword_27CA5BE88, &qword_2154C1D98);
    v33 = *(v29 + 48);
    v16 = v39;
    v27((v31 + *(v42 + 36)), &v4[v33], v28);
    v32(v4, v28);
    sub_215417314();
    sub_2151ACC5C(&qword_27CA5CB50, &qword_27CA5BE90, &qword_2154C1DA0, MEMORY[0x277D83660]);
    v34 = v40;
    v35 = v46;
    sub_2154A0A5C();
    sub_2151ADCD8(v31, &qword_27CA5BE90, &qword_2154C1DA0);
    sub_2151ADCD8(v35, &unk_27CA5CAC0, &unk_2154C33E0);
    v37 = v47;
    v36 = v48;
    (*(v47 + 32))(v48, v34, v16);
    v38 = 0;
    return (*(v37 + 56))(v36, v38, 1, v16);
  }

  __break(1u);
  return result;
}

uint64_t sub_2153F7F6C@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v3 = sub_2154A055C();
  v4 = *(v3 - 8);
  v59 = v3;
  v60 = v4;
  MEMORY[0x28223BE20](v3);
  v58 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecordingView(0);
  v56 = *(v6 - 8);
  v55 = *(v56 + 64);
  v7 = v6 - 8;
  v57 = v6 - 8;
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2154A014C();
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CB18, &qword_2154C3410);
  v11 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v13 = &v48 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CAF8, &qword_2154C3400);
  MEMORY[0x28223BE20](v53);
  v15 = &v48 - v14;
  v16 = *(v7 + 64);
  v49 = v2;
  v17 = (v2 + v16);
  v18 = *v17;
  v19 = *(v17 + 1);
  v63 = v18;
  v64 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40, &unk_2154BFA90);
  sub_2154A0E0C();
  v62 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF48, &qword_2154C3810);
  sub_2151ACC5C(&qword_27CA5CF50, &qword_27CA5CF48, &qword_2154C3810, MEMORY[0x277CDEFF0]);
  sub_2154A0E8C();
  sub_2154A013C();
  sub_2151ACC5C(&unk_27CA5CB20, &qword_27CA5CB18, &qword_2154C3410, MEMORY[0x277CDF068]);
  sub_21541DC34(&qword_27CA5B608, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v20 = v50;
  v21 = v51;
  sub_2154A09CC();
  (*(v52 + 8))(v10, v21);
  (*(v11 + 8))(v13, v20);
  v22 = v54;
  sub_21539B7B8(v49, v54);
  v23 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v24 = swift_allocObject();
  sub_21541C94C(v22, v24 + v23, type metadata accessor for RecordingView);
  v25 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CB10, &qword_2154C3408) + 36)];
  *v25 = sub_21541E304;
  *(v25 + 1) = v24;
  v15[*(v53 + 36)] = 0;
  v26 = v58;
  sub_2154A054C();
  sub_215417544();
  sub_21541DC34(&qword_27CA5B8E0, MEMORY[0x277CDE340], MEMORY[0x277CDE338]);
  v27 = v61;
  v28 = v59;
  sub_2154A09DC();
  (*(v60 + 8))(v26, v28);
  sub_2151ADCD8(v15, &qword_27CA5CAF8, &qword_2154C3400);
  LOBYTE(v24) = sub_2154A06CC();
  sub_21549F99C();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CAF0, &qword_2154C33F8) + 36);
  *v37 = v24;
  *(v37 + 8) = v30;
  *(v37 + 16) = v32;
  *(v37 + 24) = v34;
  *(v37 + 32) = v36;
  *(v37 + 40) = 0;
  LOBYTE(v24) = sub_2154A073C();
  sub_21549F99C();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CAE0, &qword_2154C33F0);
  v47 = v27 + *(result + 36);
  *v47 = v24;
  *(v47 + 8) = v39;
  *(v47 + 16) = v41;
  *(v47 + 24) = v43;
  *(v47 + 32) = v45;
  *(v47 + 40) = 0;
  return result;
}

uint64_t sub_2153F85B0@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE88, &qword_2154C1D98);
  MEMORY[0x28223BE20](v80);
  v79 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v77 = &v72 - v4;
  v93 = sub_21549FCFC();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v94 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v91 = &v72 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE90, &qword_2154C1DA0);
  MEMORY[0x28223BE20](v78);
  v76 = &v72 - v8;
  v89 = sub_21549FDFC();
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2154A014C();
  v86 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CBB8, &unk_2154C3460);
  v84 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v13 = &v72 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CBA8, &qword_2154C3458);
  MEMORY[0x28223BE20](v82);
  v15 = &v72 - v14;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CB78, &qword_2154C3438);
  MEMORY[0x28223BE20](v99);
  v97 = &v72 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CB68, &qword_2154C3430);
  MEMORY[0x28223BE20](v96);
  v95 = &v72 - v17;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CB60, &qword_2154C3428);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v72 - v18;
  v98 = v1;
  v103 = v1;
  v102 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CDE0, &qword_2154C3680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CDE8, &qword_2154C3688);
  sub_2151ACC5C(&qword_27CA5CDF0, &qword_27CA5CDE0, &qword_2154C3680, MEMORY[0x277CDEFF0]);
  v88 = MEMORY[0x277CE14C0];
  sub_2151ACC5C(&qword_27CA5CDF8, &qword_27CA5CDE8, &qword_2154C3688, MEMORY[0x277CE14C0]);
  sub_2154A087C();
  sub_2154A013C();
  sub_2151ACC5C(&qword_27CA5CBC0, &qword_27CA5CBB8, &unk_2154C3460, MEMORY[0x277CDE5B0]);
  sub_21541DC34(&qword_27CA5B608, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v19 = v83;
  v20 = v85;
  sub_2154A09CC();
  (*(v86 + 8))(v11, v20);
  (*(v84 + 8))(v13, v19);
  *&v15[*(v82 + 36)] = sub_2154A049C();
  v21 = v87;
  sub_21549FDEC();
  sub_215417AFC();
  sub_21541DC34(&qword_27CA5CBD8, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
  v22 = v97;
  v23 = v89;
  sub_2154A09DC();
  (*(v90 + 8))(v21, v23);
  sub_2151ADCD8(v15, &qword_27CA5CBA8, &qword_2154C3458);
  v24 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CBA0, &qword_2154C3450) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B8E8, &qword_2154C3470);
  sub_21549FE6C();
  *v24 = swift_getKeyPath(aP_5);
  KeyPath = swift_getKeyPath(byte_2154C3690);
  v26 = &v22[*(v99 + 36)];
  *v26 = KeyPath;
  v26[8] = 2;
  v27 = [objc_opt_self() mainBundle];
  v28 = sub_2154A1D2C();
  v29 = [v27 localizedStringForKey:v28 value:0 table:0];

  v30 = sub_2154A1D6C();
  v32 = v31;

  v110 = v30;
  v111 = v32;
  v90 = type metadata accessor for RecordingView(0);
  v33 = v98;
  v34 = (v98 + *(v90 + 68));
  v35 = *v34;
  v36 = *(v34 + 1);
  v108 = v35;
  v109 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40, &unk_2154BFA90);
  sub_2154A0E0C();
  v101 = v33;
  v100 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CB80, &qword_2154C3440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CB88, &qword_2154C3448);
  sub_215417900();
  sub_215324954();
  sub_2151ACC5C(&qword_27CA5CC00, &qword_27CA5CB80, &qword_2154C3440, v88);
  sub_215417C74();
  v37 = v92;
  v38 = v93;
  v39 = v91;
  v40 = v95;
  v41 = v97;
  sub_2154A0BBC();

  sub_2151ADCD8(v41, &qword_27CA5CB78, &qword_2154C3438);
  v42 = (v98 + *(v90 + 228));
  v44 = *v42;
  v43 = v42[1];
  v104 = v44;
  v105 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE00, &unk_2154BEEE0);
  sub_2154A0DEC();
  v45 = &v40[*(v96 + 36)];
  sub_21549F49C();
  v46 = sub_2154A0FAC();
  v48 = v47;
  v49 = &v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC90, &qword_2154C17C8) + 36)];
  *v49 = v46;
  v49[1] = v48;
  v50 = v37;
  v51 = v37;
  v52 = v94;
  v53 = *(v51 + 104);
  v53(v39, *MEMORY[0x277CDF9E8], v38);
  v53(v52, *MEMORY[0x277CDF9A8], v38);
  sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v54 = v38;
  result = sub_2154A1CDC();
  if (result)
  {
    v56 = *(v50 + 32);
    v57 = v77;
    v58 = v38;
    v56(v77, v39, v38);
    v59 = v80;
    v56((v57 + *(v80 + 48)), v52, v54);
    v60 = v79;
    sub_215324EEC(v57, v79, &qword_27CA5BE88, &qword_2154C1D98);
    v61 = *(v59 + 48);
    v62 = v76;
    v56(v76, v60, v58);
    v63 = *(v50 + 8);
    v63(v60 + v61, v58);
    sub_21533FB7C(v57, v60, &qword_27CA5BE88, &qword_2154C1D98);
    v64 = *(v59 + 48);
    v65 = v78;
    v56((v62 + *(v78 + 36)), (v60 + v64), v58);
    v63(v60, v58);
    v66 = sub_21541776C();
    v67 = sub_2151ACC5C(&qword_27CA5CB50, &qword_27CA5BE90, &qword_2154C1DA0, MEMORY[0x277D83660]);
    v68 = v73;
    v69 = v96;
    v70 = v95;
    sub_2154A0A5C();
    sub_2151ADCD8(v62, &qword_27CA5BE90, &qword_2154C1DA0);
    sub_2151ADCD8(v70, &qword_27CA5CB68, &qword_2154C3430);
    v104 = v69;
    v105 = v65;
    v106 = v66;
    v107 = v67;
    swift_getOpaqueTypeConformance2();
    v71 = v75;
    sub_2154A0B7C();
    return (*(v74 + 8))(v68, v71);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2153F934C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CC48, &qword_2154C3498);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-v6];
  v8 = sub_21549FCFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v20[-v13];
  if ((sub_2153F40D8() & 1) != 0 && (sub_2153F3BA0(v14), (*(v9 + 104))(v11, *MEMORY[0x277CDF988], v8), sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]), v21 = sub_2154A1CCC(), v15 = *(v9 + 8), v15(v11, v8), v15(v14, v8), (v21 & 1) == 0))
  {
    v18 = 1;
  }

  else
  {
    sub_2153F85B0(v7);
    v16 = *(a1 + *(type metadata accessor for RecordingView(0) + 92));
    v17 = &v7[*(v4 + 36)];
    *v17 = 0;
    v17[1] = v16;
    sub_21533FB7C(v7, a2, &qword_27CA5CC48, &qword_2154C3498);
    v18 = 0;
  }

  return (*(v5 + 56))(a2, v18, 1, v4);
}

uint64_t sub_2153F9604(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CC58, &qword_2154C34A8);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - v2;
  sub_21540999C();
  v4 = sub_2154A0CDC();
  *&v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CC70, &qword_2154C34B0) + 36)] = v4;
  v5 = sub_2154A083C();
  KeyPath = swift_getKeyPath(byte_2154C3538);
  v7 = &v3[*(v1 + 36)];
  *v7 = KeyPath;
  v7[1] = v5;
  sub_2154A07CC();
  sub_215417F7C();
  sub_2154A09BC();
  return sub_2151ADCD8(v3, &qword_27CA5CC58, &qword_2154C34A8);
}

void sub_2153F9720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RecordingView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0, &qword_2154BED90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA70, &qword_2154C3390);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_21549E95C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a2, v15, v17);
  if ((*(v16 + 88))(v19, v15) == *MEMORY[0x277D359D8])
  {
    (*(v16 + 96))(v19, v15);
    v20 = swift_projectBox();
    sub_215324EEC(v20, v14, &unk_27CA5EA70, &qword_2154C3390);
    (*(v16 + 8))(v14, v15);

    v21 = sub_2154A202C();
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    sub_21539B7B8(a3, &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_2154A1FFC();
    v22 = sub_2154A1FEC();
    v23 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    *(v24 + 16) = v22;
    *(v24 + 24) = v25;
    sub_21541C94C(v8, v24 + v23, type metadata accessor for RecordingView);
    sub_2152F4D50(0, 0, v11, &unk_2154C33A0, v24);
  }

  else
  {
    (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_2153F9A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v4[14] = sub_2154A1FFC();
  v4[15] = sub_2154A1FEC();
  v5 = swift_task_alloc();
  v4[16] = v5;
  *v5 = v4;
  v5[1] = sub_2153F9B40;

  return sub_2153F9EB8();
}

uint64_t sub_2153F9B40()
{

  v1 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_2153F9C7C, v1, v0);
}

uint64_t sub_2153F9C7C()
{
  v1 = *(v0 + 104);

  v2 = type metadata accessor for RecordingView(0);
  v3 = (v1 + v2[63]);
  v4 = *v3;
  v5 = v3[1];
  *(v0 + 88) = 0x3FF0000000000000;
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA78, &qword_2154C3320);
  sub_2154A0DFC();
  v6 = *v1;
  v7 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__needsSeekToTime;
  swift_beginAccess();
  if (*(v6 + v7) == 1)
  {
    *(v6 + v7) = 1;
  }

  else
  {
    swift_getKeyPath(asc_2154C32A8);
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = 1;
    *(v0 + 96) = v6;
    sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
    sub_21549ED8C();
  }

  v9 = *(v0 + 104);
  v10 = (v9 + v2[64]);
  v11 = *v10;
  v12 = *(v10 + 1);
  *(v0 + 56) = v11;
  *(v0 + 64) = v12;
  *(v0 + 136) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40, &unk_2154BFA90);
  sub_2154A0DFC();
  v13 = (v9 + v2[65]);
  v14 = *v13;
  v15 = *(v13 + 1);
  *(v0 + 72) = v14;
  *(v0 + 80) = v15;
  *(v0 + 137) = 0;
  sub_2154A0DFC();
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2153F9EB8()
{
  v1[5] = v0;
  sub_2154A1FFC();
  v1[6] = sub_2154A1FEC();
  v3 = sub_2154A1FCC();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_2153F9F50, v3, v2);
}

uint64_t sub_2153F9F50()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_2153F9FE4;

  return sub_215460864();
}

uint64_t sub_2153F9FE4(double a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = *(v4 + 56);
    v6 = *(v4 + 64);
    v7 = sub_2153FA1C0;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = *(v4 + 56);
    v6 = *(v4 + 64);
    v7 = sub_2153FA108;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2153FA108()
{
  v1 = v0[11];
  v2 = v0[5];

  v3 = (v2 + *(type metadata accessor for RecordingView(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA68, &unk_2154C3248);
  sub_2154A0DFC();
  v6 = v0[1];

  return v6();
}

uint64_t sub_2153FA1C0()
{

  if (qword_27CA598D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_21549F11C();
  __swift_project_value_buffer(v2, qword_27CA5C850);
  v3 = v1;
  v4 = sub_21549F0FC();
  v5 = sub_2154A226C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2151A1000, v4, v5, "Failed to load asset duration: %@", v8, 0xCu);
    sub_2151ADCD8(v9, &unk_27CA59E90, &qword_2154BEB40);
    MEMORY[0x21606B520](v9, -1, -1);
    MEMORY[0x21606B520](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

void sub_2153FA36C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for RecordingView(0);
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0, &qword_2154BED90);
  MEMORY[0x28223BE20](v5 - 8);
  v28 = &v26 - v6;
  v7 = sub_21549E95C();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  swift_getKeyPath(byte_2154C31B8, v9);
  v31 = v12;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v13 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v8 + 16))(v11, v12 + v13, v7);
  LODWORD(v13) = (*(v8 + 88))(v11, v7);
  v14 = *MEMORY[0x277D359D0];
  (*(v8 + 8))(v11, v7);
  if (v13 == v14)
  {
    swift_getKeyPath(byte_2154C32F8);
    v30 = v12;
    sub_21549ED9C();

    v15 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isPlaying;
    swift_beginAccess();
    if ((*(v12 + v15) & 1) == 0)
    {
      sub_2153FA748();
      v17 = v16;
      sub_2153FAC34();
      if (v17 == v18)
      {
        v19 = sub_2154A202C();
        v20 = v28;
        (*(*(v19 - 8) + 56))(v28, 1, 1, v19);
        v21 = v29;
        sub_21539B7B8(a2, v29);
        sub_2154A1FFC();
        v22 = sub_2154A1FEC();
        v23 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v24 = swift_allocObject();
        v25 = MEMORY[0x277D85700];
        *(v24 + 16) = v22;
        *(v24 + 24) = v25;
        sub_21541C94C(v21, v24 + v23, type metadata accessor for RecordingView);
        sub_2152F4D50(0, 0, v20, &unk_2154C3388, v24);
      }
    }
  }
}

void sub_2153FA748()
{
  v1 = v0;
  v2 = sub_21549E95C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecordingView(0);
  v7 = v0 + v6[65];
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v31) = v8;
  v32 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40, &unk_2154BFA90);
  sub_2154A0DEC();
  if (v29 == 1)
  {
    sub_2153FAC34();
    return;
  }

  v10 = *v0;
  swift_getKeyPath(byte_2154C31B8);
  v31 = v10;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v11 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v3 + 16))(v5, v10 + v11, v2);
  LODWORD(v11) = (*(v3 + 88))(v5, v2);
  v12 = *MEMORY[0x277D359E8];
  (*(v3 + 8))(v5, v2);
  if (v11 == v12)
  {
    v13 = (v1 + v6[13]);
    v14 = *v13;
    v15 = v13[1];
    v29 = v14;
    v30 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA68, &unk_2154C3248);
    sub_2154A0DEC();
    swift_getKeyPath(byte_2154C3328);
    v29 = v10;
    sub_21549ED9C();

    swift_beginAccess();
    swift_getKeyPath(byte_2154C3350);
    v27 = v10;
    sub_21549ED9C();

    v16 = *(v10 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager);
    sub_21549F6EC();

    return;
  }

  swift_getKeyPath(asc_2154C32A8);
  v29 = v10;
  sub_21549ED9C();

  v17 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__needsSeekToTime;
  swift_beginAccess();
  if (*(v10 + v17) == 1)
  {
    sub_2153FAC34();
    v18 = (v1 + v6[63]);
    v19 = *v18;
    v20 = v18[1];
    v27 = v19;
    v28 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA78, &qword_2154C3320);
    sub_2154A0DEC();
    return;
  }

  swift_getKeyPath(byte_2154C32F8);
  v27 = v10;
  sub_21549ED9C();

  v21 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isPlaying;
  swift_beginAccess();
  if (*(v10 + v21) != 1)
  {
LABEL_12:
    swift_getKeyPath(asc_2154C32D0);
    v26 = v10;
    sub_21549ED9C();

    swift_beginAccess();
    return;
  }

  v22 = [objc_opt_self() sharedAudioController];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 currentPlayer];

    if (v24)
    {
      [v24 currentTime];

      if (sub_2154A288C(v25))
      {
        sub_2154A287C();
        return;
      }
    }

    goto LABEL_12;
  }

  __break(1u);
}

void sub_2153FAC34()
{
  v1 = v0;
  v2 = sub_21549E95C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecordingView(0);
  v7 = v0 + *(v6 + 260);
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v24) = v8;
  v25 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40, &unk_2154BFA90);
  sub_2154A0DEC();
  if (v21 == 1)
  {
    v10 = (v0 + *(v6 + 52));
    v11 = *v10;
    v12 = v10[1];
    v24 = v11;
    v25 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA68, &unk_2154C3248);
    sub_2154A0DEC();
  }

  else
  {
    v13 = *v0;
    swift_getKeyPath(byte_2154C31B8);
    v24 = v13;
    sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
    sub_21549ED9C();

    v14 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
    swift_beginAccess();
    (*(v3 + 16))(v5, v13 + v14, v2);
    LODWORD(v14) = (*(v3 + 88))(v5, v2);
    v15 = *MEMORY[0x277D359E8];
    (*(v3 + 8))(v5, v2);
    v16 = (v1 + *(v6 + 52));
    v17 = *v16;
    v18 = v16[1];
    v21 = v17;
    v22 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA68, &unk_2154C3248);
    sub_2154A0DEC();
    if (v14 == v15)
    {
      swift_getKeyPath(byte_2154C3328);
      v21 = v13;
      sub_21549ED9C();

      swift_beginAccess();
      swift_getKeyPath(byte_2154C3350);
      v23 = v13;
      sub_21549ED9C();

      v19 = *(v13 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager);
      sub_21549F71C();
    }
  }
}

uint64_t sub_2153FAF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v4[12] = sub_2154A1FFC();
  v4[13] = sub_2154A1FEC();
  v5 = swift_task_alloc();
  v4[14] = v5;
  *v5 = v4;
  v5[1] = sub_2153FB048;

  return sub_2153F9EB8();
}

uint64_t sub_2153FB048()
{

  v1 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_2153FB184, v1, v0);
}

uint64_t sub_2153FB184()
{
  v1 = *(v0 + 88);

  v2 = type metadata accessor for RecordingView(0);
  v3 = (v1 + *(v2 + 252));
  v4 = *v3;
  v5 = v3[1];
  *(v0 + 72) = 0x3FF0000000000000;
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA78, &qword_2154C3320);
  sub_2154A0DFC();
  v6 = *v1;
  v7 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__needsSeekToTime;
  swift_beginAccess();
  if (*(v6 + v7) == 1)
  {
    *(v6 + v7) = 1;
  }

  else
  {
    swift_getKeyPath(asc_2154C32A8);
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = 1;
    *(v0 + 80) = v6;
    sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
    sub_21549ED8C();
  }

  v9 = (*(v0 + 88) + *(v2 + 256));
  v10 = *v9;
  v11 = *(v9 + 1);
  *(v0 + 56) = v10;
  *(v0 + 64) = v11;
  *(v0 + 120) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40, &unk_2154BFA90);
  sub_2154A0DFC();
  v12 = *(v0 + 8);

  return v12();
}

id sub_2153FB390(uint64_t *a1)
{
  v2 = sub_21549E95C();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_getKeyPath(byte_2154C31B8, v4);
  v13[1] = v7;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v8 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v3 + 16))(v6, v7 + v8, v2);
  LODWORD(v8) = (*(v3 + 88))(v6, v2);
  v9 = *MEMORY[0x277D359D0];
  (*(v3 + 8))(v6, v2);
  if (v8 != v9)
  {
    return sub_2153FB5C0();
  }

  result = [objc_opt_self() sharedAudioController];
  if (result)
  {
    v11 = result;
    result = [*(v7 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
    if (result)
    {
      v12 = result;
      [v11 prepareToPlayAttachment_];

      return sub_2153FB5C0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2153FB5C0()
{
  v1 = sub_21549E95C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v18[-v7];
  v9 = *v0;
  swift_getKeyPath(byte_2154C31B8, v6);
  v21 = v9;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v10 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  v11 = *(v2 + 16);
  v11(v8, v9 + v10, v1);
  v11(v4, v8, v1);
  v12 = (*(v2 + 88))(v4, v1);
  if (v12 == *MEMORY[0x277D359E8])
  {
    (*(v2 + 8))(v4, v1);

    sub_21549F33C();

    v13 = v20;
    v14 = 1;
LABEL_5:
    v19 = v14;
    goto LABEL_12;
  }

  if (v12 == *MEMORY[0x277D359D8])
  {
    (*(v2 + 8))(v4, v1);

    sub_21549F33C();

    v13 = v20;
    v14 = 2;
    goto LABEL_5;
  }

  if (v12 != *MEMORY[0x277D359D0] && v12 != *MEMORY[0x277D359E0])
  {
    result = sub_2154A2EDC();
    __break(1u);
    return result;
  }

  sub_21549F33C();

  v13 = v20;
  v19 = 0;
LABEL_12:
  v20 = v13;

  sub_21549F34C();

  v16 = sub_215410CB4() & 1;

  sub_21549F33C();

  if (v16 != v20)
  {

    sub_21549F33C();

    v20 = v16;

    sub_21549F34C();
  }

  return (*(v2 + 8))(v8, v1);
}

uint64_t sub_2153FB9A8(uint64_t a1)
{
  type metadata accessor for RecordingView(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v2 viewWasDismissed];
    }

    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40, &unk_2154BFA90);
  return sub_2154A0DFC();
}

void sub_2153FBA64(uint64_t a1, void *a2)
{
  v3 = sub_21549FB6C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for RecordingView(0);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E17C();
  if (v22)
  {
    sub_2151A6C9C(0, &qword_281199690, 0x277D35E00);
    if (swift_dynamicCast())
    {
      v10 = v20[1];
      v11 = [*(*a2 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
      if (v11)
      {
        v12 = v11;
        sub_2151A6C9C(0, &qword_281199490, 0x277D82BB8);
        v13 = sub_2154A291C();

        if (v13)
        {
          if (qword_27CA598D0 != -1)
          {
            swift_once();
          }

          v14 = sub_21549F11C();
          __swift_project_value_buffer(v14, qword_27CA5C850);
          v15 = sub_21549F0FC();
          v16 = sub_2154A224C();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 0;
            _os_log_impl(&dword_2151A1000, v15, v16, "Attachment was deleted. Dismissing audio inspector.", v17, 2u);
            MEMORY[0x21606B520](v17, -1, -1);
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v19 = Strong;
            if ([Strong respondsToSelector_])
            {
              sub_21539B7B8(a2, v9);
              [v19 recordingDetailViewShouldDismiss_];
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
          }

          sub_2153F37B0(v6);
          sub_21549FB5C();

          (*(v4 + 8))(v6, v3);
        }

        else
        {
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_2151ADCD8(v21, &qword_27CA5ABC0, &unk_2154BE110);
  }
}

uint64_t sub_2153FBD9C()
{
  v0[2] = sub_2154A1FFC();
  v0[3] = sub_2154A1FEC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2153FBE48;

  return sub_2153F9EB8();
}

uint64_t sub_2153FBE48()
{

  v1 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_2153FBF84, v1, v0);
}

uint64_t sub_2153FBF84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2153FBFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RecordingView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA38, &unk_2154C3210);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19[-v10];
  v12 = (a1 + *(v5 + 224));
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v20) = v13;
  v21 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40, &unk_2154BFA90);
  sub_2154A0DEC();
  if (v19[15] == 1)
  {
    v20 = sub_2154A0D1C();
    LOBYTE(v21) = 0;
    sub_21539B7B8(a1, &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v16 = swift_allocObject();
    sub_21541C94C(&v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v15, type metadata accessor for RecordingView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA48, &qword_2154C3220);
    sub_215416AD4();
    sub_2154A0A1C();

    (*(v9 + 32))(a2, v11, v8);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v9 + 56))(a2, v17, 1, v8);
}

void sub_2153FC26C()
{
  v1 = v0;
  v2 = sub_21549E15C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecordingView(0);
  v7 = v0 + v6[54];
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v47) = v8;
  *(&v47 + 1) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40, &unk_2154BFA90);
  sub_2154A0DEC();
  if (v46 == 1)
  {
    v10 = v0 + v6[55];
    v11 = *v10;
    v12 = *(v10 + 2);
    v47 = v11;
    v48 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA58, &qword_2154C3228);
    sub_2154A0DEC();
    v47 = v46;
    sub_21549E11C();
    sub_215324954();
    v13 = sub_2154A2B8C();
    v15 = v14;
    (*(v3 + 8))(v5, v2);

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16)
    {

LABEL_19:
      v44 = MEMORY[0x216067B60](v43, 0.2, 1.0, 0.0);
      MEMORY[0x28223BE20](v44);
      *(&v45 - 2) = v1;
      sub_21549FBDC();

      return;
    }

    v17 = *v1;
    v18 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel;
    v19 = [*(*v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
    if (v19)
    {
      v20 = v19;
      v21 = sub_2154A1D2C();
      [v20 setTitle_];

      v22 = [*(v17 + v18) attachment];
      if (v22)
      {
        v23 = v22;
        v24 = sub_2154A1D2C();

        [v23 setUserTitle_];

        v25 = [*(v17 + v18) attachment];
        if (v25)
        {
          v26 = v25;
          v27 = sub_2154A1D2C();
          [v26 updateChangeCountWithReason_];

          v28 = [*(v17 + v18) attachment];
          if (v28)
          {
            v29 = v28;
            [v28 attachmentDidChange];

            v30 = [*(v17 + v18) attachment];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 note];

              if (v32)
              {
                if ([v32 regenerateTitle:1 snippet:0])
                {
                  v33 = sub_2154A1D2C();
                  [v32 markShareDirtyIfNeededWithReason_];

                  v34 = sub_2154A1D2C();
                  [v32 updateChangeCountWithReason_];

                  v32 = v34;
                }
              }

              v35 = [*(v17 + v18) attachment];
              if (v35)
              {
                v36 = v35;
                v37 = [v35 managedObjectContext];

                if (v37)
                {
                  sub_2154A25FC();
                }

                v38 = sub_215455FCC();
                v39 = v1 + v6[53];
                v40 = *v39;
                v41 = *(v39 + 2);
                v47 = v40;
                v48 = v41;
                *&v46 = v38;
                *(&v46 + 1) = v42;
                v43 = sub_2154A0DFC();
                goto LABEL_19;
              }

LABEL_26:
              __break(1u);
              return;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }
}

uint64_t sub_2153FC724@<X0>(uint64_t a2@<X8>)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE88, &qword_2154C1D98);
  MEMORY[0x28223BE20](v65);
  v64 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v63 = &v56 - v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE90, &qword_2154C1DA0);
  MEMORY[0x28223BE20](v70);
  v69 = &v56 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CB58, &qword_2154C3420);
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x28223BE20](v7);
  v71 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D6F8, &qword_2154C3E90);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v66 = &v56 - v11;
  v12 = sub_21549FCFC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D700, &qword_2154C3E98);
  MEMORY[0x28223BE20](v19 - 8);
  v74 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v73 = &v56 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D708, &qword_2154C3EA0);
  MEMORY[0x28223BE20](v23 - 8);
  v72 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v56 - v26;
  *v27 = sub_2154A025C();
  *(v27 + 1) = 0;
  v27[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D710, &qword_2154C3EA8);
  sub_2153FCF8C(&v27[*(v28 + 44)]);
  if ((sub_2153F40D8() & 1) == 0)
  {
    v32 = 1;
    v33 = v73;
    goto LABEL_7;
  }

  v60 = v10;
  v61 = v9;
  v62 = a2;
  sub_2153F3BA0(v18);
  v29 = *(v13 + 104);
  v29(v15, *MEMORY[0x277CDF988], v12);
  v59 = sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v30 = sub_2154A1CCC();
  v58 = v13;
  v31 = *(v13 + 8);
  v31(v15, v12);
  v57 = v31;
  v31(v18, v12);
  if (v30)
  {
    v32 = 1;
    v9 = v61;
    a2 = v62;
    v10 = v60;
    v33 = v73;
LABEL_7:
    (*(v10 + 56))(v33, v32, 1, v9);
    v53 = v72;
    sub_215324EEC(v27, v72, &qword_27CA5D708, &qword_2154C3EA0);
    v54 = v74;
    sub_215324EEC(v33, v74, &qword_27CA5D700, &qword_2154C3E98);
    sub_215324EEC(v53, a2, &qword_27CA5D708, &qword_2154C3EA0);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D718, &qword_2154C3EB0);
    sub_215324EEC(v54, a2 + *(v55 + 48), &qword_27CA5D700, &qword_2154C3E98);
    sub_2151ADCD8(v33, &qword_27CA5D700, &qword_2154C3E98);
    sub_2151ADCD8(v27, &qword_27CA5D708, &qword_2154C3EA0);
    sub_2151ADCD8(v54, &qword_27CA5D700, &qword_2154C3E98);
    return sub_2151ADCD8(v53, &qword_27CA5D708, &qword_2154C3EA0);
  }

  sub_2153F85B0(v71);
  v29(v18, *MEMORY[0x277CDF9E8], v12);
  v29(v15, *MEMORY[0x277CDFA10], v12);
  result = sub_2154A1CDC();
  if (result)
  {
    v35 = *(v58 + 32);
    v36 = v63;
    v35(v63, v18, v12);
    v37 = v65;
    v35((v36 + *(v65 + 48)), v15, v12);
    v38 = v64;
    sub_215324EEC(v36, v64, &qword_27CA5BE88, &qword_2154C1D98);
    v39 = *(v37 + 48);
    v40 = v69;
    v35(v69, v38, v12);
    v41 = v38 + v39;
    v42 = v57;
    v57(v41, v12);
    sub_21533FB7C(v36, v38, &qword_27CA5BE88, &qword_2154C1D98);
    v43 = *(v37 + 48);
    v44 = v70;
    v35((v40 + *(v70 + 36)), (v38 + v43), v12);
    v42(v38, v12);
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CB60, &qword_2154C3428);
    v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CB68, &qword_2154C3430);
    v47 = sub_21541776C();
    v48 = sub_2151ACC5C(&qword_27CA5CB50, &qword_27CA5BE90, &qword_2154C1DA0, MEMORY[0x277D83660]);
    v75 = v46;
    v76 = v44;
    v77 = v47;
    v78 = v48;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v75 = v45;
    v76 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v50 = v66;
    v51 = v68;
    v52 = v71;
    sub_2154A0A5C();
    sub_2151ADCD8(v40, &qword_27CA5BE90, &qword_2154C1DA0);
    (*(v67 + 8))(v52, v51);
    v10 = v60;
    v9 = v61;
    v33 = v73;
    (*(v60 + 32))(v73, v50, v61);
    v32 = 0;
    a2 = v62;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_2153FCF8C@<X0>(void *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D720, &qword_2154C3EB8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v31 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D728, &qword_2154C3EC0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  if (sub_2153F40D8())
  {
    v31 = 0;
    v41 = 0;
    v15 = 0;
    v40 = 0;
    v16 = 0;
    v39 = 0;
    v38 = 0;
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v33 = 0;
    v32 = 0;
    v17 = 2;
  }

  else
  {
    type metadata accessor for RecordingView(0);
    sub_2154A0FAC();
    sub_21549FAFC();
    v41 = v44;
    v40 = v46;
    v39 = v48;
    v38 = v49;
    LOBYTE(v56) = 1;
    v43 = v45;
    v42 = v47;
    sub_2154A0FAC();
    sub_21549FAFC();
    v37 = v50;
    v36 = v51;
    v35 = v52;
    v34 = v53;
    v33 = v54;
    v32 = v55;
    v31 = v56;
    v15 = v43;
    v17 = 256;
    v16 = v42;
  }

  *v5 = sub_2154A0FAC();
  v5[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D730, &qword_2154C3EC8);
  sub_2153FD408(v5 + *(v19 + 44));
  sub_2154A0FAC();
  sub_21549FE4C();
  sub_21533FB7C(v5, v11, &qword_27CA5D720, &qword_2154C3EB8);
  v20 = &v11[*(v6 + 36)];
  v21 = v61;
  *(v20 + 4) = v60;
  *(v20 + 5) = v21;
  *(v20 + 6) = v62;
  v22 = v57;
  *v20 = v56;
  *(v20 + 1) = v22;
  v23 = v59;
  *(v20 + 2) = v58;
  *(v20 + 3) = v23;
  sub_21533FB7C(v11, v14, &qword_27CA5D728, &qword_2154C3EC0);
  sub_215324EEC(v14, v8, &qword_27CA5D728, &qword_2154C3EC0);
  v24 = v31;
  *a2 = 0;
  a2[1] = v24;
  a2[2] = v41;
  a2[3] = v15;
  a2[4] = v40;
  a2[5] = v16;
  v25 = v38;
  a2[6] = v39;
  a2[7] = v25;
  v26 = v37;
  a2[8] = v17;
  a2[9] = v26;
  v27 = v35;
  a2[10] = v36;
  a2[11] = v27;
  v28 = v33;
  a2[12] = v34;
  a2[13] = v28;
  a2[14] = v32;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D738, &qword_2154C3ED0);
  sub_215324EEC(v8, a2 + *(v29 + 48), &qword_27CA5D728, &qword_2154C3EC0);
  sub_2151ADCD8(v14, &qword_27CA5D728, &qword_2154C3EC0);
  return sub_2151ADCD8(v8, &qword_27CA5D728, &qword_2154C3EC0);
}

uint64_t sub_2153FD408@<X0>(uint64_t a2@<X8>)
{
  v51 = sub_21549FCFC();
  v3 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D740, &qword_2154C3ED8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D748, &qword_2154C3EE0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D750, &qword_2154C3EE8);
  MEMORY[0x28223BE20](v53);
  v56 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v52 = &v48 - v16;
  MEMORY[0x28223BE20](v17);
  v55 = &v48 - v18;
  v54 = sub_2154A011C();
  type metadata accessor for RecordingView(0);
  sub_2154A0FAC();
  sub_21549FE4C();
  *&v57[55] = v62;
  *&v57[71] = v63;
  *&v57[87] = v64;
  *&v57[103] = v65;
  *&v57[7] = v59;
  *&v57[23] = v60;
  v58 = 1;
  *&v57[39] = v61;
  *v10 = sub_2154A025C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D758, &qword_2154C3EF0);
  sub_2153FDA34(&v10[*(v19 + 44)]);
  sub_2154A0FAC();
  sub_21549FE4C();
  sub_21533FB7C(v10, v13, &qword_27CA5D740, &qword_2154C3ED8);
  v20 = &v13[*(v11 + 36)];
  v21 = v71;
  *(v20 + 4) = v70;
  *(v20 + 5) = v21;
  *(v20 + 6) = v72;
  v22 = v67;
  *v20 = v66;
  *(v20 + 1) = v22;
  v23 = v69;
  *(v20 + 2) = v68;
  *(v20 + 3) = v23;
  v24 = sub_2154A06CC();
  v25 = v13;
  if (sub_2153F40D8() & 1) == 0 || (v49 = v13, sub_2153F3BA0(v7), v27 = v50, v26 = v51, (*(v3 + 104))(v50, *MEMORY[0x277CDF988], v51), sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]), v28 = sub_2154A1CCC(), v29 = *(v3 + 8), v29(v27, v26), v29(v7, v26), v25 = v49, (v28))
  {
    sub_2153F40D8();
  }

  sub_21549F99C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v52;
  sub_21533FB7C(v25, v52, &qword_27CA5D748, &qword_2154C3EE0);
  v39 = v38 + *(v53 + 36);
  *v39 = v24;
  *(v39 + 8) = v31;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  *(v39 + 40) = 0;
  v40 = v38;
  v41 = v55;
  sub_21533FB7C(v40, v55, &qword_27CA5D750, &qword_2154C3EE8);
  v42 = v56;
  sub_215324EEC(v41, v56, &qword_27CA5D750, &qword_2154C3EE8);
  v43 = *&v57[80];
  *(a2 + 81) = *&v57[64];
  *(a2 + 97) = v43;
  *(a2 + 113) = *&v57[96];
  v44 = *&v57[16];
  *(a2 + 17) = *v57;
  *(a2 + 33) = v44;
  v45 = *&v57[48];
  *(a2 + 49) = *&v57[32];
  *a2 = v54;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 128) = *&v57[111];
  *(a2 + 65) = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D760, &qword_2154C3EF8);
  sub_215324EEC(v42, a2 + *(v46 + 48), &qword_27CA5D750, &qword_2154C3EE8);
  sub_2151ADCD8(v41, &qword_27CA5D750, &qword_2154C3EE8);
  return sub_2151ADCD8(v42, &qword_27CA5D750, &qword_2154C3EE8);
}

uint64_t sub_2153FDA34@<X0>(uint64_t a2@<X8>)
{
  v32 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D768, &qword_2154C3F00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  sub_2153FDDF4(&v26 - v6);
  type metadata accessor for RecordingView(0);
  sub_2154A0FAC();
  sub_21549FAFC();
  v28 = v37;
  v29 = v35;
  v26 = v40;
  v27 = v39;
  v43 = 1;
  v42 = v36;
  v41 = v38;
  v30 = sub_2154A011C();
  v34 = 1;
  sub_2153FF99C(&v55);
  v48 = *&v56[48];
  v49 = *&v56[64];
  v50 = *&v56[80];
  v51 = *&v56[96];
  v44 = v55;
  v45 = *v56;
  v46 = *&v56[16];
  v47 = *&v56[32];
  v52[0] = v55;
  v52[1] = *v56;
  v52[2] = *&v56[16];
  v52[3] = *&v56[32];
  v52[4] = *&v56[48];
  v52[5] = *&v56[64];
  v52[6] = *&v56[80];
  v52[7] = *&v56[96];
  sub_215324EEC(&v44, &v53, &qword_27CA5D770, &qword_2154C3F08);
  sub_2151ADCD8(v52, &qword_27CA5D770, &qword_2154C3F08);
  *&v33[71] = v48;
  *&v33[87] = v49;
  *&v33[103] = v50;
  *&v33[119] = v51;
  *&v33[7] = v44;
  *&v33[23] = v45;
  *&v33[39] = v46;
  *&v33[55] = v47;
  v8 = v34;
  v31 = v4;
  sub_215324EEC(v7, v4, &qword_27CA5D768, &qword_2154C3F00);
  v9 = v43;
  v10 = v42;
  v11 = v41;
  v12 = v4;
  v13 = v32;
  sub_215324EEC(v12, v32, &qword_27CA5D768, &qword_2154C3F00);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D778, &qword_2154C3F10);
  v15 = v13 + *(v14 + 48);
  *v15 = 0;
  *(v15 + 8) = v9;
  v16 = v28;
  *(v15 + 16) = v29;
  *(v15 + 24) = v10;
  *(v15 + 32) = v16;
  *(v15 + 40) = v11;
  v17 = v26;
  *(v15 + 48) = v27;
  *(v15 + 56) = v17;
  v18 = *(v14 + 64);
  *&v54[17] = *&v33[16];
  *&v54[1] = *v33;
  *&v54[81] = *&v33[80];
  *&v54[97] = *&v33[96];
  *&v54[113] = *&v33[112];
  *&v54[33] = *&v33[32];
  v19 = v13 + v18;
  v20 = v30;
  v53 = v30;
  v54[0] = v8;
  *&v54[128] = *&v33[127];
  *&v54[49] = *&v33[48];
  *&v54[65] = *&v33[64];
  v21 = *&v54[96];
  *(v19 + 96) = *&v54[80];
  *(v19 + 112) = v21;
  *(v19 + 128) = *&v54[112];
  *(v19 + 144) = *&v54[128];
  v22 = *&v54[32];
  *(v19 + 32) = *&v54[16];
  *(v19 + 48) = v22;
  v23 = *&v54[64];
  *(v19 + 64) = *&v54[48];
  *(v19 + 80) = v23;
  v24 = *v54;
  *v19 = v53;
  *(v19 + 16) = v24;
  sub_215324EEC(&v53, &v55, &qword_27CA5D780, &qword_2154C3F18);
  sub_2151ADCD8(v7, &qword_27CA5D768, &qword_2154C3F00);
  *&v56[81] = *&v33[80];
  *&v56[97] = *&v33[96];
  *v57 = *&v33[112];
  *&v56[17] = *&v33[16];
  *&v56[33] = *&v33[32];
  *&v56[49] = *&v33[48];
  *&v56[65] = *&v33[64];
  v55 = v20;
  v56[0] = v8;
  *&v57[15] = *&v33[127];
  *&v56[1] = *v33;
  sub_2151ADCD8(&v55, &qword_27CA5D780, &qword_2154C3F18);
  return sub_2151ADCD8(v31, &qword_27CA5D768, &qword_2154C3F00);
}

void sub_2153FDDF4(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = type metadata accessor for RecordingView(0);
  v4 = v3 - 8;
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v38 = v5;
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D7B8, &qword_2154C3F38);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D7C0, &qword_2154C3F40);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D7C8, &qword_2154C3F48);
  MEMORY[0x28223BE20](v36);
  v15 = &v36 - v14;
  *v13 = sub_2154A011C();
  *(v13 + 1) = 0;
  v16 = 1;
  v13[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D7D0, &qword_2154C3F50);
  sub_2153FE23C(v2, &v13[*(v17 + 44)]);
  v41 = sub_2154A0FAC();
  v42 = v2;
  v19 = v18;
  v20 = &v13[*(v11 + 44)];
  v21 = v2 + *(v4 + 224);
  v22 = *v21;
  v23 = *(v21 + 8);
  v44 = v22;
  v45 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40, &unk_2154BFA90);
  sub_2154A0DEC();
  if (v43 == 1)
  {
    sub_2153FEF20(v9);
    (*(v7 + 32))(v20, v9, v6);
    v16 = 0;
  }

  (*(v7 + 56))(v20, v16, 1, v6);
  v24 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D7D8, &qword_2154C3F58) + 36)];
  *v24 = v41;
  v24[1] = v19;
  v25 = [objc_opt_self() ic:*MEMORY[0x277D76A20] preferredFontForStyle:*MEMORY[0x277D743F8] withFontWeight:?];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 ic_fontWithSingleLineA];

    if (v27)
    {
      v28 = sub_2154A085C();
      KeyPath = swift_getKeyPath(byte_2154C3538);
      sub_21533FB7C(v13, v15, &qword_27CA5D7C0, &qword_2154C3F40);
      v30 = &v15[*(v36 + 36)];
      *v30 = KeyPath;
      v30[1] = v28;
      v31 = v39;
      sub_21539B7B8(v42, v39);
      v32 = (*(v37 + 80) + 16) & ~*(v37 + 80);
      v33 = swift_allocObject();
      sub_21541C94C(v31, v33 + v32, type metadata accessor for RecordingView);
      v34 = v40;
      sub_21533FB7C(v15, v40, &qword_27CA5D7C8, &qword_2154C3F48);
      v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D768, &qword_2154C3F00) + 36));
      *v35 = sub_21541D308;
      v35[1] = v33;
      v35[2] = 0;
      v35[3] = 0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2153FE23C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v91 = a2;
  v93 = sub_2154A03AC();
  v102 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v101 = &v75[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_2154A021C();
  v95 = *(v4 - 8);
  v96 = v4;
  MEMORY[0x28223BE20](v4);
  v94 = &v75[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for RecordingView(0);
  v77 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v78 = v7;
  v79 = &v75[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D828, &qword_2154C3F90);
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v80 = &v75[-v8];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D830, &qword_2154C3F98);
  MEMORY[0x28223BE20](v82);
  v83 = &v75[-v9];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D838, &qword_2154C3FA0);
  MEMORY[0x28223BE20](v89);
  v90 = &v75[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D840, &qword_2154C3FA8);
  v99 = *(v11 - 8);
  v100 = v11;
  MEMORY[0x28223BE20](v11);
  v98 = &v75[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v75[-v14];
  v16 = sub_21549FCFC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v75[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v75[-v21];
  v103 = a1;
  v23 = sub_2153F40D8();
  v24 = MEMORY[0x277CDF988];
  v92 = v17;
  v87 = v22;
  v88 = v19;
  v97 = v15;
  if (v23)
  {
    sub_2153F3BA0(v22);
    (*(v17 + 104))(v19, *v24, v16);
    sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    v25 = sub_2154A1CCC();
    v26 = *(v17 + 8);
    v26(v19, v16);
    v26(v22, v16);
    LODWORD(v81) = v25 & 1;
    HIDWORD(v81) = v25 ^ 1;
  }

  else
  {
    v81 = 1;
  }

  v85 = v6;
  v27 = (v103 + *(v6 + 212));
  v28 = *v27;
  v29 = *(v27 + 2);
  v115 = v28;
  *&v116 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA58, &qword_2154C3228);
  sub_2154A0DEC();
  v115 = v105;
  sub_215324954();
  v30 = sub_2154A092C();
  v32 = v31;
  LODWORD(v6) = v33;
  v35 = v34;
  if ((sub_2153F40D8() & 1) != 0 && (v36 = v87, sub_2153F3BA0(v87), v37 = *MEMORY[0x277CDF988], v76 = v6, v6 = v35, v38 = v92, v39 = v88, (*(v92 + 104))(v88, v37, v16), sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]), v40 = sub_2154A1CCC(), v41 = v38, v35 = v6, v42 = *(v41 + 8), v42(v39, v16), v42(v36, v16), LOBYTE(v6) = v76, (v40 & 1) == 0))
  {
    sub_2154A0FBC();
  }

  else
  {
    sub_2154A0FAC();
  }

  sub_21549FAFC();
  v122 = v6 & 1;
  KeyPath = swift_getKeyPath(byte_2154C3FB0);
  v123 = 0;
  *&v105 = v30;
  *(&v105 + 1) = v32;
  LOBYTE(v106) = v6 & 1;
  *(&v106 + 1) = v35;
  v107 = v112;
  v108 = v113;
  v109 = v114;
  *&v110 = KeyPath;
  *(&v110 + 1) = 1;
  v111 = 0;
  v44 = v103;
  v45 = v79;
  sub_21539B7B8(v103, v79);
  v46 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v47 = swift_allocObject();
  sub_21541C94C(v45, v47 + v46, type metadata accessor for RecordingView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D848, &qword_2154C3FE0);
  sub_21541DA30();
  v48 = v80;
  sub_2154A0A1C();

  v119 = v109;
  v120 = v110;
  v121 = v111;
  v115 = v105;
  v116 = v106;
  v117 = v107;
  v118 = v108;
  sub_2151ADCD8(&v115, &qword_27CA5D848, &qword_2154C3FE0);
  v49 = v44 + *(v85 + 216);
  v50 = *v49;
  v51 = *(v49 + 8);
  LOBYTE(v105) = v50;
  *(&v105 + 1) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40, &unk_2154BFA90);
  sub_2154A0DEC();
  if (v104)
  {
    v52 = 0.0;
  }

  else
  {
    v52 = 1.0;
  }

  v53 = v83;
  (*(v84 + 32))(v83, v48, v86);
  *(v53 + *(v82 + 36)) = v52;
  v54 = v94;
  sub_2154A020C();
  sub_21541DB6C();
  v55 = v90;
  sub_2154A0B1C();
  (*(v95 + 8))(v54, v96);
  sub_2151ADCD8(v53, &qword_27CA5D830, &qword_2154C3F98);
  v56 = v101;
  sub_21549FEAC();
  sub_21541B290(&qword_27CA5D880, &qword_27CA5D838, &qword_2154C3FA0, sub_21541DB6C);
  sub_21541DC34(&qword_27CA5D888, MEMORY[0x277CDDFB0], MEMORY[0x277CDDFA8]);
  v57 = v97;
  v58 = v93;
  sub_2154A09FC();
  (*(v102 + 8))(v56, v58);
  sub_2151ADCD8(v55, &qword_27CA5D838, &qword_2154C3FA0);
  if (sub_2153F40D8())
  {
    v59 = v87;
    sub_2153F3BA0(v87);
    v60 = v92;
    v61 = v88;
    (*(v92 + 104))(v88, *MEMORY[0x277CDF988], v16);
    sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    v62 = sub_2154A1CCC();
    v63 = *(v60 + 8);
    v63(v61, v16);
    v63(v59, v16);
    v103 = v62 & 1;
    v64 = v62 ^ 1;
  }

  else
  {
    v64 = 0;
    v103 = 1;
  }

  v66 = v98;
  v65 = v99;
  v67 = *(v99 + 16);
  v68 = v100;
  v67(v98, v57, v100);
  v69 = v91;
  *v91 = 0;
  v70 = BYTE4(v81);
  *(v69 + 8) = v81;
  *(v69 + 9) = v70 & 1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D890, &qword_2154C3FF8);
  v67(v69 + *(v71 + 48), v66, v68);
  v72 = v69 + *(v71 + 64);
  *v72 = 0;
  v72[8] = v103;
  v72[9] = v64 & 1;
  v73 = *(v65 + 8);
  v73(v57, v68);
  return (v73)(v66, v68);
}

void sub_2153FED80()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel;
  v3 = [*(*v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v3 supportsRenaming];

  if (!v5)
  {
    return;
  }

  v6 = [*(v1 + v2) attachment];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = [v6 note];

  if (v8)
  {
    v9 = [v8 isEditable];

    if (v9)
    {
      type metadata accessor for RecordingView(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40, &unk_2154BFA90);
      v10 = sub_2154A0DEC();
      if ((v12 & 1) == 0)
      {
        v11 = MEMORY[0x216067B60](v10, 0.2, 1.0, 0.0);
        MEMORY[0x28223BE20](v11);
        sub_21549FBDC();
      }
    }
  }
}

uint64_t sub_2153FEF20@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v2 = sub_21549FCCC();
  v83 = *(v2 - 8);
  v84 = v2;
  MEMORY[0x28223BE20](v2);
  v81 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RecordingView(0);
  v5 = (v4 - 8);
  v80 = *(v4 - 8);
  v79 = *(v80 + 64);
  MEMORY[0x28223BE20](v4);
  v78 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5D7E0, &unk_2154C3F60);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = &v61 - v8;
  v9 = sub_2154A028C();
  v10 = *(v9 - 8);
  v73 = v9;
  v74 = v10;
  MEMORY[0x28223BE20](v9);
  v66 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC30, &qword_2154C16F8);
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v13 = &v61 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D7F0, &qword_2154C3F70);
  v69 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v62 = &v61 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D7F8, &qword_2154C3F78);
  v72 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v63 = &v61 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D800, &qword_2154C3F80);
  MEMORY[0x28223BE20](v70);
  v17 = &v61 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D808, &qword_2154C3F88);
  v19 = *(v18 - 8);
  v76 = v18;
  v77 = v19;
  MEMORY[0x28223BE20](v18);
  v68 = &v61 - v20;
  v21 = [objc_opt_self() mainBundle];
  v22 = sub_2154A1D2C();
  v23 = [v21 localizedStringForKey:v22 value:0 table:0];

  v24 = sub_2154A1D6C();
  v26 = v25;

  v90 = v24;
  v91 = v26;
  v27 = v1 + v5[57];
  v28 = *v27;
  v29 = *(v27 + 16);
  v88 = v28;
  v89 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA58, &qword_2154C3228);
  sub_2154A0E0C();
  v30 = v1 + v5[55];
  v61 = v1;
  v31 = *v30;
  v32 = *(v30 + 16);
  v85 = v31;
  v86 = v32;
  sub_2154A0DEC();
  v85 = v88;
  sub_215324954();
  sub_2154A092C();
  sub_2154A102C();
  v33 = v1 + v5[58];
  v34 = *v33;
  v35 = *(v33 + 8);
  LOBYTE(v33) = *(v33 + 16);
  LOBYTE(v85) = v34;
  *(&v85 + 1) = v35;
  LOBYTE(v86) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD90, &qword_2154C3230);
  sub_21549F9CC();
  v36 = sub_2151ACC5C(&qword_27CA5D810, &qword_27CA5BC30, &qword_2154C16F8, MEMORY[0x277CDF1A8]);
  v37 = v62;
  v38 = v64;
  sub_2154A0BDC();

  (*(v65 + 8))(v13, v38);
  v39 = v66;
  sub_2154A027C();
  *&v85 = v38;
  *(&v85 + 1) = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_21541DC34(&qword_27CA5D818, MEMORY[0x277CDDF20], MEMORY[0x277CDDF18]);
  v42 = v63;
  v43 = v67;
  v44 = v73;
  sub_2154A0A4C();
  v45 = v44;
  (*(v74 + 8))(v39, v44);
  (*(v69 + 8))(v37, v43);
  v46 = v75;
  sub_2154A05AC();
  v47 = sub_2154A05BC();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  *&v85 = v43;
  *(&v85 + 1) = v45;
  v86 = OpaqueTypeConformance2;
  v87 = v41;
  swift_getOpaqueTypeConformance2();
  v48 = v71;
  sub_2154A0B5C();
  sub_2151ADCD8(v46, &unk_27CA5D7E0, &unk_2154C3F60);
  (*(v72 + 8))(v42, v48);
  KeyPath = swift_getKeyPath(byte_2154C3CF8);
  v50 = v70;
  v51 = &v17[*(v70 + 36)];
  *v51 = KeyPath;
  v51[8] = 1;
  v52 = sub_21541D394();
  v53 = v68;
  v54 = v50;
  sub_2154A094C();
  sub_2151ADCD8(v17, &qword_27CA5D800, &qword_2154C3F80);
  v55 = v78;
  sub_21539B7B8(v61, v78);
  v56 = (*(v80 + 80) + 16) & ~*(v80 + 80);
  v57 = swift_allocObject();
  sub_21541C94C(v55, v57 + v56, type metadata accessor for RecordingView);
  v58 = v81;
  sub_21549FCBC();
  *&v85 = v54;
  *(&v85 + 1) = v52;
  swift_getOpaqueTypeConformance2();
  v59 = v76;
  sub_2154A0C2C();

  (*(v83 + 8))(v58, v84);
  return (*(v77 + 8))(v53, v59);
}

uint64_t sub_2153FF914(uint64_t a1)
{
  sub_215455FCC();
  type metadata accessor for RecordingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA58, &qword_2154C3228);
  return sub_2154A0DFC();
}

uint64_t sub_2153FF99C@<X0>(uint64_t a2@<X8>)
{
  sub_2153FFAF4(&v15);
  type metadata accessor for RecordingView(0);
  sub_2154A0FAC();
  sub_21549FAFC();
  v3 = v19;
  v4 = v21;
  v5 = v23;
  v6 = v24;
  v27 = 1;
  v26 = v20;
  v25 = v22;
  sub_2153FFD94(v30);
  v7 = v27;
  v8 = v26;
  v9 = v25;
  v10 = v15;
  v28[0] = v15;
  v28[1] = v16;
  v11 = v17;
  v28[2] = v17;
  v29 = v18;
  LOWORD(v31) = v18;
  v30[1] = v16;
  v30[2] = v17;
  v12 = *&v30[0];
  v13 = v31;
  v30[0] = v15;
  *(a2 + 16) = v16;
  *(a2 + 32) = v11;
  *a2 = v10;
  *(a2 + 48) = v13;
  *(a2 + 56) = 0;
  *(a2 + 64) = v7;
  *(a2 + 72) = v3;
  *(a2 + 80) = v8;
  *(a2 + 88) = v4;
  *(a2 + 96) = v9;
  *(a2 + 104) = v5;
  *(a2 + 112) = v6;
  *(a2 + 120) = v12;
  sub_215324EEC(v28, v32, &qword_27CA5D788, &qword_2154C3F20);
  v32[0] = v15;
  v32[1] = v16;
  v32[2] = v17;
  v33 = v18;
  return sub_2151ADCD8(v32, &qword_27CA5D788, &qword_2154C3F20);
}

uint64_t sub_2153FFAF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21549FCFC();
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  type metadata accessor for RecordingView(0);
  v33 = sub_21549E62C();
  v34 = v8;
  sub_215324954();
  v9 = sub_2154A092C();
  v11 = v10;
  v13 = v12;
  sub_2154A07CC();
  v14 = sub_2154A08AC();
  v30 = v15;
  v31 = v14;
  v29 = v16;
  v32 = v17;
  sub_215354880(v9, v11, v13 & 1);

  if (sub_2153F3DA8() & 1) != 0 || (sub_2153F3F00())
  {
    v18 = sub_21549E63C();
  }

  else
  {
    v18 = sub_21549E62C();
  }

  v20 = v18;
  v21 = v19;
  if (sub_2153F40D8())
  {
    sub_2153F3BA0(v7);
    v22 = v28;
    (*(v28 + 104))(v4, *MEMORY[0x277CDF988], v2);
    sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    v23 = sub_2154A1CCC();
    v24 = *(v22 + 8);
    v24(v4, v2);
    v24(v7, v2);
    v25 = v23 ^ 1;
  }

  else
  {
    v25 = 0;
  }

  result = sub_2153F40D8();
  v27 = v30;
  *a1 = v31;
  *(a1 + 8) = v27;
  *(a1 + 16) = v29 & 1;
  *(a1 + 24) = v32;
  *(a1 + 32) = v20;
  *(a1 + 40) = v21;
  *(a1 + 48) = v25 & 1;
  *(a1 + 49) = result & 1;
  return result;
}

uint64_t sub_2153FFD94@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_21549FCFC();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v57 - v6;
  v7 = type metadata accessor for RecordingView(0);
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2154A053C();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x28223BE20](v9);
  v63 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D790, &qword_2154C3F28);
  MEMORY[0x28223BE20](v64);
  v62 = &v57 - v14;
  v15 = sub_21549E95C();
  v16 = *(v15 - 8);
  *&v17 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v1;
  swift_getKeyPath(byte_2154C31B8, v17);
  v68 = v20;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v21 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v16 + 16))(v19, v20 + v21, v15);
  LODWORD(v21) = (*(v16 + 88))(v19, v15);
  LODWORD(v20) = *MEMORY[0x277D359E8];
  (*(v16 + 8))(v19, v15);
  if (v21 == v20)
  {
    sub_2154A052C();
    sub_21539B7B8(v2, &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v23 = swift_allocObject();
    sub_21541C94C(&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for RecordingView);
    *(v23 + v22 + v8) = 0;
    v25 = v65;
    v24 = v66;
    (*(v65 + 16))(v63, v13, v66);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_21541D1DC;
    *(v26 + 24) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D788, &qword_2154C3F20);
    sub_21541DC34(&qword_27CA5D3A0, MEMORY[0x277CDE300], MEMORY[0x277CDE2F8]);
    sub_21541CCD0();
    sub_21549FABC();
    (*(v25 + 8))(v13, v24);
    sub_21541D284();
  }

  else
  {
    sub_2153FAC34();
    sub_2154A317C();
    v68 = sub_2154A316C();
    v69 = v27;
    sub_215324954();
    v28 = sub_2154A092C();
    v30 = v29;
    v32 = v31;
    sub_2154A07BC();
    v33 = sub_2154A08AC();
    v35 = v34;
    LODWORD(v37) = v36;
    v39 = v38;
    sub_215354880(v28, v30, v32 & 1);

    sub_2153FAC34();
    v41 = sub_21540FF20(0, v40);
    v43 = v42;
    v44 = 0;
    if (sub_2153F40D8())
    {
      v65 = v39;
      v45 = v57;
      sub_2153F3BA0(v57);
      v46 = *MEMORY[0x277CDF988];
      v66 = v33;
      v47 = v59;
      v48 = v60;
      v49 = *(v59 + 104);
      LODWORD(v64) = v37;
      v37 = v35;
      v50 = v58;
      v49(v58, v46, v60);
      sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
      v51 = sub_2154A1CCC();
      v52 = *(v47 + 8);
      v53 = v50;
      v35 = v37;
      LOBYTE(v37) = v64;
      v52(v53, v48);
      v54 = v45;
      v39 = v65;
      v52(v54, v48);
      v33 = v66;
      v44 = v51 ^ 1;
    }

    v55 = sub_2153F40D8();
    v76 = v37 & 1;
    v68 = v33;
    v69 = v35;
    v70 = v37 & 1;
    v71 = v39;
    v72 = v41;
    v73 = v43;
    v74 = v44 & 1;
    v75 = v55 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D788, &qword_2154C3F20);
    sub_21541CCD0();
  }

  result = sub_2154A0EAC();
  *v67 = result;
  return result;
}

double sub_2154004E0(uint64_t a1)
{
  type metadata accessor for RecordingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA58, &qword_2154C3228);
  sub_2154A0DEC();
  sub_2154A0DFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40, &unk_2154BFA90);
  sub_2154A0DFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD90, &qword_2154C3230);
  sub_21549F9BC();
  return result;
}

double sub_215400624()
{
  type metadata accessor for RecordingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40, &unk_2154BFA90);
  sub_2154A0DFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD90, &qword_2154C3230);
  sub_21549F9BC();
  return result;
}

uint64_t sub_2154006F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v194 = a2;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D048, &qword_2154C38D8);
  MEMORY[0x28223BE20](v193);
  v181 = (v165 - v3);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D050, &qword_2154C38E0);
  MEMORY[0x28223BE20](v177);
  v199 = (v165 - v4);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D058, &qword_2154C38E8);
  v180 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v179 = v165 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v196 = v165 - v7;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D060, &qword_2154C38F0);
  MEMORY[0x28223BE20](v190);
  v192 = v165 - v8;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D068, &qword_2154C38F8);
  MEMORY[0x28223BE20](v191);
  v176 = (v165 - v9);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D070, &qword_2154C3900);
  MEMORY[0x28223BE20](v174);
  v189 = v165 - v10;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D078, &qword_2154C3908);
  v209 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v175 = v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v200 = v165 - v13;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE88, &qword_2154C1D98);
  MEMORY[0x28223BE20](v206);
  v15 = v165 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v205 = v165 - v17;
  v18 = sub_21549FCFC();
  v212 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v207 = v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v165 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE90, &qword_2154C1DA0);
  MEMORY[0x28223BE20](v23);
  v211 = v165 - v24;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D080, &qword_2154C3910);
  MEMORY[0x28223BE20](v182);
  v26 = v165 - v25;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D088, &qword_2154C3918);
  MEMORY[0x28223BE20](v183);
  v186 = v165 - v27;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D090, &qword_2154C3920);
  MEMORY[0x28223BE20](v184);
  v185 = v165 - v28;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D098, &qword_2154C3928);
  MEMORY[0x28223BE20](v197);
  v198 = v165 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D0A0, &qword_2154C3930);
  v208 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v188 = v165 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v202 = v165 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D0A8, &qword_2154C3938);
  v35 = *(v34 - 8);
  v214 = v34;
  v215 = v35;
  MEMORY[0x28223BE20](v34);
  v195 = v165 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = v165 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = (v165 - v41);
  v213 = a1;
  v43 = sub_2153F40D8();
  v210 = v39;
  v203 = v23;
  if (v43)
  {
    v178 = v22;
    v187 = v30;
    v196 = v18;
    v173 = v15;
    v44 = type metadata accessor for RecordingView(0);
    v45 = v213;
    sub_2154A0FAC();
    sub_21549FAFC();
    v180 = v231;
    v181 = v229;
    v179 = v233;
    v177 = v234;
    v225 = 1;
    v224 = v230;
    v223 = v232;
    v199 = v42;
    sub_2154021C8(v42);
    sub_2154A0FAC();
    sub_21549FAFC();
    v171 = v237;
    v172 = v235;
    v169 = v240;
    v170 = v239;
    v228 = 1;
    v227 = v236;
    v226 = v238;
    v46 = *v45;
    swift_getKeyPath(byte_2154C32F8);
    *&v241 = v46;
    sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
    sub_21549ED9C();

    v47 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isPlaying;
    swift_beginAccess();
    v48 = 136;
    if (*(v46 + v47))
    {
      v48 = 140;
    }

    v49 = *(v45 + *(v44 + v48));
    *v26 = sub_2154A011C();
    *(v26 + 1) = 0;
    v26[16] = 1;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D0D8, &qword_2154C3950);
    sub_21540B02C(v45, &v26[*(v50 + 44)], v49);
    KeyPath = swift_getKeyPath(byte_2154C3958);
    v52 = &v26[*(v182 + 36)];
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D0E0, &qword_2154C3988) + 28);
    v54 = *MEMORY[0x277CDFA88];
    v55 = sub_21549FD5C();
    (*(*(v55 - 8) + 104))(v52 + v53, v54, v55);
    *v52 = KeyPath;
    LOBYTE(KeyPath) = sub_2153F4520();
    v56 = swift_getKeyPath(asc_2154C3608);
    v57 = swift_allocObject();
    *(v57 + 16) = (KeyPath & 1) == 0;
    v58 = v186;
    sub_21533FB7C(v26, v186, &qword_27CA5D080, &qword_2154C3910);
    v59 = (v58 + *(v183 + 36));
    *v59 = v56;
    v59[1] = sub_21541E308;
    v59[2] = v57;
    v60 = sub_2154A0D4C();
    v61 = swift_getKeyPath(byte_2154C3898);
    v62 = v58;
    v63 = v185;
    sub_21533FB7C(v62, v185, &qword_27CA5D088, &qword_2154C3918);
    v64 = (v63 + *(v184 + 36));
    *v64 = v61;
    v64[1] = v60;
    v204 = v44;
    sub_2154A0FAC();
    v39 = v63;
    while (1)
    {
      sub_21549FE4C();
      v65 = v198;
      sub_21533FB7C(v39, v198, &qword_27CA5D090, &qword_2154C3920);
      v66 = (v65 + *(v197 + 36));
      v67 = v246;
      v66[4] = v245;
      v66[5] = v67;
      v66[6] = v247;
      v68 = v242;
      *v66 = v241;
      v66[1] = v68;
      v69 = v244;
      v66[2] = v243;
      v66[3] = v69;
      v70 = v212;
      v72 = (v212 + 104);
      v71 = *(v212 + 13);
      v73 = v178;
      LODWORD(v184) = *MEMORY[0x277CDF9E8];
      v74 = v196;
      (v71)(v178);
      v75 = v207;
      LODWORD(v186) = *MEMORY[0x277CDFA10];
      v195 = v71;
      (v71)(v207);
      v185 = sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
      v76 = sub_2154A1CDC();
      v39 = v211;
      v78 = v205;
      v77 = v206;
      if (v76)
      {
        v183 = v72;
        v79 = *(v70 + 4);
        v79(v205, v73, v74);
        v79((v78 + *(v77 + 48)), v75, v74);
        v80 = v173;
        sub_215324EEC(v78, v173, &qword_27CA5BE88, &qword_2154C1D98);
        v182 = *(v77 + 48);
        v79(v39, v80, v74);
        v81 = *(v70 + 1);
        v81(v80 + v182, v74);
        sub_21533FB7C(v78, v80, &qword_27CA5BE88, &qword_2154C1D98);
        v82 = v211;
        v83 = &v211[*(v203 + 36)];
        v84 = v80 + *(v77 + 48);
        v165[1] = v70 + 32;
        v166 = v79;
        v79(v83, v84, v74);
        v212 = v70 + 8;
        v167 = v81;
        v81(v80, v74);
        v85 = v207;
        sub_215419984();
        v86 = v82;
        v87 = sub_2151ACC5C(&qword_27CA5CB50, &qword_27CA5BE90, &qword_2154C1DA0, MEMORY[0x277D83660]);
        v88 = v198;
        sub_2154A0A5C();
        v89 = v86;
        v90 = v178;
        sub_2151ADCD8(v89, &qword_27CA5BE90, &qword_2154C1DA0);
        sub_2151ADCD8(v88, &qword_27CA5D098, &qword_2154C3928);
        v91 = v213;
        sub_2154A0FAC();
        sub_21549FAFC();
        v197 = v250;
        v198 = v248;
        v182 = v252;
        v168 = v253;
        v218 = 1;
        v217 = v249;
        v216 = v251;
        v92 = sub_2154A0FAC();
        v39 = v189;
        *v189 = v92;
        *(v39 + 1) = v93;
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D120, &qword_2154C3998);
        sub_21540F060(v91, &v39[*(v94 + 44)]);
        v95 = v195;
        (v195)(v90, v184, v74);
        v95(v85, v186, v74);
        if (sub_2154A1CDC())
        {
          v195 = v87;
          v96 = v205;
          v97 = v166;
          v166(v205, v90, v74);
          v98 = v206;
          v97(v96 + *(v206 + 48), v85, v74);
          v99 = v173;
          sub_215324EEC(v96, v173, &qword_27CA5BE88, &qword_2154C1D98);
          v100 = *(v98 + 48);
          v101 = v211;
          v97(v211, v99, v74);
          v102 = v167;
          v167(v99 + v100, v74);
          sub_21533FB7C(v96, v99, &qword_27CA5BE88, &qword_2154C1D98);
          v97(v101 + *(v203 + 36), (v99 + *(v98 + 48)), v74);
          v102(v99, v74);
          v103 = v189;
          sub_2151ACC5C(&qword_27CA5D128, &qword_27CA5D070, &qword_2154C3900, MEMORY[0x277CE11A8]);
          sub_2154A0A5C();
          sub_2151ADCD8(v101, &qword_27CA5BE90, &qword_2154C1DA0);
          sub_2151ADCD8(v103, &qword_27CA5D070, &qword_2154C3900);
          sub_2154A0FAC();
          sub_21549FAFC();
          v212 = v256;
          v213 = v254;
          v211 = v258;
          v207 = v259;
          v221 = 1;
          v220 = v255;
          v219 = v257;
          LOBYTE(v103) = v225;
          LODWORD(v178) = v224;
          LODWORD(v183) = v223;
          v104 = *(v215 + 16);
          v105 = v210;
          v104(v210, v199, v214);
          LODWORD(v184) = v228;
          LODWORD(v185) = v227;
          LODWORD(v186) = v226;
          v106 = *(v208 + 16);
          v106(v188, v202, v187);
          LODWORD(v189) = v218;
          LODWORD(v195) = v217;
          LODWORD(v196) = v216;
          v203 = *(v209 + 16);
          v107 = v175;
          (v203)(v175, v200, v201);
          LODWORD(v204) = v221;
          LODWORD(v205) = v220;
          LODWORD(v206) = v219;
          v108 = v176;
          *v176 = 0;
          *(v108 + 8) = v103;
          *(v108 + 16) = v181;
          *(v108 + 24) = v178;
          *(v108 + 32) = v180;
          *(v108 + 40) = v183;
          v109 = v177;
          *(v108 + 48) = v179;
          *(v108 + 56) = v109;
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D130, &qword_2154C39A0);
          v111 = v105;
          v112 = v214;
          v104((v108 + v110[12]), v111, v214);
          v113 = v108 + v110[16];
          *v113 = 0;
          *(v113 + 8) = v184;
          *(v113 + 16) = v172;
          *(v113 + 24) = v185;
          *(v113 + 32) = v171;
          *(v113 + 40) = v186;
          v114 = v169;
          *(v113 + 48) = v170;
          *(v113 + 56) = v114;
          v116 = v187;
          v115 = v188;
          v106((v108 + v110[20]), v188, v187);
          v117 = v108 + v110[24];
          *v117 = 0;
          *(v117 + 8) = v189;
          *(v117 + 16) = v198;
          *(v117 + 24) = v195;
          *(v117 + 32) = v197;
          *(v117 + 40) = v196;
          v118 = v168;
          *(v117 + 48) = v182;
          *(v117 + 56) = v118;
          v119 = v201;
          (v203)(v108 + v110[28], v107, v201);
          v120 = v108 + v110[32];
          *v120 = 0;
          *(v120 + 8) = v204;
          *(v120 + 16) = v213;
          *(v120 + 24) = v205;
          *(v120 + 32) = v212;
          *(v120 + 40) = v206;
          v121 = v207;
          *(v120 + 48) = v211;
          *(v120 + 56) = v121;
          v122 = *(v209 + 8);
          v209 += 8;
          v213 = v122;
          (v122)(v107, v119);
          v123 = *(v208 + 8);
          v208 += 8;
          v123(v115, v116);
          v124 = *(v215 + 8);
          v124(v210, v112);
          sub_215324EEC(v108, v192, &qword_27CA5D068, &qword_2154C38F8);
          swift_storeEnumTagMultiPayload();
          v125 = MEMORY[0x277CE14C0];
          sub_2151ACC5C(&qword_27CA5D0C8, &qword_27CA5D068, &qword_2154C38F8, MEMORY[0x277CE14C0]);
          sub_2151ACC5C(&qword_27CA5D0D0, &qword_27CA5D048, &qword_2154C38D8, v125);
          sub_2154A039C();
          sub_2151ADCD8(v108, &qword_27CA5D068, &qword_2154C38F8);
          (v213)(v200, v201);
          v123(v202, v187);
          return (v124)(v199, v214);
        }
      }

      else
      {
        __break(1u);
LABEL_11:
        __break(1u);
      }

      __break(1u);
      sub_2154A227C();
      v164 = sub_2154A068C();
      sub_21549F07C();
    }
  }

  v127 = v15;
  v128 = type metadata accessor for RecordingView(0);
  v129 = v213;
  sub_2154A0FAC();
  sub_21549FAFC();
  v130 = v248;
  v208 = v252;
  v209 = v250;
  v202 = v253;
  LOBYTE(v235) = 1;
  LOBYTE(v229) = v249;
  v222[0] = v251;
  sub_2154021C8(v39);
  v189 = v128;
  sub_2154A0FAC();
  sub_21549FAFC();
  v200 = v256;
  v201 = v254;
  v197 = v259;
  v198 = v258;
  v225 = 1;
  v224 = v255;
  v223 = v257;
  v131 = sub_2154A0FAC();
  v132 = v199;
  *v199 = v131;
  v132[1] = v133;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D0B0, &qword_2154C3940);
  sub_21540BE7C(v129, v132 + *(v134 + 44));
  v135 = v212;
  v136 = *(v212 + 13);
  v136(v22, *MEMORY[0x277CDF9E8], v18);
  v137 = v207;
  v136(v207, *MEMORY[0x277CDFA10], v18);
  sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  if ((sub_2154A1CDC() & 1) == 0)
  {
    goto LABEL_11;
  }

  v138 = *(v135 + 4);
  v188 = v130;
  v139 = v205;
  v138(v205, v22, v18);
  v140 = v206;
  v138((v139 + *(v206 + 48)), v137, v18);
  v141 = v127;
  sub_215324EEC(v139, v127, &qword_27CA5BE88, &qword_2154C1D98);
  v207 = *(v140 + 48);
  v142 = v211;
  v138(v211, v141, v18);
  v143 = *(v135 + 1);
  v143(&v207[v141], v18);
  sub_21533FB7C(v139, v141, &qword_27CA5BE88, &qword_2154C1D98);
  v138((v142 + *(v203 + 36)), (v141 + *(v140 + 48)), v18);
  v143(v141, v18);
  sub_2151ACC5C(&qword_27CA5D0B8, &qword_27CA5D050, &qword_2154C38E0, MEMORY[0x277CE11A8]);
  sub_2151ACC5C(&qword_27CA5CB50, &qword_27CA5BE90, &qword_2154C1DA0, MEMORY[0x277D83660]);
  v144 = v196;
  v145 = v199;
  sub_2154A0A5C();
  sub_2151ADCD8(v142, &qword_27CA5BE90, &qword_2154C1DA0);
  sub_2151ADCD8(v145, &qword_27CA5D050, &qword_2154C38E0);
  sub_2154A0FAC();
  sub_21549FAFC();
  v212 = v242;
  v213 = v241;
  v207 = *(&v243 + 1);
  v211 = v243;
  v228 = 1;
  v227 = BYTE8(v241);
  v226 = BYTE8(v242);
  LOBYTE(v145) = v235;
  LODWORD(v185) = v229;
  LODWORD(v186) = v222[0];
  v146 = *(v215 + 16);
  v147 = v195;
  v146(v195, v210, v214);
  LODWORD(v187) = v225;
  LODWORD(v189) = v224;
  LODWORD(v199) = v223;
  v148 = v179;
  v149 = v180;
  v150 = *(v180 + 16);
  v150(v179, v144, v204);
  LODWORD(v203) = v228;
  LODWORD(v205) = v227;
  LODWORD(v206) = v226;
  v151 = v181;
  *v181 = 0;
  *(v151 + 8) = v145;
  *(v151 + 16) = v188;
  *(v151 + 24) = v185;
  *(v151 + 32) = v209;
  *(v151 + 40) = v186;
  v152 = v202;
  *(v151 + 48) = v208;
  *(v151 + 56) = v152;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D0C0, &qword_2154C3948);
  v154 = v147;
  v155 = v214;
  v146((v151 + v153[12]), v154, v214);
  v156 = v151 + v153[16];
  *v156 = 0;
  *(v156 + 8) = v187;
  *(v156 + 16) = v201;
  *(v156 + 24) = v189;
  *(v156 + 32) = v200;
  *(v156 + 40) = v199;
  v157 = v197;
  *(v156 + 48) = v198;
  *(v156 + 56) = v157;
  v158 = v204;
  v150((v151 + v153[20]), v148, v204);
  v159 = v151 + v153[24];
  *v159 = 0;
  *(v159 + 8) = v203;
  *(v159 + 16) = v213;
  *(v159 + 24) = v205;
  *(v159 + 32) = v212;
  *(v159 + 40) = v206;
  v160 = v207;
  *(v159 + 48) = v211;
  *(v159 + 56) = v160;
  v161 = *(v149 + 8);
  v161(v148, v158);
  v162 = *(v215 + 8);
  v215 += 8;
  v162(v195, v155);
  sub_215324EEC(v151, v192, &qword_27CA5D048, &qword_2154C38D8);
  swift_storeEnumTagMultiPayload();
  v163 = MEMORY[0x277CE14C0];
  sub_2151ACC5C(&qword_27CA5D0C8, &qword_27CA5D068, &qword_2154C38F8, MEMORY[0x277CE14C0]);
  sub_2151ACC5C(&qword_27CA5D0D0, &qword_27CA5D048, &qword_2154C38D8, v163);
  sub_2154A039C();
  sub_2151ADCD8(v151, &qword_27CA5D048, &qword_2154C38D8);
  v161(v196, v204);
  return (v162)(v210, v214);
}

uint64_t sub_2154021C8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for RecordingView(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2154A053C();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = sub_21549E95C();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v1;
  v14 = *v1;
  swift_getKeyPath(byte_2154C32F8, v11);
  v33 = v14;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v15 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isPlaying;
  swift_beginAccess();
  if ((*(v14 + v15) & 1) == 0)
  {
    swift_getKeyPath(byte_2154C31B8);
    v32 = v14;
    sub_21549ED9C();

    v16 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
    swift_beginAccess();
    (*(v10 + 16))(v13, v14 + v16, v9);
    (*(v10 + 88))(v13, v9);
    (*(v10 + 8))(v13, v9);
  }

  sub_2154A052C();
  v17 = v27;
  sub_21539B7B8(v26, v27);
  v18 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v19 = swift_allocObject();
  sub_21541C94C(v17, v19 + v18, type metadata accessor for RecordingView);
  *(v19 + v18 + v3) = 1;
  v20 = v29;
  v21 = v30;
  (*(v29 + 16))(v28, v8, v30);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_21541B10C;
  *(v22 + 24) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D398, &qword_2154C3BD8);
  sub_21541DC34(&qword_27CA5D3A0, MEMORY[0x277CDE300], MEMORY[0x277CDE2F8]);
  sub_21541B1D8();
  sub_21549FABC();
  return (*(v20 + 8))(v8, v21);
}

__n128 sub_215402654@<Q0>(__n128 *a1@<X8>)
{
  v3 = sub_2154A011C();
  sub_2154026C0(&v8);
  v4 = v8;
  v5 = v10;
  v6 = v11;
  result = v9;
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = 0;
  a1[1].n128_u8[0] = 1;
  a1[1].n128_u64[1] = v4;
  a1[2] = result;
  a1[3].n128_u8[0] = v5;
  a1[3].n128_u64[1] = v6;
  return result;
}

double sub_2154026C0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2154A0D7C();
  v3 = [objc_opt_self() mainBundle];
  v4 = sub_2154A1D2C();
  v5 = [v3 localizedStringForKey:v4 value:0 table:0];

  sub_2154A1D6C();
  sub_215324954();
  v6 = sub_2154A092C();
  v8 = v7;
  *a1 = v2;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  v10 = v9 & 1;
  *(a1 + 24) = v9 & 1;
  *(a1 + 32) = v11;

  sub_21539227C(v6, v8, v10);

  sub_215354880(v6, v8, v10);

  return result;
}

id sub_21540281C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v282 = a2;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE90, &qword_2154C3750);
  v280 = *(v281 - 8);
  MEMORY[0x28223BE20](v281);
  v254 = &v232 - v3;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE98, &qword_2154C3758);
  v252 = *(v253 - 8);
  MEMORY[0x28223BE20](v253);
  v239 = &v232 - v4;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CEA0, &qword_2154C3760);
  v237 = *(v238 - 8);
  MEMORY[0x28223BE20](v238);
  v236 = &v232 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v255 = &v232 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CEA8, &qword_2154C3768);
  MEMORY[0x28223BE20](v8 - 8);
  v276 = &v232 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v286 = &v232 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE08, &qword_2154C36C8);
  MEMORY[0x28223BE20](v12 - 8);
  v262 = &v232 - v13;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CEB0, &qword_2154C3770);
  v260 = *(v261 - 8);
  MEMORY[0x28223BE20](v261);
  v242 = &v232 - v14;
  v249 = sub_21549E26C();
  v248 = *(v249 - 8);
  MEMORY[0x28223BE20](v249);
  v247 = &v232 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v246 = &v232 - v17;
  v245 = sub_21549E20C();
  v270 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v244 = &v232 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_21549E28C();
  v269 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v243 = &v232 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CEB8, &qword_2154C3778);
  MEMORY[0x28223BE20](v20 - 8);
  v258 = &v232 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v267 = &v232 - v23;
  v287 = sub_2154A0F3C();
  v298 = *(v287 - 8);
  MEMORY[0x28223BE20](v287);
  v296 = &v232 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v257 = &v232 - v26;
  MEMORY[0x28223BE20](v27);
  v277 = &v232 - v28;
  MEMORY[0x28223BE20](v29);
  v301 = &v232 - v30;
  MEMORY[0x28223BE20](v31);
  v268 = &v232 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CEC0, &qword_2154C3780);
  MEMORY[0x28223BE20](v33 - 8);
  v275 = &v232 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v299 = &v232 - v36;
  v285 = sub_21549E95C();
  v283 = *(v285 - 8);
  MEMORY[0x28223BE20](v285);
  v284 = &v232 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CEC8, &unk_2154C3788);
  MEMORY[0x28223BE20](v38 - 8);
  v279 = &v232 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v278 = &v232 - v41;
  v263 = type metadata accessor for RecordingView(0);
  v42 = *(v263 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v263);
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CED0, &unk_2154C04E0);
  v44 = *(v303 - 8);
  MEMORY[0x28223BE20](v303);
  v274 = &v232 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v259 = &v232 - v47;
  MEMORY[0x28223BE20](v48);
  v295 = &v232 - v49;
  MEMORY[0x28223BE20](v50);
  v235 = &v232 - v51;
  MEMORY[0x28223BE20](v52);
  v54 = &v232 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CED8, &unk_2154C3798);
  v240 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v251 = &v232 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v292 = &v232 - v58;
  MEMORY[0x28223BE20](v59);
  v294 = &v232 - v60;
  MEMORY[0x28223BE20](v61);
  v241 = &v232 - v62;
  MEMORY[0x28223BE20](v63);
  v256 = &v232 - v64;
  MEMORY[0x28223BE20](v65);
  v293 = &v232 - v66;
  MEMORY[0x28223BE20](v67);
  v302 = &v232 - v68;
  MEMORY[0x28223BE20](v69);
  v234 = (&v232 - v70);
  MEMORY[0x28223BE20](v71);
  v233 = (&v232 - v72);
  MEMORY[0x28223BE20](v73);
  v75 = &v232 - v74;
  MEMORY[0x28223BE20](v76);
  v78 = &v232 - v77;
  sub_21539B7B8(a1, &v232 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v291 = *(v42 + 80);
  v271 = v79 + v43;
  v80 = swift_allocObject();
  v272 = v79;
  v273 = &v232 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21541C94C(v273, v80 + v79, type metadata accessor for RecordingView);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CEE0, &qword_2154C1E80);
  v82 = sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0, &qword_2154C1E80, MEMORY[0x277CDEFF0]);
  v290 = v81;
  v289 = v82;
  sub_2154A0E3C();
  v288 = a1;
  v83 = *a1;
  v265 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel;
  result = [*(v83 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
  if (!result)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v85 = result;
  v86 = [result supportsRenaming];

  v87 = v86 ^ 1;
  KeyPath = swift_getKeyPath(asc_2154C3608);
  v89 = swift_allocObject();
  *(v89 + 16) = v87;
  v300 = v44;
  v90 = (v44 + 32);
  v91 = *(v44 + 32);
  v91(v75, v54, v303);
  v297 = v55;
  v92 = &v75[*(v55 + 36)];
  *v92 = KeyPath;
  v92[1] = sub_21541E308;
  v92[2] = v89;
  v93 = v78;
  sub_21533FB7C(v75, v78, &qword_27CA5CED8, &unk_2154C3798);
  swift_getKeyPath(byte_2154C31B8);
  v94 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  v307 = v83;
  v250 = sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v95 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  v96 = v283;
  v97 = v284;
  v98 = v285;
  (*(v283 + 16))(v284, v83 + v95, v285);
  LODWORD(v95) = (*(v96 + 88))(v97, v98);
  LODWORD(KeyPath) = *MEMORY[0x277D359D0];
  (*(v96 + 8))(v97, v98);
  v99 = v93;
  if (v95 != KeyPath)
  {
    v127 = 1;
    v128 = v278;
    v129 = v302;
LABEL_24:
    (*(v280 + 56))(v128, v127, 1, v281);
    sub_215324EEC(v99, v129, &qword_27CA5CED8, &unk_2154C3798);
    v229 = v279;
    sub_215324EEC(v128, v279, &qword_27CA5CEC8, &unk_2154C3788);
    v230 = v282;
    sub_215324EEC(v129, v282, &qword_27CA5CED8, &unk_2154C3798);
    v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CEF0, &qword_2154C37A8);
    sub_215324EEC(v229, v230 + *(v231 + 48), &qword_27CA5CEC8, &unk_2154C3788);
    sub_2151ADCD8(v128, &qword_27CA5CEC8, &unk_2154C3788);
    sub_2151ADCD8(v99, &qword_27CA5CED8, &unk_2154C3798);
    sub_2151ADCD8(v229, &qword_27CA5CEC8, &unk_2154C3788);
    return sub_2151ADCD8(v129, &qword_27CA5CED8, &unk_2154C3798);
  }

  v283 = v94;
  v266 = v83;
  v285 = v91;
  v284 = v90;
  v100 = v288;
  v101 = v288 + *(v263 + 56);
  v102 = *v101;
  v103 = *(v101 + 1);
  LOBYTE(v304) = v102;
  v305 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40, &unk_2154BFA90);
  sub_2154A0DEC();
  v104 = 1;
  v232 = v93;
  if (v306 != 1)
  {
LABEL_16:
    (*(v260 + 56))(v299, v104, 1, v261);
    sub_2154A0F2C();
    v173 = v273;
    sub_21539B7B8(v100, v273);
    v174 = swift_allocObject();
    v175 = v272;
    v270 = type metadata accessor for RecordingView;
    sub_21541C94C(v173, v174 + v272, type metadata accessor for RecordingView);
    sub_2154A0E3C();
    sub_21539B7B8(v100, v173);
    v176 = swift_allocObject();
    sub_21541C94C(v173, v176 + v175, type metadata accessor for RecordingView);
    v177 = v294;
    sub_2154A0E3C();
    swift_getKeyPath(aH_1);
    v178 = v100;
    v179 = v266;
    v304 = v266;
    sub_21549ED9C();

    v180 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__canBePlayedBack;
    swift_beginAccess();
    v181 = *(v179 + v180);
    v182 = swift_getKeyPath(asc_2154C3608);
    v183 = swift_allocObject();
    *(v183 + 16) = (v181 & 1) == 0;
    v184 = (v177 + *(v297 + 36));
    *v184 = v182;
    v184[1] = sub_21541E308;
    v184[2] = v183;
    v185 = v262;
    sub_21549F95C();
    v186 = sub_21549F98C();
    (*(*(v186 - 8) + 56))(v185, 0, 1, v186);
    sub_21539B7B8(v178, v173);
    v187 = swift_allocObject();
    sub_21541C94C(v173, v187 + v175, v270);
    v188 = v259;
    sub_2154A0E2C();
    result = [*(v179 + v265) attachment];
    if (result)
    {
      v189 = result;
      v190 = [result note];

      v191 = v286;
      v192 = v301;
      v193 = v285;
      if (v190)
      {
        v194 = [v190 isEditable];

        v195 = v194 ^ 1;
      }

      else
      {
        v195 = 1;
      }

      v196 = swift_getKeyPath(asc_2154C3608, v232);
      v197 = swift_allocObject();
      *(v197 + 16) = v195;
      v198 = v251;
      v193(v251, v188, v303);
      v199 = (v198 + *(v297 + 36));
      *v199 = v196;
      v199[1] = sub_21541E308;
      v199[2] = v197;
      sub_21533FB7C(v198, v292, &qword_27CA5CED8, &unk_2154C3798);
      if (ICDebugModeEnabled())
      {
        v200 = sub_2154A0F2C();
        MEMORY[0x28223BE20](v200);
        *(&v232 - 2) = v288;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF00, &qword_2154C37B8);
        v201 = v192;
        sub_2151ACC5C(&qword_27CA5CF08, &qword_27CA5CF00, &qword_2154C37B8, MEMORY[0x277CE14C0]);
        v202 = v255;
        sub_2154A087C();
        v203 = *(v298 + 16);
        v204 = v277;
        v205 = v287;
        v203(v277, v201, v287);
        v206 = v237;
        v207 = *(v237 + 16);
        v208 = v236;
        v209 = v238;
        v207(v236, v202, v238);
        v210 = v239;
        v203(v239, v204, v205);
        v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF10, &qword_2154C37C0);
        v207((v210 + *(v211 + 48)), v208, v209);
        v212 = v298;
        v213 = *(v206 + 8);
        v192 = v301;
        v213(v255, v209);
        v214 = *(v212 + 8);
        v214(v192, v205);
        v213(v208, v209);
        v191 = v286;
        v214(v277, v205);
        sub_21533FB7C(v210, v191, &qword_27CA5CE98, &qword_2154C3758);
        v215 = 0;
      }

      else
      {
        v215 = 1;
        v212 = v298;
        v205 = v287;
      }

      (*(v252 + 56))(v191, v215, 1, v253);
      v216 = v275;
      sub_215324EEC(v299, v275, &qword_27CA5CEC0, &qword_2154C3780);
      v297 = *(v212 + 16);
      (v297)(v192, v296, v205);
      v217 = v205;
      v291 = *(v300 + 16);
      v218 = v274;
      v291(v274, v295, v303);
      v219 = v302;
      sub_215324EEC(v294, v302, &qword_27CA5CED8, &unk_2154C3798);
      sub_215324EEC(v292, v293, &qword_27CA5CED8, &unk_2154C3798);
      sub_215324EEC(v191, v276, &qword_27CA5CEA8, &qword_2154C3768);
      v220 = v216;
      v221 = v254;
      sub_215324EEC(v220, v254, &qword_27CA5CEC0, &qword_2154C3780);
      v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CEF8, &qword_2154C37B0);
      (v297)(v221 + v222[12], v192, v217);
      v129 = v219;
      v223 = v303;
      v291((v221 + v222[16]), v218, v303);
      sub_215324EEC(v219, v221 + v222[20], &qword_27CA5CED8, &unk_2154C3798);
      v224 = v293;
      sub_215324EEC(v293, v221 + v222[24], &qword_27CA5CED8, &unk_2154C3798);
      v225 = v276;
      sub_215324EEC(v276, v221 + v222[28], &qword_27CA5CEA8, &qword_2154C3768);
      sub_2151ADCD8(v286, &qword_27CA5CEA8, &qword_2154C3768);
      sub_2151ADCD8(v292, &qword_27CA5CED8, &unk_2154C3798);
      sub_2151ADCD8(v294, &qword_27CA5CED8, &unk_2154C3798);
      v226 = *(v300 + 8);
      v300 += 8;
      v226(v295, v223);
      v227 = *(v298 + 8);
      v228 = v287;
      v227(v296, v287);
      sub_2151ADCD8(v299, &qword_27CA5CEC0, &qword_2154C3780);
      sub_2151ADCD8(v225, &qword_27CA5CEA8, &qword_2154C3768);
      sub_2151ADCD8(v224, &qword_27CA5CED8, &unk_2154C3798);
      sub_2151ADCD8(v129, &qword_27CA5CED8, &unk_2154C3798);
      v226(v274, v223);
      v227(v301, v228);
      sub_2151ADCD8(v275, &qword_27CA5CEC0, &qword_2154C3780);
      v128 = v278;
      sub_21533FB7C(v221, v278, &qword_27CA5CE90, &qword_2154C3750);
      v127 = 0;
      v99 = v232;
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  sub_2154A0F2C();
  Strong = swift_unknownObjectWeakLoadStrong();
  v106 = v285;
  if (!Strong)
  {
    v130 = 1;
    v131 = v297;
    v132 = v267;
    v108 = v270;
LABEL_15:
    (*(v240 + 56))(v132, v130, 1, v131);

    sub_2154A0E3C();
    v263 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_liveTranscriptionCoordinator;

    v139 = v243;
    sub_21549EC0C();

    v140 = v244;
    sub_21549E1AC();
    v240 = sub_21541DC34(&qword_27CA5CF18, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
    v141 = v246;
    v142 = v245;
    sub_2154A210C();
    v143 = v247;
    sub_2154A212C();
    v235 = sub_21541DC34(&qword_27CA5CF20, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
    v144 = v249;
    v145 = sub_2154A1D1C();
    v146 = *(v248 + 1);
    v233 = v146;
    (v146)(v143, v144);
    (v146)(v141, v144);
    v147 = *(v108 + 1);
    v270 = (v108 + 8);
    v248 = v147;
    v147(v140, v142);
    v148 = *(v269 + 8);
    v269 += 8;
    v234 = v148;
    v148(v139, v264);
    v149 = swift_getKeyPath(asc_2154C3608);
    v150 = swift_allocObject();
    *(v150 + 16) = v145 & 1;
    v151 = (v302 + *(v297 + 36));
    *v151 = v149;
    v151[1] = sub_21541E308;
    v151[2] = v150;
    sub_2154A0F2C();
    v152 = v273;
    sub_21539B7B8(v288, v273);
    v153 = swift_allocObject();
    sub_21541C94C(v152, v153 + v272, type metadata accessor for RecordingView);
    v154 = v293;
    sub_2154A0E3C();

    sub_21549EC0C();

    v155 = v139;
    sub_21549E1AC();
    sub_2154A210C();
    sub_2154A212C();
    LOBYTE(v139) = sub_2154A1D1C();
    v156 = v233;
    (v233)(v143, v144);
    v156(v141, v144);
    v248(v140, v142);
    v234(v155, v264);
    v157 = swift_getKeyPath(asc_2154C3608);
    v158 = swift_allocObject();
    *(v158 + 16) = v139 & 1;
    v159 = v298;
    v160 = (v154 + *(v297 + 36));
    *v160 = v157;
    v160[1] = sub_21541E308;
    v160[2] = v158;
    v161 = *(v159 + 16);
    v162 = v277;
    v163 = v287;
    v161(v277, v268, v287);
    v164 = v258;
    sub_215324EEC(v267, v258, &qword_27CA5CEB8, &qword_2154C3778);
    sub_215324EEC(v302, v256, &qword_27CA5CED8, &unk_2154C3798);
    v161(v257, v301, v163);
    v165 = v241;
    sub_215324EEC(v154, v241, &qword_27CA5CED8, &unk_2154C3798);
    v166 = v242;
    v161(v242, v162, v163);
    v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF28, &qword_2154C37C8);
    sub_215324EEC(v164, v166 + v167[12], &qword_27CA5CEB8, &qword_2154C3778);
    v168 = v256;
    sub_215324EEC(v256, v166 + v167[16], &qword_27CA5CED8, &unk_2154C3798);
    v169 = v257;
    v161((v166 + v167[20]), v257, v163);
    v170 = v167[24];
    v171 = v163;
    sub_215324EEC(v165, v166 + v170, &qword_27CA5CED8, &unk_2154C3798);
    sub_2151ADCD8(v293, &qword_27CA5CED8, &unk_2154C3798);
    v172 = *(v298 + 8);
    v172(v301, v171);
    sub_2151ADCD8(v302, &qword_27CA5CED8, &unk_2154C3798);
    sub_2151ADCD8(v267, &qword_27CA5CEB8, &qword_2154C3778);
    v172(v268, v171);
    sub_2151ADCD8(v165, &qword_27CA5CED8, &unk_2154C3798);
    v172(v169, v171);
    sub_2151ADCD8(v168, &qword_27CA5CED8, &unk_2154C3798);
    sub_2151ADCD8(v258, &qword_27CA5CEB8, &qword_2154C3778);
    v172(v277, v171);
    v100 = v288;
    sub_21533FB7C(v166, v299, &qword_27CA5CEB0, &qword_2154C3770);
    v104 = 0;
    goto LABEL_16;
  }

  v107 = [Strong textView];
  swift_unknownObjectRelease();
  v108 = v270;
  if (!v107)
  {
    v130 = 1;
    v131 = v297;
    v132 = v267;
    goto LABEL_15;
  }

  v109 = v273;
  sub_21539B7B8(v100, v273);
  v110 = (v271 + 7) & 0xFFFFFFFFFFFFFFF8;
  v111 = swift_allocObject();
  sub_21541C94C(v109, v111 + v272, type metadata accessor for RecordingView);
  *(v111 + v110) = v107;
  v112 = v107;
  v113 = v235;
  sub_2154A0E3C();
  result = [*(v266 + v265) attachment];
  if (result)
  {
    v114 = result;
    v115 = [result note];

    if (v115 && (v116 = [v115 isEditable], v115, (v116 & 1) != 0))
    {

      v117 = v243;
      sub_21549EC0C();

      v118 = v244;
      sub_21549E1AC();
      sub_21541DC34(&qword_27CA5CF18, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
      v119 = v246;
      v120 = v245;
      sub_2154A210C();
      v121 = v247;
      sub_2154A212C();
      sub_21541DC34(&qword_27CA5CF20, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
      v122 = v249;
      v123 = sub_2154A1D1C();

      v124 = *(v248 + 1);
      v125 = v121;
      v106 = v285;
      v124(v125, v122);
      v124(v119, v122);
      v108 = v270;
      v126 = v118;
      v113 = v235;
      (*(v270 + 1))(v126, v120);
      (*(v269 + 8))(v117, v264);
    }

    else
    {

      v123 = 1;
      v108 = v270;
    }

    v133 = swift_getKeyPath(asc_2154C3608, v232);
    v134 = swift_allocObject();
    *(v134 + 16) = v123 & 1;
    v135 = v234;
    v106(v234, v113, v303);
    v131 = v297;
    v136 = (v135 + *(v297 + 36));
    *v136 = v133;
    v136[1] = sub_21541E308;
    v136[2] = v134;
    v137 = v233;
    sub_21533FB7C(v135, v233, &qword_27CA5CED8, &unk_2154C3798);
    v138 = v137;
    v132 = v267;
    sub_21533FB7C(v138, v267, &qword_27CA5CED8, &unk_2154C3798);
    v130 = 0;
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
  return result;
}