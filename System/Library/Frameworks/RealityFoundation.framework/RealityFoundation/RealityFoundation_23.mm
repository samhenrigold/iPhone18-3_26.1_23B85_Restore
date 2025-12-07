void specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(__int128 *, __n128)@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  specialized ActionEventData.action<A>()(&v44);
  v20 = v48;
  if (v48)
  {
    v31 = a7;
    v21 = v45;
    v22 = v46;
    v30 = a5;
    v23 = v47;
    v28 = v49;
    v29 = v44;
    v27 = v50;
    v24 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySSGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySSGGMR);
    *(&v37 + 1) = a9;
    *&v38 = a10;
    v25 = *a2;
    *&v42[24] = a2[1];
    v26 = a2[3];
    *&v42[40] = a2[2];
    BYTE8(v33) = v22 & 1;
    *&v34 = v23;
    *(&v34 + 1) = v20;
    *&v35 = v28;
    *(&v35 + 1) = v27;
    LOBYTE(v36) = v24 & 1;
    *(&v32 + 1) = v29;
    *&v33 = v21;
    *&v32 = a1;
    *(&v36 + 1) = a6;
    LOBYTE(v37) = a3 & 1;
    v39 = 0uLL;
    *(&v38 + 1) = a4;
    LOBYTE(v40) = 1;
    *(&v40 + 1) = 0;
    LOBYTE(v41) = 1;
    *(&v41 + 1) = 0;
    v42[0] = 1;
    *&v42[56] = v26;
    *&v42[72] = a2[4];
    *&v42[8] = v25;
    *&v42[88] = v30;

    (v31)(&v32);
    v43[12] = *&v42[32];
    v43[13] = *&v42[48];
    v43[14] = *&v42[64];
    v43[15] = *&v42[80];
    v43[8] = v40;
    v43[9] = v41;
    v43[10] = *v42;
    v43[11] = *&v42[16];
    v43[4] = v36;
    v43[5] = v37;
    v43[6] = v38;
    v43[7] = v39;
    v43[0] = v32;
    v43[1] = v33;
    v43[2] = v34;
    v43[3] = v35;
    outlined destroy of BodyTrackingComponent?(v43, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySSGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySSGGMR);
  }

  else
  {
    outlined consume of SetEntityPropertyAction<String>?(v44, v45, v46, v47, 0, v49, v50);
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }
}

{
  specialized ActionEventData.action<A>()(&v42);
  v20 = v46;
  if (v46)
  {
    v28 = v42;
    v30 = a7;
    v21 = v43;
    v22 = v44;
    v29 = a5;
    v23 = v45;
    v27 = v47;
    v24 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySbGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySbGGMR);
    *(&v35 + 1) = a9;
    *&v36 = a10;
    v25 = *a2;
    *&v40[24] = a2[1];
    v26 = a2[3];
    *&v40[40] = a2[2];
    BYTE8(v32) = v22 & 1;
    *&v33 = v23;
    *(&v33 + 1) = v20;
    LOBYTE(v34) = v27;
    BYTE1(v34) = v24 & 1;
    *(&v31 + 1) = v28;
    *&v32 = v21;
    *&v31 = a1;
    *(&v34 + 1) = a6;
    LOBYTE(v35) = a3 & 1;
    v37 = 0uLL;
    *(&v36 + 1) = a4;
    LOBYTE(v38) = 1;
    *(&v38 + 1) = 0;
    LOBYTE(v39) = 1;
    *(&v39 + 1) = 0;
    v40[0] = 1;
    *&v40[56] = v26;
    *&v40[72] = a2[4];
    *&v40[8] = v25;
    *&v40[88] = v29;

    (v30)(&v31);
    v41[12] = *&v40[48];
    v41[13] = *&v40[64];
    v41[14] = *&v40[80];
    v41[8] = v39;
    v41[9] = *v40;
    v41[10] = *&v40[16];
    v41[11] = *&v40[32];
    v41[4] = v35;
    v41[5] = v36;
    v41[6] = v37;
    v41[7] = v38;
    v41[0] = v31;
    v41[1] = v32;
    v41[2] = v33;
    v41[3] = v34;
    outlined destroy of BodyTrackingComponent?(v41, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySbGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySbGGMR);
  }

  else
  {
    outlined consume of SetEntityPropertyAction<Bool>?(v42, v43, v44, v45, 0);
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }
}

{
  specialized ActionEventData.action<A>()(&v43);
  v20 = v47;
  if (v47)
  {
    v31 = a7;
    v21 = v44;
    v30 = a5;
    v22 = v45;
    v27 = v46;
    v28 = v49;
    v29 = v43;
    v23 = v48;
    v24 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySfGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySfGGMR);
    *(&v36 + 1) = a9;
    *&v37 = a10;
    v25 = *a2;
    *&v41[24] = a2[1];
    v26 = a2[3];
    *&v41[40] = a2[2];
    BYTE8(v33) = v22 & 1;
    *&v34 = v27;
    *(&v34 + 1) = v20;
    LODWORD(v35) = v23;
    BYTE4(v35) = v28 & 1;
    BYTE5(v35) = v24 & 1;
    *(&v32 + 1) = v29;
    *&v33 = v21;
    *&v32 = a1;
    *(&v35 + 1) = a6;
    LOBYTE(v36) = a3 & 1;
    v38 = 0uLL;
    *(&v37 + 1) = a4;
    LOBYTE(v39) = 1;
    *(&v39 + 1) = 0;
    LOBYTE(v40) = 1;
    *(&v40 + 1) = 0;
    v41[0] = 1;
    *&v41[56] = v26;
    *&v41[72] = a2[4];
    *&v41[8] = v25;
    *&v41[88] = v30;

    (v31)(&v32);
    v42[12] = *&v41[48];
    v42[13] = *&v41[64];
    v42[14] = *&v41[80];
    v42[8] = v40;
    v42[9] = *v41;
    v42[10] = *&v41[16];
    v42[11] = *&v41[32];
    v42[4] = v36;
    v42[5] = v37;
    v42[6] = v38;
    v42[7] = v39;
    v42[0] = v32;
    v42[1] = v33;
    v42[2] = v34;
    v42[3] = v35;
    outlined destroy of BodyTrackingComponent?(v42, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySfGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySfGGMR);
  }

  else
  {
    outlined consume of SetEntityPropertyAction<Bool>?(v43, v44, v45, v46, 0);
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }
}

{
  specialized ActionEventData.action<A>()(&v37);
  v20 = v38;
  if (v38)
  {
    v26 = a7;
    v21 = v37;
    v22 = v39;
    v23 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA012NotificationD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA012NotificationD0VGMR);
    *(&v30 + 1) = a9;
    *&v31 = a10;
    v24 = *a2;
    *&v35[24] = a2[1];
    v25 = a2[3];
    *&v35[40] = a2[2];
    *&v28 = v20;
    *(&v28 + 1) = v22;
    LOBYTE(v29) = v23 & 1;
    *&v27 = a1;
    *(&v27 + 1) = v21;
    *(&v29 + 1) = a6;
    LOBYTE(v30) = a3 & 1;
    v32 = 0uLL;
    *(&v31 + 1) = a4;
    LOBYTE(v33) = 1;
    *(&v33 + 1) = 0;
    LOBYTE(v34) = 1;
    *(&v34 + 1) = 0;
    v35[0] = 1;
    *&v35[56] = v25;
    *&v35[72] = a2[4];
    *&v35[8] = v24;
    *&v35[88] = a5;

    (v26)(&v27);
    v36[10] = *&v35[32];
    v36[11] = *&v35[48];
    v36[12] = *&v35[64];
    v36[13] = *&v35[80];
    v36[6] = v33;
    v36[7] = v34;
    v36[8] = *v35;
    v36[9] = *&v35[16];
    v36[2] = v29;
    v36[3] = v30;
    v36[4] = v31;
    v36[5] = v32;
    v36[0] = v27;
    v36[1] = v28;
    outlined destroy of BodyTrackingComponent?(v36, &_s17RealityFoundation11ActionEventVyAA012NotificationC0VGMd, &_s17RealityFoundation11ActionEventVyAA012NotificationC0VGMR);
  }

  else
  {
    outlined consume of NotificationAction?(v37, 0, v39);
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }
}

