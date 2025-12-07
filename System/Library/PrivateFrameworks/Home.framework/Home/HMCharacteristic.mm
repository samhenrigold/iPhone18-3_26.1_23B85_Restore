@interface HMCharacteristic
@end

@implementation HMCharacteristic

void __61__HMCharacteristic_HFDebugging__hf_descriptionForProperties___block_invoke_2()
{
  v5[5] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCF740];
  v4[0] = *MEMORY[0x277CCF728];
  v4[1] = v0;
  v5[0] = @"R";
  v5[1] = @"W";
  v1 = *MEMORY[0x277CCF738];
  v4[2] = *MEMORY[0x277CCF720];
  v4[3] = v1;
  v5[2] = @"H";
  v5[3] = @"N";
  v4[4] = *MEMORY[0x277CCF730];
  v5[4] = @"A";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:5];
  v3 = qword_280E02D68;
  qword_280E02D68 = v2;
}

void *__61__HMCharacteristic_HFDebugging__hf_descriptionForProperties___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v6;
}

void __63__HMCharacteristic_Additions__hf_powerStateCharacteristicTypes__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CCF9F0], *MEMORY[0x277CCF748], 0}];
  v1 = qword_280E038B0;
  qword_280E038B0 = v0;
}

id __63__HMCharacteristic_Additions__hf_valueRangeCharacteristicTypes__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMCharacteristic_Additions__hf_valueRangeCharacteristicTypes__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (qword_280E038B8 != -1)
  {
    dispatch_once(&qword_280E038B8, block);
  }

  v1 = qword_280E038C0;

  return v1;
}

void __63__HMCharacteristic_Additions__hf_valueRangeCharacteristicTypes__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB98];
  v5 = [*(a1 + 32) _hf_valueRangeCharacteristicTypeToAbnormalValueMap];
  v2 = [v5 allKeys];
  v3 = [v1 setWithArray:v2];
  v4 = qword_280E038C0;
  qword_280E038C0 = v3;
}

id __73__HMCharacteristic_Additions__hf_continuousValueRangeCharacteristicTypes__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HMCharacteristic_Additions__hf_continuousValueRangeCharacteristicTypes__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (qword_280E038C8 != -1)
  {
    dispatch_once(&qword_280E038C8, block);
  }

  v1 = qword_280E038D0;

  return v1;
}

void __73__HMCharacteristic_Additions__hf_continuousValueRangeCharacteristicTypes__block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) hf_valueRangeCharacteristicTypes];
  v1 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF770]];
  v2 = [v4 hmf_removedObjectsFromSet:v1];
  v3 = qword_280E038D0;
  qword_280E038D0 = v2;
}

id __58__HMCharacteristic_Additions__hf_alarmCharacteristicTypes__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMCharacteristic_Additions__hf_alarmCharacteristicTypes__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (qword_280E038D8 != -1)
  {
    dispatch_once(&qword_280E038D8, block);
  }

  v1 = qword_280E038E0;

  return v1;
}

void __58__HMCharacteristic_Additions__hf_alarmCharacteristicTypes__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB98];
  v5 = [*(a1 + 32) _hf_alarmCharacteristicTypeToAbnormalValueMap];
  v2 = [v5 allKeys];
  v3 = [v1 setWithArray:v2];
  v4 = qword_280E038E0;
  qword_280E038E0 = v3;
}

id __60__HMCharacteristic_Additions__hf_sensingCharacteristicTypes__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMCharacteristic_Additions__hf_sensingCharacteristicTypes__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (qword_280E038E8 != -1)
  {
    dispatch_once(&qword_280E038E8, block);
  }

  v1 = qword_280E038F0;

  return v1;
}

void __60__HMCharacteristic_Additions__hf_sensingCharacteristicTypes__block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) hf_alarmCharacteristicTypes];
  v2 = [*(a1 + 32) hf_valueRangeCharacteristicTypes];
  v3 = [v5 setByAddingObjectsFromSet:v2];
  v4 = qword_280E038F0;
  qword_280E038F0 = v3;
}

