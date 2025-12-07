@interface MifareUtils
+ (id)getMcmDataDal:(unsigned __int16)dal withTransceiver:(id)transceiver withError:(id *)error;
@end

@implementation MifareUtils

+ (id)getMcmDataDal:(unsigned __int16)dal withTransceiver:(id)transceiver withError:(id *)error
{
  dalCopy = dal;
  v7 = MEMORY[0x277CBEB28];
  transceiverCopy = transceiver;
  v9 = [v7 dataWithBytesNoCopy:&getMcmDataDal_withTransceiver_withError__getMcDataDal length:5 freeWhenDone:0];
  [v9 appendShortBE:dalCopy];
  v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&getMcmDataDal_withTransceiver_withError__getResponse length:5 freeWhenDone:0];
  v11 = [transceiverCopy transceiveAndGetAllData:v9 withGetMoreData:v10 withMoreDataSW:24832 withError:error];

  return v11;
}

@end