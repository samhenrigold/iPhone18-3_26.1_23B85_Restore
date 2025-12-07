@interface _MFPartiallyDownloadedBannerView
- (_MFPartiallyDownloadedBannerView)initWithFrame:(CGRect)frame remainingBytes:(unint64_t)bytes;
- (id)_messageStringForBytes:(int)bytes isDownloading:(int)downloading hasError:;
- (id)actionStringIsDownloading:(BOOL)downloading;
- (void)updateBannerWithRemainingBytes:(unint64_t)bytes error:(id)error;
@end

@implementation _MFPartiallyDownloadedBannerView

- (id)_messageStringForBytes:(int)bytes isDownloading:(int)downloading hasError:
{
  if (self)
  {
    v5 = _EFLocalizedString();
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCACA8] mf_stringRepresentationForBytes:a2];
    v8 = [v6 stringWithFormat:v5, v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_MFPartiallyDownloadedBannerView)initWithFrame:(CGRect)frame remainingBytes:(unint64_t)bytes
{
  v12.receiver = self;
  v12.super_class = _MFPartiallyDownloadedBannerView;
  v5 = [(MFHasMoreContentBannerView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_remainingBytes = bytes;
    banner = [(MFSuggestionBannerView *)v5 banner];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [mainBundle localizedStringForKey:@"MESSAGE_PARTIALLY_DOWNLOADED" value:&stru_2826D1AD8 table:@"Main"];
    [banner setTitle:v9];

    v10 = [(_MFPartiallyDownloadedBannerView *)v6 actionStringIsDownloading:0];
    [banner setActionTitle:v10];

    [banner setActionButtonType:0];
    [(MFSuggestionBannerView *)v6 setBanner:banner];
  }

  return v6;
}

- (id)actionStringIsDownloading:(BOOL)downloading
{
  downloadingCopy = downloading;
  remainingBytes = [(_MFPartiallyDownloadedBannerView *)self remainingBytes];
  hasError = [(_MFPartiallyDownloadedBannerView *)self hasError];

  return [(_MFPartiallyDownloadedBannerView *)self _messageStringForBytes:remainingBytes isDownloading:downloadingCopy hasError:hasError];
}

- (void)updateBannerWithRemainingBytes:(unint64_t)bytes error:(id)error
{
  errorCopy = error;
  [(_MFPartiallyDownloadedBannerView *)self setRemainingBytes:bytes];
  [(_MFPartiallyDownloadedBannerView *)self setHasError:errorCopy != 0];
  v7.receiver = self;
  v7.super_class = _MFPartiallyDownloadedBannerView;
  [(MFHasMoreContentBannerView *)&v7 updateBannerWithRemainingBytes:bytes error:errorCopy];
}

@end