void __76__HMCharacteristic_Additions___hf_alarmCharacteristicTypeToAbnormalValueMap__block_invoke_2()
{
  v8[8] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCF7A0];
  v7[0] = *MEMORY[0x277CCF978];
  v7[1] = v0;
  v8[0] = MEMORY[0x277CBEC38];
  v8[1] = MEMORY[0x277CBEC38];
  v1 = *MEMORY[0x277CCF938];
  v7[2] = *MEMORY[0x277CCF7B8];
  v7[3] = v1;
  v8[2] = MEMORY[0x277CBEC38];
  v8[3] = MEMORY[0x277CBEC38];
  v2 = *MEMORY[0x277CCFA80];
  v7[4] = *MEMORY[0x277CCF9A8];
  v7[5] = v2;
  v8[4] = MEMORY[0x277CBEC38];
  v8[5] = MEMORY[0x277CBEC38];
  v8[6] = &unk_282524A08;
  v3 = *MEMORY[0x277CCF770];
  v7[6] = *MEMORY[0x277CCF7E8];
  v7[7] = v3;
  v4 = [MEMORY[0x277CD1CB0] numberRangeWithMinValue:&unk_282524A20];
  v8[7] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:8];
  v6 = qword_280E03900;
  qword_280E03900 = v5;
}

void __81__HMCharacteristic_Additions___hf_valueRangeCharacteristicTypeToAbnormalValueMap__block_invoke_2()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v6[0] = *MEMORY[0x277CCF770];
  v0 = [MEMORY[0x277CD1CB0] numberRangeWithMinValue:&unk_282524A20];
  v7[0] = v0;
  v6[1] = *MEMORY[0x277CCF868];
  v1 = [MEMORY[0x277CD1CB0] numberRangeWithMinValue:&unk_282524A38];
  v7[1] = v1;
  v6[2] = *MEMORY[0x277CCF850];
  v2 = [MEMORY[0x277CD1CB0] numberRangeWithMaxValue:&unk_282524A50];
  v7[2] = v2;
  v6[3] = *MEMORY[0x277CCF830];
  v3 = [MEMORY[0x277CD1CB0] numberRangeWithMaxValue:&unk_282524A68];
  v7[3] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:4];
  v5 = qword_280E03910;
  qword_280E03910 = v4;
}

void __91__HMCharacteristic_Additions___hf_valueRangeCharacteristicTypeToVisibleTriggerValueStepMap__block_invoke_2()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CCF850];
  v3[0] = &unk_282524A80;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = qword_280E03920;
  qword_280E03920 = v0;
}

uint64_t __59__HMCharacteristic_Additions__hf_formattedValueUpdatedTime__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = qword_280E03928;
  qword_280E03928 = v0;

  v2 = qword_280E03928;

  return [v2 setDateFormat:@"HH:mm:ss.SSS"];
}

void __97__HMCharacteristic_Additions__hf_targetStateCharacteristicTypeForCurrentStateCharacteristicType___block_invoke()
{
  v15[9] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCFB68];
  v1 = *MEMORY[0x277CCF818];
  v14[0] = *MEMORY[0x277CCF868];
  v14[1] = v1;
  v2 = *MEMORY[0x277CCFB20];
  v15[0] = v0;
  v15[1] = v2;
  v3 = *MEMORY[0x277CCFB58];
  v4 = *MEMORY[0x277CCF800];
  v14[2] = *MEMORY[0x277CCF850];
  v14[3] = v4;
  v5 = *MEMORY[0x277CCFB08];
  v15[2] = v3;
  v15[3] = v5;
  v6 = *MEMORY[0x277CCFB40];
  v7 = *MEMORY[0x277CCF820];
  v14[4] = *MEMORY[0x277CCF838];
  v14[5] = v7;
  v8 = *MEMORY[0x277CCFB28];
  v15[4] = v6;
  v15[5] = v8;
  v9 = *MEMORY[0x277CCFB50];
  v10 = *MEMORY[0x277CCF858];
  v14[6] = *MEMORY[0x277CCF848];
  v14[7] = v10;
  v11 = *MEMORY[0x277CCFB60];
  v15[6] = v9;
  v15[7] = v11;
  v14[8] = *MEMORY[0x277CCF878];
  v15[8] = *MEMORY[0x277CCFB78];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:9];
  v13 = qword_280E03938;
  qword_280E03938 = v12;
}

