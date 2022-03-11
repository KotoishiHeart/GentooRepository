# Copyright 1999-2021 Kotoishi Heart Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="Core CRT package for AWS SDK for C"
HOMEPAGE="https://github.com/awslabs/aws-crt-cpp"
SRC_URI="https://github.com/awslabs/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="static-libs test"

RESTRICT="!test? ( test )"

DEPEND="
	>=dev-libs/aws-c-cal-0.4.5:=[static-libs=]
	>=dev-libs/aws-c-common-0.5.2:=[static-libs=]
	>=dev-libs/aws-c-io-0.10.13:=[static-libs=]
	>=dev-libs/aws-c-compression-0.2.14:=[static-libs=]
	>=dev-libs/aws-c-http-0.6.9:=[static-libs=]
	>=dev-libs/aws-c-auth-0.6.5:=[static-libs=]
	>=dev-libs/aws-c-mqtt-0.7.3:=[static-libs=]
	>=dev-libs/aws-checksums-0.1.10:=[static-libs=]
	>=dev-libs/aws-c-event-stream-0.2.7:=[static-libs=]
	>=dev-libs/aws-c-s3-0.1.20:=[static-libs=]
"

PATCHES=(
	"${FILESDIR}"/${PN}-0.17.0-cmake-prefix.patch
)

src_configure() {
	local mycmakeargs=(
		-DBUILD_SHARED_LIBS=$(usex !static-libs)
		-DBUILD_TESTING=$(usex test)
		-DBUILD_DEPS=OFF
	)
	cmake_src_configure
}