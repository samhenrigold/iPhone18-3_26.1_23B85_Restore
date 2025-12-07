uint64_t sub_1001309C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_identifier;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *sub_100130A3C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for HMDeviceCloudRecord(0));
  result = HMDeviceCloudRecord.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100130AB8(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v109 = v4;
  v110 = v5;
  __chkstk_darwin(v4);
  v7 = &v101[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000EE870(&qword_1002F8B30, &unk_1002288C0);
  __chkstk_darwin(v8);
  v107 = &v101[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v101[-v11];
  v13 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v13 - 8);
  v105 = &v101[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v111 = &v101[-v16];
  __chkstk_darwin(v17);
  v19 = &v101[-v18];
  __chkstk_darwin(v20);
  v22 = &v101[-v21];
  __chkstk_darwin(v23);
  v25 = &v101[-v24];
  if (sub_1001319F8(a1))
  {
    v104 = v19;
    v26 = a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus];
    if (qword_1002F7A20 != -1)
    {
      swift_once();
    }

    if (v26 != byte_1002F8A60 && *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus) != v26)
    {
      *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus) = v26;
    }

    v27 = a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2];
    if (qword_1002F7A28 != -1)
    {
      swift_once();
    }

    if (v27 != byte_1002F8A61 && *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2) != v27)
    {
      *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2) = v27;
    }

    v28 = a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus];
    if (qword_1002F7A30 != -1)
    {
      swift_once();
    }

    if (v28 != byte_1002F8A62 && *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus) != v28)
    {
      *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus) = v28;
    }

    v29 = a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus];
    if (qword_1002F7A38 != -1)
    {
      swift_once();
    }

    if (v29 != byte_1002F8A63 && *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus) != v29)
    {
      *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus) = v29;
    }

    v30 = a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled];
    if (qword_1002F7A40 != -1)
    {
      swift_once();
    }

    if (v30 != byte_1002F8A64 && *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled) != v30)
    {
      *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled) = v30;
    }

    v31 = a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled];
    if (qword_1002F7A48 != -1)
    {
      swift_once();
    }

    if (v31 != byte_1002F8A65 && *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled) != v31)
    {
      *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled) = v31;
    }

    v32 = a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled];
    if (qword_1002F7A50 != -1)
    {
      swift_once();
    }

    if (v32 != byte_1002F8A66 && *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled) != v32)
    {
      *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled) = v32;
    }

    v33 = a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled];
    if (qword_1002F7A58 != -1)
    {
      swift_once();
    }

    if (v33 != byte_1002F8A67 && *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled) != v33)
    {
      *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled) = v33;
    }

    if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft + 4] & 1) == 0)
    {
      v34 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft];
      v35 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft;
      if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft + 4) & 1) != 0 || *v35 != v34)
      {
        *v35 = v34;
        *(v35 + 4) = 0;
      }
    }

    if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight + 4] & 1) == 0)
    {
      v36 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight];
      v37 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight;
      if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight + 4) & 1) != 0 || *v37 != v36)
      {
        *v37 = v36;
        *(v37 + 4) = 0;
      }
    }

    if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount + 4] & 1) == 0)
    {
      v38 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount];
      v39 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount;
      if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount + 4) & 1) != 0 || *v39 != v38)
      {
        *v39 = v38;
        *(v39 + 4) = 0;
      }
    }

    if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft + 4] & 1) == 0)
    {
      v40 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft];
      v41 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft;
      if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft + 4) & 1) != 0 || *v41 != v40)
      {
        *v41 = v40;
        *(v41 + 4) = 0;
      }
    }

    if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight + 4] & 1) == 0)
    {
      v42 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight];
      v43 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight;
      if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight + 4) & 1) != 0 || *v43 != v42)
      {
        *v43 = v42;
        *(v43 + 4) = 0;
      }
    }

    if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft + 4] & 1) == 0)
    {
      v44 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft];
      v45 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft;
      if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft + 4) & 1) != 0 || *v45 != v44)
      {
        *v45 = v44;
        *(v45 + 4) = 0;
      }
    }

    if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight + 4] & 1) == 0)
    {
      v46 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight];
      v47 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight;
      if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight + 4) & 1) != 0 || *v47 != v46)
      {
        *v47 = v46;
        *(v47 + 4) = 0;
      }
    }

    if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft + 4] & 1) == 0)
    {
      v48 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft];
      v49 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft;
      if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft + 4) & 1) != 0 || *v49 != v48)
      {
        *v49 = v48;
        *(v49 + 4) = 0;
      }
    }

    v106 = v7;
    if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight + 4] & 1) == 0)
    {
      v50 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight];
      v51 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight;
      if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight + 4) & 1) != 0 || *v51 != v50)
      {
        *v51 = v50;
        *(v51 + 4) = 0;
      }
    }

    v52 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
    swift_beginAccess();
    sub_10013250C(&a1[v52], v25);
    v53 = v109;
    v54 = *(v110 + 48);
    v108 = v25;
    if (v54() != 1)
    {
      v55 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
      swift_beginAccess();
      v56 = *(v8 + 48);
      sub_10013250C(v2 + v55, v12);
      sub_10013250C(v108, &v12[v56]);
      if ((v54)(v12, 1, v53) == 1)
      {
        if ((v54)(&v12[v56], 1, v53) == 1)
        {
          sub_1000EEE6C(v12, &qword_1002F7EF0, &unk_100226C90);
          v53 = v109;
          goto LABEL_91;
        }

        goto LABEL_89;
      }

      sub_10013250C(v12, v22);
      if ((v54)(&v12[v56], 1, v53) == 1)
      {
        (*(v110 + 8))(v22, v53);
LABEL_89:
        sub_1000EEE6C(v12, &qword_1002F8B30, &unk_1002288C0);
        v53 = v109;
LABEL_90:
        v66 = v104;
        sub_10013250C(v108, v104);
        swift_beginAccess();
        sub_10013261C(v66, v2 + v55);
        swift_endAccess();
        goto LABEL_91;
      }

      v103 = v8;
      v95 = v110;
      (*(v110 + 32))(v106, &v12[v56], v53);
      sub_10013353C(&unk_1002F9600, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v102 = dispatch thunk of static Equatable.== infix(_:_:)();
      v96 = *(v95 + 8);
      v96(v106, v53);
      v96(v22, v53);
      v8 = v103;
      sub_1000EEE6C(v12, &qword_1002F7EF0, &unk_100226C90);
      if ((v102 & 1) == 0)
      {
        goto LABEL_90;
      }
    }

LABEL_91:
    v67 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
    swift_beginAccess();
    v68 = v111;
    sub_10013250C(&a1[v67], v111);
    v69 = (v54)(v68, 1, v53);
    v70 = v53;
    if (v69 == 1)
    {
      goto LABEL_99;
    }

    v71 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
    swift_beginAccess();
    v72 = *(v8 + 48);
    v73 = v107;
    sub_10013250C(v2 + v71, v107);
    sub_10013250C(v111, &v73[v72]);
    if ((v54)(v73, 1, v70) == 1)
    {
      if ((v54)(&v73[v72], 1, v70) == 1)
      {
        sub_1000EEE6C(v73, &qword_1002F7EF0, &unk_100226C90);
        goto LABEL_99;
      }
    }

    else
    {
      v74 = v105;
      sub_10013250C(v73, v105);
      if ((v54)(&v73[v72], 1, v70) != 1)
      {
        v97 = v110;
        v98 = v106;
        (*(v110 + 32))(v106, &v73[v72], v70);
        sub_10013353C(&unk_1002F9600, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v99 = dispatch thunk of static Equatable.== infix(_:_:)();
        v100 = *(v97 + 8);
        v100(v98, v70);
        v100(v74, v70);
        sub_1000EEE6C(v73, &qword_1002F7EF0, &unk_100226C90);
        if (v99)
        {
LABEL_99:
          if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft + 4] & 1) == 0)
          {
            v76 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft];
            v77 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft;
            if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft + 4) & 1) != 0 || *v77 != v76)
            {
              *v77 = v76;
              *(v77 + 4) = 0;
            }
          }

          v78 = v108;
          if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight + 4] & 1) == 0)
          {
            v79 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight];
            v80 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight;
            if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight + 4) & 1) != 0 || *v80 != v79)
            {
              *v80 = v79;
              *(v80 + 4) = 0;
            }
          }

          if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft + 4] & 1) == 0)
          {
            v81 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft];
            v82 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft;
            if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft + 4) & 1) != 0 || *v82 != v81)
            {
              *v82 = v81;
              *(v82 + 4) = 0;
            }
          }

          v83 = v106;
          if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight + 4] & 1) == 0)
          {
            v84 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight];
            v85 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight;
            if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight + 4) & 1) != 0 || *v85 != v84)
            {
              *v85 = v84;
              *(v85 + 4) = 0;
            }
          }

          if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft + 4] & 1) == 0)
          {
            v86 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft];
            v87 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft;
            if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft + 4) & 1) != 0 || *v87 != v86)
            {
              *v87 = v86;
              *(v87 + 4) = 0;
            }
          }

          if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight + 4] & 1) == 0)
          {
            v88 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight];
            v89 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight;
            if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight + 4) & 1) != 0 || *v89 != v88)
            {
              *v89 = v88;
              *(v89 + 4) = 0;
            }
          }

          if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft + 4] & 1) == 0)
          {
            v90 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft];
            v91 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft;
            if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft + 4) & 1) != 0 || *v91 != v90)
            {
              *v91 = v90;
              *(v91 + 4) = 0;
            }
          }

          if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight + 4] & 1) == 0)
          {
            v92 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight];
            v93 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight;
            if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight + 4) & 1) != 0 || *v93 != v92)
            {
              *v93 = v92;
              *(v93 + 4) = 0;
            }
          }

          static Date.now.getter();
          v94 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_lastModifiedDate;
          swift_beginAccess();
          (*(v110 + 40))(v2 + v94, v83, v70);
          swift_endAccess();
          sub_1000EEE6C(v111, &qword_1002F7EF0, &unk_100226C90);
          return sub_1000EEE6C(v78, &qword_1002F7EF0, &unk_100226C90);
        }

LABEL_98:
        v75 = v104;
        sub_10013250C(v111, v104);
        swift_beginAccess();
        sub_10013261C(v75, v2 + v71);
        swift_endAccess();
        goto LABEL_99;
      }

      (*(v110 + 8))(v74, v70);
    }

    sub_1000EEE6C(v73, &qword_1002F8B30, &unk_1002288C0);
    goto LABEL_98;
  }

  v57 = static os_log_type_t.info.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v58 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_100226100;
  v60 = a1;
  v61 = [v60 description];
  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;

  *(v59 + 56) = &type metadata for String;
  *(v59 + 64) = sub_1000EE954();
  *(v59 + 32) = v62;
  *(v59 + 40) = v64;
  os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v58, "No change in updated device: %@", 31, 2, v59);
}

uint64_t sub_1001319F8(_BYTE *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EE870(&qword_1002F8B30, &unk_1002288C0);
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  v13 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v13 - 8);
  __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  v21 = &v45 - v20;
  if (!a1)
  {
    return 0;
  }

  if (a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus) || a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2) || a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus) || a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus) || a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled) || a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled) || a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled) || a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled) || (a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft + 4] & 1) == 0 && ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft)))
  {
    return 1;
  }

  if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight + 4] & 1) == 0 && ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight)))
  {
    return 1;
  }

  if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount + 4] & 1) == 0 && ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount)))
  {
    return 1;
  }

  if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft + 4] & 1) == 0 && ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft)))
  {
    return 1;
  }

  if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight + 4] & 1) == 0 && ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight)))
  {
    return 1;
  }

  if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft + 4] & 1) == 0 && ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft)))
  {
    return 1;
  }

  v22 = a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight + 4];
  v53 = v18;
  if ((v22 & 1) == 0 && ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight)))
  {
    return 1;
  }

  v48 = v17;
  v49 = v19;
  if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft + 4] & 1) == 0 && ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft)))
  {
    return 1;
  }

  v52 = v1;
  if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight + 4] & 1) == 0 && ((*(v52 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight] != *(v52 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight)))
  {
    return 1;
  }

  v23 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
  swift_beginAccess();
  sub_10013250C(&a1[v23], v21);
  v50 = *(v4 + 48);
  v51 = v4 + 48;
  if (v50(v21, 1, v3) == 1)
  {
    v24 = a1;
    goto LABEL_21;
  }

  v47 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
  v32 = v52;
  swift_beginAccess();
  v33 = *(v7 + 48);
  sub_10013250C(v21, v12);
  sub_10013250C(v32 + v47, &v12[v33]);
  if (v50(v12, 1, v3) == 1)
  {
    if (v50(&v12[v33], 1, v3) == 1)
    {
      v34 = a1;
      sub_1000EEE6C(v12, &qword_1002F7EF0, &unk_100226C90);
      goto LABEL_21;
    }

LABEL_67:
    v38 = &qword_1002F8B30;
    v39 = &unk_1002288C0;
    v40 = v12;
LABEL_98:
    sub_1000EEE6C(v40, v38, v39);
    goto LABEL_99;
  }

  sub_10013250C(v12, v49);
  if (v50(&v12[v33], 1, v3) == 1)
  {
    (*(v4 + 8))(v49, v3);
    goto LABEL_67;
  }

  (*(v4 + 32))(v6, &v12[v33], v3);
  sub_10013353C(&unk_1002F9600, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v46 = a1;
  LODWORD(v47) = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v4 + 8);
  v41(v6, v3);
  v41(v49, v3);
  sub_1000EEE6C(v12, &qword_1002F7EF0, &unk_100226C90);
  if ((v47 & 1) == 0)
  {

LABEL_99:
    v30 = 1;
    goto LABEL_100;
  }

LABEL_21:
  v25 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
  swift_beginAccess();
  v26 = &a1[v25];
  v27 = v53;
  sub_10013250C(v26, v53);
  if (v50(v27, 1, v3) == 1)
  {
    goto LABEL_22;
  }

  v35 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
  v36 = v52;
  swift_beginAccess();
  v37 = *(v7 + 48);
  sub_10013250C(v53, v9);
  sub_10013250C(v36 + v35, &v9[v37]);
  if (v50(v9, 1, v3) == 1)
  {
    if (v50(&v9[v37], 1, v3) == 1)
    {
      sub_1000EEE6C(v9, &qword_1002F7EF0, &unk_100226C90);
      goto LABEL_22;
    }

LABEL_82:
    sub_1000EEE6C(v9, &qword_1002F8B30, &unk_1002288C0);
LABEL_97:
    v38 = &qword_1002F7EF0;
    v39 = &unk_100226C90;
    v40 = v53;
    goto LABEL_98;
  }

  sub_10013250C(v9, v48);
  if (v50(&v9[v37], 1, v3) == 1)
  {

    (*(v4 + 8))(v48, v3);
    goto LABEL_82;
  }

  (*(v4 + 32))(v6, &v9[v37], v3);
  sub_10013353C(&unk_1002F9600, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v42 = v48;
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v4 + 8);
  v44(v6, v3);
  v44(v42, v3);
  sub_1000EEE6C(v9, &qword_1002F7EF0, &unk_100226C90);
  if ((v43 & 1) == 0)
  {
LABEL_96:

    goto LABEL_97;
  }

LABEL_22:
  if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft + 4] & 1) == 0 && ((*(v52 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft] != *(v52 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft)) || (a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight + 4] & 1) == 0 && ((*(v52 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight] != *(v52 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight)) || (a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft + 4] & 1) == 0 && ((*(v52 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft] != *(v52 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft)) || (a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight + 4] & 1) == 0 && ((*(v52 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight] != *(v52 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight)) || (a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft + 4] & 1) == 0 && ((*(v52 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft] != *(v52 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft)) || (a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight + 4] & 1) == 0 && ((*(v52 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight] != *(v52 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight)) || (a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft + 4] & 1) == 0 && ((*(v52 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft] != *(v52 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft)))
  {
    goto LABEL_96;
  }

  v28 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight];
  v29 = a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight + 4];

  if ((v29 & 1) == 0 && ((*(v52 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight + 4) & 1) != 0 || v28 != *(v52 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight)))
  {
    goto LABEL_97;
  }

  sub_1000EEE6C(v53, &qword_1002F7EF0, &unk_100226C90);
  v30 = 0;
LABEL_100:
  sub_1000EEE6C(v21, &qword_1002F7EF0, &unk_100226C90);
  return v30;
}

uint64_t sub_10013250C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10013257C()
{
  result = qword_1002F8A98;
  if (!qword_1002F8A98)
  {
    result = swift_getWitnessTable(&unk_100228864, &type metadata for HMDeviceCloudRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8A98);
  }

  return result;
}

uint64_t type metadata accessor for HMDeviceCloudRecord(uint64_t a1)
{
  result = qword_1002F8AF8;
  if (!qword_1002F8AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013261C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013268C(uint64_t a1)
{
  result = sub_10013353C(&qword_1002F8AB8, type metadata accessor for HMDeviceCloudRecord, &unk_1002286BC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001326E4(uint64_t a1)
{
  *(a1 + 8) = sub_10013353C(&unk_1002F8AC0, type metadata accessor for HMDeviceCloudRecord, &protocol conformance descriptor for HMDeviceCloudRecord);
  result = sub_10013353C(&unk_1002F9DF0, type metadata accessor for HMDeviceCloudRecord, &protocol conformance descriptor for HMDeviceCloudRecord);
  *(a1 + 16) = result;
  return result;
}

void sub_100132770(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1001328D8(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1001328D8(uint64_t a1)
{
  if (!qword_1002F95E0)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1002F95E0);
    }
  }
}

uint64_t getEnumTagSinglePayload for HMDeviceCloudRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HMDeviceCloudRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100132A84()
{
  result = qword_1002F8B10;
  if (!qword_1002F8B10)
  {
    result = swift_getWitnessTable(&unk_10022883C, &type metadata for HMDeviceCloudRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8B10);
  }

  return result;
}

unint64_t sub_100132ADC()
{
  result = qword_1002F8B18;
  if (!qword_1002F8B18)
  {
    result = swift_getWitnessTable(&unk_1002287AC, &type metadata for HMDeviceCloudRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8B18);
  }

  return result;
}

unint64_t sub_100132B34()
{
  result = qword_1002F8B20;
  if (!qword_1002F8B20)
  {
    result = swift_getWitnessTable(&unk_1002287D4, &type metadata for HMDeviceCloudRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8B20);
  }

  return result;
}

uint64_t sub_100132B88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74654D64756F6C63 && a2 == 0xED00006174616461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100267080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F696765526168 && a2 == 0xEE00737574617453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010026A150 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010026A170 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F696765527068 && a2 == 0xEE00737574617453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010026A1A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x616964654D656D70 && a2 == 0xEF64656C62616E45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6563696F56656D70 && a2 == 0xEF64656C62616E45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010026A1E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010026A200 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010026A220 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010026A240 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010026A260 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010026A280 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010026A2A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010026A2C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010026A2E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010026A300 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000010026A320 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000010026A340 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010026A360 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010026A380 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010026A3A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010026A3C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010026A3E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010026A400 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000025 && 0x800000010026A420 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000026 && 0x800000010026A450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002672B0 == a2)
  {

    return 30;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 30;
    }

    else
    {
      return 31;
    }
  }
}

unint64_t sub_1001334E8()
{
  result = qword_1002F8B38;
  if (!qword_1002F8B38)
  {
    result = swift_getWitnessTable(&unk_100228954, &type metadata for HMDeviceCloudRecord.HMDeviceCloudRecordError, v0, v1);
    atomic_store(result, &qword_1002F8B38);
  }

  return result;
}