void __97__HMCharacteristic_Additions__hf_currentStateCharacteristicTypeForTargetStateCharacteristicType___block_invoke()
{
  v15[9] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCF868];
  v1 = *MEMORY[0x277CCFB20];
  v14[0] = *MEMORY[0x277CCFB68];
  v14[1] = v1;
  v2 = *MEMORY[0x277CCF818];
  v15[0] = v0;
  v15[1] = v2;
  v3 = *MEMORY[0x277CCF850];
  v4 = *MEMORY[0x277CCFB08];
  v14[2] = *MEMORY[0x277CCFB58];
  v14[3] = v4;
  v5 = *MEMORY[0x277CCF800];
  v15[2] = v3;
  v15[3] = v5;
  v6 = *MEMORY[0x277CCF838];
  v7 = *MEMORY[0x277CCFB28];
  v14[4] = *MEMORY[0x277CCFB40];
  v14[5] = v7;
  v8 = *MEMORY[0x277CCF820];
  v15[4] = v6;
  v15[5] = v8;
  v9 = *MEMORY[0x277CCF848];
  v10 = *MEMORY[0x277CCFB60];
  v14[6] = *MEMORY[0x277CCFB50];
  v14[7] = v10;
  v11 = *MEMORY[0x277CCF858];
  v15[6] = v9;
  v15[7] = v11;
  v14[8] = *MEMORY[0x277CCFB78];
  v15[8] = *MEMORY[0x277CCF878];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:9];
  v13 = qword_280E03948;
  qword_280E03948 = v12;
}

