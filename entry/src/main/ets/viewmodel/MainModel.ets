
import { NewsTypeBean } from '../../bean/MainBean';
import Const  from '../../constants/CommonConstants';

export class  MainModel{

  getDefaultTypeList(): NewsTypeBean[] {
    return Const.TABBAR_TYPES;
  }

}