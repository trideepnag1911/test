pipeline {
     agent any
     stages {
        stage "build" {
		steps {
		   sh git pull https://github.com/ashwin139/Books.git
}
}
        stage "execute" {
		steps {
		   sh /Books/script.sh
}
}
}


}
