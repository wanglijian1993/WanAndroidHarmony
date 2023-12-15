
import Logger from '../../utils/Logger'

@Component
export struct LoggerView{

  @State log:string=''

  aboutToAppear(){
    Logger.info('aboutToAppear'+this.log)
  }
  aboutToDisappear(){
    Logger.info('aboutToDisappear'+this.log)
  }

  build(){

  }


}