uint64_t specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(_OWORD *, __n128)@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  specialized ActionEventData.action<A>()(&v27);
  v43[12] = v39;
  v43[13] = v40;
  v43[14] = v41;
  v43[15] = v42;
  v43[8] = v35;
  v43[9] = v36;
  v43[10] = v37;
  v43[11] = v38;
  v43[4] = v31;
  v43[5] = v32;
  v43[6] = v33;
  v43[7] = v34;
  v43[0] = v27;
  v43[1] = v28;
  v43[2] = v29;
  v43[3] = v30;
  if (_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOg(v43) == 1)
  {
    __dst[12] = v39;
    __dst[13] = v40;
    __dst[14] = v41;
    __dst[15] = v42;
    __dst[8] = v35;
    __dst[9] = v36;
    __dst[10] = v37;
    __dst[11] = v38;
    __dst[4] = v31;
    __dst[5] = v32;
    __dst[6] = v33;
    __dst[7] = v34;
    __dst[0] = v27;
    __dst[1] = v28;
    __dst[2] = v29;
    __dst[3] = v30;
    result = outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgMR);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

  else
  {
    v25[13] = v39;
    v25[14] = v40;
    v25[15] = v41;
    v25[16] = v42;
    v25[9] = v35;
    v25[10] = v36;
    v25[11] = v37;
    v25[12] = v38;
    v25[5] = v31;
    v25[6] = v32;
    v25[7] = v33;
    v25[8] = v34;
    v25[1] = v27;
    v25[2] = v28;
    v25[3] = v29;
    v25[4] = v30;
    LOBYTE(v25[17]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMR) & 1;
    *&v25[0] = a1;
    *(&v25[17] + 1) = a6;
    LOBYTE(v25[18]) = a3 & 1;
    *(&v25[18] + 1) = a9;
    *&v25[19] = a10;
    *(&v25[19] + 1) = a4;
    v25[20] = 0uLL;
    LOBYTE(v25[21]) = 1;
    *(&v25[21] + 1) = 0;
    LOBYTE(v25[22]) = 1;
    LOBYTE(v25[23]) = 1;
    v21 = *a2;
    v22 = a2[1];
    v23 = a2[4];
    *(&v25[26] + 8) = a2[3];
    *(&v25[27] + 8) = v23;
    v24 = a2[2];
    *(&v25[24] + 8) = v22;
    *(&v25[25] + 8) = v24;
    *(&v25[23] + 8) = v21;
    *(&v25[22] + 1) = 0;
    *(&v25[28] + 1) = a5;

    (a7)(v25);
    memcpy(__dst, v25, sizeof(__dst));
    return outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMR);
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&v27);
  v37[6] = v33;
  v37[7] = v34;
  v37[8] = v35;
  v37[9] = v36;
  v37[2] = v29;
  v37[3] = v30;
  v37[4] = v31;
  v37[5] = v32;
  v37[0] = v27;
  v37[1] = v28;
  if (_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgWOg_0(v37) == 1)
  {
    __dst[6] = v33;
    __dst[7] = v34;
    __dst[8] = v35;
    __dst[9] = v36;
    __dst[2] = v29;
    __dst[3] = v30;
    __dst[4] = v31;
    __dst[5] = v32;
    __dst[0] = v27;
    __dst[1] = v28;
    result = outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGSgMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGSgMR);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

  else
  {
    v25[7] = v33;
    v25[8] = v34;
    v25[9] = v35;
    v25[10] = v36;
    v25[3] = v29;
    v25[4] = v30;
    v25[5] = v31;
    v25[6] = v32;
    v25[1] = v27;
    v25[2] = v28;
    LOBYTE(v25[11]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySo10simd_quatfaGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySo10simd_quatfaGGMR) & 1;
    *&v25[0] = a1;
    *(&v25[11] + 1) = a6;
    LOBYTE(v25[12]) = a3 & 1;
    *(&v25[12] + 1) = a9;
    *&v25[13] = a10;
    v25[14] = 0uLL;
    *(&v25[13] + 1) = a4;
    LOBYTE(v25[15]) = 1;
    LOBYTE(v25[16]) = 1;
    *(&v25[15] + 1) = 0;
    *(&v25[16] + 1) = 0;
    LOBYTE(v25[17]) = 1;
    v21 = *a2;
    v22 = a2[1];
    v23 = a2[4];
    *(&v25[20] + 8) = a2[3];
    *(&v25[21] + 8) = v23;
    v24 = a2[2];
    *(&v25[18] + 8) = v22;
    *(&v25[19] + 8) = v24;
    *(&v25[17] + 8) = v21;
    *(&v25[22] + 1) = a5;

    (a7)(v25);
    memcpy(__dst, v25, sizeof(__dst));
    return outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VySo10simd_quatfaGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VySo10simd_quatfaGGMR);
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&v27);
  v37[6] = v33;
  v37[7] = v34;
  v37[8] = v35;
  v37[9] = v36;
  v37[2] = v29;
  v37[3] = v30;
  v37[4] = v31;
  v37[5] = v32;
  v37[0] = v27;
  v37[1] = v28;
  if (_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgWOg_0(v37) == 1)
  {
    __dst[6] = v33;
    __dst[7] = v34;
    __dst[8] = v35;
    __dst[9] = v36;
    __dst[2] = v29;
    __dst[3] = v30;
    __dst[4] = v31;
    __dst[5] = v32;
    __dst[0] = v27;
    __dst[1] = v28;
    result = outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgMR);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

  else
  {
    v25[7] = v33;
    v25[8] = v34;
    v25[9] = v35;
    v25[10] = v36;
    v25[3] = v29;
    v25[4] = v30;
    v25[5] = v31;
    v25[6] = v32;
    v25[1] = v27;
    v25[2] = v28;
    LOBYTE(v25[11]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD4VySfGGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD4VySfGGGMR) & 1;
    *&v25[0] = a1;
    *(&v25[11] + 1) = a6;
    LOBYTE(v25[12]) = a3 & 1;
    *(&v25[12] + 1) = a9;
    *&v25[13] = a10;
    v25[14] = 0uLL;
    *(&v25[13] + 1) = a4;
    LOBYTE(v25[15]) = 1;
    LOBYTE(v25[16]) = 1;
    *(&v25[15] + 1) = 0;
    *(&v25[16] + 1) = 0;
    LOBYTE(v25[17]) = 1;
    v21 = *a2;
    v22 = a2[1];
    v23 = a2[4];
    *(&v25[20] + 8) = a2[3];
    *(&v25[21] + 8) = v23;
    v24 = a2[2];
    *(&v25[18] + 8) = v22;
    *(&v25[19] + 8) = v24;
    *(&v25[17] + 8) = v21;
    *(&v25[22] + 1) = a5;

    (a7)(v25);
    memcpy(__dst, v25, sizeof(__dst));
    return outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD4VySfGGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD4VySfGGGMR);
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&v27);
  v37[6] = v33;
  v37[7] = v34;
  v37[8] = v35;
  v37[9] = v36;
  v37[2] = v29;
  v37[3] = v30;
  v37[4] = v31;
  v37[5] = v32;
  v37[0] = v27;
  v37[1] = v28;
  if (_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgWOg_0(v37) == 1)
  {
    __dst[6] = v33;
    __dst[7] = v34;
    __dst[8] = v35;
    __dst[9] = v36;
    __dst[2] = v29;
    __dst[3] = v30;
    __dst[4] = v31;
    __dst[5] = v32;
    __dst[0] = v27;
    __dst[1] = v28;
    result = outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGSgMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGSgMR);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

  else
  {
    v25[7] = v33;
    v25[8] = v34;
    v25[9] = v35;
    v25[10] = v36;
    v25[3] = v29;
    v25[4] = v30;
    v25[5] = v31;
    v25[6] = v32;
    v25[1] = v27;
    v25[2] = v28;
    LOBYTE(v25[11]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD3VySfGGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD3VySfGGGMR) & 1;
    *&v25[0] = a1;
    *(&v25[11] + 1) = a6;
    LOBYTE(v25[12]) = a3 & 1;
    *(&v25[12] + 1) = a9;
    *&v25[13] = a10;
    v25[14] = 0uLL;
    *(&v25[13] + 1) = a4;
    LOBYTE(v25[15]) = 1;
    LOBYTE(v25[16]) = 1;
    *(&v25[15] + 1) = 0;
    *(&v25[16] + 1) = 0;
    LOBYTE(v25[17]) = 1;
    v21 = *a2;
    v22 = a2[1];
    v23 = a2[4];
    *(&v25[20] + 8) = a2[3];
    *(&v25[21] + 8) = v23;
    v24 = a2[2];
    *(&v25[18] + 8) = v22;
    *(&v25[19] + 8) = v24;
    *(&v25[17] + 8) = v21;
    *(&v25[22] + 1) = a5;

    (a7)(v25);
    memcpy(__dst, v25, sizeof(__dst));
    return outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD3VySfGGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD3VySfGGGMR);
  }

  return result;
}

void specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(uint64_t a1@<X0>, _OWORD *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(_OWORD *, __n128)@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  specialized ActionEventData.action<A>()(v25);
  if ((~v26 & 0xFF00000000) != 0)
  {
    v23[3] = v26;
    v23[4] = v27;
    v23[5] = v28[0];
    *(&v23[5] + 13) = *(v28 + 13);
    v23[1] = v25[0];
    v23[2] = v25[1];
    BYTE5(v23[6]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09BillboardD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09BillboardD0VGMR) & 1;
    *&v23[0] = a1;
    *(&v23[6] + 1) = a6;
    LOBYTE(v23[7]) = a3 & 1;
    *(&v23[7] + 1) = a9;
    *&v23[8] = a10;
    v23[9] = 0uLL;
    *(&v23[8] + 1) = a4;
    LOBYTE(v23[10]) = 1;
    *(&v23[10] + 1) = 0;
    LOBYTE(v23[11]) = 1;
    *(&v23[11] + 1) = 0;
    LOBYTE(v23[12]) = 1;
    v20 = a2[2];
    v21 = a2[3];
    *(&v23[16] + 8) = a2[4];
    v22 = a2[1];
    *(&v23[12] + 8) = *a2;
    *(&v23[15] + 8) = v21;
    *(&v23[14] + 8) = v20;
    *(&v23[13] + 8) = v22;
    *(&v23[17] + 1) = a5;

    (a7)(v23);
    memcpy(__dst, v23, sizeof(__dst));
    outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA09BillboardC0VGMd, &_s17RealityFoundation11ActionEventVyAA09BillboardC0VGMR);
  }

  else
  {
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }
}

uint64_t specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(__int128 *)@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  result = specialized ActionEventData.action<A>()(&v36);
  v21 = v39 | (v40 << 32);
  if ((v21 & 0xFF0000000000) == 0x20000000000)
  {
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  else
  {
    LODWORD(v25) = v36;
    v26 = v37;
    v27 = v38;
    LODWORD(v28) = v39;
    BYTE4(v28) = BYTE4(v21);
    BYTE5(v28) = BYTE5(v21) & 1;
    BYTE6(v28) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA04SpinD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA04SpinD0VGMR) & 1;
    *&v24 = a1;
    *(&v28 + 1) = a6;
    LOBYTE(v29) = a3 & 1;
    *(&v29 + 1) = a9;
    *&v30 = a10;
    v31 = 0uLL;
    *(&v30 + 1) = a4;
    LOBYTE(v32) = 1;
    *(&v32 + 1) = 0;
    LOBYTE(v33) = 1;
    *(&v33 + 1) = 0;
    v34[0] = 1;
    v22 = *a2;
    *&v34[24] = a2[1];
    v23 = a2[3];
    *&v34[40] = a2[2];
    *&v34[56] = v23;
    *&v34[72] = a2[4];
    *&v34[8] = v22;
    *&v34[88] = a5;

    a7(&v24);
    v35[12] = *&v34[32];
    v35[13] = *&v34[48];
    v35[14] = *&v34[64];
    v35[15] = *&v34[80];
    v35[8] = v32;
    v35[9] = v33;
    v35[10] = *v34;
    v35[11] = *&v34[16];
    v35[4] = v28;
    v35[5] = v29;
    v35[6] = v30;
    v35[7] = v31;
    v35[0] = v24;
    v35[1] = v25;
    v35[2] = v26;
    v35[3] = v27;
    return outlined destroy of BodyTrackingComponent?(v35, &_s17RealityFoundation11ActionEventVyAA04SpinC0VGMd, &_s17RealityFoundation11ActionEventVyAA04SpinC0VGMR);
  }

  return result;
}

void specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(__int128 *)@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  specialized ActionEventData.action<A>()(&v42);
  v20 = v44;
  if (v44 == 0xFF)
  {
    outlined consume of OrbitEntityAction?(v42, v43, 255);
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  else
  {
    v21 = v47;
    v26 = v43;
    v27 = v45;
    v28 = v42;
    v29 = a5;
    v22 = v46;
    v23 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA05OrbitcD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA05OrbitcD0VGMR);
    *(&v35 + 1) = a9;
    *&v36 = a10;
    v24 = *a2;
    *&v40[24] = a2[1];
    v25 = a2[3];
    *&v40[40] = a2[2];
    LOBYTE(v32) = v20 & 1;
    DWORD1(v32) = HIDWORD(v20);
    *&v33 = v27;
    *(&v33 + 1) = v22;
    LOWORD(v34) = v21 & 0x101;
    BYTE2(v34) = v23 & 1;
    *&v31 = v28;
    *(&v31 + 1) = v26;
    *&v30 = a1;
    *(&v34 + 1) = a6;
    LOBYTE(v35) = a3 & 1;
    v37 = 0uLL;
    *(&v36 + 1) = a4;
    LOBYTE(v38) = 1;
    *(&v38 + 1) = 0;
    LOBYTE(v39) = 1;
    *(&v39 + 1) = 0;
    v40[0] = 1;
    *&v40[56] = v25;
    *&v40[72] = a2[4];
    *&v40[8] = v24;
    *&v40[88] = v29;

    a7(&v30);
    v41[12] = *&v40[32];
    v41[13] = *&v40[48];
    v41[14] = *&v40[64];
    v41[15] = *&v40[80];
    v41[8] = v38;
    v41[9] = v39;
    v41[10] = *v40;
    v41[11] = *&v40[16];
    v41[4] = v34;
    v41[5] = v35;
    v41[6] = v36;
    v41[7] = v37;
    v41[0] = v30;
    v41[1] = v31;
    v41[2] = v32;
    v41[3] = v33;
    outlined destroy of BodyTrackingComponent?(v41, &_s17RealityFoundation11ActionEventVyAA011OrbitEntityC0VGMd, &_s17RealityFoundation11ActionEventVyAA011OrbitEntityC0VGMR);
  }
}

{
  specialized ActionEventData.action<A>()(&v41);
  v20 = v43;
  if (v43 == 0xFF)
  {
    outlined consume of OrbitEntityAction?(v41, v42, 255);
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  else
  {
    v21 = v42;
    v26 = v44;
    v27 = v41;
    v28 = a5;
    v22 = v45;
    v23 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA07ImpulseD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA07ImpulseD0VGMR);
    *(&v34 + 1) = a9;
    *&v35 = a10;
    v24 = *a2;
    *&v39[24] = a2[1];
    v25 = a2[3];
    *&v39[40] = a2[2];
    LOBYTE(v31) = v20 & 1;
    *&v32 = v26;
    *(&v32 + 1) = v22;
    LOBYTE(v33) = v23 & 1;
    *&v30 = v27;
    *(&v30 + 1) = v21;
    *&v29 = a1;
    *(&v33 + 1) = a6;
    LOBYTE(v34) = a3 & 1;
    v36 = 0uLL;
    *(&v35 + 1) = a4;
    LOBYTE(v37) = 1;
    *(&v37 + 1) = 0;
    LOBYTE(v38) = 1;
    *(&v38 + 1) = 0;
    v39[0] = 1;
    *&v39[56] = v25;
    *&v39[72] = a2[4];
    *&v39[8] = v24;
    *&v39[88] = v28;

    a7(&v29);
    v40[12] = *&v39[32];
    v40[13] = *&v39[48];
    v40[14] = *&v39[64];
    v40[15] = *&v39[80];
    v40[8] = v37;
    v40[9] = v38;
    v40[10] = *v39;
    v40[11] = *&v39[16];
    v40[4] = v33;
    v40[5] = v34;
    v40[6] = v35;
    v40[7] = v36;
    v40[0] = v29;
    v40[1] = v30;
    v40[2] = v31;
    v40[3] = v32;
    outlined destroy of BodyTrackingComponent?(v40, &_s17RealityFoundation11ActionEventVyAA07ImpulseC0VGMd, &_s17RealityFoundation11ActionEventVyAA07ImpulseC0VGMR);
  }
}