uint64_t sub_10013353C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_100133584(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1001335FC()
{
  result = qword_1002F8B48;
  if (!qword_1002F8B48)
  {
    result = swift_getWitnessTable(&unk_10022892C, &type metadata for HMDeviceCloudRecord.HMDeviceCloudRecordError, v0, v1);
    atomic_store(result, &qword_1002F8B48);
  }

  return result;
}

uint64_t sub_100133650()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE8B8(v7, qword_100300D48);
  sub_1000EE91C(v3, qword_100300D48);
  URL.init(string:)();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

Class sub_100133818()
{
  v1 = type metadata accessor for Date();
  v81 = *(v1 - 8);
  __chkstk_darwin(v1);
  v80 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v3 - 8);
  v84 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v79 - v6;
  __chkstk_darwin(v8);
  v10 = &v79 - v9;
  __chkstk_darwin(v11);
  v13 = &v79 - v12;
  v14 = objc_autoreleasePoolPush();
  sub_100135EE0(v0, &v86);
  objc_autoreleasePoolPop(v14);
  v15 = v86;
  v86 = 0;
  v87 = 0xE000000000000000;
  _StringGuts.grow(_:)(205);
  v16._countAndFlagsBits = 0xD000000000000021;
  v16._object = 0x800000010026AA60;
  String.append(_:)(v16);
  type metadata accessor for UUID();
  sub_1001399D0(&unk_1002F7BC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 8236;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = type metadata accessor for DeviceSupportInformationRecord(0);
  String.append(_:)(*(v0 + v19[6]));
  v20._object = 0x800000010026AA90;
  v20._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v20);
  String.append(_:)(*(v0 + v19[7]));
  v21._object = 0x800000010026AAB0;
  v21._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v21);
  String.append(_:)(*(v0 + v19[9]));
  v22._countAndFlagsBits = 0xD000000000000014;
  v22._object = 0x800000010026AAD0;
  String.append(_:)(v22);
  String.append(_:)(*(v0 + v19[10]));
  v23._object = 0x800000010026AAF0;
  v23._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v23);
  String.append(_:)(*(v0 + v19[11]));
  v24._object = 0x800000010026AB10;
  v24._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v24);
  String.append(_:)(*(v0 + v19[12]));
  v25._countAndFlagsBits = 0xD000000000000018;
  v25._object = 0x800000010026AB30;
  String.append(_:)(v25);
  String.append(_:)(*(v0 + v19[13]));
  v26._object = 0x800000010026AB50;
  v26._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v26);
  String.append(_:)(*(v0 + v19[14]));
  v27._countAndFlagsBits = 10;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  v82 = v86;
  v83 = v87;
  v86 = 0;
  v87 = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  v28._countAndFlagsBits = 0x7461657263202020;
  v28._object = 0xEE00203A6E4F6465;
  String.append(_:)(v28);
  v85 = v15;
  v29 = [(objc_class *)v15 creationDate];
  if (v29)
  {
    v30 = v29;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = v81;
    v32 = *(v81 + 7);
    v32(v10, 0, 1, v1);
  }

  else
  {
    v31 = v81;
    v32 = *(v81 + 7);
    v32(v10, 1, 1, v1);
  }

  sub_1000EED5C(v10, v13);
  v33 = *(v31 + 6);
  if (v33(v13, 1, v1))
  {
    sub_1000EEE6C(v13, &qword_1002F7EF0, &unk_100226C90);
    v34 = 0xE200000000000000;
    v35 = 15932;
  }

  else
  {
    v36 = *(v31 + 2);
    v81 = v7;
    v37 = v80;
    v36(v80, v13, v1);
    sub_1000EEE6C(v13, &qword_1002F7EF0, &unk_100226C90);
    v38 = objc_opt_self();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v40 = [v38 localizedStringFromDate:isa dateStyle:2 timeStyle:2];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v42;

    v43 = v37;
    v7 = v81;
    (*(v31 + 1))(v43, v1);
    v35 = v41;
  }

  v44 = v34;
  String.append(_:)(*&v35);

  v45._countAndFlagsBits = 0x696669646F6D202CLL;
  v45._object = 0xEE00203A6E4F6465;
  String.append(_:)(v45);
  v46 = v85;
  v47 = [(objc_class *)v85 modificationDate];
  if (v47)
  {
    v48 = v84;
    v49 = v47;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = 0;
  }

  else
  {
    v50 = 1;
    v48 = v84;
  }

  v32(v48, v50, 1, v1);
  sub_1000EED5C(v48, v7);
  if (v33(v7, 1, v1))
  {
    sub_1000EEE6C(v7, &qword_1002F7EF0, &unk_100226C90);
    v51 = 0xE200000000000000;
    v52 = 15932;
  }

  else
  {
    v53 = v80;
    (*(v31 + 2))(v80, v7, v1);
    sub_1000EEE6C(v7, &qword_1002F7EF0, &unk_100226C90);
    v54 = objc_opt_self();
    v55 = Date._bridgeToObjectiveC()().super.isa;
    v56 = v31;
    v57 = [v54 localizedStringFromDate:v55 dateStyle:2 timeStyle:2];

    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v59;

    (*(v56 + 1))(v53, v1);
    v52 = v58;
  }

  v60 = v51;
  String.append(_:)(*&v52);

  v61._object = 0xEF203A7962206465;
  v61._countAndFlagsBits = 0x696669646F6D202CLL;
  String.append(_:)(v61);
  v62 = [(objc_class *)v46 modifiedByDevice];
  if (v62)
  {
    v63 = v62;
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;
  }

  else
  {
    v66 = 0xE200000000000000;
    v64 = 15932;
  }

  v67._countAndFlagsBits = v64;
  v67._object = v66;
  String.append(_:)(v67);

  v68._countAndFlagsBits = 0x203A67617465202CLL;
  v68._object = 0xE800000000000000;
  String.append(_:)(v68);
  v69 = [(objc_class *)v46 recordChangeTag];
  if (v69)
  {
    v70 = v69;
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;
  }

  else
  {
    v73 = 0xE200000000000000;
    v71 = 15932;
  }

  v74._countAndFlagsBits = v71;
  v74._object = v73;
  String.append(_:)(v74);

  v75 = v86;
  v76 = v87;
  v86 = v82;
  v87 = v83;

  v77._countAndFlagsBits = v75;
  v77._object = v76;
  String.append(_:)(v77);

  return v86;
}

uint64_t sub_10013403C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DeviceSupportInformationRecord(0);
  *(a3 + v6[5]) = xmmword_100227DA0;
  v7 = type metadata accessor for UUID();
  v64 = *(v7 - 8);
  (*(v64 + 16))(a3, a1, v7);
  v8 = [a2 bluetoothAddress];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = (a3 + v6[6]);
  *v12 = v9;
  v12[1] = v11;
  v13 = [a2 budsFirmwareVersion];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = (a3 + v6[7]);
  *v18 = v15;
  v18[1] = v17;
  v19 = [a2 caseName];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = (a3 + v6[8]);
  *v24 = v21;
  v24[1] = v23;
  v25 = [a2 caseFirmwareVersion];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xE000000000000000;
  }

  v30 = (a3 + v6[9]);
  *v30 = v27;
  v30[1] = v29;
  v31 = [a2 caseSerialNumber];
  if (v31)
  {
    v32 = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0xE000000000000000;
  }

  v36 = (a3 + v6[10]);
  *v36 = v33;
  v36[1] = v35;
  v37 = [a2 hardwareVersion];
  if (v37)
  {
    v38 = v37;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0xE000000000000000;
  }

  v42 = (a3 + v6[11]);
  *v42 = v39;
  v42[1] = v41;
  v43 = [a2 leftBudSerialNumber];
  if (v43)
  {
    v44 = v43;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0xE000000000000000;
  }

  v48 = (a3 + v6[12]);
  *v48 = v45;
  v48[1] = v47;
  v49 = [a2 rightBudSerialNumber];
  if (v49)
  {
    v50 = v49;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0xE000000000000000;
  }

  v54 = (a3 + v6[13]);
  *v54 = v51;
  v54[1] = v53;
  v55 = [a2 ancAssetVersion];
  if (v55)
  {
    v56 = v55;
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;
  }

  else
  {
    v57 = 0;
    v59 = 0xE000000000000000;
  }

  v60 = (a3 + v6[14]);
  *v60 = v57;
  v60[1] = v59;
  v61 = (a3 + v6[15]);
  *v61 = 0;
  v61[1] = 0xE000000000000000;
  static Date.now.getter();

  v62 = *(v64 + 8);

  return v62(a1, v7);
}

void sub_1001343BC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v3 - 8);
  v98 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v100 = &v96 - v6;
  __chkstk_darwin(v7);
  v103 = &v96 - v8;
  v9 = type metadata accessor for Date();
  v105 = *(v9 - 8);
  v106 = v9;
  __chkstk_darwin(v9);
  v99 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v102 = &v96 - v12;
  v107 = type metadata accessor for UUID();
  v104 = *(v107 - 1);
  __chkstk_darwin(v107);
  v14 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000EE870(&qword_1002F8C58, &qword_100228C20);
  v108 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v96 - v16;
  v18 = type metadata accessor for DeviceSupportInformationRecord(0);
  __chkstk_darwin(v18);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EF78C(a1, a1[3]);
  sub_100139C7C();
  v21 = v109;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    sub_1000EF824(a1);
  }

  else
  {
    v96 = v20;
    v97 = v18;
    v109 = a1;
    v112 = 1;
    sub_1000EF8C4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v96;
    *&v96[v97[5]] = v110;
    LOBYTE(v110) = 0;
    sub_1001399D0(&unk_1002F8750, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = v107;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v104 + 32))(v22, v14, v23);
    LOBYTE(v110) = 2;
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v111 = 1;
    v25 = v97;
    v26 = (v22 + v97[6]);
    *v26 = v24;
    v26[1] = v27;
    LOBYTE(v110) = 3;
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v29)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0;
    }

    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0xE000000000000000;
    }

    v32 = (v22 + v25[7]);
    *v32 = v30;
    v32[1] = v31;
    LOBYTE(v110) = 4;
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v34)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0;
    }

    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0xE000000000000000;
    }

    v37 = (v22 + v25[8]);
    *v37 = v35;
    v37[1] = v36;
    LOBYTE(v110) = 5;
    v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v39)
    {
      v40 = v38;
    }

    else
    {
      v40 = 0;
    }

    if (v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0xE000000000000000;
    }

    v42 = (v22 + v25[9]);
    *v42 = v40;
    v42[1] = v41;
    LOBYTE(v110) = 6;
    v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v44)
    {
      v45 = v43;
    }

    else
    {
      v45 = 0;
    }

    if (v44)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0xE000000000000000;
    }

    v47 = (v22 + v25[10]);
    *v47 = v45;
    v47[1] = v46;
    LOBYTE(v110) = 7;
    v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v49)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0;
    }

    if (v49)
    {
      v51 = v49;
    }

    else
    {
      v51 = 0xE000000000000000;
    }

    v52 = (v22 + v97[11]);
    *v52 = v50;
    v52[1] = v51;
    LOBYTE(v110) = 8;
    v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v54)
    {
      v55 = v53;
    }

    else
    {
      v55 = 0;
    }

    if (v54)
    {
      v56 = v54;
    }

    else
    {
      v56 = 0xE000000000000000;
    }

    v57 = (v22 + v97[12]);
    *v57 = v55;
    v57[1] = v56;
    LOBYTE(v110) = 9;
    v58 = v15;
    v59 = v17;
    v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v61)
    {
      v62 = v60;
    }

    else
    {
      v62 = 0;
    }

    if (v61)
    {
      v63 = v61;
    }

    else
    {
      v63 = 0xE000000000000000;
    }

    v64 = &v96[v97[13]];
    *v64 = v62;
    v64[1] = v63;
    LOBYTE(v110) = 10;
    v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v66)
    {
      v67 = v65;
    }

    else
    {
      v67 = 0;
    }

    if (v66)
    {
      v68 = v66;
    }

    else
    {
      v68 = 0xE000000000000000;
    }

    v69 = &v96[v97[14]];
    *v69 = v67;
    v69[1] = v68;
    LOBYTE(v110) = 11;
    v70 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v71)
    {
      v72 = v70;
    }

    else
    {
      v72 = 0;
    }

    v73 = 0xE000000000000000;
    if (v71)
    {
      v73 = v71;
    }

    v74 = v97;
    v75 = &v96[v97[15]];
    *v75 = v72;
    v75[1] = v73;
    v76 = v74[16];
    static Date.now.getter();
    LOBYTE(v110) = 12;
    sub_1001399D0(&qword_1002F7D90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v107 = *(v105 + 48);
    if ((v107)(v103, 1, v106) == 1)
    {
      v77 = objc_autoreleasePoolPush();
      sub_100135EE0(v96, &v110);
      objc_autoreleasePoolPop(v77);
      v78 = v110;
      v79 = [v110 modificationDate];

      if (v79)
      {
        v80 = v99;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v108 + 8))(v59, v58);
        v82 = v105;
        v81 = v106;
        v83 = *(v105 + 32);
        v84 = v100;
        v83(v100, v80, v106);
        (*(v82 + 56))(v84, 0, 1, v81);
        v83(v102, v84, v81);
      }

      else
      {
        v85 = *(v105 + 56);
        v104 = v105 + 56;
        v97 = v85;
        (v85)(v100, 1, 1, v106);
        v86 = objc_autoreleasePoolPush();
        sub_100135EE0(v96, &v110);
        objc_autoreleasePoolPop(v86);
        v87 = v110;
        v88 = [v110 creationDate];

        if (v88)
        {
          v89 = v99;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v108 + 8))(v59, v58);
          v90 = v106;
          v91 = *(v105 + 32);
          v92 = v98;
          v91(v98, v89, v106);
          (v97)(v92, 0, 1, v90);
          v91(v102, v92, v90);
        }

        else
        {
          v93 = v98;
          v94 = v106;
          (v97)(v98, 1, 1, v106);
          static Date.now.getter();
          (*(v108 + 8))(v17, v58);
          if ((v107)(v93, 1, v94) != 1)
          {
            sub_1000EEE6C(v98, &qword_1002F7EF0, &unk_100226C90);
          }
        }

        if ((v107)(v100, 1, v106) != 1)
        {
          sub_1000EEE6C(v100, &qword_1002F7EF0, &unk_100226C90);
        }
      }

      if ((v107)(v103, 1, v106) != 1)
      {
        sub_1000EEE6C(v103, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    else
    {
      (*(v108 + 8))(v17, v58);
      (*(v105 + 32))(v102, v103, v106);
    }

    v95 = v96;
    (*(v105 + 40))(&v96[v76], v102, v106);
    sub_1001398BC(v95, v101);
    sub_1000EF824(v109);
    sub_100139920(v95);
  }
}

void sub_1001352B4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v5 - 8);
  v111 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v103 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v112 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v113 = &v103 - v14;
  v15 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  __chkstk_darwin(v15 - 8);
  v17 = &v103 - v16;
  v18 = type metadata accessor for UUID();
  v115 = *(v18 - 8);
  v116 = v18;
  __chkstk_darwin(v18);
  v114 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0xD00000000000001ELL && 0x80000001002289C0 == v20)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      sub_10013997C();
      swift_allocError();
      *v35 = 0;
      swift_willThrow();

      return;
    }
  }

  v108 = v9;
  v109 = v11;
  v110 = v10;
  v22 = [a1 encryptedValues];
  swift_getObjectType();
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 objectForKeyedSubscript:v23];

  if (!v24)
  {
    goto LABEL_9;
  }

  v119 = v24;
  sub_1000EE870(&qword_1002F8610, &unk_1002262D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v106 = v2;
  v107 = a2;
  v25 = v118;
  v105 = v117;
  v26 = [a1 recordID];
  v27 = [v26 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v29 = v115;
  v28 = v116;
  if ((*(v115 + 48))(v17, 1, v116) == 1)
  {

    sub_1000EEE6C(v17, &qword_1002F8000, &unk_1002262C0);
LABEL_9:
    v30 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v31 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100226100;
    *(v32 + 56) = sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
    *(v32 + 64) = sub_1000FA830();
    *(v32 + 32) = a1;
    v33 = a1;
    os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v31, "Invalid DeviceSupportInformationRecord - %@", 43, 2, v32);

    sub_10013997C();
    swift_allocError();
    *v34 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    return;
  }

  v36 = *(v29 + 32);
  v104 = v25;
  v37 = v114;
  v36(v114, v17, v28);
  v38 = v107;
  (*(v29 + 16))(v107, v37, v28);
  v39 = type metadata accessor for DeviceSupportInformationRecord(0);
  v40 = (v38 + v39[6]);
  v41 = v104;
  *v40 = v105;
  v40[1] = v41;
  CKRecordKeyValueSetting.subscript.getter();
  v43 = v117;
  v42 = v118;
  if (!v118)
  {
    v43 = 0;
  }

  v44 = 0xE000000000000000;
  if (!v118)
  {
    v42 = 0xE000000000000000;
  }

  v45 = (v38 + v39[7]);
  *v45 = v43;
  v45[1] = v42;
  CKRecordKeyValueSetting.subscript.getter();
  v47 = v117;
  v46 = v118;
  if (!v118)
  {
    v47 = 0;
    v46 = 0xE000000000000000;
  }

  v48 = (v38 + v39[8]);
  *v48 = v47;
  v48[1] = v46;
  CKRecordKeyValueSetting.subscript.getter();
  v50 = v117;
  v49 = v118;
  if (!v118)
  {
    v50 = 0;
    v49 = 0xE000000000000000;
  }

  v51 = (v38 + v39[9]);
  *v51 = v50;
  v51[1] = v49;
  CKRecordKeyValueSetting.subscript.getter();
  v53 = v117;
  v52 = v118;
  if (!v118)
  {
    v53 = 0;
    v52 = 0xE000000000000000;
  }

  v54 = (v38 + v39[10]);
  *v54 = v53;
  v54[1] = v52;
  CKRecordKeyValueSetting.subscript.getter();
  v56 = v117;
  v55 = v118;
  if (!v118)
  {
    v56 = 0;
    v55 = 0xE000000000000000;
  }

  v57 = (v38 + v39[11]);
  *v57 = v56;
  v57[1] = v55;
  CKRecordKeyValueSetting.subscript.getter();
  v59 = v117;
  v58 = v118;
  if (!v118)
  {
    v59 = 0;
    v58 = 0xE000000000000000;
  }

  v60 = (v38 + v39[12]);
  *v60 = v59;
  v60[1] = v58;
  CKRecordKeyValueSetting.subscript.getter();
  v62 = v117;
  v61 = v118;
  if (!v118)
  {
    v62 = 0;
    v61 = 0xE000000000000000;
  }

  v63 = (v38 + v39[13]);
  *v63 = v62;
  v63[1] = v61;
  CKRecordKeyValueSetting.subscript.getter();
  v65 = v117;
  v64 = v118;
  if (!v118)
  {
    v65 = 0;
    v64 = 0xE000000000000000;
  }

  v66 = (v38 + v39[14]);
  *v66 = v65;
  v66[1] = v64;
  v67 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v67];
  [v67 finishEncoding];
  v68 = [v67 encodedData];
  v69 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v70;

  v105 = v39;
  v72 = (v38 + v39[5]);
  *v72 = v69;
  v72[1] = v71;
  v73 = [a1 valuesByKey];
  v74 = String._bridgeToObjectiveC()();
  v75 = [v73 objectForKeyedSubscript:v74];
  swift_unknownObjectRelease();

  if (v75)
  {
    objc_opt_self();
    v76 = swift_dynamicCastObjCClass();
    v78 = v108;
    v77 = v109;
    if (v76)
    {
      v79 = [v76 recordID];
      v80 = [v79 recordName];

      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v82;
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v81 = 0;
    }
  }

  else
  {
    v81 = 0;
    v78 = v108;
    v77 = v109;
  }

  v83 = v105;
  v84 = v107;
  v85 = (v107 + v105[15]);
  *v85 = v81;
  v85[1] = v44;
  v86 = [a1 modificationDate];
  if (v86)
  {
    v87 = v112;
    v88 = v86;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
    (*(v115 + 8))(v114, v116);
    v89 = *(v77 + 32);
    v90 = v110;
    v89(v78, v87, v110);
    (*(v77 + 56))(v78, 0, 1, v90);
    v91 = v113;
    v89(v113, v78, v90);
  }

  else
  {
    v92 = *(v77 + 56);
    v90 = v110;
    v92(v78, 1, 1, v110);
    v93 = [a1 creationDate];
    if (v93)
    {
      v94 = v112;
      v95 = v93;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      (*(v115 + 8))(v114, v116);
      v96 = *(v77 + 32);
      v97 = v111;
      v98 = v94;
      v83 = v105;
      v96(v111, v98, v90);
      v92(v97, 0, 1, v90);
      v91 = v113;
      v96(v113, v97, v90);
      v99 = (*(v77 + 48))(v78, 1, v90);
    }

    else
    {
      v100 = v111;
      v92(v111, 1, 1, v90);
      v101 = v100;
      v91 = v113;
      static Date.now.getter();

      swift_unknownObjectRelease();
      (*(v115 + 8))(v114, v116);
      v102 = *(v77 + 48);
      if (v102(v101, 1, v90) != 1)
      {
        sub_1000EEE6C(v101, &qword_1002F7EF0, &unk_100226C90);
      }

      v99 = v102(v78, 1, v90);
    }

    v84 = v107;
    if (v99 != 1)
    {
      sub_1000EEE6C(v78, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  (*(v77 + 32))(v84 + v83[16], v91, v90);
}

void sub_100135EE0(uint64_t a1@<X0>, Class *a2@<X8>)
{
  v4 = type metadata accessor for DeviceSupportInformationRecord(0);
  v5 = sub_100169D38(*(a1 + *(v4 + 20)), *(a1 + *(v4 + 20) + 8));
  if (v5)
  {
    v6 = v5;
    v21 = v5;
    sub_100136154(&v21);
    v7 = [(objc_class *)v6 valueStore];
    [v7 resetChangedKeys];

    v8 = [(objc_class *)v6 encryptedValueStore];
    [v8 resetChangedKeys];
  }

  else
  {
    sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
    sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
    v9 = UUID.uuidString.getter();
    v11 = v10;
    sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
    v12._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12._object = v13;
    v14._object = 0x8000000100267220;
    v14._countAndFlagsBits = 0xD00000000000001ELL;
    isa = CKRecordZoneID.init(zoneName:ownerName:)(v14, v12).super.isa;
    v16._countAndFlagsBits = v9;
    v16._object = v11;
    v17.super.isa = CKRecordID.init(recordName:zoneID:)(v16, isa).super.isa;
    v18 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      v20 = v18;
      swift_once();
      v18 = v20;
    }

    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, qword_100300E38, "Failed to unarchive record -- creating new support info record", 62, 2, _swiftEmptyArrayStorage);
    v19._object = 0x80000001002289C0;
    v19._countAndFlagsBits = 0xD00000000000001ELL;
    v6 = CKRecord.init(recordType:recordID:)(v19, v17).super.isa;
    v21 = v6;
    sub_100136154(&v21);
  }

  *a2 = v6;
}

