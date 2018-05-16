from setuptools import setup

requirements = [
    'setuptools',
]

setup(
    name='whitebox_tools',
    version='0.7.0',
    description="Whitebox Tools is a collection of advanced geospatial data analysis tools.",
    author="John Lindsay",
    author_email='jlindsay@uoguelph.ca',
    url='https://github.com/jblindsay/whitebox-tools',
    entry_points={
        'gui_scripts': [
            'whitebox_gui=wb_runner:main'
        ]
    },
    install_requires=requirements,
    py_modules=['whitebox_tools'],
    keywords='whitebox tools, gis, geospatial, raster, watershed',
    classifiers=[
        'Programming Language :: Python :: 2.7',
        'Programming Language :: Python :: 3.4',
        'Programming Language :: Python :: 3.5',
        'Programming Language :: Python :: 3.6',
    ]
)