uint64_t specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(_BYTE *, __n128)@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  specialized ActionEventData.action<A>()(&v46);
  if (*(&v46 + 1))
  {
    *&v24[8] = v46;
    *&v24[24] = v47;
    *&v24[40] = v48[0];
    *&v24[50] = *(v48 + 10);
    v24[66] = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA013PlayAnimationD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA013PlayAnimationD0VGMR) & 1;
    *v24 = a1;
    *&v24[72] = a6;
    LOBYTE(v25) = a3 & 1;
    *(&v25 + 1) = a9;
    *&v26 = a10;
    v27 = 0uLL;
    *(&v26 + 1) = a4;
    LOBYTE(v28) = 1;
    *(&v28 + 1) = 0;
    LOBYTE(v29) = 1;
    *(&v29 + 1) = 0;
    v30[0] = 1;
    v20 = a2[1];
    *&v30[8] = *a2;
    v21 = a2[2];
    v22 = a2[3];
    *&v30[72] = a2[4];
    *&v30[56] = v22;
    *&v30[40] = v21;
    *&v30[24] = v20;
    *&v30[88] = a5;

    (a7)(v24);
    v42 = *&v30[32];
    v43 = *&v30[48];
    v44 = *&v30[64];
    v45 = *&v30[80];
    v38 = v28;
    v39 = v29;
    v40 = *v30;
    v41 = *&v30[16];
    v34 = *&v24[64];
    v35 = v25;
    v36 = v26;
    v37 = v27;
    v31 = *v24;
    v32 = *&v24[16];
    *v33 = *&v24[32];
    *&v33[16] = *&v24[48];
    return outlined destroy of BodyTrackingComponent?(&v31, &_s17RealityFoundation11ActionEventVyAA013PlayAnimationC0VGMd, &_s17RealityFoundation11ActionEventVyAA013PlayAnimationC0VGMR);
  }

  else
  {
    v31 = v46;
    v32 = v47;
    *v33 = v48[0];
    *&v33[10] = *(v48 + 10);
    result = outlined destroy of BodyTrackingComponent?(&v31, &_s17RealityFoundation19PlayAnimationActionVSgMd, &_s17RealityFoundation19PlayAnimationActionVSgMR);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09EmphasizecD0V_Tt1B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v2 = a1[24];
  swift_beginAccess();
  v3 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v4, &v32);
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v32, &v24, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v6 = *(&v25 + 1);
  outlined destroy of BodyTrackingComponent?(&v24, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v6)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for EmphasizeAction), (v10 & 1) == 0))
    {
      swift_endAccess();
      outlined destroy of BodyTrackingComponent?(&v32, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      return 0;
    }

    v11 = *(*(v8 + 56) + 16 * v9);
    swift_endAccess();
    v12 = *a1;
    v13 = *(a1 + 10);
    v26 = *(a1 + 9);
    v27 = v13;
    v28 = *(a1 + 11);
    v14 = *(a1 + 8);
    v24 = *(a1 + 7);
    v25 = v14;
    v15 = *(a1 + 24);
    *&v14 = a1[4];
    *&v13 = a1[5];
    v16 = a1[6];
    v17 = a1[2];
    v29 = v12;
    v23 = v15;
    v21 = v13;
    v22 = v14;
    v19 = v2;
    v20 = v16;
    v18 = v17;

    v11(v30, &v29, &v24, &v23, &v22, &v21, &v20, &v19, &v18);

    outlined destroy of BodyTrackingComponent?(&v32, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v32 = v30[0];
    v33 = v30[1];
    v34 = v31;
  }

  v24 = v32;
  v25 = v33;
  *&v26 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (swift_dynamicCast())
  {
    return *&v30[0];
  }

  else
  {
    return 0;
  }
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09PlayAudiocD0V_Tt1B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v2 = a1[30];
  swift_beginAccess();
  v3 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v4, &v32);
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v32, &v24, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v6 = *(&v25 + 1);
  outlined destroy of BodyTrackingComponent?(&v24, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v6)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for PlayAudioAction), (v10 & 1) == 0))
    {
      swift_endAccess();
      outlined destroy of BodyTrackingComponent?(&v32, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      return 1;
    }

    v11 = *(*(v8 + 56) + 16 * v9);
    swift_endAccess();
    v12 = *a1;
    v13 = *(a1 + 13);
    v26 = *(a1 + 12);
    v27 = v13;
    v28 = *(a1 + 14);
    v14 = *(a1 + 11);
    v24 = *(a1 + 10);
    v25 = v14;
    v15 = *(a1 + 72);
    *&v14 = a1[10];
    *&v13 = a1[11];
    v16 = a1[12];
    v17 = a1[8];
    v29 = v12;
    v23 = v15;
    v21 = v13;
    v22 = v14;
    v19 = v2;
    v20 = v16;
    v18 = v17;

    v11(v30, &v29, &v24, &v23, &v22, &v21, &v20, &v19, &v18);

    outlined destroy of BodyTrackingComponent?(&v32, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v32 = v30[0];
    v33 = v30[1];
    v34 = v31;
  }

  v24 = v32;
  v25 = v33;
  *&v26 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (swift_dynamicCast())
  {
    return *&v30[0];
  }

  else
  {
    return 1;
  }
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0Vy0A3Kit9TransformVG_Tt1B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v2 = a1[37];
  swift_beginAccess();
  v3 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v4, &v34);
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v34, &v26, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v6 = *(&v27 + 1);
  outlined destroy of BodyTrackingComponent?(&v26, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (v6)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static AnimationResource.actionHandlerCreators;
  if (*(static AnimationResource.actionHandlerCreators + 16))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
    if (v11)
    {
      v12 = *(*(v8 + 56) + 16 * v10);
      swift_endAccess();
      v13 = *a1;
      v14 = *(a1 + 33);
      v15 = *(a1 + 35);
      v28 = *(a1 + 31);
      v29 = v14;
      v16 = *(a1 + 29);
      v30 = v15;
      v26 = *(a1 + 27);
      v27 = v16;
      v17 = *(a1 + 128);
      *&v16 = a1[17];
      *&v14 = a1[18];
      v18 = a1[19];
      v19 = a1[15];
      v31 = v13;
      v25 = v17;
      v23 = v14;
      v24 = v16;
      v21 = v2;
      v22 = v18;
      v20 = v19;

      v12(v32, &v31, &v26, &v25, &v24, &v23, &v22, &v21, &v20);

      outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      v34 = v32[0];
      v35 = v32[1];
      v36 = v33;
LABEL_8:
      v26 = v34;
      v27 = v35;
      *&v28 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMR);
      return swift_dynamicCast() ^ 1;
    }
  }

  swift_endAccess();
  outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  return 1;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySSG_Tt1B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v2 = a1[31];
  swift_beginAccess();
  v3 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v4, &v34);
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v34, &v26, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v6 = *(&v27 + 1);
  outlined destroy of BodyTrackingComponent?(&v26, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (v6)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static AnimationResource.actionHandlerCreators;
  if (*(static AnimationResource.actionHandlerCreators + 16))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
    if (v11)
    {
      v12 = *(*(v8 + 56) + 16 * v10);
      swift_endAccess();
      v13 = *a1;
      v14 = *(a1 + 23);
      v15 = *(a1 + 27);
      v28 = *(a1 + 25);
      v29 = v15;
      v30 = *(a1 + 29);
      v26 = *(a1 + 21);
      v27 = v14;
      v16 = *(a1 + 80);
      *&v14 = a1[11];
      v17 = a1[12];
      v18 = a1[13];
      v19 = a1[9];
      v31 = v13;
      v25 = v16;
      v23 = v17;
      v24 = v14;
      v21 = v2;
      v22 = v18;
      v20 = v19;

      v12(v32, &v31, &v26, &v25, &v24, &v23, &v22, &v21, &v20);

      outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      v34 = v32[0];
      v35 = v32[1];
      v36 = v33;
LABEL_8:
      v26 = v34;
      v27 = v35;
      *&v28 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMR);
      return swift_dynamicCast() ^ 1;
    }
  }

  swift_endAccess();
  outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  return 1;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v10 = a1[33];
  swift_beginAccess();
  v11 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v13 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v11 + 56) + 40 * v12, &v42);
  }

  else
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v42, &v34, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v14 = *(&v35 + 1);
  outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (v14)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static AnimationResource.actionHandlerCreators;
  if (*(static AnimationResource.actionHandlerCreators + 16))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
    if (v19)
    {
      v20 = *(*(v16 + 56) + 16 * v18);
      swift_endAccess();
      v21 = *a1;
      v22 = *(a1 + 25);
      v23 = *(a1 + 29);
      v36 = *(a1 + 27);
      v37 = v23;
      v38 = *(a1 + 31);
      v34 = *(a1 + 23);
      v35 = v22;
      v24 = *(a1 + 96);
      *&v22 = a1[13];
      v25 = a1[14];
      v26 = a1[15];
      v27 = a1[11];
      v39 = v21;
      v33 = v24;
      v31 = v25;
      v32 = v22;
      v29 = v10;
      v30 = v26;
      v28 = v27;

      v20(v40, &v39, &v34, &v33, &v32, &v31, &v30, &v29, &v28);

      outlined destroy of BodyTrackingComponent?(&v42, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      v42 = v40[0];
      v43 = v40[1];
      v44 = v41;
LABEL_8:
      v34 = v42;
      v35 = v43;
      *&v36 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      return swift_dynamicCast() ^ 1;
    }
  }

  swift_endAccess();
  outlined destroy of BodyTrackingComponent?(&v42, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  return 1;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v10 = a1[30];
  swift_beginAccess();
  v11 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v13 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v11 + 56) + 40 * v12, &v41);
  }

  else
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v41, &v33, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v14 = *(&v34 + 1);
  outlined destroy of BodyTrackingComponent?(&v33, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (v14)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static AnimationResource.actionHandlerCreators;
  if (*(static AnimationResource.actionHandlerCreators + 16))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
    if (v19)
    {
      v20 = *(*(v16 + 56) + 16 * v18);
      swift_endAccess();
      v21 = *a1;
      v22 = *(a1 + 13);
      v35 = *(a1 + 12);
      v36 = v22;
      v37 = *(a1 + 14);
      v23 = *(a1 + 11);
      v33 = *(a1 + 10);
      v34 = v23;
      v24 = *(a1 + 72);
      *&v23 = a1[10];
      *&v22 = a1[11];
      v25 = a1[12];
      v26 = a1[8];
      v38 = v21;
      v32 = v24;
      v30 = v22;
      v31 = v23;
      v28 = v10;
      v29 = v25;
      v27 = v26;

      v20(v39, &v38, &v33, &v32, &v31, &v30, &v29, &v28, &v27);

      outlined destroy of BodyTrackingComponent?(&v41, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      v41 = v39[0];
      v42 = v39[1];
      v43 = v40;
LABEL_8:
      v33 = v41;
      v34 = v42;
      *&v35 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      return swift_dynamicCast() ^ 1;
    }
  }

  swift_endAccess();
  outlined destroy of BodyTrackingComponent?(&v41, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  return 1;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySbG_Tt1B5Tm(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v10 = a1[29];
  swift_beginAccess();
  v11 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v13 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v11 + 56) + 40 * v12, &v42);
  }

  else
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v42, &v34, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v14 = *(&v35 + 1);
  outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (v14)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static AnimationResource.actionHandlerCreators;
  if (*(static AnimationResource.actionHandlerCreators + 16))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
    if (v19)
    {
      v20 = *(*(v16 + 56) + 16 * v18);
      swift_endAccess();
      v21 = *a1;
      v22 = *(a1 + 21);
      v23 = *(a1 + 25);
      v36 = *(a1 + 23);
      v37 = v23;
      v38 = *(a1 + 27);
      v34 = *(a1 + 19);
      v35 = v22;
      v24 = *(a1 + 64);
      *&v22 = a1[9];
      v25 = a1[10];
      v26 = a1[11];
      v27 = a1[7];
      v39 = v21;
      v33 = v24;
      v31 = v25;
      v32 = v22;
      v29 = v10;
      v30 = v26;
      v28 = v27;

      v20(v40, &v39, &v34, &v33, &v32, &v31, &v30, &v29, &v28);

      outlined destroy of BodyTrackingComponent?(&v42, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      v42 = v40[0];
      v43 = v40[1];
      v44 = v41;
LABEL_8:
      v34 = v42;
      v35 = v43;
      *&v36 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      return swift_dynamicCast() ^ 1;
    }
  }

  swift_endAccess();
  outlined destroy of BodyTrackingComponent?(&v42, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  return 1;
}

