import React from 'react'
import WebpackerReact from 'webpacker-react'


class Hello extends React.Component{


		render(){

			return(
						<div>
						<p>Hola Alejo</p>
						</div>	

				)

		}
			


			

}


WebpackerReact.setup({Hello})