uint64_t type metadata accessor for DeviceSupportInformationRecord(uint64_t a1)
{
  result = qword_1002F8BC8;
  if (!qword_1002F8BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100136154(id *a1)
{
  v2 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v64 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static os_log_type_t.debug.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v9 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100226100;
  v11 = *a1;
  v12 = [v11 description];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_1000EE954();
  *(v10 + 32) = v13;
  *(v10 + 40) = v15;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Updating device support info record: %@", 39, 2, v10);

  v66 = type metadata accessor for DeviceSupportInformationRecord(0);
  v16 = v64;
  UUID.init(uuidString:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000EEE6C(v4, &qword_1002F8000, &unk_1002262C0);
  }

  else
  {
    v17 = v6;
    v18 = v65;
    (*(v6 + 32))(v65, v4, v5);
    v19 = [v11 valuesByKey];
    UUID.uuidString.getter();
    v20 = objc_allocWithZone(CKRecordID);
    v21 = String._bridgeToObjectiveC()();

    v22 = [v20 initWithRecordName:v21];

    v23 = [objc_allocWithZone(CKReference) initWithRecordID:v22 action:1];
    v24 = String._bridgeToObjectiveC()();
    [v19 setObject:v23 forKeyedSubscript:v24];
    swift_unknownObjectRelease();

    (*(v17 + 8))(v18, v5);
  }

  v25 = [v11 encryptedValues];
  swift_getObjectType();
  v65 = 0xD000000000000010;
  CKRecordKeyValueSetting.subscript.getter();
  v26 = v16;
  v27 = (v16 + v66[6]);
  v29 = *v27;
  v28 = v27[1];
  if (!v68)
  {
    goto LABEL_11;
  }

  if (v67 == v29 && v68 == v28)
  {

    goto LABEL_12;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v30 & 1) == 0)
  {
LABEL_11:
    v69 = &type metadata for String;
    v70 = &protocol witness table for String;
    v67 = v29;
    v68 = v28;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_12:
  CKRecordKeyValueSetting.subscript.getter();
  v31 = (v26 + v66[7]);
  v33 = *v31;
  v32 = v31[1];
  if (!v68)
  {
    goto LABEL_17;
  }

  if (v67 != v33 || v68 != v32)
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v34)
    {
      goto LABEL_18;
    }

LABEL_17:
    v69 = &type metadata for String;
    v70 = &protocol witness table for String;
    v67 = v33;
    v68 = v32;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_18;
  }

LABEL_18:
  CKRecordKeyValueSetting.subscript.getter();
  v35 = (v26 + v66[8]);
  v37 = *v35;
  v36 = v35[1];
  if (!v68)
  {
    goto LABEL_23;
  }

  if (v67 == v37 && v68 == v36)
  {

    goto LABEL_24;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v38 & 1) == 0)
  {
LABEL_23:
    v69 = &type metadata for String;
    v70 = &protocol witness table for String;
    v67 = v37;
    v68 = v36;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_24:
  CKRecordKeyValueSetting.subscript.getter();
  v39 = (v26 + v66[9]);
  v41 = *v39;
  v40 = v39[1];
  if (!v68)
  {
    goto LABEL_29;
  }

  if (v67 != v41 || v68 != v40)
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v42)
    {
      goto LABEL_30;
    }

LABEL_29:
    v69 = &type metadata for String;
    v70 = &protocol witness table for String;
    v67 = v41;
    v68 = v40;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_30;
  }

LABEL_30:
  CKRecordKeyValueSetting.subscript.getter();
  v43 = (v26 + v66[10]);
  v45 = *v43;
  v44 = v43[1];
  if (!v68)
  {
    goto LABEL_35;
  }

  if (v67 == v45 && v68 == v44)
  {

    goto LABEL_36;
  }

  v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v46 & 1) == 0)
  {
LABEL_35:
    v69 = &type metadata for String;
    v70 = &protocol witness table for String;
    v67 = v45;
    v68 = v44;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_36:
  CKRecordKeyValueSetting.subscript.getter();
  v47 = (v26 + v66[11]);
  v49 = *v47;
  v48 = v47[1];
  if (!v68)
  {
    goto LABEL_41;
  }

  if (v67 != v49 || v68 != v48)
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v50)
    {
      goto LABEL_42;
    }

LABEL_41:
    v69 = &type metadata for String;
    v70 = &protocol witness table for String;
    v67 = v49;
    v68 = v48;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_42;
  }

LABEL_42:
  CKRecordKeyValueSetting.subscript.getter();
  v51 = (v26 + v66[12]);
  v53 = *v51;
  v52 = v51[1];
  if (!v68)
  {
    goto LABEL_47;
  }

  if (v67 == v53 && v68 == v52)
  {

    goto LABEL_48;
  }

  v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v54 & 1) == 0)
  {
LABEL_47:
    v69 = &type metadata for String;
    v70 = &protocol witness table for String;
    v67 = v53;
    v68 = v52;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_48:
  CKRecordKeyValueSetting.subscript.getter();
  v55 = (v26 + v66[13]);
  v57 = *v55;
  v56 = v55[1];
  if (!v68)
  {
    goto LABEL_53;
  }

  if (v67 != v57 || v68 != v56)
  {
    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v58)
    {
      goto LABEL_54;
    }

LABEL_53:
    v69 = &type metadata for String;
    v70 = &protocol witness table for String;
    v67 = v57;
    v68 = v56;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_54;
  }

LABEL_54:
  CKRecordKeyValueSetting.subscript.getter();
  v59 = (v26 + v66[14]);
  v61 = *v59;
  v60 = v59[1];
  if (!v68)
  {
    goto LABEL_59;
  }

  if (v67 == v61 && v68 == v60)
  {
    swift_unknownObjectRelease();
  }

  v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v63 & 1) == 0)
  {
LABEL_59:
    v69 = &type metadata for String;
    v70 = &protocol witness table for String;
    v67 = v61;
    v68 = v60;

    CKRecordKeyValueSetting.subscript.setter();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_100136BD0(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v142 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DeviceSupportInformationRecord(0);
  __chkstk_darwin(v6);
  v8 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100137850(a1))
  {
    v139 = v4;
    v140 = v3;
    v9 = [a1 budsFirmwareVersion];
    v141 = v6;
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v6;
      v14 = v13;

      v15 = v12[7];
      v138 = v1;
      v16 = (v1 + v15);
      v17 = v11;
      v18 = *v16;
      v19 = v16[1];
      v20 = *v16 == v17 && v19 == v14;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_25;
      }

      sub_100123520(v18, v19, &v153);
      v21 = v154;
      if (v154)
      {
        v23 = v161;
        v22 = v162;
        v24 = v160;
        v26 = v157;
        v25 = v158;
        v28 = v155;
        v27 = v156;
        v29 = v153;
        v30 = v159;
      }

      else
      {
        if (qword_1002F7A08 != -1)
        {
          swift_once();
        }

        v211 = xmmword_100300BF0;
        v212 = xmmword_100300C00;
        v209 = xmmword_100300BD0;
        v210 = xmmword_100300BE0;
        v208 = xmmword_100300BC0;
        v137 = xmmword_100300C00;
        v136 = *(&xmmword_100300BF0 + 1);
        v135 = xmmword_100300BF0;
        v134 = xmmword_100300BE0;
        v133 = *(&xmmword_100300BD0 + 1);
        v28 = xmmword_100300BD0;
        v21 = *(&xmmword_100300BC0 + 1);
        v29 = xmmword_100300BC0;
        sub_1001238A4(&v208, &v203);
        v27 = v133;
        v26 = v134;
        v30 = v135;
        v25 = *(&v134 + 1);
        v24 = v136;
        v22 = *(&v137 + 1);
        v23 = v137;
      }

      *&v198 = v29;
      *(&v198 + 1) = v21;
      *&v199 = v28;
      *(&v199 + 1) = v27;
      *&v200 = v26;
      *(&v200 + 1) = v25;
      LOBYTE(v201) = v30 & 1;
      *(&v201 + 1) = v24;
      *&v202 = v23;
      *(&v202 + 1) = v22;
      v208 = v198;
      v209 = v199;
      v210 = v200;
      v211 = v201;
      v212 = v202;

      sub_100123520(v17, v14, &v163);
      v40 = v164;
      if (v164)
      {
        v42 = v171;
        v41 = v172;
        v43 = v170;
        v45 = v167;
        v44 = v168;
        v47 = v165;
        v46 = v166;
        v48 = v163;
        v49 = v169;
      }

      else
      {
        if (qword_1002F7A08 != -1)
        {
          swift_once();
        }

        v206 = xmmword_100300BF0;
        v207 = xmmword_100300C00;
        v204 = xmmword_100300BD0;
        v205 = xmmword_100300BE0;
        v203 = xmmword_100300BC0;
        v137 = xmmword_100300C00;
        v136 = *(&xmmword_100300BF0 + 1);
        v135 = xmmword_100300BF0;
        v134 = xmmword_100300BE0;
        v133 = *(&xmmword_100300BD0 + 1);
        v47 = xmmword_100300BD0;
        v40 = *(&xmmword_100300BC0 + 1);
        v48 = xmmword_100300BC0;
        sub_1001238A4(&v203, &v193);
        v46 = v133;
        v45 = v134;
        v49 = v135;
        v44 = *(&v134 + 1);
        v43 = v136;
        v41 = *(&v137 + 1);
        v42 = v137;
      }

      *&v193 = v48;
      *(&v193 + 1) = v40;
      *&v194 = v47;
      *(&v194 + 1) = v46;
      *&v195 = v45;
      *(&v195 + 1) = v44;
      LOBYTE(v196) = v49 & 1;
      *(&v196 + 1) = v43;
      *&v197 = v42;
      *(&v197 + 1) = v41;
      v203 = v193;
      v204 = v194;
      v205 = v195;
      v206 = v196;
      v207 = v197;
      v50 = sub_100122EA0(&v203, &v208);
      sub_1001238DC(&v198);
      sub_1001238DC(&v193);
      if (!v50)
      {
LABEL_25:
      }

      else
      {

        *v16 = v17;
        v16[1] = v14;
      }

      v1 = v138;
      v6 = v141;
    }

    v51 = [a1 caseName];
    if (v51)
    {
      v52 = v51;
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = (v1 + v6[8]);
      v57 = *v56 == v53 && v56[1] == v55;
      if (v57 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }

      else
      {

        *v56 = v53;
        v56[1] = v55;
      }
    }

    v58 = [a1 caseFirmwareVersion];
    if (v58)
    {
      v59 = v58;
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v6;
      v63 = v62;

      v64 = v1;
      v65 = (v1 + v61[9]);
      v67 = *v65;
      v66 = v65[1];
      if (v60 == *v65 && v63 == v66 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_45;
      }

      v68 = v1;
      v69 = v8;
      sub_1001398BC(v68, v8);

      v70 = sub_10011EAEC(v60, v63);
      if (v71)
      {
        v70 = 0;
      }

      v72 = sub_1001381DC(v70);
      sub_100139920(v69);
      if ((v72 & 1) == 0)
      {
LABEL_45:

        v1 = v64;
        v6 = v141;
      }

      else
      {
        DWORD2(v137) = static os_log_type_t.debug.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        *&v137 = qword_100300E38;
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_1002289A0;
        *(v73 + 56) = &type metadata for String;
        v74 = sub_1000EE954();
        *(v73 + 32) = v67;
        *(v73 + 40) = v66;
        *(v73 + 96) = &type metadata for String;
        *(v73 + 104) = v74;
        *(v73 + 64) = v74;
        *(v73 + 72) = v60;
        *(v73 + 80) = v63;
        v75 = v141;
        v76 = (v64 + v141[6]);
        v77 = *v76;
        v78 = v76[1];
        *(v73 + 136) = &type metadata for String;
        *(v73 + 144) = v74;
        *(v73 + 112) = v77;
        *(v73 + 120) = v78;

        os_log(_:dso:log:_:_:)(DWORD2(v137), &_mh_execute_header, v137, "Updating case version from  %@ -> %@ for device %@", 50, 2, v73);

        *v65 = v60;
        v65[1] = v63;
        v1 = v64;
        v6 = v75;
      }
    }

    v79 = [a1 caseSerialNumber];
    if (v79)
    {
      v80 = v79;
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      v84 = (v1 + v6[10]);
      if (*v84 == v81 && v84[1] == v83 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }

      else
      {

        *v84 = v81;
        v84[1] = v83;
      }
    }

    v85 = [a1 hardwareVersion];
    if (v85)
    {
      v86 = v85;
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;

      v90 = (v1 + v6[11]);
      if (*v90 == v87 && v90[1] == v89 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
      }

      else
      {

        *v90 = v87;
        v90[1] = v89;
      }
    }

    v91 = [a1 leftBudSerialNumber];
    if (v91)
    {
      v92 = v91;
      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v94;

      v96 = (v1 + v6[12]);
      if (*v96 == v93 && v96[1] == v95 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }

      else
      {

        *v96 = v93;
        v96[1] = v95;
      }
    }

    v97 = [a1 rightBudSerialNumber];
    if (v97)
    {
      v98 = v97;
      v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v100;

      v102 = (v1 + v6[13]);
      if (*v102 == v99 && v102[1] == v101 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }

      else
      {

        *v102 = v99;
        v102[1] = v101;
      }
    }

    v103 = [a1 ancAssetVersion];
    if (v103)
    {
      v104 = v103;
      v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v107 = v106;

      v108 = (v1 + v6[14]);
      v109 = *v108;
      v110 = v108[1];
      if (*v108 == v105 && v110 == v107 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }

      else
      {

        sub_100123520(v109, v110, &v173);
        v111 = v174;
        v138 = v1;
        if (v174)
        {
          v113 = v181;
          v112 = v182;
          v114 = v180;
          v116 = v177;
          v115 = v178;
          v117 = v175;
          v118 = v176;
          v119 = v173;
          v120 = v179;
        }

        else
        {
          if (qword_1002F7A08 != -1)
          {
            swift_once();
          }

          v201 = xmmword_100300BF0;
          v202 = xmmword_100300C00;
          v199 = xmmword_100300BD0;
          v200 = xmmword_100300BE0;
          v198 = xmmword_100300BC0;
          v137 = xmmword_100300C00;
          v136 = *(&xmmword_100300BF0 + 1);
          v135 = xmmword_100300BF0;
          *(&v134 + 1) = *(&xmmword_100300BE0 + 1);
          v116 = xmmword_100300BE0;
          v118 = *(&xmmword_100300BD0 + 1);
          v117 = xmmword_100300BD0;
          v111 = *(&xmmword_100300BC0 + 1);
          v119 = xmmword_100300BC0;
          sub_1001238A4(&v198, &v193);
          v120 = v135;
          v115 = *(&v134 + 1);
          v114 = v136;
          v112 = *(&v137 + 1);
          v113 = v137;
        }

        *&v148 = v119;
        *(&v148 + 1) = v111;
        *&v149 = v117;
        *(&v149 + 1) = v118;
        *&v150 = v116;
        *(&v150 + 1) = v115;
        LOBYTE(v151) = v120 & 1;
        *(&v151 + 1) = v114;
        *&v152 = v113;
        *(&v152 + 1) = v112;
        v198 = v148;
        v199 = v149;
        v200 = v150;
        v201 = v151;
        v202 = v152;

        sub_100123520(v105, v107, &v183);
        v121 = v184;
        if (v184)
        {
          v122 = v192;
          v123 = v191;
          v124 = v190;
          v125 = v188;
          v126 = v187;
          v127 = v186;
          v128 = v185;
          v129 = v183;
          v130 = v189;
        }

        else
        {
          if (qword_1002F7A08 != -1)
          {
            swift_once();
          }

          v196 = xmmword_100300BF0;
          v197 = xmmword_100300C00;
          v194 = xmmword_100300BD0;
          v195 = xmmword_100300BE0;
          v193 = xmmword_100300BC0;
          v137 = xmmword_100300C00;
          v136 = *(&xmmword_100300BF0 + 1);
          v135 = xmmword_100300BF0;
          *(&v134 + 1) = *(&xmmword_100300BE0 + 1);
          v126 = xmmword_100300BE0;
          v127 = *(&xmmword_100300BD0 + 1);
          v128 = xmmword_100300BD0;
          v121 = *(&xmmword_100300BC0 + 1);
          v129 = xmmword_100300BC0;
          sub_1001238A4(&v193, &v143);
          v130 = v135;
          v122 = *(&v137 + 1);
          v123 = v137;
          v125 = *(&v134 + 1);
          v124 = v136;
        }

        *&v143 = v129;
        *(&v143 + 1) = v121;
        *&v144 = v128;
        *(&v144 + 1) = v127;
        *&v145 = v126;
        *(&v145 + 1) = v125;
        LOBYTE(v146) = v130 & 1;
        *(&v146 + 1) = v124;
        *&v147 = v123;
        *(&v147 + 1) = v122;
        v193 = v143;
        v194 = v144;
        v195 = v145;
        v196 = v146;
        v197 = v147;
        v131 = sub_100122EA0(&v193, &v198);
        sub_1001238DC(&v148);
        sub_1001238DC(&v143);

        if (v131)
        {
          *v108 = v105;
          v108[1] = v107;
        }

        v1 = v138;
        v6 = v141;
      }
    }

    v132 = v142;
    static Date.now.getter();
    return (*(v139 + 40))(v1 + v6[16], v132, v140);
  }

  else
  {
    v31 = static os_log_type_t.info.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v32 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_100226100;
    v34 = a1;
    v35 = [v34 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_1000EE954();
    *(v33 + 32) = v36;
    *(v33 + 40) = v38;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "No change in updated device support info record: %@", 51, 2, v33);
  }
}

id sub_100137850(void *a1)
{
  if (!a1)
  {
    v10 = 0;
    return (v10 & 1);
  }

  v2 = a1;
  v3 = [v2 budsFirmwareVersion];
  if (v3)
  {

    result = [v2 budsFirmwareVersion];
    if (!result)
    {
      __break(1u);
      goto LABEL_71;
    }

    v5 = result;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    sub_100123520(v6, v8, &v115);
    v9 = v116;
    if (v116)
    {
      v103 = v121;
      v101 = v120;
      v99 = v118;
      v95 = v117;
      v93 = v115;
      v97 = v119;
    }

    else
    {
      if (qword_1002F7A08 != -1)
      {
        swift_once();
      }

      v163 = xmmword_100300BF0;
      v164 = xmmword_100300C00;
      v161 = xmmword_100300BD0;
      v162 = xmmword_100300BE0;
      v160 = xmmword_100300BC0;
      v103 = xmmword_100300C00;
      v97 = xmmword_100300BF0;
      v101 = *(&xmmword_100300BF0 + 1);
      v99 = xmmword_100300BE0;
      v95 = xmmword_100300BD0;
      v9 = *(&xmmword_100300BC0 + 1);
      v93 = xmmword_100300BC0;
      sub_1001238A4(&v160, v159);
    }

    v11 = (v1 + *(type metadata accessor for DeviceSupportInformationRecord(0) + 28));
    v12 = *v11;
    v13 = v11[1];

    sub_100123520(v12, v13, &v122);
    v14 = v123;
    v105 = v2;
    v91 = v1;
    if (v123)
    {
      v16 = v130;
      v15 = v131;
      v17 = v129;
      v18 = v126;
      v19 = v127;
      v21 = v124;
      v20 = v125;
      v22 = v122;
      v23 = v128;
    }

    else
    {
      if (qword_1002F7A08 != -1)
      {
        swift_once();
      }

      v163 = xmmword_100300BF0;
      v164 = xmmword_100300C00;
      v161 = xmmword_100300BD0;
      v162 = xmmword_100300BE0;
      v160 = xmmword_100300BC0;
      v90 = *(&xmmword_100300C00 + 1);
      v16 = xmmword_100300C00;
      v17 = *(&xmmword_100300BF0 + 1);
      v23 = xmmword_100300BF0;
      v19 = *(&xmmword_100300BE0 + 1);
      v18 = xmmword_100300BE0;
      v20 = *(&xmmword_100300BD0 + 1);
      v21 = xmmword_100300BD0;
      v14 = *(&xmmword_100300BC0 + 1);
      v22 = xmmword_100300BC0;
      sub_1001238A4(&v160, v159);
      v15 = v90;
    }

    *&v149 = v93;
    *(&v149 + 1) = v9;
    v150 = v95;
    v151 = v99;
    LOBYTE(v152) = v97 & 1;
    *(&v152 + 1) = v101;
    v153 = v103;
    v159[2] = v99;
    v159[3] = v152;
    v159[4] = v103;
    v159[0] = v149;
    v159[1] = v95;
    *&v154 = v22;
    *(&v154 + 1) = v14;
    *&v155 = v21;
    *(&v155 + 1) = v20;
    *&v156 = v18;
    *(&v156 + 1) = v19;
    LOBYTE(v157) = v23 & 1;
    *(&v157 + 1) = v17;
    *&v158 = v16;
    *(&v158 + 1) = v15;
    v163 = v157;
    v164 = v158;
    v161 = v155;
    v162 = v156;
    v160 = v154;
    v24 = sub_10012304C(v159, &v160);
    sub_1001238DC(&v149);
    sub_1001238DC(&v154);
    if (v24)
    {

LABEL_58:
      v10 = 1;
      return (v10 & 1);
    }

    v2 = v105;
    v1 = v91;
  }

  v25 = [v2 caseName];
  if (v25)
  {

    v26 = [v2 caseName];
    if (!v26)
    {
      goto LABEL_57;
    }

    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = (v1 + *(type metadata accessor for DeviceSupportInformationRecord(0) + 32));
    if (v28 == *v31 && v30 == v31[1])
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        goto LABEL_57;
      }
    }
  }

  v33 = [v2 caseFirmwareVersion];
  if (v33)
  {

    result = [v2 caseFirmwareVersion];
    if (result)
    {
      v34 = result;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = sub_10011EAEC(v35, v37);
      if (v39)
      {
        v38 = 0;
      }

      if (sub_1001381DC(v38))
      {
        goto LABEL_57;
      }

      goto LABEL_29;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_29:
  v40 = [v2 caseSerialNumber];
  if (v40)
  {

    v41 = [v2 caseSerialNumber];
    if (!v41)
    {
      goto LABEL_57;
    }

    v42 = v41;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = (v1 + *(type metadata accessor for DeviceSupportInformationRecord(0) + 40));
    if (v43 == *v46 && v45 == v46[1])
    {
    }

    else
    {
      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v47 & 1) == 0)
      {
        goto LABEL_57;
      }
    }
  }

  v48 = [v2 hardwareVersion];
  if (v48)
  {

    result = [v2 hardwareVersion];
    if (result)
    {
      v49 = result;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = (v1 + *(type metadata accessor for DeviceSupportInformationRecord(0) + 44));
      if (*v53 == v50 && v53[1] == v52)
      {
      }

      else
      {
        v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v54)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_41;
    }

LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

LABEL_41:
  v55 = [v2 leftBudSerialNumber];
  if (v55)
  {

    v56 = [v2 leftBudSerialNumber];
    if (!v56)
    {
      goto LABEL_57;
    }

    v57 = v56;
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    v61 = (v1 + *(type metadata accessor for DeviceSupportInformationRecord(0) + 48));
    if (v58 == *v61 && v60 == v61[1])
    {
    }

    else
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v62 & 1) == 0)
      {
        goto LABEL_57;
      }
    }
  }

  v63 = [v2 rightBudSerialNumber];
  if (v63)
  {

    v64 = [v2 rightBudSerialNumber];
    if (v64)
    {
      v65 = v64;
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69 = (v1 + *(type metadata accessor for DeviceSupportInformationRecord(0) + 52));
      if (v66 == *v69 && v68 == v69[1])
      {

        goto LABEL_53;
      }

      v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v70)
      {
        goto LABEL_53;
      }
    }