double _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, _OWORD *a6@<X8>)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v12 = a1[37];
  swift_beginAccess();
  v13 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v15 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v13 + 56) + 40 * v14, &v44);
  }

  else
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v44, &v36, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v16 = *(&v37 + 1);
  outlined destroy of BodyTrackingComponent?(&v36, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v16)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3), v20 = specialized __RawDictionaryStorage.find<A>(_:)(v19), (v21 & 1) == 0))
    {
      swift_endAccess();
      outlined destroy of BodyTrackingComponent?(&v44, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      goto LABEL_16;
    }

    v22 = *(*(v18 + 56) + 16 * v20);
    swift_endAccess();
    v23 = *a1;
    v24 = *(a1 + 33);
    v25 = *(a1 + 35);
    v38 = *(a1 + 31);
    v39 = v24;
    v26 = *(a1 + 29);
    v40 = v25;
    v36 = *(a1 + 27);
    v37 = v26;
    v27 = *(a1 + 128);
    *&v26 = a1[17];
    *&v24 = a1[18];
    v28 = a1[19];
    v29 = a1[15];
    v41 = v23;
    v35 = v27;
    v33 = v24;
    v34 = v26;
    v31 = v12;
    v32 = v28;
    v30 = v29;

    v22(v42, &v41, &v36, &v35, &v34, &v33, &v32, &v31, &v30);

    outlined destroy of BodyTrackingComponent?(&v44, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v44 = v42[0];
    v45 = v42[1];
    v46 = v43;
  }

  v36 = v44;
  v37 = v45;
  *&v38 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    *&result = 1;
    *a6 = xmmword_1C1887610;
  }

  return result;
}

__n128 _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vy0A3Kit9TransformVG_Tt1B5@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v4 = a1[57];
  swift_beginAccess();
  v5 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v5 + 56) + 40 * v6, &v37);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v37, &v28, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v8 = v29.n128_u64[1];
  outlined destroy of BodyTrackingComponent?(&v28, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v8)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR), v11 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v12 & 1) == 0))
    {
      swift_endAccess();
      outlined destroy of BodyTrackingComponent?(&v37, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      LOBYTE(v34) = 1;
      goto LABEL_17;
    }

    v13 = *(*(v9 + 56) + 16 * v11);
    swift_endAccess();
    v14 = *a1;
    v15 = *(a1 + 53);
    v30 = *(a1 + 51);
    v31 = v15;
    v32 = *(a1 + 55);
    v16 = *(a1 + 49);
    v28 = *(a1 + 47);
    v29 = v16;
    v17 = *(a1 + 288);
    *&v16 = a1[37];
    *&v15 = a1[38];
    v18 = a1[39];
    v19 = a1[35];
    v33 = v14;
    v27 = v17;
    v25 = v15;
    v26 = v16;
    v23 = v4;
    v24 = v18;
    v22 = v19;

    v13(&v34, &v33, &v28, &v27, &v26, &v25, &v24, &v23, &v22);

    outlined destroy of BodyTrackingComponent?(&v37, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v37 = v34;
    v38 = v35;
    v39 = v36;
  }

  v34 = v37;
  v35 = v38;
  v36 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMR);
  if (!swift_dynamicCast())
  {
    LOBYTE(v33) = 1;
LABEL_17:
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    LOBYTE(v32) = 1;
    goto LABEL_18;
  }

  LOBYTE(v32) = 0;
LABEL_18:
  v20 = v31;
  *(a2 + 32) = v30;
  *(a2 + 48) = v20;
  *(a2 + 64) = v32;
  result = v29;
  *a2 = v28;
  *(a2 + 16) = result;
  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, int8x16_t *a6@<X8>)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v12 = a1[45];
  swift_beginAccess();
  v13 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v15 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v13 + 56) + 40 * v14, &v49);
  }

  else
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v49, &v40, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v16 = v41.i64[1];
  outlined destroy of BodyTrackingComponent?(&v40, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v16)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v23 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3), v25 = specialized __RawDictionaryStorage.find<A>(_:)(v24), (v26 & 1) == 0))
    {
      swift_endAccess();
      result = outlined destroy of BodyTrackingComponent?(&v49, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      v20 = 0uLL;
      v22 = 1;
      v21 = 0uLL;
      goto LABEL_18;
    }

    v27 = *(*(v23 + 56) + 16 * v25);
    swift_endAccess();
    v28 = *a1;
    v29 = *(a1 + 41);
    v42 = *(a1 + 39);
    v43 = v29;
    v44 = *(a1 + 43);
    v30 = *(a1 + 37);
    v40 = *(a1 + 35);
    v41 = v30;
    v31 = *(a1 + 192);
    *&v30 = a1[25];
    *&v29 = a1[26];
    v32 = a1[27];
    v33 = a1[23];
    v45 = v28;
    v39 = v31;
    v37 = v29;
    v38 = v30;
    v35 = v12;
    v36 = v32;
    v34 = v33;

    v27(&v46, &v45, &v40, &v39, &v38, &v37, &v36, &v35, &v34);

    outlined destroy of BodyTrackingComponent?(&v49, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  v40 = v49;
  v41 = v50;
  *&v42 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  result = swift_dynamicCast();
  if (result)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19 = vdupq_n_s64(v18);
  v20 = vandq_s8(v46, v19);
  v21 = vandq_s8(v47, v19);
  v22 = result ^ 1;
LABEL_18:
  *a6 = v20;
  a6[1] = v21;
  a6[2].i8[0] = v22;
  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v10 = a1[39];
  swift_beginAccess();
  v11 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v13 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v11 + 56) + 40 * v12, &v42);
  }

  else
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v42, &v34, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v14 = *(&v35 + 1);
  outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v14)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v16 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3), v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v19 & 1) == 0))
    {
      swift_endAccess();
      outlined destroy of BodyTrackingComponent?(&v42, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      return 0;
    }

    v20 = *(*(v16 + 56) + 16 * v18);
    swift_endAccess();
    v21 = *a1;
    v22 = *(a1 + 31);
    v23 = *(a1 + 35);
    v36 = *(a1 + 33);
    v37 = v23;
    v38 = *(a1 + 37);
    v34 = *(a1 + 29);
    v35 = v22;
    v24 = *(a1 + 144);
    *&v22 = a1[19];
    v25 = a1[20];
    v26 = a1[21];
    v27 = a1[17];
    v39 = v21;
    v33 = v24;
    v31 = v25;
    v32 = v22;
    v29 = v10;
    v30 = v26;
    v28 = v27;

    v20(v40, &v39, &v34, &v33, &v32, &v31, &v30, &v29, &v28);

    outlined destroy of BodyTrackingComponent?(&v42, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v42 = v40[0];
    v43 = v40[1];
    v44 = v41;
  }

  v34 = v42;
  v35 = v43;
  *&v36 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (swift_dynamicCast())
  {
    return *&v40[0];
  }

  else
  {
    return 0;
  }
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySfG_Tt1B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v2 = a1[37];
  swift_beginAccess();
  v3 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v4, &v34);
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v34, &v26, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v6 = *(&v27 + 1);
  outlined destroy of BodyTrackingComponent?(&v26, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v6)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR), v10 = specialized __RawDictionaryStorage.find<A>(_:)(v9), (v11 & 1) == 0))
    {
      swift_endAccess();
      outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      return 0;
    }

    v12 = *(*(v8 + 56) + 16 * v10);
    swift_endAccess();
    v13 = *a1;
    v14 = *(a1 + 33);
    v15 = *(a1 + 35);
    v28 = *(a1 + 31);
    v29 = v14;
    v16 = *(a1 + 29);
    v30 = v15;
    v26 = *(a1 + 27);
    v27 = v16;
    v17 = *(a1 + 128);
    *&v16 = a1[17];
    *&v14 = a1[18];
    v18 = a1[19];
    v19 = a1[15];
    v31 = v13;
    v25 = v17;
    v23 = v14;
    v24 = v16;
    v21 = v2;
    v22 = v18;
    v20 = v19;

    v12(v32, &v31, &v26, &v25, &v24, &v23, &v22, &v21, &v20);

    outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v34 = v32[0];
    v35 = v32[1];
    v36 = v33;
  }

  v26 = v34;
  v27 = v35;
  *&v28 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySfGMd, &_s17RealityFoundation21FromToByActionHandlerVySfGMR);
  if (swift_dynamicCast())
  {
    return *&v32[0];
  }

  else
  {
    return 0;
  }
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09BillboardcD0V_Tt1B5@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v4 = a1[35];
  swift_beginAccess();
  v5 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v5 + 56) + 40 * v6, &v35);
  }

  else
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v35, &v27, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v8 = *(&v28 + 1);
  outlined destroy of BodyTrackingComponent?(&v27, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v8)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for BillboardAction), (v12 & 1) == 0))
    {
      swift_endAccess();
      result = outlined destroy of BodyTrackingComponent?(&v35, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      *a2 = 0;
      *(a2 + 4) = 256;
      return result;
    }

    v13 = *(*(v10 + 56) + 16 * v11);
    swift_endAccess();
    v14 = *a1;
    v15 = *(a1 + 27);
    v16 = *(a1 + 31);
    v29 = *(a1 + 29);
    v30 = v16;
    v31 = *(a1 + 33);
    v27 = *(a1 + 25);
    v28 = v15;
    v17 = *(a1 + 112);
    *&v15 = a1[15];
    v18 = a1[16];
    v19 = a1[17];
    v20 = a1[13];
    v32 = v14;
    v26 = v17;
    v24 = v18;
    v25 = v15;
    v22 = v4;
    v23 = v19;
    v21 = v20;

    v13(v33, &v32, &v27, &v26, &v25, &v24, &v23, &v22, &v21);

    outlined destroy of BodyTrackingComponent?(&v35, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v35 = v33[0];
    v36 = v33[1];
    v37 = v34;
  }

  v27 = v35;
  v28 = v36;
  *&v29 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *(a2 + 4) = 0;
    *a2 = 0;
  }

  *(a2 + 5) = result ^ 1;
  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA04SpincD0V_Tt1B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v2 = a1[31];
  swift_beginAccess();
  v3 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v4, &v36);
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v36, &v27, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v6 = *(&v28 + 1);
  outlined destroy of BodyTrackingComponent?(&v27, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v6)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for SpinAction), (v12 & 1) == 0))
    {
      swift_endAccess();
      outlined destroy of BodyTrackingComponent?(&v36, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      return 0;
    }

    v13 = *(*(v10 + 56) + 16 * v11);
    swift_endAccess();
    v14 = *a1;
    v15 = *(a1 + 23);
    v16 = *(a1 + 27);
    v29 = *(a1 + 25);
    v30 = v16;
    v31 = *(a1 + 29);
    v27 = *(a1 + 21);
    v28 = v15;
    v17 = *(a1 + 80);
    *&v15 = a1[11];
    v18 = a1[12];
    v19 = a1[13];
    v20 = a1[9];
    v32 = v14;
    v26 = v17;
    v24 = v18;
    v25 = v15;
    v22 = v2;
    v23 = v19;
    v21 = v20;

    v13(&v33, &v32, &v27, &v26, &v25, &v24, &v23, &v22, &v21);

    outlined destroy of BodyTrackingComponent?(&v36, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v36 = v33;
    v37 = v34;
    v38 = v35;
  }

  v27 = v36;
  v28 = v37;
  *&v29 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v7 = swift_dynamicCast();
  v8 = v7;
  if (v7)
  {
    result = v33;
  }

  else
  {
    result = 0;
    v33 = 0uLL;
    LOBYTE(v34) = 0;
  }

  BYTE1(v34) = v8 ^ 1;
  return result;
}