void __68__HMCharacteristic_Additions__hf_sortPriorityForCharacteristicType___block_invoke()
{
  v88[14] = *MEMORY[0x277D85DE8];
  v87[0] = &unk_282524A98;
  v0 = *MEMORY[0x277CCF748];
  v86[0] = *MEMORY[0x277CCF9F0];
  v86[1] = v0;
  v1 = *MEMORY[0x277CCFB40];
  v86[2] = *MEMORY[0x277CCFB08];
  v86[3] = v1;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:4];
  v88[0] = v62;
  v87[1] = &unk_282524AB0;
  v2 = *MEMORY[0x277CCFA20];
  v85[0] = *MEMORY[0x277CCF788];
  v85[1] = v2;
  v3 = *MEMORY[0x277CCFB60];
  v85[2] = *MEMORY[0x277CCFB20];
  v85[3] = v3;
  v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:4];
  v88[1] = v61;
  v87[2] = &unk_282524AC8;
  v4 = *MEMORY[0x277CCFA30];
  v84[0] = *MEMORY[0x277CCF8D8];
  v84[1] = v4;
  v5 = *MEMORY[0x277CCFB68];
  v84[2] = *MEMORY[0x277CCFB50];
  v84[3] = v5;
  v6 = *MEMORY[0x277CCF920];
  v84[4] = *MEMORY[0x277CCFB00];
  v84[5] = v6;
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:6];
  v88[2] = v60;
  v87[3] = &unk_282524AE0;
  v7 = *MEMORY[0x277CCFB28];
  v83[0] = *MEMORY[0x277CCFB58];
  v83[1] = v7;
  v8 = *MEMORY[0x277CCFB10];
  v83[2] = *MEMORY[0x277CCFB78];
  v83[3] = v8;
  v83[4] = *MEMORY[0x277CCFA60];
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:5];
  v88[3] = v59;
  v87[4] = &unk_282524AF8;
  v9 = *MEMORY[0x277CCF8C8];
  v82[0] = *MEMORY[0x277CCF7F0];
  v82[1] = v9;
  v82[2] = *MEMORY[0x277CCFAF8];
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:3];
  v88[4] = v58;
  v87[5] = &unk_282524B10;
  v81 = *MEMORY[0x277CCFA18];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
  v88[5] = v10;
  v87[6] = &unk_282524B28;
  v11 = *MEMORY[0x277CCFB88];
  v80[0] = *MEMORY[0x277CCF8D0];
  v80[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
  v88[6] = v12;
  v87[7] = &unk_282524B40;
  v79 = *MEMORY[0x277CCF958];
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
  v88[7] = v13;
  v87[8] = &unk_282524B58;
  v14 = *MEMORY[0x277CCF818];
  v78[0] = *MEMORY[0x277CCF800];
  v78[1] = v14;
  v15 = *MEMORY[0x277CCF838];
  v78[2] = *MEMORY[0x277CCF820];
  v78[3] = v15;
  v16 = *MEMORY[0x277CCF850];
  v78[4] = *MEMORY[0x277CCF848];
  v78[5] = v16;
  v17 = *MEMORY[0x277CCF868];
  v78[6] = *MEMORY[0x277CCF858];
  v78[7] = v17;
  v18 = *MEMORY[0x277CCFA08];
  v78[8] = *MEMORY[0x277CCF878];
  v78[9] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:10];
  v88[8] = v19;
  v87[9] = &unk_282524A80;
  v20 = *MEMORY[0x277CCF768];
  v77[0] = *MEMORY[0x277CCF760];
  v77[1] = v20;
  v21 = *MEMORY[0x277CCF7A0];
  v77[2] = *MEMORY[0x277CCF770];
  v77[3] = v21;
  v22 = *MEMORY[0x277CCF7B0];
  v77[4] = *MEMORY[0x277CCF7A8];
  v77[5] = v22;
  v23 = *MEMORY[0x277CCF7C0];
  v77[6] = *MEMORY[0x277CCF7B8];
  v77[7] = v23;
  v24 = *MEMORY[0x277CCF9C8];
  v77[8] = *MEMORY[0x277CCF7C8];
  v77[9] = v24;
  v25 = *MEMORY[0x277CCFAC0];
  v77[10] = *MEMORY[0x277CCF998];
  v77[11] = v25;
  v26 = *MEMORY[0x277CCF9D0];
  v77[12] = *MEMORY[0x277CCF9D8];
  v77[13] = v26;
  v27 = *MEMORY[0x277CCF7E8];
  v77[14] = *MEMORY[0x277CCFBA0];
  v77[15] = v27;
  v28 = *MEMORY[0x277CCF938];
  v77[16] = *MEMORY[0x277CCF830];
  v77[17] = v28;
  v29 = *MEMORY[0x277CCF9A0];
  v77[18] = *MEMORY[0x277CCF978];
  v77[19] = v29;
  v30 = *MEMORY[0x277CCF9B8];
  v77[20] = *MEMORY[0x277CCF9A8];
  v77[21] = v30;
  v31 = *MEMORY[0x277CCFA38];
  v77[22] = *MEMORY[0x277CCF9E0];
  v77[23] = v31;
  v32 = *MEMORY[0x277CCFBC0];
  v77[24] = *MEMORY[0x277CCFA80];
  v77[25] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:26];
  v88[9] = v33;
  v87[10] = &unk_282524B70;
  v34 = *MEMORY[0x277CCF8A0];
  v76[0] = *MEMORY[0x277CCFAA8];
  v76[1] = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
  v88[10] = v35;
  v87[11] = &unk_282524B88;
  v36 = *MEMORY[0x277CCF7D0];
  v75[0] = *MEMORY[0x277CCF780];
  v75[1] = v36;
  v75[2] = *MEMORY[0x277CCF8A8];
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:3];
  v88[11] = v37;
  v87[12] = &unk_282524BA0;
  v38 = *MEMORY[0x277CCFA98];
  v74[0] = *MEMORY[0x277CCFA90];
  v74[1] = v38;
  v74[2] = *MEMORY[0x277CCFAB0];
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:3];
  v88[12] = v39;
  v87[13] = &unk_282524BB8;
  v40 = *MEMORY[0x277CCF970];
  v73[0] = *MEMORY[0x277CCF968];
  v73[1] = v40;
  v41 = *MEMORY[0x277CCF8B8];
  v73[2] = *MEMORY[0x277CCF988];
  v73[3] = v41;
  v42 = *MEMORY[0x277CCFA58];
  v73[4] = *MEMORY[0x277CCF8C0];
  v73[5] = v42;
  v73[6] = *MEMORY[0x277CCFA88];
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:7];
  v88[13] = v43;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:14];

  v45 = objc_opt_new();
  v46 = qword_280E03958;
  qword_280E03958 = v45;

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v47 = v44;
  v48 = [v47 countByEnumeratingWithState:&v67 objects:v72 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v68;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v68 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v67 + 1) + 8 * i);
        v53 = [v47 objectForKeyedSubscript:v52];
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v54 = [v53 countByEnumeratingWithState:&v63 objects:v71 count:16];
        if (v54)
        {
          v55 = v54;
          v56 = *v64;
          do
          {
            for (j = 0; j != v55; ++j)
            {
              if (*v64 != v56)
              {
                objc_enumerationMutation(v53);
              }

              [qword_280E03958 setObject:v52 forKeyedSubscript:*(*(&v63 + 1) + 8 * j)];
            }

            v55 = [v53 countByEnumeratingWithState:&v63 objects:v71 count:16];
          }

          while (v55);
        }
      }

      v49 = [v47 countByEnumeratingWithState:&v67 objects:v72 count:16];
    }

    while (v49);
  }
}