LABEL_57:

    goto LABEL_58;
  }

LABEL_53:
  v71 = [v2 ancAssetVersion];
  if (!v71)
  {

    v10 = 0;
    return (v10 & 1);
  }

  result = [v2 ancAssetVersion];
  if (result)
  {
    v72 = result;
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    sub_100123520(v73, v75, &v132);
    v76 = v133;
    if (v133)
    {
      v104 = v138;
      v102 = v137;
      v100 = v135;
      v96 = v134;
      v94 = v132;
      v98 = v136;
    }

    else
    {
      if (qword_1002F7A08 != -1)
      {
        swift_once();
      }

      v157 = xmmword_100300BF0;
      v158 = xmmword_100300C00;
      v155 = xmmword_100300BD0;
      v156 = xmmword_100300BE0;
      v154 = xmmword_100300BC0;
      v104 = xmmword_100300C00;
      v98 = xmmword_100300BF0;
      v102 = *(&xmmword_100300BF0 + 1);
      v100 = xmmword_100300BE0;
      v96 = xmmword_100300BD0;
      v76 = *(&xmmword_100300BC0 + 1);
      v94 = xmmword_100300BC0;
      sub_1001238A4(&v154, &v149);
    }

    v77 = (v1 + *(type metadata accessor for DeviceSupportInformationRecord(0) + 56));
    v78 = *v77;
    v79 = v77[1];

    sub_100123520(v78, v79, &v139);
    v80 = v140;
    v106 = v2;
    if (v140)
    {
      v81 = v148;
      v82 = v147;
      v83 = v146;
      v84 = v144;
      v85 = v143;
      v86 = v142;
      v87 = v141;
      v88 = v139;
      v89 = v145;
    }

    else
    {
      if (qword_1002F7A08 != -1)
      {
        swift_once();
      }

      v157 = xmmword_100300BF0;
      v158 = xmmword_100300C00;
      v155 = xmmword_100300BD0;
      v156 = xmmword_100300BE0;
      v154 = xmmword_100300BC0;
      v92 = *(&xmmword_100300C00 + 1);
      v82 = xmmword_100300C00;
      v83 = *(&xmmword_100300BF0 + 1);
      v89 = xmmword_100300BF0;
      v84 = *(&xmmword_100300BE0 + 1);
      v85 = xmmword_100300BE0;
      v86 = *(&xmmword_100300BD0 + 1);
      v87 = xmmword_100300BD0;
      v80 = *(&xmmword_100300BC0 + 1);
      v88 = xmmword_100300BC0;
      sub_1001238A4(&v154, &v149);
      v81 = v92;
    }

    *&v107[0] = v94;
    *(&v107[0] + 1) = v76;
    v107[1] = v96;
    v107[2] = v100;
    LOBYTE(v108) = v98 & 1;
    *(&v108 + 1) = v102;
    v109 = v104;
    *&v110 = v88;
    v151 = v100;
    v152 = v108;
    v153 = v104;
    v149 = v107[0];
    v150 = v96;
    *(&v110 + 1) = v80;
    *&v111 = v87;
    *(&v111 + 1) = v86;
    *&v112 = v85;
    *(&v112 + 1) = v84;
    LOBYTE(v113) = v89 & 1;
    *(&v113 + 1) = v83;
    *&v114 = v82;
    *(&v114 + 1) = v81;
    v157 = v113;
    v158 = v114;
    v155 = v111;
    v156 = v112;
    v154 = v110;
    v10 = sub_10012304C(&v149, &v154);

    sub_1001238DC(v107);
    sub_1001238DC(&v110);
    return (v10 & 1);
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_1001381DC(unint64_t a1)
{
  v5 = (v1 + *(type metadata accessor for DeviceSupportInformationRecord(0) + 36));
  v6 = *v5;
  v7 = v5[1];
  v8 = HIBYTE(v7) & 0xF;
  v9 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v10 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_65;
  }

  if ((v7 & 0x1000000000000000) == 0)
  {
    if ((v7 & 0x2000000000000000) != 0)
    {
      v62[0] = v6;
      v62[1] = v7 & 0xFFFFFFFFFFFFFFLL;
      if (v6 == 43)
      {
        if (v8)
        {
          if (--v8)
          {
            v13 = 0;
            v21 = v62 + 1;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                break;
              }

              if (!is_mul_ok(v13, 0xAuLL))
              {
                break;
              }

              v16 = __CFADD__(10 * v13, v22);
              v13 = 10 * v13 + v22;
              if (v16)
              {
                break;
              }

              ++v21;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      if (v6 != 45)
      {
        if (v8)
        {
          v13 = 0;
          v24 = v62;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            if (!is_mul_ok(v13, 0xAuLL))
            {
              break;
            }

            v16 = __CFADD__(10 * v13, v25);
            v13 = 10 * v13 + v25;
            if (v16)
            {
              break;
            }

            ++v24;
            if (!--v8)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v8)
      {
        if (--v8)
        {
          v13 = 0;
          v17 = v62 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v13, 0xAuLL))
            {
              break;
            }

            v16 = 10 * v13 >= v18;
            v13 = 10 * v13 - v18;
            if (!v16)
            {
              break;
            }

            ++v17;
            if (!--v8)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((v6 & 0x1000000000000000) != 0)
      {
        v11 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v11 = _StringObject.sharedUTF8.getter();
      }

      v12 = *v11;
      if (v12 == 43)
      {
        if (v9 >= 1)
        {
          v8 = v9 - 1;
          if (v9 != 1)
          {
            v13 = 0;
            if (v11)
            {
              v19 = v11 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v13, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v16 = __CFADD__(10 * v13, v20);
                v13 = 10 * v13 + v20;
                if (v16)
                {
                  goto LABEL_63;
                }

                ++v19;
                if (!--v8)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_111;
      }

      if (v12 != 45)
      {
        if (v9)
        {
          v13 = 0;
          if (v11)
          {
            while (1)
            {
              v23 = *v11 - 48;
              if (v23 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v13, 0xAuLL))
              {
                goto LABEL_63;
              }

              v16 = __CFADD__(10 * v13, v23);
              v13 = 10 * v13 + v23;
              if (v16)
              {
                goto LABEL_63;
              }

              ++v11;
              if (!--v9)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v13 = 0;
        LOBYTE(v8) = 1;
LABEL_64:
        v63 = v8;
        if ((v8 & 1) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      }

      if (v9 >= 1)
      {
        v8 = v9 - 1;
        if (v9 != 1)
        {
          v13 = 0;
          if (v11)
          {
            v14 = v11 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v13, 0xAuLL))
              {
                goto LABEL_63;
              }

              v16 = 10 * v13 >= v15;
              v13 = 10 * v13 - v15;
              if (!v16)
              {
                goto LABEL_63;
              }

              ++v14;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v8) = 0;
          goto LABEL_64;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v13 = sub_1001204B4(v6, v7, 10);
  v59 = v58;

  if (v59)
  {
LABEL_65:
    v13 = 0;
  }

LABEL_66:
  if (v13 != a1)
  {
    v3 = (v13 >> 8);
    v2 = (a1 >> 8);
    if (v2 < v3)
    {
      v29 = static os_log_type_t.debug.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v30 = qword_100300E38;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_100226C80;
      *(v31 + 56) = &type metadata for UInt64;
      *(v31 + 64) = &protocol witness table for UInt64;
      *(v31 + 32) = v3;
      *(v31 + 96) = &type metadata for UInt64;
      *(v31 + 104) = &protocol witness table for UInt64;
      *(v31 + 72) = v2;
      os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "shouldUpdateCaseVersion - false. cacheMajorVersion: %u > newMajorVersion:  %u", 77, 2, v31);
      goto LABEL_74;
    }

    if (v3 >= v2)
    {
      v36 = HIDWORD(v13) & 0xFFF0 | (v13 >> 4);
      v37 = HIDWORD(a1) & 0xFFF0 | (a1 >> 4);
      if (v37 < v36)
      {
        v38 = static os_log_type_t.debug.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        v39 = qword_100300E38;
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1002289D0;
        *(v40 + 56) = &type metadata for UInt64;
        *(v40 + 64) = &protocol witness table for UInt64;
        *(v40 + 32) = v3;
        *(v40 + 96) = &type metadata for UInt64;
        *(v40 + 104) = &protocol witness table for UInt64;
        *(v40 + 72) = v36;
        *(v40 + 136) = &type metadata for UInt64;
        *(v40 + 144) = &protocol witness table for UInt64;
        *(v40 + 112) = v2;
        *(v40 + 176) = &type metadata for UInt64;
        *(v40 + 184) = &protocol witness table for UInt64;
        *(v40 + 152) = v37;
        os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v39, "shouldUpdateCaseVersion - false. cacheMinorVersion: %u.%u > newMinorVersion: %u.%u", 82, 2, v40);
        goto LABEL_74;
      }

      if (v36 >= v37)
      {
        v44 = v13 & 0xF | (16 * ((v13 >> 24) & 0xFFF));
        v45 = a1 & 0xF | (16 * ((a1 >> 24) & 0xFFF));
        if (v45 < v44)
        {
          v46 = static os_log_type_t.debug.getter();
          if (qword_1002F7AE8 != -1)
          {
            swift_once();
          }

          v47 = qword_100300E38;
          sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_1002289C0;
          *(v48 + 56) = &type metadata for UInt64;
          *(v48 + 64) = &protocol witness table for UInt64;
          *(v48 + 32) = v3;
          *(v48 + 96) = &type metadata for UInt64;
          *(v48 + 104) = &protocol witness table for UInt64;
          *(v48 + 72) = v36;
          *(v48 + 136) = &type metadata for UInt64;
          *(v48 + 144) = &protocol witness table for UInt64;
          *(v48 + 112) = v44;
          *(v48 + 176) = &type metadata for UInt64;
          *(v48 + 184) = &protocol witness table for UInt64;
          *(v48 + 152) = v2;
          *(v48 + 216) = &type metadata for UInt64;
          *(v48 + 224) = &protocol witness table for UInt64;
          *(v48 + 192) = v37;
          *(v48 + 256) = &type metadata for UInt64;
          *(v48 + 264) = &protocol witness table for UInt64;
          *(v48 + 232) = v45;
          os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, v47, "shouldUpdateCaseVersion - false. cacheRevisionVersion: %u.%u.%u > newRevisionVersion: %u.%u.%u", 94, 2, v48);
          goto LABEL_74;
        }

        if (v44 >= v45)
        {
          v52 = BYTE6(v13);
          v53 = BYTE6(a1);
          if (BYTE6(a1) < BYTE6(v13))
          {
            v60 = static os_log_type_t.debug.getter();
            if (qword_1002F7AE8 != -1)
            {
              swift_once();
            }

            v54 = qword_100300E38;
            sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
            v55 = swift_allocObject();
            *(v55 + 16) = xmmword_1002289B0;
            *(v55 + 56) = &type metadata for UInt64;
            *(v55 + 64) = &protocol witness table for UInt64;
            *(v55 + 32) = v3;
            *(v55 + 96) = &type metadata for UInt64;
            *(v55 + 104) = &protocol witness table for UInt64;
            *(v55 + 72) = v36;
            *(v55 + 136) = &type metadata for UInt64;
            *(v55 + 144) = &protocol witness table for UInt64;
            *(v55 + 112) = v44;
            *(v55 + 176) = &type metadata for UInt64;
            *(v55 + 184) = &protocol witness table for UInt64;
            *(v55 + 152) = v52;
            *(v55 + 216) = &type metadata for UInt64;
            *(v55 + 224) = &protocol witness table for UInt64;
            *(v55 + 192) = v2;
            *(v55 + 256) = &type metadata for UInt64;
            *(v55 + 264) = &protocol witness table for UInt64;
            *(v55 + 232) = v37;
            *(v55 + 296) = &type metadata for UInt64;
            *(v55 + 304) = &protocol witness table for UInt64;
            *(v55 + 272) = v45;
            *(v55 + 336) = &type metadata for UInt64;
            *(v55 + 344) = &protocol witness table for UInt64;
            *(v55 + 312) = v53;
            os_log(_:dso:log:_:_:)(v60, &_mh_execute_header, v54, "shouldUpdateCaseVersion - false. cacheBuildVersion: %u.%u.%u.%u > newBuildVersion: %u.%u.%u.%u", 94, 2, v55);
            goto LABEL_74;
          }

          if (BYTE6(v13) >= BYTE6(a1))
          {
            return 0;
          }

          v61 = static os_log_type_t.debug.getter();
          if (qword_1002F7AE8 != -1)
          {
            swift_once();
          }

          v56 = qword_100300E38;
          sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_1002289B0;
          *(v57 + 56) = &type metadata for UInt64;
          *(v57 + 64) = &protocol witness table for UInt64;
          *(v57 + 32) = v3;
          *(v57 + 96) = &type metadata for UInt64;
          *(v57 + 104) = &protocol witness table for UInt64;
          *(v57 + 72) = v36;
          *(v57 + 136) = &type metadata for UInt64;
          *(v57 + 144) = &protocol witness table for UInt64;
          *(v57 + 112) = v44;
          *(v57 + 176) = &type metadata for UInt64;
          *(v57 + 184) = &protocol witness table for UInt64;
          *(v57 + 152) = v52;
          *(v57 + 216) = &type metadata for UInt64;
          *(v57 + 224) = &protocol witness table for UInt64;
          *(v57 + 192) = v2;
          *(v57 + 256) = &type metadata for UInt64;
          *(v57 + 264) = &protocol witness table for UInt64;
          *(v57 + 232) = v37;
          *(v57 + 296) = &type metadata for UInt64;
          *(v57 + 304) = &protocol witness table for UInt64;
          *(v57 + 272) = v45;
          *(v57 + 336) = &type metadata for UInt64;
          *(v57 + 344) = &protocol witness table for UInt64;
          *(v57 + 312) = v53;
          os_log(_:dso:log:_:_:)(v61, &_mh_execute_header, v56, "Update case (build) version from %u.%u.%u.%u to %u.%u.%u.%u", 59, 2, v57);
        }

        else
        {
          v49 = static os_log_type_t.debug.getter();
          if (qword_1002F7AE8 != -1)
          {
            swift_once();
          }

          v50 = qword_100300E38;
          sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
          v51 = swift_allocObject();
          *(v51 + 16) = xmmword_1002289C0;
          *(v51 + 56) = &type metadata for UInt64;
          *(v51 + 64) = &protocol witness table for UInt64;
          *(v51 + 32) = v3;
          *(v51 + 96) = &type metadata for UInt64;
          *(v51 + 104) = &protocol witness table for UInt64;
          *(v51 + 72) = v36;
          *(v51 + 136) = &type metadata for UInt64;
          *(v51 + 144) = &protocol witness table for UInt64;
          *(v51 + 112) = v44;
          *(v51 + 176) = &type metadata for UInt64;
          *(v51 + 184) = &protocol witness table for UInt64;
          *(v51 + 152) = v2;
          *(v51 + 216) = &type metadata for UInt64;
          *(v51 + 224) = &protocol witness table for UInt64;
          *(v51 + 192) = v37;
          *(v51 + 256) = &type metadata for UInt64;
          *(v51 + 264) = &protocol witness table for UInt64;
          *(v51 + 232) = v45;
          os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v50, "Update case (revision) version from %u.%u.%u to %u.%u.%u", 56, 2, v51);
        }
      }

      else
      {
        v41 = static os_log_type_t.debug.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        v42 = qword_100300E38;
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1002289D0;
        *(v43 + 56) = &type metadata for UInt64;
        *(v43 + 64) = &protocol witness table for UInt64;
        *(v43 + 32) = v3;
        *(v43 + 96) = &type metadata for UInt64;
        *(v43 + 104) = &protocol witness table for UInt64;
        *(v43 + 72) = v36;
        *(v43 + 136) = &type metadata for UInt64;
        *(v43 + 144) = &protocol witness table for UInt64;
        *(v43 + 112) = v2;
        *(v43 + 176) = &type metadata for UInt64;
        *(v43 + 184) = &protocol witness table for UInt64;
        *(v43 + 152) = v37;
        os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v42, "Update case (minor) version from %u.%u to %u.%u", 47, 2, v43);
      }

LABEL_80:
      v32 = 1;
      goto LABEL_75;
    }

    a1 = static os_log_type_t.debug.getter();
    if (qword_1002F7AE8 == -1)
    {
LABEL_79:
      v34 = qword_100300E38;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_100226C80;
      *(v35 + 56) = &type metadata for UInt64;
      *(v35 + 64) = &protocol witness table for UInt64;
      *(v35 + 32) = v3;
      *(v35 + 96) = &type metadata for UInt64;
      *(v35 + 104) = &protocol witness table for UInt64;
      *(v35 + 72) = v2;
      os_log(_:dso:log:_:_:)(a1, &_mh_execute_header, v34, "Update case (major) version from %u to %u", 41, 2, v35);
      goto LABEL_80;
    }

LABEL_113:
    swift_once();
    goto LABEL_79;
  }

  v26 = static os_log_type_t.debug.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v27 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100226C80;
  *(v28 + 56) = &type metadata for UInt64;
  *(v28 + 64) = &protocol witness table for UInt64;
  *(v28 + 32) = a1;
  *(v28 + 96) = &type metadata for UInt64;
  *(v28 + 104) = &protocol witness table for UInt64;
  *(v28 + 72) = a1;
  os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "shouldUpdateCaseVersion - false. cacheVersion: %d == newVersion: %d", 67, 2, v28);
LABEL_74:
  v32 = 0;
LABEL_75:

  return v32;
}

unint64_t sub_100138CA4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x74654D64756F6C63;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
    case 5:
    case 8:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x656D614E65736163;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6572617764726168;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x7465737341636E61;
      break;
    case 11:
      result = 0x6552746E65726170;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100138E14(void *a1)
{
  v3 = v1;
  v5 = sub_1000EE870(&unk_1002F8C70, &qword_100228C28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  sub_1000EF78C(a1, a1[3]);
  sub_100139C7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for UUID();
  sub_1001399D0(&qword_1002F8340, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for DeviceSupportInformationRecord(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_1000EE9F4(v13, v10);
    sub_1000EF9D8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v13, v14);
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 12;
    type metadata accessor for Date();
    sub_1001399D0(&qword_1002F7DB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100139258(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1001399D0(&unk_1002F8350, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for DeviceSupportInformationRecord(0);
  Data.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for Date();
  sub_1001399D0(&qword_1002F7DE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_100139418@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100139F28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10013944C(uint64_t a1)
{
  v2 = sub_100139C7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100139488(uint64_t a1)
{
  v2 = sub_100139C7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001394E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Class sub_100139554()
{
  v1 = objc_autoreleasePoolPush();
  sub_100135EE0(v0, &v3);
  objc_autoreleasePoolPop(v1);
  return v3;
}

Swift::Int sub_1001395A8()
{
  Hasher.init(_seed:)();
  sub_100139258(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001395EC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100139258(v2);
  return Hasher._finalize()();
}

uint64_t sub_10013965C(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DeviceSupportInformationRecord(0);
  if (!sub_100121564(*(a1 + v4[5]), *(a1 + v4[5] + 8), *(a2 + v4[5]), *(a2 + v4[5] + 8)))
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = v4[8];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v20 = v4[9];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v24 = v4[10];
  v25 = *(a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  if ((v25 != *v27 || v26 != v27[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v28 = v4[11];
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  if ((v29 != *v31 || v30 != v31[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v32 = v4[12];
  v33 = *(a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  if ((v33 != *v35 || v34 != v35[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v36 = v4[13];
  v37 = *(a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  if ((v37 != *v39 || v38 != v39[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v40 = v4[14];
  v41 = *(a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (a2 + v40);
  if ((v41 != *v43 || v42 != v43[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v44 = v4[15];
  v45 = *(a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  if ((v45 != *v47 || v46 != v47[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v48 = v4[16];

  return static Date.== infix(_:_:)(a1 + v48, a2 + v48);
}

uint64_t sub_1001398BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceSupportInformationRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100139920(uint64_t a1)
{
  v2 = type metadata accessor for DeviceSupportInformationRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10013997C()
{
  result = qword_1002F8B60;
  if (!qword_1002F8B60)
  {
    result = swift_getWitnessTable(&unk_100228B70, &type metadata for DeviceSupportInformationRecord.DeviceSupportInformationRecordError, v0, v1);
    atomic_store(result, &qword_1002F8B60);
  }

  return result;
}

uint64_t sub_1001399D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100139A50(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100139B00(uint64_t a1)
{
  *(a1 + 8) = sub_1001399D0(&unk_1002F8C30, type metadata accessor for DeviceSupportInformationRecord, &unk_100228BD8);
  result = sub_1001399D0(&unk_1002F9DD0, type metadata accessor for DeviceSupportInformationRecord, &unk_100228BB0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100139BD0()
{
  result = qword_1002F8C48;
  if (!qword_1002F8C48)
  {
    result = swift_getWitnessTable(&unk_100228B48, &type metadata for DeviceSupportInformationRecord.DeviceSupportInformationRecordError, v0, v1);
    atomic_store(result, &qword_1002F8C48);
  }

  return result;
}

uint64_t sub_100139C24(uint64_t a1)
{
  result = sub_1001399D0(&qword_1002F8C50, type metadata accessor for DeviceSupportInformationRecord, &unk_100228A5C);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100139C7C()
{
  result = qword_1002F8C60;
  if (!qword_1002F8C60)
  {
    result = swift_getWitnessTable(&unk_100228CF4, &type metadata for DeviceSupportInformationRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8C60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceSupportInformationRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceSupportInformationRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100139E24()
{
  result = qword_1002F8C80;
  if (!qword_1002F8C80)
  {
    result = swift_getWitnessTable(&unk_100228CCC, &type metadata for DeviceSupportInformationRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8C80);
  }

  return result;
}

unint64_t sub_100139E7C()
{
  result = qword_1002F8C88;
  if (!qword_1002F8C88)
  {
    result = swift_getWitnessTable(&unk_100228C3C, &type metadata for DeviceSupportInformationRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8C88);
  }

  return result;
}

unint64_t sub_100139ED4()
{
  result = qword_1002F8C90;
  if (!qword_1002F8C90)
  {
    result = swift_getWitnessTable(&unk_100228C64, &type metadata for DeviceSupportInformationRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8C90);
  }

  return result;
}

uint64_t sub_100139F28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74654D64756F6C63 && a2 == 0xED00006174616461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100267080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010026A670 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D614E65736163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010026A690 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010026A6B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6572617764726168 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010026A6D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010026A6F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7465737341636E61 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6552746E65726170 && a2 == 0xEC00000064726F63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002672B0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_10013A374(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  sub_10013A598();
  URL.appendingPathComponent(_:isDirectory:)();
  v10 = *(v4 + 8);
  v10(v6, v3);
  if (a2 != 3 && a2 != 2 && a2 != 1)
  {
    v11 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      v13 = v11;
      swift_once();
      v11 = v13;
    }

    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_100300E28, "Unknown CKDatabase.Scope!", 25, 2, _swiftEmptyArrayStorage);
  }

  URL.appendingPathComponent(_:)();
  return (v10)(v9, v3);
}

uint64_t sub_10013A598()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 environment];

  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v9 + 16))
  {

LABEL_9:
    v15 = [objc_opt_self() defaultManager];
    v16 = [v15 URLsForDirectory:5 inDomains:1];

    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v17 + 16))
    {
      (*(v1 + 16))(v3, v17 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

      (*(v1 + 32))(v6, v3, v0);
      URL.appendingPathComponent(_:isDirectory:)();
      return (*(v1 + 8))(v6, v0);
    }

    else
    {

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    return result;
  }

  sub_1000F8C5C(0xD00000000000001BLL, 0x800000010026AB90);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }

  v12 = static os_log_type_t.default.getter();
  if (qword_1002F7AF8 != -1)
  {
    v18 = v12;
    swift_once();
    v12 = v18;
  }

  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_100300E48, "Under test appContainerURL to tmp", 33, 2, _swiftEmptyArrayStorage);
  v13 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();
}

uint64_t sub_10013A930(uint64_t a1)
{
  v1 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 fileExistsAtPath:v2];

  result = 0;
  if (v3)
  {
    v5 = Data.init(contentsOf:options:)();
    v7 = v6;
    sub_1000FA784(0, &qword_1002F8CA0, NSKeyedUnarchiver_ptr);
    sub_1000EE870(&qword_1002F8CA8, &qword_100228D48);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100226100;
    *(v8 + 32) = sub_1000FA784(0, &qword_1002F8CB0, CKServerChangeToken_ptr);
    static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
    sub_1000EF870(v5, v7);

    if (v10[3])
    {
      if (swift_dynamicCast())
      {
        return v9;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_100102AE0(v10);
      return 0;
    }
  }

  return result;
}

id sub_10013ABC4()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v7 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v7];

  if (v4)
  {
    return v7;
  }

  v6 = v7;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_10013ACAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLResourceValues();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = [objc_opt_self() defaultManager];
  v35 = a2;
  URL.deletingLastPathComponent()();
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v17 = *(v7 + 8);
  v17(v12, v6);
  v36 = 0;
  LODWORD(v12) = [v13 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:&v36];

  v18 = v36;
  if (!v12)
  {
    v28 = v36;
LABEL_7:
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v19 = objc_opt_self();
  v36 = 0;
  v20 = v18;
  v21 = [v19 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v36];
  v22 = v36;
  if (!v21)
  {
    v28 = v22;
    goto LABEL_7;
  }

  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = v34;
  Data.write(to:options:)();
  if (v26)
  {
    return sub_1000EF870(v23, v25);
  }

  v29 = v31;
  URLResourceValues.init()();
  URLResourceValues.isExcludedFromBackup.setter();
  (*(v7 + 16))(v9, v35, v6);
  URL.setResourceValues(_:)();
  sub_1000EF870(v23, v25);
  v17(v9, v6);
  return (*(v32 + 8))(v29, v33);
}

void *sub_10013B008()
{
  v196 = type metadata accessor for CharacterSet();
  v2 = *(v196 - 8);
  __chkstk_darwin(v196);
  v195 = &v189 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (v0 + *(type metadata accessor for LegacyMagicPairingSettingsRecords(0) + 20));
  v5 = *v4;
  v6 = v4[1];
  result = _swiftEmptyArrayStorage;
  v238 = _swiftEmptyArrayStorage;
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return result;
    }

    v10 = *(v5 + 16);
    v9 = *(v5 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      if (v12 < 154)
      {
        return result;
      }

      goto LABEL_11;
    }

LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    swift_once();
    goto LABEL_157;
  }

  if (!v8)
  {
    if (BYTE6(v6) < 0x9AuLL)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    goto LABEL_197;
  }

  if (HIDWORD(v5) - v5 < 154)
  {
    return result;
  }

LABEL_11:
  v190 = v6 >> 62;
  v236 = Data.subdata(in:)();
  v237 = v13;
  sub_10013E3BC(v236);
  v1 = v236;
  v14 = v237 >> 62;
  if ((v237 >> 62) > 1)
  {
    goto LABEL_18;
  }

  if (!v14)
  {
    goto LABEL_23;
  }

  if (v236 > v236 >> 32)
  {
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __DataStorage._length.getter();
LABEL_204:
    __break(1u);
LABEL_205:
    __DataStorage._length.getter();
LABEL_206:
    __break(1u);
LABEL_207:
    __DataStorage._length.getter();
    __break(1u);
LABEL_208:
    __DataStorage._length.getter();
LABEL_209:
    __break(1u);
LABEL_210:
    __DataStorage._length.getter();
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __DataStorage._length.getter();
    __break(1u);
LABEL_213:
    __DataStorage._length.getter();
LABEL_214:
    __break(1u);
LABEL_215:
    __DataStorage._length.getter();
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __DataStorage._length.getter();
    __break(1u);
LABEL_220:
    __DataStorage._length.getter();
    __break(1u);
LABEL_221:
    __DataStorage._length.getter();
LABEL_222:
    __break(1u);
LABEL_223:
    __DataStorage._length.getter();
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __DataStorage._length.getter();
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __DataStorage._length.getter();
    __break(1u);
LABEL_229:
    __DataStorage._length.getter();
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __DataStorage._length.getter();
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
    goto LABEL_235;
  }

  v15 = __DataStorage._bytes.getter();
  if (!v15)
  {
LABEL_238:
    result = __DataStorage._length.getter();
    __break(1u);
    return result;
  }

  v16 = v15;
  v17 = __DataStorage._offset.getter();
  if (__OFSUB__(v1, v17))
  {
    goto LABEL_201;
  }

  v18 = (v1 - v17 + v16);
  __DataStorage._length.getter();
  if (!v18)
  {
    __break(1u);
LABEL_18:
    if (v14 != 2)
    {
LABEL_235:
      __break(1u);
      goto LABEL_236;
    }

    v19 = *(v1 + 16);
    v20 = __DataStorage._bytes.getter();
    if (!v20)
    {
LABEL_236:
      __DataStorage._length.getter();
      goto LABEL_237;
    }

    v21 = v20;
    v22 = __DataStorage._offset.getter();
    if (!__OFSUB__(v19, v22))
    {
      v18 = (v19 - v22 + v21);
      __DataStorage._length.getter();
      if (!v18)
      {
LABEL_237:
        __break(1u);
        goto LABEL_238;
      }

      goto LABEL_22;
    }

    goto LABEL_200;
  }

LABEL_22:
  v1 = *v18;
LABEL_23:
  if (!v1)
  {
    goto LABEL_235;
  }

  v0 = 0;
  v193 = (v2 + 8);
  v194 = _swiftEmptyArrayStorage;
  v23 = 1;
  v197 = v1;
  v192 = v5;
  v191 = v6;
  while (1)
  {
    sub_1000EE9F4(v5, v6);
    sub_10013EEF0(v0, v5, v6, &v234);
    v24 = v235 >> 62;
    if ((v235 >> 62) > 1)
    {
      break;
    }

    if (v24)
    {
      v28 = HIDWORD(v234);
      v29 = v234;
      sub_1000EF870(v234, v235);
      if (__OFSUB__(v28, v29))
      {
        goto LABEL_171;
      }

      if (v28 - v29 < 154)
      {
        goto LABEL_156;
      }
    }

    else
    {
      v25 = BYTE6(v235);
      sub_1000EF870(v234, v235);
      if (v25 < 0x9AuLL)
      {
        goto LABEL_156;
      }
    }

LABEL_35:
    v1 = Data.subdata(in:)();
    v233 = v30;
    v230 = Data.subdata(in:)();
    v32 = v31;
    v228 = Data.subdata(in:)();
    v229 = v33;
    v34 = v0 + 44;
    v35 = Data.subdata(in:)();
    v36 = v35;
    v38 = v37;
    v39 = v37 >> 62;
    v231 = v32;
    if ((v37 >> 62) <= 1)
    {
      if (!v39)
      {
        v0 = v35;
        goto LABEL_49;
      }

      if (v35 > v35 >> 32)
      {
        goto LABEL_172;
      }

      v45 = __DataStorage._bytes.getter();
      if (!v45)
      {
        goto LABEL_207;
      }

      v46 = v45;
      v0 = v38 & 0x3FFFFFFFFFFFFFFFLL;
      v47 = __DataStorage._offset.getter();
      if (__OFSUB__(v36, v47))
      {
        goto LABEL_176;
      }

      v44 = (v36 - v47 + v46);
      __DataStorage._length.getter();
      if (!v44)
      {
        goto LABEL_211;
      }

      goto LABEL_47;
    }

    if (v39 == 2)
    {
      v40 = *(v35 + 16);
      v41 = __DataStorage._bytes.getter();
      if (!v41)
      {
        goto LABEL_203;
      }

      v42 = v41;
      v0 = v38 & 0x3FFFFFFFFFFFFFFFLL;
      v43 = __DataStorage._offset.getter();
      if (__OFSUB__(v40, v43))
      {
        goto LABEL_173;
      }

      v44 = (v40 - v43 + v42);
      __DataStorage._length.getter();
      if (!v44)
      {
        goto LABEL_204;
      }

LABEL_47:
      v0 = *v44;
      goto LABEL_49;
    }

    v0 = 0;
LABEL_49:
    v224 = Data.subdata(in:)();
    v225 = v48;
    v222 = Data.subdata(in:)();
    v223 = v49;
    v226 = Data.subdata(in:)();
    v227 = v50;
    v51 = v34 + 100;
    v52 = Data.subdata(in:)();
    v54 = v53 >> 62;
    v232 = v23;
    v219 = v52;
    v220 = v53;
    v204 = v0;
    if ((v53 >> 62) <= 1)
    {
      if (!v54)
      {
        v55 = v1;
        v203 = v52;
        goto LABEL_63;
      }

      v61 = v52;
      if (v52 > v52 >> 32)
      {
        goto LABEL_174;
      }

      v55 = v1;
      v1 = v53;
      v62 = __DataStorage._bytes.getter();
      if (!v62)
      {
        goto LABEL_210;
      }

      v63 = v62;
      v0 = v1 & 0x3FFFFFFFFFFFFFFFLL;
      v64 = __DataStorage._offset.getter();
      if (__OFSUB__(v61, v64))
      {
        goto LABEL_179;
      }

      v60 = (v61 - v64 + v63);
      v0 = v1 & 0x3FFFFFFFFFFFFFFFLL;
      __DataStorage._length.getter();
      if (!v60)
      {
        goto LABEL_217;
      }

      goto LABEL_61;
    }

    v55 = v1;
    if (v54 == 2)
    {
      v56 = *(v52 + 16);
      v1 = v53;
      v57 = __DataStorage._bytes.getter();
      if (!v57)
      {
        goto LABEL_205;
      }

      v58 = v57;
      v0 = v1 & 0x3FFFFFFFFFFFFFFFLL;
      v59 = __DataStorage._offset.getter();
      if (__OFSUB__(v56, v59))
      {
        goto LABEL_175;
      }

      v60 = (v56 - v59 + v58);
      v0 = v1 & 0x3FFFFFFFFFFFFFFFLL;
      __DataStorage._length.getter();
      if (!v60)
      {
        goto LABEL_206;
      }

LABEL_61:
      v203 = *v60;
      goto LABEL_63;
    }

    v203 = 0;
LABEL_63:
    v65 = v51 + 2;
    v66 = Data.subdata(in:)();
    v1 = v67;
    v68 = v67 >> 62;
    v218 = v66;
    if ((v67 >> 62) <= 1)
    {
      if (!v68)
      {
        v0 = v66;
        goto LABEL_77;
      }

      v74 = v66;
      if (v66 > v66 >> 32)
      {
        goto LABEL_177;
      }

      v75 = __DataStorage._bytes.getter();
      if (!v75)
      {
        goto LABEL_212;
      }

      v76 = v75;
      v0 = v1 & 0x3FFFFFFFFFFFFFFFLL;
      v77 = __DataStorage._offset.getter();
      if (__OFSUB__(v74, v77))
      {
        goto LABEL_182;
      }

      v73 = (v74 - v77 + v76);
      __DataStorage._length.getter();
      if (!v73)
      {
        goto LABEL_218;
      }

      goto LABEL_75;
    }

    if (v68 == 2)
    {
      v69 = *(v66 + 16);
      v70 = __DataStorage._bytes.getter();
      if (!v70)
      {
        goto LABEL_208;
      }

      v71 = v70;
      v0 = v1 & 0x3FFFFFFFFFFFFFFFLL;
      v72 = __DataStorage._offset.getter();
      if (__OFSUB__(v69, v72))
      {
        goto LABEL_178;
      }

      v73 = (v69 - v72 + v71);
      __DataStorage._length.getter();
      if (!v73)
      {
        goto LABEL_209;
      }

LABEL_75:
      v0 = *v73;
      goto LABEL_77;
    }

    v0 = 0;
LABEL_77:
    v78 = v65 + 2;
    v79 = Data.subdata(in:)();
    v81 = v80 >> 62;
    v217 = v38;
    v216 = v80;
    v215 = v79;
    v202 = v0;
    if ((v80 >> 62) <= 1)
    {
      if (!v81)
      {
        v201 = v79;
        goto LABEL_91;
      }

      v88 = v79;
      if (v79 > v79 >> 32)
      {
        goto LABEL_180;
      }

      v89 = v80;
      v90 = __DataStorage._bytes.getter();
      if (!v90)
      {
        goto LABEL_219;
      }

      v91 = v90;
      v0 = v89 & 0x3FFFFFFFFFFFFFFFLL;
      v92 = __DataStorage._offset.getter();
      if (__OFSUB__(v88, v92))
      {
        goto LABEL_185;
      }

      v87 = (v88 - v92 + v91);
      v0 = v89 & 0x3FFFFFFFFFFFFFFFLL;
      __DataStorage._length.getter();
      if (!v87)
      {
        goto LABEL_225;
      }

      goto LABEL_89;
    }

    if (v81 == 2)
    {
      v82 = *(v79 + 16);
      v83 = v80;
      v84 = __DataStorage._bytes.getter();
      if (!v84)
      {
        goto LABEL_213;
      }

      v85 = v84;
      v0 = v83 & 0x3FFFFFFFFFFFFFFFLL;
      v86 = __DataStorage._offset.getter();
      if (__OFSUB__(v82, v86))
      {
        goto LABEL_181;
      }

      v87 = (v82 - v86 + v85);
      v0 = v83 & 0x3FFFFFFFFFFFFFFFLL;
      __DataStorage._length.getter();
      if (!v87)
      {
        goto LABEL_214;
      }

LABEL_89:
      v201 = *v87;
      goto LABEL_91;
    }

    v201 = 0;
LABEL_91:
    v93 = v78 + 2;
    v94 = Data.subdata(in:)();
    v96 = v95;
    v97 = v95 >> 62;
    v214 = v36;
    v213 = v94;
    if ((v95 >> 62) <= 1)
    {
      if (!v97)
      {
        v0 = v94;
        goto LABEL_105;
      }

      v103 = v94;
      if (v94 > v94 >> 32)
      {
        goto LABEL_183;
      }

      v104 = __DataStorage._bytes.getter();
      if (!v104)
      {
        goto LABEL_220;
      }

      v105 = v104;
      v0 = v96 & 0x3FFFFFFFFFFFFFFFLL;
      v106 = __DataStorage._offset.getter();
      if (__OFSUB__(v103, v106))
      {
        goto LABEL_188;
      }

      v102 = (v103 - v106 + v105);
      __DataStorage._length.getter();
      if (!v102)
      {
        goto LABEL_227;
      }

      goto LABEL_103;
    }

    if (v97 == 2)
    {
      v98 = *(v94 + 16);
      v99 = __DataStorage._bytes.getter();
      if (!v99)
      {
        goto LABEL_215;
      }

      v100 = v99;
      v0 = v96 & 0x3FFFFFFFFFFFFFFFLL;
      v101 = __DataStorage._offset.getter();
      if (__OFSUB__(v98, v101))
      {
        goto LABEL_184;
      }

      v102 = (v98 - v101 + v100);
      __DataStorage._length.getter();
      if (!v102)
      {
        goto LABEL_216;
      }

LABEL_103:
      v0 = *v102;
      goto LABEL_105;
    }

    v0 = 0;
LABEL_105:
    v107 = v93 + 1;
    v108 = Data.subdata(in:)();
    v110 = v109 >> 62;
    v221 = v55;
    v212 = v1;
    v211 = v109;
    v210 = v108;
    v200 = v0;
    if ((v109 >> 62) <= 1)
    {
      v111 = v232;
      if (!v110)
      {
        v199 = v108;
        goto LABEL_119;
      }

      v119 = v108;
      if (v108 > v108 >> 32)
      {
        goto LABEL_186;
      }

      v112 = v232;
      v120 = v109;
      v121 = __DataStorage._bytes.getter();
      if (!v121)
      {
        goto LABEL_226;
      }

      v122 = v121;
      v0 = v120 & 0x3FFFFFFFFFFFFFFFLL;
      v123 = __DataStorage._offset.getter();
      if (__OFSUB__(v119, v123))
      {
        goto LABEL_191;
      }

      v118 = (v119 - v123 + v122);
      v0 = v120 & 0x3FFFFFFFFFFFFFFFLL;
      __DataStorage._length.getter();
      if (!v118)
      {
        goto LABEL_231;
      }

      goto LABEL_117;
    }

    v111 = v232;
    if (v110 == 2)
    {
      v112 = v232;
      v113 = *(v108 + 16);
      v114 = v109;
      v115 = __DataStorage._bytes.getter();
      if (!v115)
      {
        goto LABEL_221;
      }

      v116 = v115;
      v0 = v114 & 0x3FFFFFFFFFFFFFFFLL;
      v117 = __DataStorage._offset.getter();
      if (__OFSUB__(v113, v117))
      {
        goto LABEL_187;
      }

      v118 = (v113 - v117 + v116);
      v0 = v114 & 0x3FFFFFFFFFFFFFFFLL;
      __DataStorage._length.getter();
      if (!v118)
      {
        goto LABEL_222;
      }

LABEL_117:
      v199 = *v118;
      v111 = v112;
      goto LABEL_119;
    }

    v199 = 0;
LABEL_119:
    v1 = v233;
    v124 = v107 + 1;
    v125 = Data.subdata(in:)();
    v127 = v126;
    v128 = v126 >> 62;
    v209 = v126;
    v208 = v125;
    if ((v126 >> 62) <= 1)
    {
      if (!v128)
      {
        v129 = v125;
        goto LABEL_133;
      }

      v135 = v125;
      if (v125 > v125 >> 32)
      {
        goto LABEL_189;
      }

      v136 = __DataStorage._bytes.getter();
      if (!v136)
      {
        goto LABEL_228;
      }

      v137 = v136;
      v0 = v127 & 0x3FFFFFFFFFFFFFFFLL;
      v138 = __DataStorage._offset.getter();
      if (__OFSUB__(v135, v138))
      {
        goto LABEL_194;
      }

      v134 = (v135 - v138 + v137);
      v0 = v127 & 0x3FFFFFFFFFFFFFFFLL;
      __DataStorage._length.getter();
      if (!v134)
      {
        goto LABEL_233;
      }

      goto LABEL_131;
    }

    if (v128 == 2)
    {
      v130 = *(v125 + 16);
      v131 = __DataStorage._bytes.getter();
      if (!v131)
      {
        goto LABEL_223;
      }

      v132 = v131;
      v0 = v127 & 0x3FFFFFFFFFFFFFFFLL;
      v133 = __DataStorage._offset.getter();
      if (__OFSUB__(v130, v133))
      {
        goto LABEL_190;
      }

      v134 = (v130 - v133 + v132);
      v0 = v127 & 0x3FFFFFFFFFFFFFFFLL;
      __DataStorage._length.getter();
      if (!v134)
      {
        goto LABEL_224;
      }

LABEL_131:
      v129 = *v134;
      goto LABEL_133;
    }

    v129 = 0;
LABEL_133:
    v139 = v124 + 2;
    v140 = Data.subdata(in:)();
    v142 = v141 >> 62;
    v207 = v96;
    v206 = v141;
    v205 = v140;
    if ((v141 >> 62) > 1)
    {
      if (v142 != 2)
      {
        v143 = 0;
        goto LABEL_147;
      }

      v144 = *(v140 + 16);
      v1 = v141;
      v145 = __DataStorage._bytes.getter();
      if (!v145)
      {
        goto LABEL_229;
      }

      v146 = v145;
      v0 = v1 & 0x3FFFFFFFFFFFFFFFLL;
      v147 = __DataStorage._offset.getter();
      if (__OFSUB__(v144, v147))
      {
        goto LABEL_193;
      }

      v148 = (v144 - v147 + v146);
      __DataStorage._length.getter();
      if (!v148)
      {
        goto LABEL_230;
      }

      goto LABEL_145;
    }

    if (v142)
    {
      v149 = v140;
      if (v140 > v140 >> 32)
      {
        goto LABEL_192;
      }

      v1 = v141;
      v150 = __DataStorage._bytes.getter();
      if (!v150)
      {
        goto LABEL_232;
      }

      v151 = v150;
      v0 = v1 & 0x3FFFFFFFFFFFFFFFLL;
      v152 = __DataStorage._offset.getter();
      if (__OFSUB__(v149, v152))
      {
        goto LABEL_195;
      }

      v148 = (v149 - v152 + v151);
      __DataStorage._length.getter();
      if (!v148)
      {
        goto LABEL_234;
      }

LABEL_145:
      v143 = *v148;
      v1 = v233;
      goto LABEL_147;
    }

    v143 = v140;
LABEL_147:
    v153 = v221;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [(objc_class *)isa bytes];
    v155 = isa;
    v156 = NSStringWithMACAddress();
    if (v156)
    {
      v157 = v156;
      v198 = v139;
      v158 = [objc_allocWithZone(BTMagicPairingSettings) initWithBluetoothAddress:v156];

      v159 = Data._bridgeToObjectiveC()().super.isa;
      [v158 setAccessoryKey:v159];

      v160 = Data._bridgeToObjectiveC()().super.isa;
      [v158 setAccessoryHint:v160];

      LOBYTE(v234) = v199;
      dispatch thunk of CustomStringConvertible.description.getter();
      v161 = String._bridgeToObjectiveC()();

      [v158 setButtonModes:v161];

      LOBYTE(v234) = v129;
      dispatch thunk of CustomStringConvertible.description.getter();
      v162 = String._bridgeToObjectiveC()();

      [v158 setColor:v162];

      v163 = Data._bridgeToObjectiveC()().super.isa;
      [v158 setEncryptionKey:v163];

      v164 = Data._bridgeToObjectiveC()().super.isa;
      [v158 setIrk:v164];

      LOWORD(v234) = v143;
      dispatch thunk of CustomStringConvertible.description.getter();
      v165 = String._bridgeToObjectiveC()();

      [v158 setListeningServices:v165];

      sub_10013F040(v226, v227);
      v167 = sub_10013FA24(v166);
      v169 = v168;

      v234 = v167;
      v235 = v169;
      v170 = v195;
      static CharacterSet.whitespacesAndNewlines.getter();
      sub_10013FA70();
      v171 = StringProtocol.trimmingCharacters(in:)();
      v173 = v172;
      v174 = *v193;
      v175 = v196;
      (*v193)(v170, v196);

      v234 = v171;
      v235 = v173;
      static CharacterSet.illegalCharacters.getter();
      StringProtocol.trimmingCharacters(in:)();
      v174(v170, v175);

      v176 = String._bridgeToObjectiveC()();

      [v158 setName:v176];

      LOWORD(v234) = v201;
      dispatch thunk of CustomStringConvertible.description.getter();
      v177 = String._bridgeToObjectiveC()();

      [v158 setProductID:v177];

      LODWORD(v234) = v204;
      dispatch thunk of CustomStringConvertible.description.getter();
      v178 = String._bridgeToObjectiveC()();

      [v158 setRatchet:v178];

      LOBYTE(v234) = v200;
      dispatch thunk of CustomStringConvertible.description.getter();
      v179 = String._bridgeToObjectiveC()();

      [v158 setSettingsMask:v179];

      LODWORD(v234) = v203;
      dispatch thunk of CustomStringConvertible.description.getter();
      v180 = String._bridgeToObjectiveC()();

      [v158 setSupportedServices:v180];

      LOWORD(v234) = v202;
      dispatch thunk of CustomStringConvertible.description.getter();
      v181 = String._bridgeToObjectiveC()();

      [v158 setVendorID:v181];

      v182 = v158;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v238 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v238 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000EF870(v230, v231);
      sub_1000EF870(v228, v229);
      sub_1000EF870(v222, v223);
      sub_1000EF870(v224, v225);
      sub_1000EF870(v205, v206);
      sub_1000EF870(v208, v209);
      sub_1000EF870(v210, v211);
      sub_1000EF870(v213, v207);
      sub_1000EF870(v215, v216);
      sub_1000EF870(v218, v212);
      sub_1000EF870(v219, v220);
      sub_1000EF870(v226, v227);
      sub_1000EF870(v214, v217);
      sub_1000EF870(v221, v233);

      v194 = v238;
      LOWORD(v1) = v197;
      v5 = v192;
      v111 = v232;
      v6 = v191;
      v139 = v198;
    }

    else
    {
      sub_1000EF870(v205, v206);
      sub_1000EF870(v208, v209);
      sub_1000EF870(v210, v211);
      sub_1000EF870(v213, v207);
      sub_1000EF870(v215, v216);
      sub_1000EF870(v218, v212);
      sub_1000EF870(v219, v220);
      sub_1000EF870(v226, v227);
      sub_1000EF870(v222, v223);
      sub_1000EF870(v224, v225);
      sub_1000EF870(v214, v217);
      sub_1000EF870(v228, v229);
      sub_1000EF870(v230, v231);
      sub_1000EF870(v153, v1);
      LOWORD(v1) = v197;
    }

    v183 = v111;
    if (v111 == v1)
    {
      goto LABEL_168;
    }

    v23 = v111 + 1;
    v0 = v139 - 2;
    if (((v183 + 1) & 0x10000) != 0)
    {
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
      goto LABEL_196;
    }
  }

  if (v24 == 2)
  {
    v27 = *(v234 + 16);
    v26 = *(v234 + 24);
    sub_1000EF870(v234, v235);
    if (__OFSUB__(v26, v27))
    {
      goto LABEL_170;
    }

    if (v26 - v27 < 154)
    {
      goto LABEL_156;
    }

    goto LABEL_35;
  }

  sub_1000EF870(v234, v235);
LABEL_156:
  v0 = static os_log_type_t.error.getter();
  if (qword_1002F7AE8 != -1)
  {
    goto LABEL_198;
  }

LABEL_157:
  v184 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v185 = swift_allocObject();
  *(v185 + 16) = xmmword_100226C80;
  *(v185 + 56) = &type metadata for UInt16;
  *(v185 + 64) = &protocol witness table for UInt16;
  *(v185 + 32) = v1;
  if (v190 > 1)
  {
    if (v190 != 2)
    {
      v186 = 0;
      goto LABEL_167;
    }

    v188 = *(v5 + 16);
    v187 = *(v5 + 24);
    v11 = __OFSUB__(v187, v188);
    v186 = v187 - v188;
    if (!v11)
    {
      goto LABEL_167;
    }

    __break(1u);
LABEL_164:
    LODWORD(v186) = HIDWORD(v5) - v5;
    if (!__OFSUB__(HIDWORD(v5), v5))
    {
      v186 = v186;
      goto LABEL_167;
    }

    goto LABEL_202;
  }

  if (v190)
  {
    goto LABEL_164;
  }

  v186 = BYTE6(v6);
LABEL_167:
  *(v185 + 96) = &type metadata for Int;
  *(v185 + 104) = &protocol witness table for Int;
  *(v185 + 72) = v186;
  os_log(_:dso:log:_:_:)(v0, &_mh_execute_header, v184, "LEGACY magic settings record data shorter than expected. Record Count: %u, Data Lenght: %u", v189, v190);

LABEL_168:
  sub_1000EF870(v236, v237);
  return v194;
}

uint64_t sub_10013C3A0()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE8B8(v7, qword_100300D60);
  sub_1000EE91C(v3, qword_100300D60);
  URL.init(string:)();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t type metadata accessor for LegacyMagicPairingSettingsRecords(uint64_t a1)
{
  result = qword_1002F8D30;
  if (!qword_1002F8D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10013C5B4()
{
  v1 = type metadata accessor for Date();
  v120 = *(v1 - 8);
  __chkstk_darwin(v1);
  v111 = &v111 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v3 - 8);
  v116 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v117 = &v111 - v6;
  __chkstk_darwin(v7);
  v114 = &v111 - v8;
  __chkstk_darwin(v9);
  v115 = &v111 - v10;
  v11 = objc_autoreleasePoolPush();
  v121 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
  isa = sub_100169D38(*(v0 + *(v121 + 24)), *(v0 + *(v121 + 24) + 8));
  if (!isa)
  {
    isa = sub_1000F7D84().super.isa;
  }

  v122 = isa;
  v125._countAndFlagsBits = isa;
  sub_10013E0F4(&v125);
  objc_autoreleasePoolPop(v11);
  result = sub_10013B008();
  v14 = result;
  v125._countAndFlagsBits = 0;
  v125._object = 0xE000000000000000;
  v118 = v1;
  v119 = v0;
  v113 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = result;
    if (!result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_12;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
    return result;
  }

  v16 = 0;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = *(v14 + 8 * v16 + 32);
    }

    v18 = v17;
    ++v16;
    v19 = [v17 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 0x2D2D2D2D2D2D0ALL;
    v24._object = 0xE700000000000000;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 10;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
  }

  while (v15 != v16);
LABEL_12:
  if (v113)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v26 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = v122;

  if (v26 >= 2)
  {
    sub_10013CF44(v28);
  }

  v123 = 0;
  v124 = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v29._object = 0x800000010026AD30;
  v29._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v29);
  type metadata accessor for UUID();
  sub_10013FDE0(&unk_1002F7BC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  v31._countAndFlagsBits = 0x616261746164202CLL;
  v31._object = 0xEC000000203A6573;
  String.append(_:)(v31);
  v32 = Data.subdata(in:)();
  v34 = v33;
  v35 = Data.hexString.getter(v32, v33);
  v37 = v36;
  sub_1000EF870(v32, v34);
  v38._countAndFlagsBits = v35;
  v38._object = v37;
  String.append(_:)(v38);

  v39 = v123;
  v40 = v124;
  v123 = 0;
  v124 = 0xE000000000000000;
  _StringGuts.grow(_:)(60);
  v41._countAndFlagsBits = 0x7461657263202020;
  v41._object = 0xEE00203A6E4F6465;
  String.append(_:)(v41);
  v42 = [v27 creationDate];
  v112 = v40;
  v113 = v39;
  if (v42)
  {
    v43 = v114;
    v44 = v42;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = v120;
    v46 = *(v120 + 56);
    v47 = v43;
    v48 = 0;
  }

  else
  {
    v45 = v120;
    v46 = *(v120 + 56);
    v43 = v114;
    v47 = v114;
    v48 = 1;
  }

  v49 = v118;
  v46(v47, v48, 1, v118);
  v50 = v115;
  sub_1000EED5C(v43, v115);
  v51 = *(v45 + 48);
  if (v51(v50, 1, v49))
  {
    sub_100102138(v50);
    v52 = objc_opt_self();
    v53 = Date._bridgeToObjectiveC()().super.isa;
    v54 = [v52 localizedStringFromDate:v53 dateStyle:2 timeStyle:2];

    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58 = v120;
  }

  else
  {
    v59 = v111;
    (*(v45 + 16))(v111, v50, v49);
    sub_100102138(v50);
    v60 = objc_opt_self();
    v61 = Date._bridgeToObjectiveC()().super.isa;
    v62 = [v60 localizedStringFromDate:v61 dateStyle:2 timeStyle:2];

    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v63;

    v58 = v120;
    (*(v120 + 8))(v59, v49);
  }

  v64._countAndFlagsBits = v55;
  v64._object = v57;
  String.append(_:)(v64);

  v65._countAndFlagsBits = 0x696669646F6D202CLL;
  v65._object = 0xEE00203A6E4F6465;
  String.append(_:)(v65);
  v66 = [v122 modificationDate];
  if (v66)
  {
    v67 = v116;
    v68 = v66;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v69 = 0;
  }

  else
  {
    v69 = 1;
    v67 = v116;
  }

  v70 = v117;
  v46(v67, v69, 1, v49);
  sub_1000EED5C(v67, v70);
  if (v51(v70, 1, v49))
  {
    sub_100102138(v70);
    v71 = objc_opt_self();
    v72 = Date._bridgeToObjectiveC()().super.isa;
    v73 = [v71 localizedStringFromDate:v72 dateStyle:2 timeStyle:2];

    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;
  }

  else
  {
    v77 = v111;
    (*(v58 + 16))(v111, v70, v49);
    sub_100102138(v70);
    v78 = objc_opt_self();
    v79 = Date._bridgeToObjectiveC()().super.isa;
    v80 = v58;
    v81 = [v78 localizedStringFromDate:v79 dateStyle:2 timeStyle:2];

    v82 = v49;
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v83;

    (*(v80 + 8))(v77, v82);
  }

  v84 = v122;
  v86 = v112;
  v85 = v113;
  v87._countAndFlagsBits = v74;
  v87._object = v76;
  String.append(_:)(v87);

  v88._object = 0xEF203A7962206465;
  v88._countAndFlagsBits = 0x696669646F6D202CLL;
  String.append(_:)(v88);
  v89 = [v84 modifiedByDevice];
  if (v89)
  {
    v90 = v89;
    v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;
  }

  else
  {
    v93 = 0xE200000000000000;
    v91 = 15932;
  }

  v94._countAndFlagsBits = v91;
  v94._object = v93;
  String.append(_:)(v94);

  v95._countAndFlagsBits = 0x203A67617465202CLL;
  v95._object = 0xE800000000000000;
  String.append(_:)(v95);
  v96 = [v84 recordChangeTag];
  if (v96)
  {
    v97 = v96;
    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v99;
  }

  else
  {
    v100 = 0xE200000000000000;
    v98 = 15932;
  }

  v101._countAndFlagsBits = v98;
  v101._object = v100;
  String.append(_:)(v101);

  v102._countAndFlagsBits = 10;
  v102._object = 0xE100000000000000;
  String.append(_:)(v102);
  v103 = v123;
  v104 = v124;
  v123 = v85;
  v124 = v86;

  v105._countAndFlagsBits = v103;
  v105._object = v104;
  String.append(_:)(v105);

  v107 = v123;
  v106 = v124;
  v123 = 10;
  v124 = 0xE100000000000000;
  String.append(_:)(v125);

  v108 = v123;
  v109 = v124;
  v123 = v107;
  v124 = v106;

  v110._countAndFlagsBits = v108;
  v110._object = v109;
  String.append(_:)(v110);

  return v123;
}

uint64_t sub_10013CF44(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return String.remove(at:)(a1);
  }

LABEL_5:
  a1 = String.index(before:)();

  return String.remove(at:)(a1);
}

uint64_t sub_10013CFAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v4 - 8);
  v66 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v68 = (&v61 - v7);
  __chkstk_darwin(v8);
  v71 = &v61 - v9;
  v10 = type metadata accessor for Date();
  v74 = *(v10 - 8);
  v75 = v10;
  __chkstk_darwin(v10);
  v67 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v69 = &v61 - v13;
  v14 = sub_1000EE870(&qword_1002F8DB0, &qword_100228FA8);
  v72 = *(v14 - 8);
  v73 = v14;
  __chkstk_darwin(v14);
  v16 = &v61 - v15;
  v17 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  __chkstk_darwin(v17 - 8);
  v19 = &v61 - v18;
  v20 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
  __chkstk_darwin(v20);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  result = (*(v24 + 48))(v19, 1, v23);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v24 + 32))(v22, v19, v23);
    v26 = a1;
    v27 = a1[3];
    v76 = v26;
    sub_1000EF78C(v26, v27);
    sub_10013FCCC();
    dispatch thunk of Decoder.container<A>(keyedBy:)();
    if (v2)
    {
      sub_1000EF824(v76);
      return (*(v24 + 8))(v22, v23);
    }

    else
    {
      v78 = 2;
      sub_1000EF8C4();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v65 = &v22[v20[6]];
      *v65 = v77;
      v78 = 1;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      *&v22[v20[5]] = v77;
      v64 = v20[7];
      static Date.now.getter();
      LOBYTE(v77) = 3;
      sub_10013FDE0(&qword_1002F7D90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v28 = v75;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v29 = v74;
      v30 = v74[6];
      v31 = v71;
      if (v30(v71, 1, v28) == 1)
      {
        v32 = objc_autoreleasePoolPush();
        v33 = v65;
        isa = sub_100169D38(*v65, *(v65 + 1));
        v63 = v30;
        if (!isa)
        {
          isa = sub_1000F7D84().super.isa;
        }

        v35 = v68;
        *&v77 = isa;
        v36 = isa;
        sub_10013E0F4(&v77);
        objc_autoreleasePoolPop(v32);
        v37 = [v36 modificationDate];

        if (v37)
        {
          v38 = v67;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v72 + 8))(v16, v73);
          v39 = v74;
          v40 = v74[4];
          v41 = v38;
          v42 = v75;
          v40(v35, v41, v75);
          (v39[7])(v35, 0, 1, v42);
          v43 = v69;
          v40(v69, v35, v42);
          v44 = v42;
          v45 = v71;
          v46 = v64;
        }

        else
        {
          v68 = v74[7];
          v68(v35, 1, 1, v75);
          v62 = objc_autoreleasePoolPush();
          v47 = sub_100169D38(*v33, *(v33 + 1));
          if (!v47)
          {
            v47 = sub_1000F7D84().super.isa;
          }

          *&v77 = v47;
          v48 = v47;
          sub_10013E0F4(&v77);
          objc_autoreleasePoolPop(v62);
          v49 = [v48 creationDate];

          if (v49)
          {
            v50 = v67;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            (*(v72 + 8))(v16, v73);
            v51 = v74[4];
            v52 = v66;
            v53 = v50;
            v54 = v75;
            v51(v66, v53, v75);
            v68(v52, 0, 1, v54);
            v44 = v54;
            v43 = v69;
            v51(v69, v52, v44);
            v45 = v71;
          }

          else
          {
            v55 = v66;
            v56 = v75;
            v68(v66, 1, 1, v75);
            v44 = v56;
            v43 = v69;
            static Date.now.getter();
            v57 = v55;
            (*(v72 + 8))(v16, v73);
            v58 = v63(v55, 1, v44);
            v45 = v71;
            if (v58 != 1)
            {
              sub_100102138(v57);
            }
          }

          v59 = v63(v35, 1, v44);
          v46 = v64;
          if (v59 != 1)
          {
            sub_100102138(v35);
          }
        }

        v60 = v63(v45, 1, v44);
        v29 = v74;
        if (v60 != 1)
        {
          sub_100102138(v45);
        }
      }

      else
      {
        v44 = v28;
        (*(v72 + 8))(v16, v73);
        v43 = v69;
        (v29[4])(v69, v31, v44);
        v46 = v64;
      }

      (v29[5])(&v22[v46], v43, v44);
      sub_10013FD20(v22, v70);
      sub_1000EF824(v76);
      return sub_10013FD84(v22);
    }
  }

  return result;
}

uint64_t sub_10013D8F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v4 - 8);
  v66 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v64 - v7;
  v9 = type metadata accessor for Date();
  v68 = *(v9 - 8);
  v69 = v9;
  __chkstk_darwin(v9);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v64 - v13;
  v14 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  __chkstk_darwin(v14 - 8);
  v16 = &v64 - v15;
  UUID.init(uuidString:)();
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  result = (*(v18 + 48))(v16, 1, v17);
  if (result == 1)
  {
    goto LABEL_34;
  }

  v70 = v8;
  (*(v18 + 32))(a2, v16, v17);
  if (CKRecord.recordType.getter() == 0xD000000000000011 && 0x8000000100267A80 == v20)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      sub_10013FAC4();
      swift_allocError();
      *v28 = 0;
      swift_willThrow();
LABEL_20:

      return (*(v18 + 8))(a2, v17);
    }
  }

  v71 = a2;
  v22 = [a1 encryptedValues];
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 objectForKeyedSubscript:v23];

  if (!v24 || (v74 = v24, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), result = swift_dynamicCast(), (result & 1) == 0))
  {
LABEL_17:
    v33 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v34 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100226100;
    *(v35 + 56) = sub_1000EEE20();
    *(v35 + 64) = sub_10013FDE0(&qword_1002F7BE0, sub_1000EEE20, &protocol conformance descriptor for NSObject);
    *(v35 + 32) = a1;
    v36 = a1;
    os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v34, "Invalid LegacyMagicPairingSettingsRecords - %@", 46, 2, v35);

    sub_10013FAC4();
    swift_allocError();
    *v37 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
    a2 = v71;
    goto LABEL_20;
  }

  v25 = v72;
  v26 = v73;
  v27 = v73 >> 62;
  if ((v73 >> 62) <= 1)
  {
    if (!v27)
    {
      if (BYTE6(v73) > 0x99uLL)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    if (!__OFSUB__(HIDWORD(v72), v72))
    {
      if (HIDWORD(v72) - v72 > 153)
      {
        goto LABEL_23;
      }

LABEL_16:
      sub_1000EF870(v72, v73);
      goto LABEL_17;
    }

    goto LABEL_33;
  }

  if (v27 != 2)
  {
    goto LABEL_16;
  }

  v30 = *(v72 + 16);
  v29 = *(v72 + 24);
  v31 = __OFSUB__(v29, v30);
  v32 = v29 - v30;
  if (v31)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  if (v32 <= 153)
  {
    goto LABEL_16;
  }

LABEL_23:
  v38 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
  v39 = (v71 + *(v38 + 20));
  *v39 = v25;
  v39[1] = v26;
  v40 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v40];
  [v40 finishEncoding];
  v41 = [v40 encodedData];
  v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v65 = v38;
  v45 = (v71 + *(v38 + 24));
  *v45 = v42;
  v45[1] = v44;
  v46 = [a1 modificationDate];
  if (v46)
  {
    v47 = v46;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
    v49 = v68;
    v48 = v69;
    v50 = *(v68 + 32);
    v51 = v70;
    v50(v70, v11, v69);
    (*(v49 + 56))(v51, 0, 1, v48);
    v52 = v67;
    v50(v67, v51, v48);
    v53 = v71;
    v54 = v65;
  }

  else
  {
    v49 = v68;
    v48 = v69;
    v55 = *(v68 + 56);
    v55(v70, 1, 1, v69);
    v56 = [a1 creationDate];
    if (v56)
    {
      v57 = v56;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      v58 = *(v49 + 32);
      v59 = v66;
      v58(v66, v11, v48);
      v55(v59, 0, 1, v48);
      v52 = v67;
      v58(v67, v59, v48);
      v60 = *(v49 + 48);
    }

    else
    {
      v61 = v66;
      v55(v66, 1, 1, v48);
      v62 = v61;
      v52 = v67;
      static Date.now.getter();
      swift_unknownObjectRelease();

      v60 = *(v49 + 48);
      if (v60(v62, 1, v48) != 1)
      {
        sub_100102138(v62);
      }
    }

    v63 = v70;
    v53 = v71;
    v54 = v65;
    if (v60(v70, 1, v48) != 1)
    {
      sub_100102138(v63);
    }
  }

  return (*(v49 + 32))(v53 + *(v54 + 28), v52, v48);
}

uint64_t sub_10013E0F4(id *a1)
{
  v2 = v1;
  v4 = static os_log_type_t.debug.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v5 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100226100;
  v7 = *a1;
  v8 = [v7 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_1000EE954();
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Updating LEGACY magic settings record: %@", 41, 2, v6);

  v12 = [v7 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v13 = (v2 + *(type metadata accessor for LegacyMagicPairingSettingsRecords(0) + 20));
  v15 = *v13;
  v14 = v13[1];
  if (v19 >> 60 == 15)
  {
    if (v14 >> 60 == 15)
    {
      sub_1000EE9F4(v15, v14);
      swift_unknownObjectRelease();
      return sub_1000FF5CC(v18, v19);
    }
  }

  else if (v14 >> 60 != 15)
  {
    sub_1000EE9F4(v15, v14);
    sub_1000EE9F4(v15, v14);
    sub_1000FF5B8(v18, v19);
    v17 = sub_100121564(v18, v19, v15, v14);
    sub_1000EF870(v15, v14);
    sub_1000FF5CC(v18, v19);
    sub_1000FF5CC(v15, v14);
    sub_1000FF5CC(v18, v19);
    if (v17)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_8;
  }

  sub_1000EE9F4(v15, v14);
  sub_1000FF5CC(v18, v19);
  sub_1000FF5CC(v15, v14);
LABEL_8:
  sub_1000EE9F4(v15, v14);
  CKRecordKeyValueSetting.subscript.setter();
  return swift_unknownObjectRelease();
}

void sub_10013E3BC(uint64_t result)
{
  v2 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2 || *(v3 + 16) == *(v3 + 24))
    {
      return;
    }
  }

  else
  {
    if (!v5)
    {
      if ((v4 & 0xFF000000000000) == 0)
      {
        return;
      }

      v67 = 0;
      v6 = BYTE6(v4);
      goto LABEL_12;
    }

    if (v3 == v3 >> 32)
    {
      return;
    }
  }

  if (v5 == 2)
  {
    v6 = *(v3 + 24);
    v67 = *(v3 + 16);
  }

  else
  {
    v67 = v3;
    v6 = v3 >> 32;
  }

LABEL_12:
  if (__OFSUB__(v6, 1))
  {
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
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
  }

  if (v67 < v6 - 1)
  {
    v7 = v6 - 2;
    v65 = v1;
    while (1)
    {
      v9 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        break;
      }

      if (v9)
      {
        if (v67 >= v3 >> 32 || v67 < v3)
        {
          goto LABEL_112;
        }

        v15 = __DataStorage._bytes.getter();
        if (!v15)
        {
          goto LABEL_142;
        }

        v12 = v15;
        v16 = __DataStorage._offset.getter();
        v14 = v67 - v16;
        if (__OFSUB__(v67, v16))
        {
          goto LABEL_114;
        }

LABEL_33:
        v10 = *(v12 + v14);
        goto LABEL_34;
      }

      if (v67 >= BYTE6(v4))
      {
        goto LABEL_111;
      }

      v68 = v3;
      LOWORD(v69) = v4;
      BYTE2(v69) = BYTE2(v4);
      HIBYTE(v69) = BYTE3(v4);
      LOBYTE(v70) = BYTE4(v4);
      HIBYTE(v70) = BYTE5(v4);
      v10 = *(&v68 + v67);
LABEL_34:
      v17 = v7 + 1;
      v18 = *v2;
      v19 = v2[1];
      v20 = v19 >> 62;
      v66 = v10;
      if ((v19 >> 62) > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_143;
        }

        if (v17 < *(v18 + 16))
        {
          goto LABEL_115;
        }

        if (v17 >= *(v18 + 24))
        {
          goto LABEL_119;
        }

        v22 = __DataStorage._bytes.getter();
        if (!v22)
        {
          goto LABEL_147;
        }

        v23 = v22;
        v24 = __DataStorage._offset.getter();
        v25 = v17 - v24;
        if (__OFSUB__(v17, v24))
        {
          goto LABEL_122;
        }

        goto LABEL_49;
      }

      if (v20)
      {
        if (v17 >= v18 >> 32 || v17 < v18)
        {
          goto LABEL_118;
        }

        v26 = __DataStorage._bytes.getter();
        if (!v26)
        {
          goto LABEL_146;
        }

        v23 = v26;
        v27 = __DataStorage._offset.getter();
        v25 = v17 - v27;
        if (__OFSUB__(v17, v27))
        {
          goto LABEL_120;
        }

LABEL_49:
        v21 = *(v23 + v25);
        goto LABEL_50;
      }

      if (v17 >= BYTE6(v19))
      {
        goto LABEL_116;
      }

      v68 = *v2;
      LOWORD(v69) = v19;
      BYTE2(v69) = BYTE2(v19);
      HIBYTE(v69) = BYTE3(v19);
      LOBYTE(v70) = BYTE4(v19);
      HIBYTE(v70) = BYTE5(v19);
      v21 = *(&v68 + v7 + 1);
LABEL_50:
      v3 = *v2;
      v28 = v2[1];
      v29 = v28 >> 62;
      if ((v28 >> 62) > 1)
      {
        if (v29 != 2)
        {
          goto LABEL_145;
        }

        v31 = v28 & 0x3FFFFFFFFFFFFFFFLL;

        sub_1000EF870(v3, v28);
        *v2 = xmmword_100227DA0;
        sub_1000EF870(0, 0xC000000000000000);
        if (v67 < *(v3 + 16))
        {
          goto LABEL_121;
        }

        if (v67 >= *(v3 + 24))
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = *(v3 + 16);
          v33 = *(v3 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v32, __DataStorage._offset.getter()))
            {
              goto LABEL_137;
            }

            if (__OFSUB__(v33, v32))
            {
              goto LABEL_134;
            }
          }

          else if (__OFSUB__(v33, v32))
          {
            goto LABEL_134;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v39 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v31 = v39;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = *(v3 + 16);
          v41 = *(v3 + 24);
          type metadata accessor for Data.RangeReference();
          v42 = swift_allocObject();
          *(v42 + 16) = v40;
          *(v42 + 24) = v41;
          v17 = v7 + 1;

          v3 = v42;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v43 = __DataStorage._bytes.getter();
        if (!v43)
        {
          goto LABEL_150;
        }

        v44 = v43;
        v45 = __DataStorage._offset.getter();
        if (__OFSUB__(v67, v45))
        {
          goto LABEL_130;
        }

        *(v44 + v67 - v45) = v21;
        v30 = v31 | 0x8000000000000000;
LABEL_79:
        *v2 = v3;
        v2[1] = v30;
        goto LABEL_80;
      }

      if (v29)
      {
        v34 = v28 & 0x3FFFFFFFFFFFFFFFLL;

        sub_1000EF870(v3, v28);
        *v2 = xmmword_100227DA0;
        sub_1000EF870(0, 0xC000000000000000);
        if (v67 >= v3 >> 32 || v67 < v3)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v3, __DataStorage._offset.getter()))
          {
            goto LABEL_136;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v35 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v34 = v35;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v36 = __DataStorage._bytes.getter();
        if (!v36)
        {
          goto LABEL_148;
        }

        v37 = v36;
        v38 = __DataStorage._offset.getter();
        if (__OFSUB__(v67, v38))
        {
          goto LABEL_126;
        }

        *(v37 + v67 - v38) = v21;
        v30 = v34 | 0x4000000000000000;
        goto LABEL_79;
      }

      sub_1000EF870(v3, v28);
      v68 = v3;
      LOWORD(v69) = v28;
      BYTE2(v69) = BYTE2(v28);
      HIBYTE(v69) = BYTE3(v28);
      LOBYTE(v70) = BYTE4(v28);
      HIBYTE(v70) = BYTE5(v28);
      v71 = BYTE6(v28);
      if (v67 >= BYTE6(v28))
      {
        goto LABEL_123;
      }

      *(&v68 + v67) = v21;
      v3 = v68;
      v30 = v64 & 0xF00000000000000 | v69 | ((v70 | (v71 << 16)) << 32);
      v2 = v65;
      *v65 = v68;
      v65[1] = v30;
      v64 = v30;
LABEL_80:
      v46 = v30 >> 62;
      if ((v30 >> 62) > 1)
      {
        if (v46 != 2)
        {
          goto LABEL_149;
        }

        v47 = v30 & 0x3FFFFFFFFFFFFFFFLL;

        sub_1000EF870(v3, v30);
        *v2 = xmmword_100227DA0;
        sub_1000EF870(0, 0xC000000000000000);
        if (v17 < *(v3 + 16))
        {
          goto LABEL_127;
        }

        if (v17 >= *(v3 + 24))
        {
          goto LABEL_131;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = *(v3 + 16);
          v49 = *(v3 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v48, __DataStorage._offset.getter()))
            {
              goto LABEL_139;
            }

            if (__OFSUB__(v49, v48))
            {
              goto LABEL_135;
            }
          }

          else if (__OFSUB__(v49, v48))
          {
            goto LABEL_135;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v55 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v47 = v55;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = v17;
          v57 = *(v3 + 16);
          v58 = *(v3 + 24);
          type metadata accessor for Data.RangeReference();
          v59 = swift_allocObject();
          *(v59 + 16) = v57;
          *(v59 + 24) = v58;
          v17 = v56;

          v3 = v59;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v60 = __DataStorage._bytes.getter();
        if (!v60)
        {
          goto LABEL_152;
        }

        v61 = v60;
        v62 = __DataStorage._offset.getter();
        if (__OFSUB__(v17, v62))
        {
          goto LABEL_133;
        }

        *(v61 + v17 - v62) = v66;
        v4 = v47 | 0x8000000000000000;
LABEL_15:
        *v2 = v3;
        v2[1] = v4;
        goto LABEL_16;
      }

      if (v46)
      {
        v50 = v30 & 0x3FFFFFFFFFFFFFFFLL;

        sub_1000EF870(v3, v30);
        *v2 = xmmword_100227DA0;
        sub_1000EF870(0, 0xC000000000000000);
        if (v17 >= v3 >> 32 || v17 < v3)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v3, __DataStorage._offset.getter()))
          {
            goto LABEL_138;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v51 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v50 = v51;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v52 = __DataStorage._bytes.getter();
        if (!v52)
        {
          goto LABEL_151;
        }

        v53 = v52;
        v54 = __DataStorage._offset.getter();
        if (__OFSUB__(v17, v54))
        {
          goto LABEL_132;
        }

        *(v53 + v17 - v54) = v66;
        v4 = v50 | 0x4000000000000000;
        goto LABEL_15;
      }

      sub_1000EF870(v3, v30);
      v68 = v3;
      LOWORD(v69) = v30;
      BYTE2(v69) = BYTE2(v30);
      HIBYTE(v69) = BYTE3(v30);
      LOBYTE(v70) = BYTE4(v30);
      HIBYTE(v70) = BYTE5(v30);
      v71 = BYTE6(v30);
      if (v17 >= BYTE6(v30))
      {
        goto LABEL_128;
      }

      v2 = v65;
      *(&v68 + v7 + 1) = v66;
      v3 = v68;
      v4 = v63 & 0xF00000000000000 | v69 | ((v70 | (v71 << 16)) << 32);
      *v65 = v68;
      v65[1] = v4;
      v63 = v4;
LABEL_16:
      if (++v67 >= v7--)
      {
        return;
      }
    }

    if (v9 != 2)
    {
      goto LABEL_141;
    }

    if (v67 < *(v3 + 16))
    {
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    if (v67 >= *(v3 + 24))
    {
      goto LABEL_113;
    }

    v11 = __DataStorage._bytes.getter();
    if (!v11)
    {
      goto LABEL_144;
    }

    v12 = v11;
    v13 = __DataStorage._offset.getter();
    v14 = v67 - v13;
    if (__OFSUB__(v67, v13))
    {
      goto LABEL_117;
    }

    goto LABEL_33;
  }
}

unint64_t sub_10013EEF0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_10013F970(v10, v9, a2, a3);
    if (!v6 || v11 >= v6)
    {
      v12 = sub_10013F90C(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v14 = Data._Representation.subscript.getter();
    v16 = v15;
    result = sub_1000EF870(a2, a3);
    *a4 = v14;
    a4[1] = v16;
  }

  return result;
}

void sub_10013F040(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v11 = *(a1 + 16);
      v10 = *(a1 + 24);
      v9 = v10 - v11;
      if (__OFSUB__(v10, v11))
      {
        __break(1u);
LABEL_14:
        __break(1u);
      }

      else if (v9)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = BYTE6(a2);
    if (BYTE6(a2))
    {
LABEL_8:
      do
      {
        sub_10012119C(v9, 0);
        v12 = Data._copyContents(initializing:)();
        v13 = *(v5 + 8);
        v5 += 8;
        v13(v7, v4);
        if (v12 == v9)
        {
          break;
        }

        __break(1u);
LABEL_10:
        v14 = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_14;
        }

        v9 = v14;
      }

      while (v14);
    }
  }
}

uint64_t sub_10013F1A4(void *a1)
{
  v3 = v1;
  v5 = sub_1000EE870(&qword_1002F8D98, &qword_100228FA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_1000EF78C(a1, a1[3]);
  sub_10013FCCC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  type metadata accessor for UUID();
  sub_10013FDE0(&qword_1002F8340, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
    v10 = (v3 + *(v9 + 20));
    v11 = v10[1];
    v17 = *v10;
    v18 = v11;
    v16 = 1;
    sub_1000EE9F4(v17, v11);
    sub_1000EF9D8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v17, v18);
    v12 = (v3 + *(v9 + 24));
    v13 = v12[1];
    v17 = *v12;
    v18 = v13;
    v16 = 2;
    sub_1000EE9F4(v17, v13);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v17, v18);
    LOBYTE(v17) = 3;
    type metadata accessor for Date();
    sub_10013FDE0(&qword_1002F7DB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10013F450()
{
  v1 = 0x696669746E656469;
  v2 = 0x74654D64756F6C63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
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

uint64_t sub_10013F4E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10013FF40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10013F508(uint64_t a1)
{
  v2 = sub_10013FCCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013F544(uint64_t a1)
{
  v2 = sub_10013FCCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10013F5BC(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10013FDE0(&unk_1002F8350, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  type metadata accessor for Date();
  sub_10013FDE0(&qword_1002F7DE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10013F6D0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_10013FDE0(&unk_1002F8350, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  type metadata accessor for Date();
  sub_10013FDE0(&qword_1002F7DE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10013F7CC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10013FDE0(&unk_1002F8350, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  type metadata accessor for Date();
  sub_10013FDE0(&qword_1002F7DE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10013F90C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10013F970(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_10013FA24(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
      return static String._fromUTF8Repairing(_:)();
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        return static String._fromUTF8Repairing(_:)();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10013FA70()
{
  result = qword_1002F8CB8;
  if (!qword_1002F8CB8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String, v0, v1);
    atomic_store(result, &qword_1002F8CB8);
  }

  return result;
}

unint64_t sub_10013FAC4()
{
  result = qword_1002F8CC8;
  if (!qword_1002F8CC8)
  {
    result = swift_getWitnessTable(&unk_100228F34, &type metadata for LegacyMagicPairingSettingsRecords.LegacyMagicPairingSettingsRecordsError, v0, v1);
    atomic_store(result, &qword_1002F8CC8);
  }

  return result;
}

uint64_t sub_10013FB50(uint64_t a1)
{
  *(a1 + 8) = sub_10013FDE0(&qword_1002F8D70, type metadata accessor for LegacyMagicPairingSettingsRecords, &unk_100228F0C);
  result = sub_10013FDE0(&qword_1002F8D78, type metadata accessor for LegacyMagicPairingSettingsRecords, &unk_100228F74);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10013FC1C(uint64_t a1)
{
  result = sub_10013FDE0(&qword_1002F8D88, type metadata accessor for LegacyMagicPairingSettingsRecords, &unk_100228DDC);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10013FC78()
{
  result = qword_1002F8D90;
  if (!qword_1002F8D90)
  {
    result = swift_getWitnessTable(&unk_100228EE4, &type metadata for LegacyMagicPairingSettingsRecords.LegacyMagicPairingSettingsRecordsError, v0, v1);
    atomic_store(result, &qword_1002F8D90);
  }

  return result;
}

unint64_t sub_10013FCCC()
{
  result = qword_1002F8DA0;
  if (!qword_1002F8DA0)
  {
    result = swift_getWitnessTable(&unk_100229074, &type metadata for LegacyMagicPairingSettingsRecords.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8DA0);
  }

  return result;
}

uint64_t sub_10013FD20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013FD84(uint64_t a1)
{
  v2 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10013FDE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10013FE3C()
{
  result = qword_1002F8DB8;
  if (!qword_1002F8DB8)
  {
    result = swift_getWitnessTable(&unk_10022904C, &type metadata for LegacyMagicPairingSettingsRecords.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8DB8);
  }

  return result;
}

unint64_t sub_10013FE94()
{
  result = qword_1002F8DC0;
  if (!qword_1002F8DC0)
  {
    result = swift_getWitnessTable(&unk_100228FBC, &type metadata for LegacyMagicPairingSettingsRecords.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8DC0);
  }

  return result;
}

unint64_t sub_10013FEEC()
{
  result = qword_1002F8DC8;
  if (!qword_1002F8DC8)
  {
    result = swift_getWitnessTable(&unk_100228FE4, &type metadata for LegacyMagicPairingSettingsRecords.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8DC8);
  }

  return result;
}

uint64_t sub_10013FF40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010026AE10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74654D64756F6C63 && a2 == 0xED00006174616461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002672B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_1001400F0(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = _swiftEmptyArrayStorage;
  v12 = _swiftEmptyArrayStorage;
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *i;
      v11[0] = *(i - 1);
      v11[1] = v8;

      a1(&v10, v11);
      if (v3)
      {
        break;
      }

      if (v10)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v12;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

unint64_t sub_10014020C(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        sub_1000EE870(&unk_1002F9530, qword_1002294F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100226100;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v3 = inited + 32;
        v4 = 0x800000010026DFD0;
        *(inited + 72) = &type metadata for String;
        v5 = 0xD000000000000016;
        goto LABEL_15;
      case 4:
        sub_1000EE870(&unk_1002F9530, qword_1002294F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100226100;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v3 = inited + 32;
        v4 = 0x800000010026DFF0;
        *(inited + 72) = &type metadata for String;
        v5 = 0xD000000000000018;
        goto LABEL_15;
      case 5:
        sub_1000EE870(&unk_1002F9530, qword_1002294F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100226100;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v3 = inited + 32;
        v4 = 0x800000010026DFB0;
        *(inited + 72) = &type metadata for String;
        v5 = 0xD000000000000013;
        goto LABEL_15;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        sub_1000EE870(&unk_1002F9530, qword_1002294F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100226100;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v3 = inited + 32;
        *(inited + 72) = &type metadata for String;
        *(inited + 40) = v6;
        *(inited + 48) = 0x206E776F6E6B6E55;
        v4 = 0xED0000726F727245;
LABEL_16:
        *(inited + 56) = v4;
        v12 = sub_1000F99F0(inited);
        swift_setDeallocating();
        sub_1000EEE6C(v3, &unk_1002F9EB0, &unk_100227D50);
        return v12;
      case 1:
        sub_1000EE870(&unk_1002F9530, qword_1002294F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100226100;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v3 = inited + 32;
        v4 = 0x800000010026E030;
        *(inited + 72) = &type metadata for String;
        v5 = 0xD000000000000014;
        goto LABEL_15;
      case 2:
        sub_1000EE870(&unk_1002F9530, qword_1002294F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100226100;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v3 = inited + 32;
        v4 = 0x800000010026E010;
        *(inited + 72) = &type metadata for String;
        v5 = 0xD000000000000015;
LABEL_15:
        *(inited + 40) = v2;
        *(inited + 48) = v5;
        goto LABEL_16;
    }
  }

  sub_1000EE870(&unk_1002F9530, qword_1002294F0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_100226C80;
  *(v7 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 40) = v8;
  _StringGuts.grow(_:)(27);

  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  *(v7 + 72) = &type metadata for String;
  *(v7 + 48) = 0xD000000000000019;
  *(v7 + 56) = 0x800000010026DF90;
  *(v7 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 88) = v10;
  swift_getErrorValue();
  *(v7 + 120) = v14;
  v11 = sub_100133584((v7 + 96));
  (*(*(v14 - 8) + 16))(v11);
  v12 = sub_1000F99F0(v7);
  swift_setDeallocating();
  sub_1000EE870(&unk_1002F9EB0, &unk_100227D50);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_1001406D0(uint64_t a1)
{
  v2 = sub_100163258();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10014070C(uint64_t a1)
{
  v2 = sub_100163258();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100140748()
{
  v1 = type metadata accessor for CloudCoordinatorConfiguration(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x800000010026DF40;
  String.append(_:)(v5);
  v6 = v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
  v7 = (v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration + *(v2 + 32));
  v8 = *v7;
  v9 = v7[1];

  v10._countAndFlagsBits = v8;
  v10._object = v9;
  String.append(_:)(v10);

  v11._object = 0x800000010026DF70;
  v11._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v11);
  sub_100127864(v6, v4);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v12._countAndFlagsBits = 0xD000000000000034;
  v12._object = 0x8000000100269980;
  String.append(_:)(v12);
  String.append(_:)(*&v4[*(v2 + 32)]);
  v13._countAndFlagsBits = 0x4449656E6F7A202CLL;
  v13._object = 0xEB00000000203A73;
  String.append(_:)(v13);
  v14._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v14);

  String.append(_:)(v16);

  sub_1001278C8(v4);
  return v17;
}

id sub_100140910(uint64_t a1)
{

  sub_100140748();

  v1 = String._bridgeToObjectiveC()();

  return v1;
}

void *sub_1001409C4()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = *(v0 + 16);
  v8 = v7;
  if (v7 == 1)
  {
    v9 = sub_1000FA784(0, &qword_1002F9700, OS_dispatch_queue_ptr);
    v20 = v1;
    v21 = v9;
    v10 = v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
    v11 = *(v10 + *(type metadata accessor for CloudCoordinatorConfiguration(0) + 24));
    v22 = 0xD000000000000028;
    v23 = 0x800000010026DF10;
    v19 = v0;
    String.append(_:)(v11);
    v18[1] = v23;
    v18[2] = v22;
    static DispatchQoS.unspecified.getter();
    v22 = _swiftEmptyArrayStorage;
    sub_1001624EC(&unk_1002F93A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes, v12, v13, v14);
    sub_1000EE870(&qword_1002F9710, &unk_100227B80);
    sub_1000FA0E0(&qword_1002F93B0, &qword_1002F9710, &unk_100227B80, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
    v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v15 = *(v19 + 16);
    *(v19 + 16) = v8;
    v16 = v8;
    sub_100163058(v15);
  }

  sub_100163068(v7);
  return v8;
}

id sub_100140CF8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___container;
  v3 = *(v1 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___container);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___container);
  }

  else
  {
    v5 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v6 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100226100;
    v8 = v1 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
    v9 = (v8 + *(type metadata accessor for CloudCoordinatorConfiguration(0) + 24));
    v11 = *v9;
    v10 = v9[1];
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_1000EE954();
    *(v7 + 32) = v11;
    *(v7 + 40) = v10;

    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "CloudSync: Create CloudKit container named: %@", 46, 2, v7);

    v12 = String._bridgeToObjectiveC()();

    v13 = [objc_opt_self() containerWithIdentifier:v12];

    v14 = *(v1 + v2);
    *(v1 + v2) = v13;
    v4 = v13;

    v3 = 0;
  }

  v15 = v3;
  return v4;
}

uint64_t sub_100140EA8()
{
  v1 = (v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___privateSubscriptionId);
  if (*(v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___privateSubscriptionId + 8))
  {
    v2 = *v1;
  }

  else
  {
    *v1 = xmmword_1002290D0;
    v2 = 0x2D65746176697270;
  }

  return v2;
}

id sub_100140F8C()
{
  v1 = OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___cloudUserActionExplicitGroup;
  v2 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___cloudUserActionExplicitGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___cloudUserActionExplicitGroup);
  }

  else
  {
    v4 = [objc_allocWithZone(CKOperationGroup) init];
    v5 = String._bridgeToObjectiveC()();
    [v4 setName:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100141068(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(CKOperationGroup) init];
    v6 = String._bridgeToObjectiveC()();
    [v5 setName:v6];

    v7 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v8 = v3;
  return v4;
}

id *sub_100141114()
{
  if (qword_1002F7AC0 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100300E00 + OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushServiceQueue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1001630C0;
  *(v4 + 24) = v3;
  v8[4] = sub_1001633EC;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100174328;
  v8[3] = &unk_1002BFAA0;
  v5 = _Block_copy(v8);
  v6 = v1;

  dispatch_sync(v6, v5);

  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    sub_100163058(v0[2]);
    sub_1001630C8((v0 + 3));

    sub_1001278C8(v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration);

    return v0;
  }

  return result;
}

uint64_t sub_1001413D4()
{
  sub_100141114();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CloudCoordinator(uint64_t a1)
{
  result = qword_1002F8E40;
  if (!qword_1002F8E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100141480()
{
  v1 = v0;
  v2 = type metadata accessor for CloudCoordinatorConfiguration(0);
  __chkstk_darwin(v2);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v6 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100226100;
  sub_100127864(v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration, v4);
  aBlock = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v8._object = 0x8000000100269980;
  v8._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v8);
  String.append(_:)(*&v4[*(v2 + 24)]);
  v9._countAndFlagsBits = 0x4449656E6F7A202CLL;
  v9._object = 0xEB00000000203A73;
  String.append(_:)(v9);
  v10._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v10);

  v11 = aBlock;
  v12 = v24;
  sub_1001278C8(v4);
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_1000EE954();
  *(v7 + 32) = v11;
  *(v7 + 40) = v12;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Start APS & Cloud Coordinator with identifier: %@", 49, 2, v7);

  if (qword_1002F7AC0 != -1)
  {
    swift_once();
  }

  v13 = *(qword_100300E00 + OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushServiceQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100163048;
  *(v16 + 24) = v15;
  v27 = sub_1001633EC;
  v28 = v16;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100174328;
  v26 = &unk_1002BF9D8;
  v17 = _Block_copy(&aBlock);
  v18 = v13;

  dispatch_sync(v18, v17);

  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_10014D010();
  v20 = *(v1 + 72);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100163050;
  *(v21 + 24) = v1;
  v27 = sub_1001633EC;
  v28 = v21;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100174328;
  v26 = &unk_1002BFA28;
  v22 = _Block_copy(&aBlock);

  dispatch_sync(v20, v22);
  _Block_release(v22);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_100141908()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    v17 = v8;
    swift_once();
    v8 = v17;
  }

  v9 = qword_100300E28;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, qword_100300E28, "CloudSync: Initial fetch complete", 33, 2);
  v18[2] = *(v1 + 72);
  aBlock[4] = sub_100163040;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BF938;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v11, v12, v13);
  v18[1] = v1;
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v20 + 8))(v4, v2);
  (*(v5 + 8))(v7, v19);

  v14 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v9, "Signaling availableSemaphore", 28, 2, _swiftEmptyArrayStorage);
  OS_dispatch_semaphore.signal()();
  v15 = static os_log_type_t.default.getter();
  return os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v9, "Signaled availableSemaphore", 27, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_100141C98(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    v4 = v2;
    swift_once();
    v2 = v4;
  }

  result = os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_100300E28, "available set to true", 21, 2, _swiftEmptyArrayStorage);
  *(a1 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator__available) = 1;
  return result;
}

void sub_100141D34(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + 72);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10, v12);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  v18 = (*(v11 + 8))(v14, v10);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v30 = a1;
  v18 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
LABEL_5:
    v28 = v18;
    swift_once();
    v18 = v28;
  }

  os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, qword_100300E28, "Resetting CloudKitCoordinator available flags", 45, 2, _swiftEmptyArrayStorage);
  *(v2 + 96) = 3;
  *(v2 + 104) = 0;
  *(v2 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator__available) = 0;
  v39 = sub_100162FE8;
  v40 = v2;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v29 = &v37;
  v37 = sub_1001742E0;
  v38 = &unk_1002BF898;
  v19 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v20, v21, v22);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v33 + 8))(v6, v4);
  (*(v31 + 8))(v9, v32);

  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = v30 & 1;

  v25 = sub_100140CF8(v24);
  v26 = swift_allocObject();
  v26[2] = v2;
  v26[3] = sub_1001634E4;
  v26[4] = v23;
  v39 = sub_1001633E0;
  v40 = v26;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_10015016C;
  v38 = &unk_1002BF910;
  v27 = _Block_copy(&aBlock);

  [v25 accountStatusWithCompletionHandler:v27];
  _Block_release(v27);
}

uint64_t sub_10014225C(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    v5 = v1;
    swift_once();
    v1 = v5;
  }

  v2 = qword_100300E28;
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, qword_100300E28, "Waiting for CloudKit to become available", 40, 2, _swiftEmptyArrayStorage);
  OS_dispatch_semaphore.wait()();
  v3 = static os_log_type_t.default.getter();

  return os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v2, "Done waiting for CloudKit to become available", 45, 2, _swiftEmptyArrayStorage);
}

void sub_10014233C(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &aBlock - v9;
  v11 = sub_10015DF00(0.0, 120.0);
  v12 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v13 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100226C80;
  *(v14 + 56) = &type metadata for Double;
  *(v14 + 64) = &protocol witness table for Double;
  *(v14 + 32) = a1;
  *(v14 + 96) = &type metadata for Double;
  *(v14 + 104) = &protocol witness table for Double;
  *(v14 + 72) = v11;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "checkinRetryFetch %f with random delay: %f", *&aBlock, *&v24);

  Date.init()();
  Date.addingTimeInterval(_:)();
  v15 = *(v5 + 8);
  v15(v7, v4);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = objc_allocWithZone(BTXPCTimer);

  v18 = String._bridgeToObjectiveC()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v27 = sub_100162FD8;
  v28 = v16;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100147160;
  v26 = &unk_1002BF848;
  v20 = _Block_copy(&aBlock);
  v21 = [v17 initWithName:v18 date:isa gracePeriod:1 priority:705 options:v20 block:1.0];
  _Block_release(v20);

  v15(v10, v4);

  v22 = *(v2 + 40);
  *(v2 + 40) = v21;
}

uint64_t sub_100142664(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v23 = *(v6 - 8);
  v24 = v6;
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v10 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100226100;
  v12 = a1;
  v13 = [v12 description];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_1000EE954();
  *(v11 + 32) = v14;
  *(v11 + 40) = v16;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "scheduleRetryFetch timer fired: %@", 34, 2, v11);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    aBlock[4] = sub_100162FE0;
    aBlock[5] = result;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = &unk_1002BF870;
    v18 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v19, v20, v21);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
    v22 = v26;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);
    (*(v25 + 8))(v5, v22);
    (*(v23 + 8))(v8, v24);
  }

  return result;
}

void sub_100142A34(uint64_t a1)
{
  [*(a1 + 40) invalidate];
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;

  sub_100141D34(1);
}

uint64_t sub_100142A78(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 72);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v10 = (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v1 + 128))
  {
    v10 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 == -1)
    {
      return os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, qword_100300E28, "scheduleCloudUpdate: update in progress, new update will be scheduled for pending updates, after current operation completes", 124, 2, _swiftEmptyArrayStorage);
    }

LABEL_15:
    v27 = v10;
    swift_once();
    v10 = v27;
    return os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, qword_100300E28, "scheduleCloudUpdate: update in progress, new update will be scheduled for pending updates, after current operation completes", 124, 2, _swiftEmptyArrayStorage);
  }

  v12 = *(v1 + 48);
  if (!v12)
  {
    return sub_100142F64(a1 & 1, 0);
  }

  v13 = *(v1 + 40);

  if (v13)
  {
    v14 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      v28 = v14;
      swift_once();
      v14 = v28;
    }

    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, qword_100300E28, "Defer fetch until scheduled changes are pushed to cloud", 55, 2, _swiftEmptyArrayStorage);
    [*(v1 + 40) invalidate];
    v15 = *(v1 + 40);
    *(v1 + 40) = 0;

    swift_getObjectType();
    OS_dispatch_source.cancel()();
    *(v1 + 48) = 0;

    sub_100142F64(a1 & 1, 1);
  }

  v31 = v12;
  v30 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v16 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v17 = swift_allocObject();
  v29 = xmmword_100226100;
  *(v17 + 16) = xmmword_100226100;
  swift_beginAccess();
  sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);

  sub_1000EE870(&qword_1002F94F0, &qword_100229380);
  sub_100162740(&qword_1002F94F8, &qword_1002F85A0, CKRecord_ptr, &protocol conformance descriptor for NSObject);
  v18 = Dictionary.Keys.description.getter();
  v20 = v19;

  *(v17 + 56) = &type metadata for String;
  v21 = sub_1000EE954();
  *(v17 + 64) = v21;
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v16, "Already Scheduled changes: %@", 29, 2, v17);

  v22 = static os_log_type_t.default.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v29;
  swift_beginAccess();
  sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);

  sub_1000EE870(&qword_1002F9500, &qword_100229388);
  sub_100162740(&qword_1002F9508, &unk_1002F8B50, CKRecordID_ptr, &protocol conformance descriptor for NSObject);
  v24 = Dictionary.Keys.description.getter();
  v26 = v25;

  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = v21;
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v16, "Already Scheduled deletion: %@", 30, 2, v23);
}

uint64_t sub_100142F64(char a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 72);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6, v8);
  v12 = v11;
  v13 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v6 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
LABEL_5:
    swift_once();
  }

  v14 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100226100;
  *(v15 + 56) = &type metadata for Bool;
  *(v15 + 64) = &protocol witness table for Bool;
  v16 = a1 & 1;
  *(v15 + 32) = a1 & 1;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v14, "checkInPendingCloudUpdates, userInitiated: %d", v20);

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  *(v18 + 25) = a2 & 1;
  type metadata accessor for LocalDispatchTimer();
  swift_allocObject();
  *(v3 + 48) = LocalDispatchTimer.init(deadline:repeating:leeway:queue:block:)(v12, sub_100162F04, v18, 3.0, 0.0, 1.0);

  swift_getObjectType();
  OS_dispatch_source.resume()();
}

