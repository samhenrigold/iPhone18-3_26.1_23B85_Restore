@interface Image_Estimator_HEIFInput
- (Image_Estimator_HEIFInput)initWithInput_File_Size:(double)size Input_Height:(double)height Input_Entropy:(double)entropy Aspect_Ratio:(double)ratio Target_File_Size:(double)file_Size Target_Max_Dimension_4032:(int64_t)dimension_4032 Target_Max_Dimension_3000:(int64_t)dimension_3000 Target_Max_Dimension_2048:(int64_t)self0 Target_Max_Dimension_1600:(int64_t)self1 Target_Max_Dimension_1280:(int64_t)self2 Target_Max_Dimension_1024:(int64_t)self3 Target_Max_Dimension_800:(int64_t)self4 Compression_Ratio:(double)self5 Input_H_x_W__NumOfPixels_:(double)self6 Target_Height:(double)self7 Target_Width:(double)self8 Input_log_NumOfPixels_:(double)self9 Ratio_of_NumOfPixels:(double)pixels Exponential_Entropy:(double)exponential_Entropy;
- (id)featureValueForName:(id)name;
@end

@implementation Image_Estimator_HEIFInput

- (Image_Estimator_HEIFInput)initWithInput_File_Size:(double)size Input_Height:(double)height Input_Entropy:(double)entropy Aspect_Ratio:(double)ratio Target_File_Size:(double)file_Size Target_Max_Dimension_4032:(int64_t)dimension_4032 Target_Max_Dimension_3000:(int64_t)dimension_3000 Target_Max_Dimension_2048:(int64_t)self0 Target_Max_Dimension_1600:(int64_t)self1 Target_Max_Dimension_1280:(int64_t)self2 Target_Max_Dimension_1024:(int64_t)self3 Target_Max_Dimension_800:(int64_t)self4 Compression_Ratio:(double)self5 Input_H_x_W__NumOfPixels_:(double)self6 Target_Height:(double)self7 Target_Width:(double)self8 Input_log_NumOfPixels_:(double)self9 Ratio_of_NumOfPixels:(double)pixels Exponential_Entropy:(double)exponential_Entropy
{
  v36.receiver = self;
  v36.super_class = Image_Estimator_HEIFInput;
  result = [(Image_Estimator_HEIFInput *)&v36 init];
  if (result)
  {
    result->_Input_File_Size = size;
    result->_Input_Height = height;
    result->_Input_Entropy = entropy;
    result->_Aspect_Ratio = ratio;
    result->_Target_File_Size = file_Size;
    result->_Target_Max_Dimension_4032 = dimension_4032;
    result->_Target_Max_Dimension_3000 = dimension_3000;
    result->_Target_Max_Dimension_2048 = dimension_2048;
    result->_Target_Max_Dimension_1600 = dimension_1600;
    result->_Target_Max_Dimension_1280 = dimension_1280;
    result->_Target_Max_Dimension_1024 = dimension_1024;
    result->_Target_Max_Dimension_800 = dimension_800;
    result->_Compression_Ratio = compression_Ratio;
    result->_Input_H_x_W__NumOfPixels_ = pixels_;
    result->_Target_Height = target_Height;
    result->_Target_Width = width;
    result->_Input_log_NumOfPixels_ = ofPixels_;
    result->_Ratio_of_NumOfPixels = pixels;
    result->_Exponential_Entropy = exponential_Entropy;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if (objc_msgSend_isEqualToString_(nameCopy, v5, @"Input File Size", v6))
  {
    v10 = MEMORY[0x277CBFEF8];
    objc_msgSend_Input_File_Size(self, v7, v8, v9);
LABEL_11:
    v26 = objc_msgSend_featureValueWithDouble_(v10, v11, v12, v13);
LABEL_12:
    v27 = v26;
    goto LABEL_13;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v7, @"Input Height", v9))
  {
    v10 = MEMORY[0x277CBFEF8];
    objc_msgSend_Input_Height(self, v14, v15, v16);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v14, @"Input Entropy", v16))
  {
    v10 = MEMORY[0x277CBFEF8];
    objc_msgSend_Input_Entropy(self, v17, v18, v19);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v17, @"Aspect Ratio", v19))
  {
    v10 = MEMORY[0x277CBFEF8];
    objc_msgSend_Aspect_Ratio(self, v20, v21, v22);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v20, @"Target File Size", v22))
  {
    v10 = MEMORY[0x277CBFEF8];
    objc_msgSend_Target_File_Size(self, v23, v24, v25);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v23, @"Target Max Dimension_4032", v25))
  {
    v32 = MEMORY[0x277CBFEF8];
    v33 = objc_msgSend_Target_Max_Dimension_4032(self, v29, v30, v31);
LABEL_30:
    v26 = objc_msgSend_featureValueWithInt64_(v32, v34, v33, v35);
    goto LABEL_12;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v29, @"Target Max Dimension_3000", v31))
  {
    v32 = MEMORY[0x277CBFEF8];
    v33 = objc_msgSend_Target_Max_Dimension_3000(self, v36, v37, v38);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v36, @"Target Max Dimension_2048", v38))
  {
    v32 = MEMORY[0x277CBFEF8];
    v33 = objc_msgSend_Target_Max_Dimension_2048(self, v39, v40, v41);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v39, @"Target Max Dimension_1600", v41))
  {
    v32 = MEMORY[0x277CBFEF8];
    v33 = objc_msgSend_Target_Max_Dimension_1600(self, v42, v43, v44);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v42, @"Target Max Dimension_1280", v44))
  {
    v32 = MEMORY[0x277CBFEF8];
    v33 = objc_msgSend_Target_Max_Dimension_1280(self, v45, v46, v47);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v45, @"Target Max Dimension_1024", v47))
  {
    v32 = MEMORY[0x277CBFEF8];
    v33 = objc_msgSend_Target_Max_Dimension_1024(self, v48, v49, v50);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v48, @"Target Max Dimension_800", v50))
  {
    v32 = MEMORY[0x277CBFEF8];
    v33 = objc_msgSend_Target_Max_Dimension_800(self, v51, v52, v53);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v51, @"Compression Ratio", v53))
  {
    v10 = MEMORY[0x277CBFEF8];
    objc_msgSend_Compression_Ratio(self, v54, v55, v56);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v54, @"Input H x W (NumOfPixels)", v56))
  {
    v10 = MEMORY[0x277CBFEF8];
    objc_msgSend_Input_H_x_W__NumOfPixels_(self, v57, v58, v59);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v57, @"Target Height", v59))
  {
    v10 = MEMORY[0x277CBFEF8];
    objc_msgSend_Target_Height(self, v60, v61, v62);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v60, @"Target Width", v62))
  {
    v10 = MEMORY[0x277CBFEF8];
    objc_msgSend_Target_Width(self, v63, v64, v65);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v63, @"Input log(NumOfPixels)", v65))
  {
    v10 = MEMORY[0x277CBFEF8];
    objc_msgSend_Input_log_NumOfPixels_(self, v66, v67, v68);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v66, @"Ratio of NumOfPixels", v68))
  {
    v10 = MEMORY[0x277CBFEF8];
    objc_msgSend_Ratio_of_NumOfPixels(self, v69, v70, v71);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v69, @"Exponential Entropy", v71))
  {
    v10 = MEMORY[0x277CBFEF8];
    objc_msgSend_Exponential_Entropy(self, v72, v73, v74);
    goto LABEL_11;
  }

  v27 = 0;
LABEL_13:

  return v27;
}

@end