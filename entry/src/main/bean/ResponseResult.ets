

export class ResponseResult{
  /**
   * 网络请求状态.
   */
  errorCode : number;

  /**
   * 网络请求返回的消息
   */
  errorMsg: string | Resource;

  /**
   * 数据
   */
  data: string | Object | ArrayBuffer;

  constructor() {
    this.errorCode = -1;
    this.errorMsg = '';
    this.data = '';
  }

}