uint64_t __62__HMCharacteristic_Additions__hf_characteristicSortComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = *(a1 + 32);
    v8 = [v5 characteristicType];
    v9 = [v7 hf_sortPriorityForCharacteristicType:v8];

    v10 = *(a1 + 32);
    v11 = [v6 characteristicType];
    v12 = [v10 hf_sortPriorityForCharacteristicType:v11];

    v13 = &__block_literal_global_74_1;
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v18 = NSStringFromSelector(*(a1 + 40));
      NSLog(&cfstr_UseOfWithUnkno.isa, v18, v5, v6);

      v17 = 0;
      goto LABEL_11;
    }

    v9 = [*(a1 + 32) hf_sortPriorityForCharacteristicType:v5];
    v12 = [*(a1 + 32) hf_sortPriorityForCharacteristicType:v6];
    v14 = 0;
    v13 = 0;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
  v17 = [v15 compare:v16];

  if (v14 && !v17)
  {
    v17 = v13[2](v13, v5, v6);
  }

LABEL_11:

  return v17;
}

uint64_t __62__HMCharacteristic_Additions__hf_characteristicSortComparator__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedDescription];
  v6 = [v4 localizedDescription];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

void __78__HMCharacteristic_Additions__hf_shouldCaptureCharacteristicTypeInActionSets___block_invoke_2()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCF920];
  v5[0] = *MEMORY[0x277CCFB88];
  v5[1] = v1;
  v5[2] = *MEMORY[0x277CCFA60];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = [v0 setWithArray:v2];
  v4 = qword_280E03970;
  qword_280E03970 = v3;
}

BOOL __74__HMCharacteristic_Additions__hf_isProgrammableSwitchInputEventConfigured__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) hf_designatedEventTriggerForProgrammableSwitchWithTriggerValue:a2];
  v3 = v2 != 0;

  return v3;
}