double _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA011OrbitEntitycD0V_Tt1B5@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v4 = a1[31];
  swift_beginAccess();
  v5 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v5 + 56) + 40 * v6, &v49);
  }

  else
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v49, &v37, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v8 = *(&v38 + 1);
  outlined destroy of BodyTrackingComponent?(&v37, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v8)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for OrbitEntityAction), (v12 & 1) == 0))
    {
      swift_endAccess();
      outlined destroy of BodyTrackingComponent?(&v49, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      goto LABEL_16;
    }

    v13 = *(*(v10 + 56) + 16 * v11);
    swift_endAccess();
    v14 = *a1;
    v15 = *(a1 + 23);
    v16 = *(a1 + 27);
    v39 = *(a1 + 25);
    v40 = v16;
    v41 = *(a1 + 29);
    v37 = *(a1 + 21);
    v38 = v15;
    v17 = *(a1 + 80);
    *&v15 = a1[11];
    v18 = a1[12];
    v19 = a1[13];
    v20 = a1[9];
    v33 = v14;
    v32 = v17;
    v30 = v18;
    v31 = v15;
    v28 = v4;
    v29 = v19;
    v27 = v20;

    v13(&v34, &v33, &v37, &v32, &v31, &v30, &v29, &v28, &v27);

    outlined destroy of BodyTrackingComponent?(&v49, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v49 = v34;
    v50 = v35;
    v51 = v36;
  }

  v34 = v49;
  v35 = v50;
  v36 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (swift_dynamicCast())
  {
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
    return result;
  }

LABEL_16:
  _s17RealityFoundation24OrbitEntityActionHandlerVSgWOi0_(&v37);
  v21 = v46;
  a2[8] = v45;
  a2[9] = v21;
  v22 = v48;
  a2[10] = v47;
  a2[11] = v22;
  v23 = v42;
  a2[4] = v41;
  a2[5] = v23;
  v24 = v44;
  a2[6] = v43;
  a2[7] = v24;
  v25 = v38;
  *a2 = v37;
  a2[1] = v25;
  result = *&v39;
  v26 = v40;
  a2[2] = v39;
  a2[3] = v26;
  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA07ImpulsecD0V_Tt1B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v2 = a1[31];
  swift_beginAccess();
  v3 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v4, &v33);
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v33, &v25, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v6 = *(&v26 + 1);
  outlined destroy of BodyTrackingComponent?(&v25, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (v6)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static AnimationResource.actionHandlerCreators;
  if (*(static AnimationResource.actionHandlerCreators + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for ImpulseAction);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 16 * v9);
      swift_endAccess();
      v12 = *a1;
      v13 = *(a1 + 23);
      v14 = *(a1 + 27);
      v27 = *(a1 + 25);
      v28 = v14;
      v29 = *(a1 + 29);
      v25 = *(a1 + 21);
      v26 = v13;
      v15 = *(a1 + 80);
      *&v13 = a1[11];
      v16 = a1[12];
      v17 = a1[13];
      v18 = a1[9];
      v30 = v12;
      v24 = v15;
      v22 = v16;
      v23 = v13;
      v20 = v2;
      v21 = v17;
      v19 = v18;

      v11(v31, &v30, &v25, &v24, &v23, &v22, &v21, &v20, &v19);

      outlined destroy of BodyTrackingComponent?(&v33, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      v33 = v31[0];
      v34 = v31[1];
      v35 = v32;
LABEL_8:
      v25 = v33;
      v26 = v34;
      *&v27 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      return swift_dynamicCast() ^ 1;
    }
  }

  swift_endAccess();
  outlined destroy of BodyTrackingComponent?(&v33, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  return 1;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA016SetEntityEnabledcD0V_Tt1B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v2 = a1[26];
  swift_beginAccess();
  v3 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v4, &v32);
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v32, &v24, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v6 = *(&v25 + 1);
  outlined destroy of BodyTrackingComponent?(&v24, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (v6)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static AnimationResource.actionHandlerCreators;
  if (*(static AnimationResource.actionHandlerCreators + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for SetEntityEnabledAction);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 16 * v9);
      swift_endAccess();
      v12 = *a1;
      v13 = *(a1 + 11);
      v26 = *(a1 + 10);
      v27 = v13;
      v28 = *(a1 + 12);
      v14 = *(a1 + 9);
      v24 = *(a1 + 8);
      v25 = v14;
      v15 = *(a1 + 40);
      *&v14 = a1[6];
      *&v13 = a1[7];
      v16 = a1[8];
      v17 = a1[4];
      v29 = v12;
      v23 = v15;
      v21 = v13;
      v22 = v14;
      v19 = v2;
      v20 = v16;
      v18 = v17;

      v11(v30, &v29, &v24, &v23, &v22, &v21, &v20, &v19, &v18);

      outlined destroy of BodyTrackingComponent?(&v32, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      v32 = v30[0];
      v33 = v30[1];
      v34 = v31;
LABEL_8:
      v24 = v32;
      v25 = v33;
      *&v26 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      return swift_dynamicCast() ^ 1;
    }
  }

  swift_endAccess();
  outlined destroy of BodyTrackingComponent?(&v32, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  return 1;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA012NotificationcD0V_Tt1B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v2 = a1[27];
  swift_beginAccess();
  v3 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v4, &v33);
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v33, &v25, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v6 = *(&v26 + 1);
  outlined destroy of BodyTrackingComponent?(&v25, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (v6)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static AnimationResource.actionHandlerCreators;
  if (*(static AnimationResource.actionHandlerCreators + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for NotificationAction);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 16 * v9);
      swift_endAccess();
      v12 = *a1;
      v13 = *(a1 + 19);
      v14 = *(a1 + 23);
      v27 = *(a1 + 21);
      v28 = v14;
      v29 = *(a1 + 25);
      v25 = *(a1 + 17);
      v26 = v13;
      v15 = *(a1 + 48);
      *&v13 = a1[7];
      v16 = a1[8];
      v17 = a1[9];
      v18 = a1[5];
      v30 = v12;
      v24 = v15;
      v22 = v16;
      v23 = v13;
      v20 = v2;
      v21 = v17;
      v19 = v18;

      v11(v31, &v30, &v25, &v24, &v23, &v22, &v21, &v20, &v19);

      outlined destroy of BodyTrackingComponent?(&v33, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      v33 = v31[0];
      v34 = v31[1];
      v35 = v32;
LABEL_8:
      v25 = v33;
      v26 = v34;
      *&v27 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      return swift_dynamicCast() ^ 1;
    }
  }

  swift_endAccess();
  outlined destroy of BodyTrackingComponent?(&v33, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  return 1;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA013PlayAnimationcD0V_Tt1B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v2 = a1[31];
  swift_beginAccess();
  v3 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v4, &v33);
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v33, &v25, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v6 = *(&v26 + 1);
  outlined destroy of BodyTrackingComponent?(&v25, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v6)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for PlayAnimationAction), (v10 & 1) == 0))
    {
      swift_endAccess();
      outlined destroy of BodyTrackingComponent?(&v33, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      return 1;
    }

    v11 = *(*(v8 + 56) + 16 * v9);
    swift_endAccess();
    v12 = *a1;
    v13 = *(a1 + 23);
    v14 = *(a1 + 27);
    v27 = *(a1 + 25);
    v28 = v14;
    v29 = *(a1 + 29);
    v25 = *(a1 + 21);
    v26 = v13;
    v15 = *(a1 + 80);
    *&v13 = a1[11];
    v16 = a1[12];
    v17 = a1[13];
    v18 = a1[9];
    v30 = v12;
    v24 = v15;
    v22 = v16;
    v23 = v13;
    v20 = v2;
    v21 = v17;
    v19 = v18;

    v11(v31, &v30, &v25, &v24, &v23, &v22, &v21, &v20, &v19);

    outlined destroy of BodyTrackingComponent?(&v33, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v33 = v31[0];
    v34 = v31[1];
    v35 = v32;
  }

  v25 = v33;
  v26 = v34;
  *&v27 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (swift_dynamicCast())
  {
    return *&v31[0];
  }

  else
  {
    return 1;
  }
}

