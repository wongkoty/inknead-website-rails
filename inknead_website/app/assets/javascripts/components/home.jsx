var Home = React.createClass({

	render: function() {

		return (
			<div className="home">
			<div className='logo-container'>
				<img src='assets/logo@2x.png' className='logo'/>
			</div>
				<div className="main-text">
					<div className="headline">
						<p>BEST HEADLINE IN THE WORLD</p>
					</div>

					<div className="headline-info-temp">
						<p>Lorem ipsum dolor sit amet, consectetua adipiscing elit. 
						Verstibulum rutrum urna felis.</p>
					</div>
				</div>
				<div className="iphone-container">
					<img src='assets/iphone_big.png' className='iphone'/>
				</div>
			</div>
		)
	}
})