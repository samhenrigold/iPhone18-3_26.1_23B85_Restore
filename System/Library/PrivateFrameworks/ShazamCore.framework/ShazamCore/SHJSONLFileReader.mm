@interface SHJSONLFileReader
- (BOOL)loadData:(id)data withCompression:(int)compression error:(id *)error;
- (BOOL)loadDataFromURL:(id)l error:(id *)error;
- (BOOL)loadDataFromURL:(id)l withCompression:(int)compression error:(id *)error;
- (SHJSONLDataDetokenizerDelegate)delegate;
- (id)inputForAlgorithm:(int)algorithm error:(id *)error;
@end

@implementation SHJSONLFileReader

- (BOOL)loadDataFromURL:(id)l error:(id *)error
{
  lCopy = l;
  LOBYTE(error) = [(SHJSONLFileReader *)self loadDataFromURL:lCopy withCompression:[SHDataCompression error:"supportedCompressionTypeFromFileURL:" supportedCompressionTypeFromFileURL:lCopy], error];

  return error;
}

- (BOOL)loadData:(id)data withCompression:(int)compression error:(id *)error
{
  v6 = *&compression;
  dataCopy = data;
  v9 = [(SHJSONLFileReader *)self inputForAlgorithm:v6 error:error];
  LOBYTE(error) = [v9 processData:dataCopy error:error];

  [v9 closeWithError:0];
  return error;
}

- (BOOL)loadDataFromURL:(id)l withCompression:(int)compression error:(id *)error
{
  v6 = *&compression;
  lCopy = l;
  v9 = [(SHJSONLFileReader *)self inputForAlgorithm:v6 error:error];
  LOBYTE(error) = [v9 loadDataFromURL:lCopy error:error];

  [v9 closeWithError:0];
  return error;
}

- (id)inputForAlgorithm:(int)algorithm error:(id *)error
{
  v4 = *&algorithm;
  v6 = objc_alloc_init(SHDataStreamInput);
  v7 = objc_alloc_init(SHJSONLDataDetokenizer);
  delegate = [(SHJSONLFileReader *)self delegate];
  [(SHJSONLDataDetokenizer *)v7 setDelegate:delegate];

  if (v4)
  {
    v9 = [[SHDataCompression alloc] initForDecompressionWithAlgorithm:v4];
    [v9 setNext:v7];
    [(SHDataStreamInput *)v6 setNext:v9];
  }

  else
  {
    [(SHDataStreamInput *)v6 setNext:v7];
  }

  return v6;
}

- (SHJSONLDataDetokenizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end