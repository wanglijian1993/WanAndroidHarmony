
import { NewsTypeBean } from '../../bean/MainBean';
import Const  from '../../constants/CommonConstants';
import Logger from '../../utils/Logger';

export class  MainModel{

  getDefaultTypeList(): NewsTypeBean[] {
    return Const.TABS_TYPES;
  }

}