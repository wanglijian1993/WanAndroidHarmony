import Logger from '../../utils/Logger'
import MainView from '../views/MainView'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {

    Column(){
      MainView()
    }
    .justifyContent(FlexAlign.Center)
  }
}