id __65__HMCharacteristic_Additions__hf_programmableSwitchValidValueSet__block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CD19F8];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [v3 hf_localizedStringForProgrammableSwitchCharacteristic:WeakRetained value:v4];

  if (v6)
  {
    v9 = @"title";
    v10[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  return v7;
}

uint64_t __47__HMCharacteristic_Additions__hf_eventTriggers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = objc_msgSend_service(*(a1 + 32));
    v8 = [v6 events];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__HMCharacteristic_Additions__hf_eventTriggers__block_invoke_2;
    v13[3] = &unk_277DFF220;
    v9 = *(a1 + 32);
    v14 = v7;
    v15 = v9;
    v10 = v7;
    v11 = [v8 na_any:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __47__HMCharacteristic_Additions__hf_eventTriggers__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 characteristic];
  v8 = objc_msgSend_service(v7);
  v9 = *(a1 + 32);

  if (v8 == v9)
  {
    v11 = [v7 uniqueIdentifier];
    v12 = [*(a1 + 40) uniqueIdentifier];
    v10 = [v11 isEqual:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __63__HMCharacteristic_Additions__hf_eventTriggersForTriggerValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = objc_msgSend_service(*(a1 + 32));
    v8 = [v6 events];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__HMCharacteristic_Additions__hf_eventTriggersForTriggerValue___block_invoke_2;
    v14[3] = &unk_277DFF270;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v15 = v7;
    v16 = v9;
    v17 = v10;
    v11 = v7;
    v12 = [v8 na_any:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __63__HMCharacteristic_Additions__hf_eventTriggersForTriggerValue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 characteristic];
  v8 = objc_msgSend_service(v7);
  v9 = *(a1 + 32);

  if (v8 == v9 && ([v7 uniqueIdentifier], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 40), "uniqueIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqual:", v11), v11, v10, v12))
  {
    if (*(a1 + 48))
    {
      v13 = [v6 triggerValue];
      v14 = [v13 isEqual:*(a1 + 48)];
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __82__HMCharacteristic_Additions__hf_programmableSwitchTriggerValueToEventTriggersMap__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__HMCharacteristic_Additions__hf_programmableSwitchTriggerValueToEventTriggersMap__block_invoke_2;
  v8[3] = &unk_277DFF308;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  [v5 na_each:v8];
}

void __82__HMCharacteristic_Additions__hf_programmableSwitchTriggerValueToEventTriggersMap__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 events];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__HMCharacteristic_Additions__hf_programmableSwitchTriggerValueToEventTriggersMap__block_invoke_3;
  v6[3] = &unk_277DFF2E0;
  v7 = *(a1 + 32);
  v5 = [v4 na_any:v6];

  if (v5)
  {
    [*(a1 + 40) addObject:v3];
  }
}

uint64_t __82__HMCharacteristic_Additions__hf_programmableSwitchTriggerValueToEventTriggersMap__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 triggerValue];
  v8 = [v7 isEqual:*(a1 + 32)];

  return v8;
}

id __65__HMCharacteristic_Additions___hf_lightLevelVisibleTriggerValues__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) hf_minimumTriggerValue];
  if (v4 && (v5 = v4, [*(a1 + 32) hf_minimumTriggerValue], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v3, "compare:", v6), v6, v5, v7 == -1) || (objc_msgSend(*(a1 + 32), "hf_maximumTriggerValue"), (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v9 = v8, objc_msgSend(*(a1 + 32), "hf_maximumTriggerValue"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v3, "compare:", v10), v10, v9, v11 == 1))
  {
    v12 = 0;
    goto LABEL_11;
  }

  v13 = [*(a1 + 32) metadata];
  v14 = [v13 stepValue];
  if (v14)
  {
    v15 = v14;
    [v3 floatValue];
    v17 = v16;
    v18 = [*(a1 + 32) _hf_stepValue];
    [v18 floatValue];
    v20 = fmodf(v17, v19);

    if (v20 != 0.0)
    {
      v21 = MEMORY[0x277CCABB0];
      [v3 floatValue];
      v23 = v22;
      v24 = [*(a1 + 32) _hf_stepValue];
      [v24 floatValue];
      v26 = roundf(v23 / v25);
      v27 = [*(a1 + 32) _hf_stepValue];
      [v27 floatValue];
      v12 = [v21 numberWithInteger:(v26 * v28)];

      goto LABEL_11;
    }
  }

  else
  {
  }

  v12 = v3;
LABEL_11:

  return v12;
}

uint64_t __65__HMCharacteristic_Additions___hf_triggerValuesWithMinStepValue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) metadata];
  v3 = [v2 stepValue];
  if (v3)
  {
    v4 = *(a1 + 40);

    if (v4)
    {
      v5 = [*(a1 + 32) _hf_stepValue];
      [v5 floatValue];
      v7 = v6;
      [*(a1 + 40) floatValue];
      v9 = roundf(v7 / v8);

      if (v9 < 1.0)
      {
        v9 = 1.0;
      }

      [*(a1 + 40) floatValue];
      return (v10 * v9);
    }
  }

  else
  {
  }

  v12 = *(a1 + 40);
  if (v12)
  {

    return [v12 intValue];
  }

  else
  {
    v13 = [*(a1 + 32) metadata];
    v14 = [v13 stepValue];

    if (v14)
    {
      v15 = [*(a1 + 32) metadata];
      v16 = [v15 stepValue];
      v17 = [v16 intValue];

      return v17;
    }

    else
    {
      return 1;
    }
  }
}