void sub_100143204(unint64_t a1, char a2, char a3)
{
  LOBYTE(v3) = a3;
  isUniquelyReferenced_nonNull_native = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v5 = qword_100300E28;
    os_log(_:dso:log:_:_:)(isUniquelyReferenced_nonNull_native, &_mh_execute_header, qword_100300E28, "checkInPendingCloudUpdates timer fired", 38, 2, _swiftEmptyArrayStorage, v66);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      break;
    }

    v7 = Strong;
    v73 = v3;
    v8 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v5, "checkInPendingCloudUpdates: operation starting", 46, 2, _swiftEmptyArrayStorage);
    *(v7 + 128) = 1;
    if (*(v7 + 48))
    {
      swift_getObjectType();

      OS_dispatch_source.cancel()();
    }

    *(v7 + 48) = 0;

    v9 = *(v7 + 72);
    v10 = swift_allocObject();
    swift_beginAccess();
    v11 = *(v7 + 120);
    v72 = v10;
    *(v10 + 16) = v11;
    v70 = v9;

    v12 = _swiftEmptyArrayStorage;
    *(v7 + 120) = sub_1000F9C3C(_swiftEmptyArrayStorage);

    v13 = swift_allocObject();
    swift_beginAccess();
    v14 = *(v7 + 112);
    v71 = v13;
    *(v13 + 16) = v14;

    v74 = v7;
    *(v7 + 112) = sub_1000F9C64(_swiftEmptyArrayStorage);

    v15 = *(v14 + 16);
    v76 = v5;
    if (v15)
    {
      v12 = sub_1001CE204();
      v16 = sub_10015EDA0(&v77, (v12 + 32), v15, v14);
      v17 = v77;

      sub_100162F14(v17);
      if (v16 != v15)
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }
    }

    v18 = *(v11 + 16);
    if (v18)
    {
      v69 = sub_1001CE204();
      v19 = sub_10015EDA0(&v77, (v69 + 32), v18, v11);
      v20 = v77;

      sub_100162F14(v20);
      if (v19 != v18)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v69 = _swiftEmptyArrayStorage;
    }

    v21 = static os_log_type_t.default.getter();
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100226100;
    LODWORD(v3) = v12 < 0 || (v12 & 0x4000000000000000) != 0;
    if (v3 == 1)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *(v12 + 16);
    }

    v77 = v23;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    *(v22 + 56) = &type metadata for String;
    v27 = sub_1000EE954();
    *(v22 + 64) = v27;
    *(v22 + 32) = v24;
    *(v22 + 40) = v26;
    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v5, "checkInPendingCloudUpdates updates count: %@", 44, 2, v22);

    if (IsAppleInternalBuild())
    {
      v28 = static os_log_type_t.default.getter();
    }

    else
    {
      v28 = static os_log_type_t.debug.getter();
    }

    v67 = v28;
    isUniquelyReferenced_nonNull_native = swift_allocObject();
    v66 = isUniquelyReferenced_nonNull_native;
    *(isUniquelyReferenced_nonNull_native + 16) = xmmword_100226100;
    if (v3)
    {
      isUniquelyReferenced_nonNull_native = _CocoaArrayWrapper.endIndex.getter();
      v29 = isUniquelyReferenced_nonNull_native;
    }

    else
    {
      v29 = *(v12 + 16);
    }

    v68 = v27;
    if (!v29)
    {
LABEL_35:
      v40 = Array.description.getter();
      v42 = v41;

      v66[7] = &type metadata for String;
      v66[8] = v68;
      v66[4] = v40;
      v66[5] = v42;
      os_log(_:dso:log:_:_:)(v67, &_mh_execute_header, v76, "Staged CKRecords updates - %@", 29, 2, v66);

      v43 = static os_log_type_t.default.getter();
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_100226100;
      if (v69 < 0 || (v69 & 0x4000000000000000) != 0)
      {
        v45 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v45 = *(v69 + 16);
      }

      v77 = v45;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v44 + 56) = &type metadata for String;
      *(v44 + 64) = v68;
      *(v44 + 32) = v46;
      *(v44 + 40) = v47;
      os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v76, "checkInPendingCloudUpdates deletes count: %@", 44, 2, v44);

      if (IsAppleInternalBuild())
      {
        v48 = static os_log_type_t.default.getter();
      }

      else
      {
        v48 = static os_log_type_t.debug.getter();
      }

      v49 = v48;
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_100226100;
      sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
      v51 = Array.description.getter();
      *(v50 + 56) = &type metadata for String;
      *(v50 + 64) = v68;
      *(v50 + 32) = v51;
      *(v50 + 40) = v52;
      os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v76, "Staged CKRecords deletes - %@", 29, 2, v50);

      sub_1000FA784(0, &qword_1002F9358, CKModifyRecordsOperation_ptr);

      v78.value._rawValue = v12;
      v78.is_nil = v69;
      v53 = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v78, v79).super.super.super.super.isa;
      if (a2)
      {
        v54 = sub_100140F8C();
      }

      else
      {
        v54 = sub_10014103C();
      }

      v55 = v54;
      [(objc_class *)v53 setGroup:v54, v66];

      [(objc_class *)v53 setCallbackQueue:*(v74 + 80)];
      if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
      {
        [(objc_class *)v53 setQualityOfService:25];
      }

      v56 = [(objc_class *)v53 configuration];
      if (v56)
      {
        v57 = v56;
        [v56 setAutomaticallyRetryNetworkFailures:0];

        v58 = [(objc_class *)v53 configuration];
        if (v58)
        {

          [v58 setDiscretionaryNetworkBehavior:0];

          v59 = swift_allocObject();
          *(v59 + 16) = v71;
          *(v59 + 24) = v74;

          CKModifyRecordsOperation.perRecordSaveBlock.setter();

          CKModifyRecordsOperation.perRecordDeleteBlock.setter();
          v60 = swift_allocObject();
          *(v60 + 16) = v70;
          *(v60 + 24) = v74;
          *(v60 + 32) = v71;
          *(v60 + 40) = v72;
          *(v60 + 48) = a2 & 1;
          *(v60 + 49) = v73 & 1;
          v61 = v70;

          CKModifyRecordsOperation.modifyRecordsResultBlock.setter();
          v62 = *(v74 + 64);
          swift_allocObject();
          v63 = swift_weakInit();
          __chkstk_darwin(v63);
          v64 = v62;
          sub_1000EE870(&qword_1002F92E8, &unk_100229290);
          OS_dispatch_queue.sync<A>(execute:)();

          return;
        }

        goto LABEL_58;
      }

LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      return;
    }

    v30 = 0;
    v31 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *(v12 + 16))
        {
          goto LABEL_51;
        }

        isUniquelyReferenced_nonNull_native = *(v12 + 8 * v30 + 32);
      }

      v32 = isUniquelyReferenced_nonNull_native;
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      sub_100143BEC();
      v35 = v34;
      v3 = v36;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1001CF194(0, *(v31 + 2) + 1, 1, v31);
        v31 = isUniquelyReferenced_nonNull_native;
      }

      v38 = *(v31 + 2);
      v37 = *(v31 + 3);
      if (v38 >= v37 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1001CF194((v37 > 1), v38 + 1, 1, v31);
        v31 = isUniquelyReferenced_nonNull_native;
      }

      *(v31 + 2) = v38 + 1;
      v39 = &v31[16 * v38];
      *(v39 + 4) = v35;
      *(v39 + 5) = v3;
      ++v30;
      if (v33 == v29)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    v65 = isUniquelyReferenced_nonNull_native;
    swift_once();
    isUniquelyReferenced_nonNull_native = v65;
  }
}