double _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA09EmphasizecD0V_Tt0B5(uint64_t a1)
{
  v1 = *(a1 + 144);
  v2 = *(a1 + 176);
  v29 = *(a1 + 160);
  v30 = v2;
  v3 = *(a1 + 80);
  v4 = *(a1 + 112);
  v25 = *(a1 + 96);
  v26 = v4;
  v5 = *(a1 + 112);
  v6 = *(a1 + 144);
  v27 = *(a1 + 128);
  v28 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 48);
  v21 = *(a1 + 32);
  v22 = v8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 80);
  v23 = *(a1 + 64);
  v24 = v10;
  v11 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v11;
  v12 = *(a1 + 176);
  v32[10] = v29;
  v32[11] = v12;
  v32[6] = v25;
  v32[7] = v5;
  v32[8] = v27;
  v32[9] = v1;
  v32[2] = v21;
  v32[3] = v9;
  v32[4] = v23;
  v32[5] = v3;
  v31 = *(a1 + 192);
  v33 = *(a1 + 192);
  v32[0] = v20[0];
  v32[1] = v7;
  v13 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09EmphasizecD0V_Tt1B5(v32);
  if (v14)
  {
    v16 = v33;
    v18 = v13;
    v19 = v14;
    EmphasizeActionHandler.actionStarted(event:)(v20);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v17[3] = &type metadata for EmphasizeActionHandler;
    v17[4] = &protocol witness table for EmphasizeActionHandler;
    v17[0] = v18;
    v17[1] = v19;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(v17, v16);
    swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA09PlayAudiocD0V_Tt0B5(__int128 *a1)
{
  v1 = a1[13];
  v2 = a1[11];
  v31 = a1[12];
  v32 = v1;
  v3 = a1[13];
  v33 = a1[14];
  v4 = a1[9];
  v5 = a1[7];
  v27 = a1[8];
  v28 = v4;
  v6 = a1[9];
  v7 = a1[11];
  v29 = a1[10];
  v30 = v7;
  v8 = a1[5];
  v9 = a1[3];
  v23 = a1[4];
  v24 = v8;
  v10 = a1[5];
  v11 = a1[7];
  v25 = a1[6];
  v26 = v11;
  v12 = a1[1];
  v20[0] = *a1;
  v20[1] = v12;
  v13 = a1[3];
  v15 = *a1;
  v14 = a1[1];
  v21 = a1[2];
  v22 = v13;
  v35[12] = v31;
  v35[13] = v3;
  v35[14] = a1[14];
  v35[8] = v27;
  v35[9] = v6;
  v35[10] = v29;
  v35[11] = v2;
  v35[4] = v23;
  v35[5] = v10;
  v35[6] = v25;
  v35[7] = v5;
  v35[0] = v15;
  v35[1] = v14;
  v34 = *(a1 + 30);
  v36 = *(a1 + 30);
  v35[2] = v21;
  v35[3] = v9;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09PlayAudiocD0V_Tt1B5(v35);
  if (result != 1)
  {
    v17 = v36;
    v19 = result;
    PlayAudioActionHandler.actionStarted(event:)(v20);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v18[3] = &type metadata for PlayAudioActionHandler;
    v18[4] = &protocol witness table for PlayAudioActionHandler;
    v18[0] = v19;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(v18, v17);
    swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, &v6);
  v2 = v6;
  if (v6 == 1)
  {
    v3 = 1;
  }

  else
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(1, a1[19], &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = a1[37];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<BlendShapeWeights> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = v2;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v6, v4);
    swift_endAccess();
    v3 = v2;
  }

  return _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(v3);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0VyAA15JointTransformsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, &v6);
  v2 = v6;
  if (v6 == 1)
  {
    v3 = 1;
  }

  else
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(1, a1[19], &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = a1[37];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<JointTransforms> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = v2;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v6, v4);
    swift_endAccess();
    v3 = v2;
  }

  return _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(v3);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA04SpincD0V_Tt0B5(__int128 *a1)
{
  v1 = a1[13];
  v2 = a1[11];
  v38 = a1[12];
  v39 = v1;
  v3 = a1[13];
  v4 = a1[15];
  v40 = a1[14];
  v41 = v4;
  v5 = a1[9];
  v6 = a1[7];
  v34 = a1[8];
  v35 = v5;
  v7 = a1[9];
  v8 = a1[11];
  v36 = a1[10];
  v37 = v8;
  v9 = a1[5];
  v10 = a1[3];
  v30 = a1[4];
  v31 = v9;
  v11 = a1[5];
  v12 = a1[7];
  v32 = a1[6];
  v33 = v12;
  v13 = a1[1];
  v27[0] = *a1;
  v27[1] = v13;
  v14 = a1[3];
  v16 = *a1;
  v15 = a1[1];
  v28 = a1[2];
  v29 = v14;
  v42[12] = v38;
  v42[13] = v3;
  v17 = a1[15];
  v42[14] = v40;
  v43 = v17;
  v42[8] = v34;
  v42[9] = v7;
  v42[10] = v36;
  v42[11] = v2;
  v42[4] = v30;
  v42[5] = v11;
  v42[6] = v32;
  v42[7] = v6;
  v42[0] = v16;
  v42[1] = v15;
  v42[2] = v28;
  v42[3] = v10;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA04SpincD0V_Tt1B5(v42);
  if ((v20 & 0x100) == 0)
  {
    v21 = *(&v43 + 1);
    *&v25 = result;
    *(&v25 + 1) = v19;
    v26 = v20 & 1;
    SpinActionHandler.actionStarted(event:)(v27);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v24[3] = &type metadata for SpinActionHandler;
    v24[4] = &protocol witness table for SpinActionHandler;
    v22 = swift_allocObject();
    v24[0] = v22;
    v23 = v26;
    *(v22 + 16) = v25;
    *(v22 + 32) = v23;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v24, v21);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09EmphasizeD0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for EmphasizeAction), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();

    if (!*(v11 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v11 + 16))
    {
      goto LABEL_34;
    }
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v13)
  {
    v14 = (*(v11 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v19 = v18;
      swift_beginAccess();
      v33 = a4;
      v20 = *(v19 + 16);

      v21 = v20;
      a4 = v33;
      result = MEMORY[0x1C68FE250](v21);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v16, v15);
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v25 = swift_allocObject();
    v25[2] = v7;
    v25[3] = a1;
    v25[4] = a3;
    v25[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_133;
    v26 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v27 = REEventBusSubscribeWithMatch();
    v29 = v28;
    _Block_release(v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v29, a1, isUniquelyReferenced_nonNull_native);
    v31 = aBlock[0];
    swift_beginAccess();

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v35 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, &type metadata for EmphasizeAction, v32);
    static AnimationResource.actionSubscriptions = v35;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v23 = v22;
  swift_beginAccess();
  v24 = *(v23 + 16);

  result = MEMORY[0x1C68FE250](v24);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09PlayAudioD0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for PlayAudioAction), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();

    if (!*(v11 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v11 + 16))
    {
      goto LABEL_34;
    }
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v13)
  {
    v14 = (*(v11 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v19 = v18;
      swift_beginAccess();
      v33 = a4;
      v20 = *(v19 + 16);

      v21 = v20;
      a4 = v33;
      result = MEMORY[0x1C68FE250](v21);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v16, v15);
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v25 = swift_allocObject();
    v25[2] = v7;
    v25[3] = a1;
    v25[4] = a3;
    v25[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_147;
    v26 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v27 = REEventBusSubscribeWithMatch();
    v29 = v28;
    _Block_release(v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v29, a1, isUniquelyReferenced_nonNull_native);
    v31 = aBlock[0];
    swift_beginAccess();

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v35 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, &type metadata for PlayAudioAction, v32);
    static AnimationResource.actionSubscriptions = v35;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v23 = v22;
  swift_beginAccess();
  v24 = *(v23 + 16);

  result = MEMORY[0x1C68FE250](v24);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VyAH9TransformVG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
  v8 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();

    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v14)
  {
    v15 = a3;
    v16 = (*(v12 + 56) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v21 = v20;
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
    a3 = v15;
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v8;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_164;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v36, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v25 = v24;
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySSG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
  v8 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();

    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v14)
  {
    v15 = a3;
    v16 = (*(v12 + 56) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v21 = v20;
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
    a3 = v15;
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v8;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_178;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v36, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v25 = v24;
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySbG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
  v8 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();

    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v14)
  {
    v15 = a3;
    v16 = (*(v12 + 56) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v21 = v20;
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
    a3 = v15;
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v8;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_192_0;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v36, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v25 = v24;
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySiG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
  v8 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();

    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v14)
  {
    v15 = a3;
    v16 = (*(v12 + 56) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v21 = v20;
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
    a3 = v15;
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v8;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_206;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v36, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v25 = v24;
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySo10simd_quatfaG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
  v8 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();

    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v14)
  {
    v15 = a3;
    v16 = (*(v12 + 56) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v21 = v20;
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
    a3 = v15;
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v8;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_223;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v36, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v25 = v24;
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD4VySfGG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
  v8 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();

    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v14)
  {
    v15 = a3;
    v16 = (*(v12 + 56) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v21 = v20;
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
    a3 = v15;
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v8;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_238;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v36, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v25 = v24;
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD3VySfGG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
  v8 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();

    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v14)
  {
    v15 = a3;
    v16 = (*(v12 + 56) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v21 = v20;
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
    a3 = v15;
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v8;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_253;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v36, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v25 = v24;
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD2VySfGG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
  v8 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();

    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v14)
  {
    v15 = a3;
    v16 = (*(v12 + 56) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v21 = v20;
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
    a3 = v15;
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v8;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_267;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v36, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v25 = v24;
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySdG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
  v8 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();

    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v14)
  {
    v15 = a3;
    v16 = (*(v12 + 56) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v21 = v20;
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
    a3 = v15;
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v8;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_281;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v36, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v25 = v24;
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySfG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
  v8 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();

    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v14)
  {
    v15 = a3;
    v16 = (*(v12 + 56) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v21 = v20;
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
    a3 = v15;
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v8;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_295;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v36, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v25 = v24;
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAA17BlendShapeWeightsVG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
  v8 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();

    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v14)
  {
    v15 = a3;
    v16 = (*(v12 + 56) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v21 = v20;
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
    a3 = v15;
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v8;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_309_1;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v36, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v25 = v24;
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAA15JointTransformsVG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
  v8 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();

    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v14)
  {
    v15 = a3;
    v16 = (*(v12 + 56) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v21 = v20;
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
    a3 = v15;
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v8;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_323;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v36, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v25 = v24;
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAH9TransformVG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR);
  v8 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();

    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v14)
  {
    v15 = a3;
    v16 = (*(v12 + 56) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v21 = v20;
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
    a3 = v15;
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v8;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_345;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v36, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v25 = v24;
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySo10simd_quatfaG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
  v8 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();

    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v14)
  {
    v15 = a3;
    v16 = (*(v12 + 56) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v21 = v20;
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
    a3 = v15;
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v8;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_369;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v36, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v25 = v24;
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD4VySfGG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
  v8 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();

    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v14)
  {
    v15 = a3;
    v16 = (*(v12 + 56) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v21 = v20;
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
    a3 = v15;
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v8;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_391;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v36, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v25 = v24;
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD3VySfGG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
  v8 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();

    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v14)
  {
    v15 = a3;
    v16 = (*(v12 + 56) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v21 = v20;
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
    a3 = v15;
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v8;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_413_0;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v36, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v25 = v24;
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD2VySfGG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
  v8 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();

    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v14)
  {
    v15 = a3;
    v16 = (*(v12 + 56) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v21 = v20;
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
    a3 = v15;
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v8;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_429;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v36, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v25 = v24;
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySdG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
  v8 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();

    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v14)
  {
    v15 = a3;
    v16 = (*(v12 + 56) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v21 = v20;
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
    a3 = v15;
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v8;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_443;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v36, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v25 = v24;
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySfG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR);
  v8 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();

    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v12 + 16))
    {
      goto LABEL_34;
    }
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v14)
  {
    v15 = a3;
    v16 = (*(v12 + 56) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v21 = v20;
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
    a3 = v15;
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v8;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_457;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v36, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v25 = v24;
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09BillboardD0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for BillboardAction), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();

    if (!*(v11 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v11 + 16))
    {
      goto LABEL_34;
    }
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v13)
  {
    v14 = (*(v11 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v19 = v18;
      swift_beginAccess();
      v33 = a4;
      v20 = *(v19 + 16);

      v21 = v20;
      a4 = v33;
      result = MEMORY[0x1C68FE250](v21);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v16, v15);
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v25 = swift_allocObject();
    v25[2] = v7;
    v25[3] = a1;
    v25[4] = a3;
    v25[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_471;
    v26 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v27 = REEventBusSubscribeWithMatch();
    v29 = v28;
    _Block_release(v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v29, a1, isUniquelyReferenced_nonNull_native);
    v31 = aBlock[0];
    swift_beginAccess();

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v35 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, &type metadata for BillboardAction, v32);
    static AnimationResource.actionSubscriptions = v35;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v23 = v22;
  swift_beginAccess();
  v24 = *(v23 + 16);

  result = MEMORY[0x1C68FE250](v24);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA04SpinD0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for SpinAction), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();

    if (!*(v11 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v11 + 16))
    {
      goto LABEL_34;
    }
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v13)
  {
    v14 = (*(v11 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v19 = v18;
      swift_beginAccess();
      v33 = a4;
      v20 = *(v19 + 16);

      v21 = v20;
      a4 = v33;
      result = MEMORY[0x1C68FE250](v21);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v16, v15);
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v25 = swift_allocObject();
    v25[2] = v7;
    v25[3] = a1;
    v25[4] = a3;
    v25[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_491;
    v26 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v27 = REEventBusSubscribeWithMatch();
    v29 = v28;
    _Block_release(v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v29, a1, isUniquelyReferenced_nonNull_native);
    v31 = aBlock[0];
    swift_beginAccess();

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v35 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, &type metadata for SpinAction, v32);
    static AnimationResource.actionSubscriptions = v35;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v23 = v22;
  swift_beginAccess();
  v24 = *(v23 + 16);

  result = MEMORY[0x1C68FE250](v24);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA05OrbitcD0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for OrbitEntityAction), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();

    if (!*(v11 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v11 + 16))
    {
      goto LABEL_34;
    }
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v13)
  {
    v14 = (*(v11 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v19 = v18;
      swift_beginAccess();
      v33 = a4;
      v20 = *(v19 + 16);

      v21 = v20;
      a4 = v33;
      result = MEMORY[0x1C68FE250](v21);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v16, v15);
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v25 = swift_allocObject();
    v25[2] = v7;
    v25[3] = a1;
    v25[4] = a3;
    v25[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_515_0;
    v26 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v27 = REEventBusSubscribeWithMatch();
    v29 = v28;
    _Block_release(v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v29, a1, isUniquelyReferenced_nonNull_native);
    v31 = aBlock[0];
    swift_beginAccess();

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v35 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, &type metadata for OrbitEntityAction, v32);
    static AnimationResource.actionSubscriptions = v35;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v23 = v22;
  swift_beginAccess();
  v24 = *(v23 + 16);

  result = MEMORY[0x1C68FE250](v24);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA07ImpulseD0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for ImpulseAction), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();

    if (!*(v11 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v11 + 16))
    {
      goto LABEL_34;
    }
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v13)
  {
    v14 = (*(v11 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v19 = v18;
      swift_beginAccess();
      v33 = a4;
      v20 = *(v19 + 16);

      v21 = v20;
      a4 = v33;
      result = MEMORY[0x1C68FE250](v21);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v16, v15);
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v25 = swift_allocObject();
    v25[2] = v7;
    v25[3] = a1;
    v25[4] = a3;
    v25[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_531;
    v26 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v27 = REEventBusSubscribeWithMatch();
    v29 = v28;
    _Block_release(v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v29, a1, isUniquelyReferenced_nonNull_native);
    v31 = aBlock[0];
    swift_beginAccess();

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v35 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, &type metadata for ImpulseAction, v32);
    static AnimationResource.actionSubscriptions = v35;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v23 = v22;
  swift_beginAccess();
  v24 = *(v23 + 16);

  result = MEMORY[0x1C68FE250](v24);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc7EnabledD0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for SetEntityEnabledAction), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();

    if (!*(v11 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v11 + 16))
    {
      goto LABEL_34;
    }
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v13)
  {
    v14 = (*(v11 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v19 = v18;
      swift_beginAccess();
      v33 = a4;
      v20 = *(v19 + 16);

      v21 = v20;
      a4 = v33;
      result = MEMORY[0x1C68FE250](v21);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v16, v15);
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v25 = swift_allocObject();
    v25[2] = v7;
    v25[3] = a1;
    v25[4] = a3;
    v25[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_545;
    v26 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v27 = REEventBusSubscribeWithMatch();
    v29 = v28;
    _Block_release(v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v29, a1, isUniquelyReferenced_nonNull_native);
    v31 = aBlock[0];
    swift_beginAccess();

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v35 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, &type metadata for SetEntityEnabledAction, v32);
    static AnimationResource.actionSubscriptions = v35;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v23 = v22;
  swift_beginAccess();
  v24 = *(v23 + 16);

  result = MEMORY[0x1C68FE250](v24);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA012NotificationD0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for NotificationAction), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();

    if (!*(v11 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v11 + 16))
    {
      goto LABEL_34;
    }
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v13)
  {
    v14 = (*(v11 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v19 = v18;
      swift_beginAccess();
      v33 = a4;
      v20 = *(v19 + 16);

      v21 = v20;
      a4 = v33;
      result = MEMORY[0x1C68FE250](v21);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v16, v15);
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v25 = swift_allocObject();
    v25[2] = v7;
    v25[3] = a1;
    v25[4] = a3;
    v25[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_559;
    v26 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v27 = REEventBusSubscribeWithMatch();
    v29 = v28;
    _Block_release(v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v29, a1, isUniquelyReferenced_nonNull_native);
    v31 = aBlock[0];
    swift_beginAccess();

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v35 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, &type metadata for NotificationAction, v32);
    static AnimationResource.actionSubscriptions = v35;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v23 = v22;
  swift_beginAccess();
  v24 = *(v23 + 16);

  result = MEMORY[0x1C68FE250](v24);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA013PlayAnimationD0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for PlayAnimationAction), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();

    if (!*(v11 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v11 + 16))
    {
      goto LABEL_34;
    }
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v13)
  {
    v14 = (*(v11 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    if (a2)
    {
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v19 = v18;
      swift_beginAccess();
      v33 = a4;
      v20 = *(v19 + 16);

      v21 = v20;
      a4 = v33;
      result = MEMORY[0x1C68FE250](v21);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v16, v15);
  }

LABEL_34:
  if (a2)
  {
    REEngineGetEventBus();
LABEL_37:
    v25 = swift_allocObject();
    v25[2] = v7;
    v25[3] = a1;
    v25[4] = a3;
    v25[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_573;
    v26 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v27 = REEventBusSubscribeWithMatch();
    v29 = v28;
    _Block_release(v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v29, a1, isUniquelyReferenced_nonNull_native);
    v31 = aBlock[0];
    swift_beginAccess();

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v35 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, &type metadata for PlayAnimationAction, v32);
    static AnimationResource.actionSubscriptions = v35;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v23 = v22;
  swift_beginAccess();
  v24 = *(v23 + 16);

  result = MEMORY[0x1C68FE250](v24);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

double _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA09EmphasizecD0V_Tt0B5(uint64_t a1)
{
  v1 = *(a1 + 144);
  v2 = *(a1 + 176);
  v29 = *(a1 + 160);
  v30 = v2;
  v3 = *(a1 + 80);
  v4 = *(a1 + 112);
  v25 = *(a1 + 96);
  v26 = v4;
  v5 = *(a1 + 112);
  v6 = *(a1 + 144);
  v27 = *(a1 + 128);
  v28 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 48);
  v21 = *(a1 + 32);
  v22 = v8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 80);
  v23 = *(a1 + 64);
  v24 = v10;
  v11 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v11;
  v12 = *(a1 + 176);
  v32[10] = v29;
  v32[11] = v12;
  v32[6] = v25;
  v32[7] = v5;
  v32[8] = v27;
  v32[9] = v1;
  v32[2] = v21;
  v32[3] = v9;
  v32[4] = v23;
  v32[5] = v3;
  v31 = *(a1 + 192);
  v33 = *(a1 + 192);
  v32[0] = v20[0];
  v32[1] = v7;
  v13 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09EmphasizecD0V_Tt1B5(v32);
  if (v14)
  {
    v16 = v13;
    v17 = v14;
    v18 = v33;
    v19[5] = v13;
    v19[6] = v14;

    EmphasizeActionHandler.actionUpdated(event:)(v20);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v19[3] = &type metadata for EmphasizeActionHandler;
    v19[4] = &protocol witness table for EmphasizeActionHandler;
    v19[0] = v16;
    v19[1] = v17;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v19, v18);
    swift_endAccess();
  }

  return result;
}

double _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, &v4);
  if (v4 == 1)
  {
    _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(1);
  }

  else
  {
    v7 = v4;
    specialized FromToByActionHandler.actionUpdated(event:)(a1, specialized ActionEvent.animationState.getter, &type metadata for BlendShapeWeights, specialized FromToByActionHandler.evaluateResult(_:));
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v3 = a1[37];
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR);
    v6 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<BlendShapeWeights> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v4 = v7;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v4, v3);
    swift_endAccess();
  }

  return result;
}

double _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0VyAA15JointTransformsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, &v4);
  if (v4 == 1)
  {
    _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(1);
  }

  else
  {
    v7 = v4;
    specialized FromToByActionHandler.actionUpdated(event:)(a1, specialized ActionEvent.animationState.getter, &type metadata for JointTransforms, specialized FromToByActionHandler.evaluateResult(_:));
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v3 = a1[37];
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR);
    v6 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<JointTransforms> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v4 = v7;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v4, v3);
    swift_endAccess();
  }

  return result;
}

void _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0VyAE9TransformVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vy0A3Kit9TransformVG_Tt1B5(a1, v11);
  if ((v12 & 1) == 0)
  {
    v7 = v11[0];
    v8 = v11[1];
    v9 = v11[2];
    v10 = v11[3];
    specialized FromToByActionHandler.actionUpdated(event:)(a1);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = a1[57];
    v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMR);
    v6[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Transform> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v3 = swift_allocObject();
    v6[0] = v3;
    v4 = v8;
    v3[1] = v7;
    v3[2] = v4;
    v5 = v10;
    v3[3] = v9;
    v3[4] = v5;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v6, v2);
    swift_endAccess();
  }
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0VySo10simd_quatfaG_Tt0B5(uint64_t *a1)
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, &v11);
  if ((v14 & 1) == 0)
  {
    v8 = v11;
    v9 = v12 & 1;
    v10 = v13;
    specialized FromToByActionHandler.actionUpdated(event:)(a1);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v3 = a1[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<simd_quatf> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v4 = swift_allocObject();
    v7[0] = v4;
    v5 = v9;
    v6 = v10;
    *(v4 + 16) = v8;
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v3);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0B5(uint64_t *a1)
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, &v11);
  if ((v14 & 1) == 0)
  {
    v8 = v11;
    v9 = v12 & 1;
    v10 = v13;
    specialized FromToByActionHandler.actionUpdated(event:)(a1, specialized ActionEvent.animationState.getter, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR, specialized FromToByActionHandler.evaluateResult(_:));
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v3 = a1[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD4<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v4 = swift_allocObject();
    v7[0] = v4;
    v5 = v9;
    v6 = v10;
    *(v4 + 16) = v8;
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v3);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0B5(uint64_t *a1)
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, &v11);
  if ((v14 & 1) == 0)
  {
    v8 = v11;
    v9 = v12 & 1;
    v10 = v13;
    specialized FromToByActionHandler.actionUpdated(event:)(a1, specialized ActionEvent.animationState.getter, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, specialized FromToByActionHandler.evaluateResult(_:));
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v3 = a1[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD3<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v4 = swift_allocObject();
    v7[0] = v4;
    v5 = v9;
    v6 = v10;
    *(v4 + 16) = v8;
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v3);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0B5(uint64_t *a1)
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
  if ((v5 & 1) == 0)
  {
    v12 = result;
    v13 = v3 & 1;
    v14 = v4;
    specialized FromToByActionHandler.actionUpdated(event:)(a1);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v6 = a1[39];
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD2<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v7 = v12;
    v8 = v13;
    v9 = v14;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v7, v6);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0VySdG_Tt0B5(uint64_t *a1)
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
  if ((v5 & 1) == 0)
  {
    v12 = result;
    v13 = v3 & 1;
    v14 = v4;
    specialized FromToByActionHandler.actionUpdated(event:)(a1);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v6 = a1[39];
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Double> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v7 = v12;
    v8 = v13;
    v9 = v14;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v7, v6);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0VySfG_Tt0B5(uint64_t *a1)
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySfG_Tt1B5(a1);
  if ((v4 & 1) == 0)
  {
    v11 = result;
    v12 = BYTE4(result) & 1;
    v13 = v3;
    specialized FromToByActionHandler.actionUpdated(event:)(a1);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = a1[37];
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySfGMd, &_s17RealityFoundation21FromToByActionHandlerVySfGMR);
    v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Float> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySfGMd, &_s17RealityFoundation21FromToByActionHandlerVySfGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = v11;
    v7 = v12;
    v8 = v13;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v6, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA04SpincD0V_Tt0B5(float32x4_t *a1)
{
  v1 = a1[13];
  v2 = a1[11];
  v39 = a1[12];
  v40 = v1;
  v3 = a1[13];
  v4 = a1[15];
  v41 = a1[14];
  v42 = v4;
  v5 = a1[9];
  v6 = a1[7];
  v35 = a1[8];
  v36 = v5;
  v7 = a1[9];
  v8 = a1[11];
  v37 = a1[10];
  v38 = v8;
  v9 = a1[5];
  v10 = a1[3];
  v31 = a1[4];
  v32 = v9;
  v11 = a1[5];
  v12 = a1[7];
  v33 = a1[6];
  v34 = v12;
  v13 = a1[1];
  v28[0] = *a1;
  v28[1] = v13;
  v14 = a1[3];
  v16 = *a1;
  v15 = a1[1];
  v29 = a1[2];
  v30 = v14;
  v43[12] = v39;
  v43[13] = v3;
  v17 = a1[15];
  v43[14] = v41;
  v44 = v17;
  v43[8] = v35;
  v43[9] = v7;
  v43[10] = v37;
  v43[11] = v2;
  v43[4] = v31;
  v43[5] = v11;
  v43[6] = v33;
  v43[7] = v6;
  v43[0] = v16;
  v43[1] = v15;
  v43[2] = v29;
  v43[3] = v10;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA04SpincD0V_Tt1B5(v43);
  if ((v20 & 0x100) == 0)
  {
    v21 = result;
    v22 = v19;
    v23 = v44.i64[1];
    v26[5] = result;
    v26[6] = v19;
    v24 = v20 & 1;
    v27 = v20 & 1;
    SpinActionHandler.actionUpdated(event:)(v28);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v26[3] = &type metadata for SpinActionHandler;
    v26[4] = &protocol witness table for SpinActionHandler;
    v25 = swift_allocObject();
    v26[0] = v25;
    *(v25 + 16) = v21;
    *(v25 + 24) = v22;
    *(v25 + 32) = v24;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v26, v23);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA011OrbitEntitycD0V_Tt0B5Tm(_OWORD *a1, void (*a2)(_OWORD *))
{
  v3 = a1[13];
  v4 = a1[11];
  v72 = a1[12];
  v73 = v3;
  v5 = a1[13];
  v6 = a1[15];
  v74 = a1[14];
  v75 = v6;
  v7 = a1[9];
  v8 = a1[7];
  v68 = a1[8];
  v69 = v7;
  v9 = a1[9];
  v10 = a1[11];
  v70 = a1[10];
  v71 = v10;
  v11 = a1[5];
  v12 = a1[3];
  v64 = a1[4];
  v65 = v11;
  v13 = a1[5];
  v14 = a1[7];
  v66 = a1[6];
  v67 = v14;
  v15 = a1[1];
  v61[0] = *a1;
  v61[1] = v15;
  v16 = a1[3];
  v18 = *a1;
  v17 = a1[1];
  v62 = a1[2];
  v63 = v16;
  v76[12] = v72;
  v76[13] = v5;
  v19 = a1[15];
  v76[14] = v74;
  v77 = v19;
  v76[8] = v68;
  v76[9] = v9;
  v76[10] = v70;
  v76[11] = v4;
  v76[4] = v64;
  v76[5] = v13;
  v76[6] = v66;
  v76[7] = v8;
  v76[0] = v18;
  v76[1] = v17;
  v76[2] = v62;
  v76[3] = v12;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA011OrbitEntitycD0V_Tt1B5(v76, &v37);
  v78[8] = v45;
  v78[9] = v46;
  v78[10] = v47;
  v78[11] = v48;
  v78[4] = v41;
  v78[5] = v42;
  v78[6] = v43;
  v78[7] = v44;
  v78[0] = v37;
  v78[1] = v38;
  v78[2] = v39;
  v78[3] = v40;
  if (_s17RealityFoundation24OrbitEntityActionHandlerVSgWOg(v78) == 1)
  {
    v57 = v45;
    v58 = v46;
    v59 = v47;
    v60 = v48;
    v53 = v41;
    v54 = v42;
    v55 = v43;
    v56 = v44;
    v49 = v37;
    v50 = v38;
    v51 = v39;
    v52 = v40;
    return outlined destroy of BodyTrackingComponent?(&v49, &_s17RealityFoundation24OrbitEntityActionHandlerVSgMd, &_s17RealityFoundation24OrbitEntityActionHandlerVSgMR);
  }

  else
  {
    v21 = *(&v77 + 1);
    v57 = v45;
    v58 = v46;
    v59 = v47;
    v60 = v48;
    v53 = v41;
    v54 = v42;
    v55 = v43;
    v56 = v44;
    v49 = v37;
    v50 = v38;
    v51 = v39;
    v52 = v40;
    a2(v61);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v34[3] = &type metadata for OrbitEntityActionHandler;
    v34[4] = &protocol witness table for OrbitEntityActionHandler;
    v22 = swift_allocObject();
    v23 = v58;
    v35[8] = v57;
    v35[9] = v58;
    v24 = v59;
    v25 = v60;
    v35[10] = v59;
    v35[11] = v60;
    v26 = v53;
    v27 = v54;
    v35[4] = v53;
    v35[5] = v54;
    v28 = v55;
    v29 = v56;
    v35[6] = v55;
    v35[7] = v56;
    v30 = v49;
    v31 = v50;
    v35[0] = v49;
    v35[1] = v50;
    v32 = v51;
    v33 = v52;
    v35[2] = v51;
    v35[3] = v52;
    v22[9] = v57;
    v22[10] = v23;
    v22[11] = v24;
    v22[12] = v25;
    v22[5] = v26;
    v22[6] = v27;
    v22[7] = v28;
    v22[8] = v29;
    v22[1] = v30;
    v22[2] = v31;
    v34[0] = v22;
    v22[3] = v32;
    v22[4] = v33;
    swift_beginAccess();
    outlined init with copy of OrbitEntityActionHandler(v35, v36);
    specialized Dictionary.subscript.setter(v34, v21);
    swift_endAccess();
    v36[8] = v57;
    v36[9] = v58;
    v36[10] = v59;
    v36[11] = v60;
    v36[4] = v53;
    v36[5] = v54;
    v36[6] = v55;
    v36[7] = v56;
    v36[0] = v49;
    v36[1] = v50;
    v36[2] = v51;
    v36[3] = v52;
    return outlined destroy of OrbitEntityActionHandler(v36);
  }
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, &v6);
  v2 = v6;
  if (v6 == 1)
  {
    v3 = 1;
  }

  else
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, a1[19], &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = a1[37];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<BlendShapeWeights> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = v2;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v6, v4);
    swift_endAccess();
    v3 = v2;
  }

  return _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(v3);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0VyAA15JointTransformsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, &v6);
  v2 = v6;
  if (v6 == 1)
  {
    v3 = 1;
  }

  else
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, a1[19], &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = a1[37];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<JointTransforms> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = v2;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v6, v4);
    swift_endAccess();
    v3 = v2;
  }

  return _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(v3);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA09BillboardcD0V_Tt0B5Tm(void *__src, void (*a2)(_BYTE *))
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v14, __src, sizeof(v14));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09BillboardcD0V_Tt1B5(v14, &v6);
  if ((v8 & 1) == 0)
  {
    v5 = v14[35];
    v11 = v6;
    v12 = v7 & 1;
    a2(__dst);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = &type metadata for BillboardActionHandler;
    v10 = &protocol witness table for BillboardActionHandler;
    v6 = v11;
    v7 = v12;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v6, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA013PlayAnimationcD0V_Tt0B5(uint64_t a1)
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA013PlayAnimationcD0V_Tt1B5(a1);
  if (result == 1)
  {
    return result;
  }

  if ((*(a1 + 65) & 1) == 0)
  {
LABEL_9:
    sub_1C136529C(result);
    goto LABEL_10;
  }

  if (result)
  {
    v3 = result;
    if (swift_weakLoadStrong())
    {
      REAnimationComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        REAnimationComponentStopAnimation();
        RENetworkMarkComponentDirty();
      }

      sub_1C136529C(v3);

      goto LABEL_10;
    }

    result = v3;
    goto LABEL_9;
  }

LABEL_10:
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v4 = *(a1 + 248);
  v5[3] = &type metadata for PlayAnimationActionHandler;
  v5[4] = &protocol witness table for PlayAnimationActionHandler;
  v5[0] = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v5, v4);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, &v6);
  v2 = v6;
  if (v6 == 1)
  {
    v3 = 1;
  }

  else
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(8, a1[19], &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = a1[37];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<BlendShapeWeights> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = v2;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v6, v4);
    swift_endAccess();
    v3 = v2;
  }

  return _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(v3);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0VyAA15JointTransformsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, &v6);
  v2 = v6;
  if (v6 == 1)
  {
    v3 = 1;
  }

  else
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(8, a1[19], &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = a1[37];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<JointTransforms> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = v2;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v6, v4);
    swift_endAccess();
    v3 = v2;
  }

  return _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(v3);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA011OrbitEntitycD0V_Tt0B5Tm(uint64_t *a1, uint64_t a2)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA011OrbitEntitycD0V_Tt1B5(a1, &v40);
  v52[8] = v48;
  v52[9] = v49;
  v52[10] = v50;
  v52[11] = v51;
  v52[4] = v44;
  v52[5] = v45;
  v52[6] = v46;
  v52[7] = v47;
  v52[0] = v40;
  v52[1] = v41;
  v52[2] = v42;
  v52[3] = v43;
  if (_s17RealityFoundation24OrbitEntityActionHandlerVSgWOg(v52) == 1)
  {
    v36 = v48;
    v37 = v49;
    v38 = v50;
    v39 = v51;
    v32 = v44;
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v28 = v40;
    v29 = v41;
    v30 = v42;
    v31 = v43;
    v4 = &v28;
  }

  else
  {
    v24 = v48;
    v25 = v49;
    v26 = v50;
    v27 = v51;
    v20 = v44;
    v21 = v45;
    v22 = v46;
    v23 = v47;
    v16 = v40;
    v17 = v41;
    v18 = v42;
    v19 = v43;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA09EmphasizeD0V_Tt1B5Tm(a2, a1[13], &type metadata for OrbitEntityAction);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = a1[31];
    v15[3] = &type metadata for OrbitEntityActionHandler;
    v15[4] = &protocol witness table for OrbitEntityActionHandler;
    v6 = swift_allocObject();
    v15[0] = v6;
    v7 = v49;
    v6[9] = v48;
    v6[10] = v7;
    v8 = v51;
    v6[11] = v50;
    v6[12] = v8;
    v9 = v45;
    v6[5] = v44;
    v6[6] = v9;
    v10 = v47;
    v6[7] = v46;
    v6[8] = v10;
    v11 = v41;
    v6[1] = v40;
    v6[2] = v11;
    v12 = v43;
    v6[3] = v42;
    v6[4] = v12;
    swift_beginAccess();
    v36 = v24;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    v32 = v20;
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v28 = v16;
    v29 = v17;
    v30 = v18;
    v31 = v19;
    outlined init with copy of OrbitEntityActionHandler(&v28, &v14);
    specialized Dictionary.subscript.setter(v15, v5);
    swift_endAccess();
    v4 = &v16;
  }

  return outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24OrbitEntityActionHandlerVSgMd, &_s17RealityFoundation24OrbitEntityActionHandlerVSgMR);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA013PlayAnimationcD0V_Tt0B5Tm(uint64_t *a1)
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA013PlayAnimationcD0V_Tt1B5(a1);
  if (result != 1)
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 14);
    v5 = *(a1 + 15);
    v27 = *(a1 + 13);
    v28 = v4;
    v29 = v5;
    v6 = *(a1 + 8);
    v7 = *(a1 + 10);
    v8 = *(a1 + 11);
    v23 = *(a1 + 9);
    v24 = v7;
    v25 = v8;
    v26 = v3;
    v9 = *(a1 + 5);
    v18 = *(a1 + 4);
    v19 = v9;
    v10 = *(a1 + 7);
    v20 = *(a1 + 6);
    v30 = result;
    v21 = v10;
    v22 = v6;
    v11 = *(a1 + 1);
    v14 = *a1;
    v15 = v11;
    v12 = *(a1 + 3);
    v16 = *(a1 + 2);
    v17 = v12;
    PlayAnimationActionHandler.triggerAnimation(_:)(&v14);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v13 = a1[31];
    *(&v15 + 1) = &type metadata for PlayAnimationActionHandler;
    *&v16 = &protocol witness table for PlayAnimationActionHandler;
    *&v14 = v30;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v14, v13);
    swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA09PlayAudiocD0V_Tt0B5Tm(uint64_t a1, void (*a2)(uint64_t, void))
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09PlayAudiocD0V_Tt1B5(a1);
  if (result != 1)
  {
    if (result && (*(a1 + 56) & 1) != 0)
    {
      v5 = result;
      a2(*(result + 32), *(result + 48));
      RENetworkMarkComponentDirty();
      result = v5;
    }

    if (one-time initialization token for actionHandlers != -1)
    {
      v8 = result;
      swift_once();
      result = v8;
    }

    v6 = *(a1 + 240);
    v9[3] = &type metadata for PlayAudioActionHandler;
    v9[4] = &protocol witness table for PlayAudioActionHandler;
    v9[0] = result;
    v7 = result;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(v9, v6);
    swift_endAccess();
    return sub_1C136529C(v7);
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, &v6);
  v2 = v6;
  if (v6 == 1)
  {
    v3 = 1;
  }

  else
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, a1[19], &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = a1[37];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<BlendShapeWeights> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = v2;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v6, v4);
    swift_endAccess();
    v3 = v2;
  }

  return _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(v3);
}