void __65__HMCharacteristic_Additions___hf_visibleLightLevelTriggerValues__block_invoke_2()
{
  v0 = qword_280E03980;
  qword_280E03980 = &unk_2825258D0;
}

uint64_t __82__HMCharacteristic_HFActionSuggestions__hf_suggestionVendorForCharacteristicType___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HMCharacteristic_HFActionSuggestions__hf_suggestionVendorForCharacteristicType___block_invoke_2;
  block[3] = &unk_277DF3D38;
  v5 = *(a1 + 32);
  if (_MergedGlobals_295 != -1)
  {
    dispatch_once(&_MergedGlobals_295, block);
  }

  v1 = qword_280E03990;
  v2 = qword_280E03990;

  return v1;
}

void __82__HMCharacteristic_HFActionSuggestions__hf_suggestionVendorForCharacteristicType___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __82__HMCharacteristic_HFActionSuggestions__hf_suggestionVendorForCharacteristicType___block_invoke_3;
  v3[3] = &unk_277DFDB60;
  v4 = *(a1 + 32);
  v1 = __82__HMCharacteristic_HFActionSuggestions__hf_suggestionVendorForCharacteristicType___block_invoke_3(v3);
  v2 = qword_280E03990;
  qword_280E03990 = v1;
}

id __82__HMCharacteristic_HFActionSuggestions__hf_suggestionVendorForCharacteristicType___block_invoke_3(uint64_t a1)
{
  v14[8] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277CCF9F0];
  v2 = [HFPrimaryStateCharacteristicActionSuggestionVendor alloc];
  v3 = [(HFPrimaryStateCharacteristicActionSuggestionVendor *)v2 initWithCharacteristicType:*(a1 + 32) normalStateValue:MEMORY[0x277CBEC28]];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277CCF748];
  v4 = [[HFPrimaryStateCharacteristicActionSuggestionVendor alloc] initWithCharacteristicType:*(a1 + 32) normalStateValue:&unk_282524CC0];
  v14[1] = v4;
  v13[2] = *MEMORY[0x277CCFB40];
  v5 = [[HFPrimaryStateCharacteristicActionSuggestionVendor alloc] initWithCharacteristicType:*(a1 + 32) normalStateValue:&unk_282524CD8];
  v14[2] = v5;
  v13[3] = *MEMORY[0x277CCFB60];
  v6 = [[HFPrimaryStateCharacteristicActionSuggestionVendor alloc] initWithCharacteristicType:*(a1 + 32) normalStateValue:&unk_282524CF0];
  v14[3] = v6;
  v13[4] = *MEMORY[0x277CCFB08];
  v7 = [[HFPrimaryStateCharacteristicActionSuggestionVendor alloc] initWithCharacteristicType:*(a1 + 32) normalStateValue:&unk_282524CD8];
  v14[4] = v7;
  v13[5] = *MEMORY[0x277CCFB50];
  v8 = [[HFPrimaryStateCharacteristicActionSuggestionVendor alloc] initWithCharacteristicType:*(a1 + 32) normalStateValue:&unk_282524D08 bucketingPolicy:1];
  v14[5] = v8;
  v13[6] = *MEMORY[0x277CCF788];
  v9 = [[HFIncrementalStateCharacteristicActionSuggestionVendor alloc] initWithCharacteristicType:*(a1 + 32)];
  v14[6] = v9;
  v13[7] = *MEMORY[0x277CCFA20];
  v10 = [[HFIncrementalStateCharacteristicActionSuggestionVendor alloc] initWithCharacteristicType:*(a1 + 32)];
  v14[7] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:8];

  return v11;
}

@end